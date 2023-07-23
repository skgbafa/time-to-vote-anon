"use client";

import React, { useState } from 'react';
import { Button } from 'antd';
import Link from 'next/link';

function VotePage() {

  const [status, setStatus] = useState('');
  const [selectedOption, setSelectedOption] = useState('');

  const handleVote = (voteOption: string) => {
      console.log(`Selected: ${voteOption}`);
      setSelectedOption(voteOption);
      setStatus(`You selected: ${voteOption}`);
  };

  const handleSubmit = () => {
      console.log(`Submitting and encrypting ballot for: ${selectedOption}`);
      setStatus(`You submitted and encrypted ballot for: ${selectedOption}`);
  };

  return (
    <div className="flex flex-col items-center space-y-4">
      <h2 className="text-2xl font-bold">Vote</h2>
      <p className="text-lg">Fill in the blank: Vitalik is the _____ of Ethereum.</p>
      <div className="flex space-x-4">
        <Button onClick={() => handleVote('Pope')}>Pope</Button>
        <Button onClick={() => handleVote('Emperor')}>Emperor</Button>
        <Button onClick={() => handleVote('Gardener')}>Gardener</Button>
      </div>
      {selectedOption && <Button onClick={handleSubmit}>Submit Ballot</Button>}
      <p>{status}</p>
      <div className="mt-4">
        <Link href="/"><Button>Back</Button></Link>
      </div>
    </div>
  );
}

export default VotePage;