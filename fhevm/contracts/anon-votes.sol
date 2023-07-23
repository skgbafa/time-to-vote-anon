// SPDX-License-Identifier: BSD-3-Clause-Clear

pragma solidity >=0.8.13 <0.8.20;

import "./lib/TFHE.sol";

contract AnonVote{

    // The owner of the contract.
    address public contractOwner;

    // Ballot Options
    enum BallotOptions { Option1, Option2, Option3 }
    uint ballotOptionsCount = 3;

    euint8[] public votes;

    constructor() {
        contractOwner = msg.sender;
    }

    mapping (uint => euint8[]) voteTally;
    euint8 internal maximumVotes;
    euint8[] internal ballotOptionSums;
    uint winner;


    
    function getBallotOptions() public pure returns (uint, uint, uint) {
        return (uint(BallotOptions.Option1), uint(BallotOptions.Option2), uint(BallotOptions.Option3));
    }

    function submitBallot(bytes calldata ballotCiphertext) public {
        /**
        * Potential Requirements
        * - Must be registed to vote
        * - Must be within certain time window
        */
        euint8 vote = TFHE.asEuint8(ballotCiphertext);
        TFHE.req(TFHE.le(vote, uint8(BallotOptions.Option3))); // change to LTE
        votes.push(vote);
    }

    function tallyVotes() public {
        /**
        * Potential Requirements
        * - Can only be called when election is over
        * - Can only be called by owner
        * - Can only be called once a quorum is met
        */
        require(msg.sender == contractOwner);
    
        // count votes

        for (uint i = 0; i < votes.length; i++) {
            for (uint iBallotOption = 0; iBallotOption < ballotOptionsCount; iBallotOption++) {
                ebool isBallotOption = TFHE.eq(votes[i], TFHE.asEuint8(iBallotOption));
                euint8 increment = TFHE.cmux(isBallotOption, TFHE.asEuint8(1), TFHE.asEuint8(0));
                ballotOptionSums[iBallotOption] = TFHE.add(ballotOptionSums[iBallotOption], increment);
            }
        }

        // find winner, get max on ballotOptions
        maximumVotes = ballotOptionSums[0];

        for (uint i = 0; i < ballotOptionsCount; i++) {
            maximumVotes = TFHE.cmux(
                TFHE.lt(maximumVotes, ballotOptionSums[i]),
                ballotOptionSums[i],
                maximumVotes
            );
        }
    }


    function getWinner() public returns (uint winningIndex) {
       for (uint i = 0; i < ballotOptionsCount; i++) {
            try this.checkWinner(i) returns (bool) {
                winner = i;
                return winner;
            } catch {}
        }
    }

    function checkWinner(uint option) public view returns (bool) {
        TFHE.req(TFHE.eq(maximumVotes, ballotOptionSums[option]));
        return true;
    }

}