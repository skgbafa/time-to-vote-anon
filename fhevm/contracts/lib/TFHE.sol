// SPDX-License-Identifier: BSD-3-Clause-Clear

pragma solidity >=0.8.13 <0.8.20;

import "./Common.sol";
import "./Impl.sol";

library TFHE {
    euint8 constant NIL8 = euint8.wrap(0);
    euint16 constant NIL16 = euint16.wrap(0);
    euint32 constant NIL32 = euint32.wrap(0);

    // Return true if the enrypted integer is initialized and false otherwise.
    function isInitialized(euint8 v) internal pure returns (bool) {
        return euint8.unwrap(v) != 0;
    }

    // Return true if the enrypted integer is initialized and false otherwise.
    function isInitialized(euint16 v) internal pure returns (bool) {
        return euint16.unwrap(v) != 0;
    }

    // Return true if the enrypted integer is initialized and false otherwise.
    function isInitialized(euint32 v) internal pure returns (bool) {
        return euint32.unwrap(v) != 0;
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ge(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.gt(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.le(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.lt(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.add(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.sub(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.mul(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate and(a, b) and return the result.
    function and(euint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.and(euint8.unwrap(a), euint8.unwrap(b)));
    }

    // Evaluate or(a, b) and return the result.
    function or(euint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.or(euint8.unwrap(a), euint8.unwrap(b)));
    }

    // Evaluate xor(a, b) and return the result.
    function xor(euint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.xor(euint8.unwrap(a), euint8.unwrap(b)));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.shl(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.shr(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.min(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.max(euint8.unwrap(a), euint8.unwrap(b), false));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint8 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.add(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint8 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.sub(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint8 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.mul(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    // Evaluate and(a, b) and return the result.
    function and(euint8 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.and(euint16.unwrap(asEuint16(a)), euint16.unwrap(b)));
    }

    // Evaluate or(a, b) and return the result.
    function or(euint8 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.or(euint16.unwrap(asEuint16(a)), euint16.unwrap(b)));
    }

    // Evaluate xor(a, b) and return the result.
    function xor(euint8 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.xor(euint16.unwrap(asEuint16(a)), euint16.unwrap(b)));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint8 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.shl(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint8 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.shr(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint8 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint8 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint8 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint8 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint8 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint8 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint8 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.min(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint8 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.max(euint16.unwrap(asEuint16(a)), euint16.unwrap(b), false));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint8 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint8 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint8 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate and(a, b) and return the result.
    function and(euint8 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(asEuint32(a)), euint32.unwrap(b)));
    }

    // Evaluate or(a, b) and return the result.
    function or(euint8 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(asEuint32(a)), euint32.unwrap(b)));
    }

    // Evaluate xor(a, b) and return the result.
    function xor(euint8 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(asEuint32(a)), euint32.unwrap(b)));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint8 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.shl(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint8 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.shr(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint8 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint8 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint8 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint8 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint8 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint8 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint8 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint8 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint8 a, uint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.shr(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(uint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.shr(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint8 a, uint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(uint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.eq(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint8 a, uint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(uint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ne(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint8 a, uint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.ge(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(uint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.le(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint8 a, uint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.gt(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(uint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.lt(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint8 a, uint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.le(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(uint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.ge(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint8 a, uint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return ebool.wrap(Impl.lt(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(uint8 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.gt(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint8 a, uint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.add(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate add(a, b) and return the result.
    function add(uint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.add(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint8 a, uint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.sub(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(uint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.sub(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint8 a, uint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.mul(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(uint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.mul(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint8 a, uint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.shl(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(uint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.shl(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint8 a, uint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.min(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate min(a, b) and return the result.
    function min(uint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.min(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint8 a, uint8 b) internal view returns (euint8) {
        if (!isInitialized(a)) {
            a = asEuint8(0);
        }
        return euint8.wrap(Impl.max(euint8.unwrap(a), uint256(b), true));
    }

    // Evaluate max(a, b) and return the result.
    function max(uint8 a, euint8 b) internal view returns (euint8) {
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint8.wrap(Impl.max(euint8.unwrap(b), uint256(a), true));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint16 a, euint8 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.add(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint16 a, euint8 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.sub(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint16 a, euint8 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.mul(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

// Evaluate and(a, b) and return the result.
function and(euint16 a, euint8 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.and(euint16.unwrap(a), euint16.unwrap(asEuint16(b))));
    }

// Evaluate or(a, b) and return the result.
function or(euint16 a, euint8 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.or(euint16.unwrap(a), euint16.unwrap(asEuint16(b))));
    }

// Evaluate xor(a, b) and return the result.
function xor(euint16 a, euint8 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.xor(euint16.unwrap(a), euint16.unwrap(asEuint16(b))));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint16 a, euint8 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.shl(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint16 a, euint8 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.shr(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint16 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint16 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint16 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint16 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint16 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint16 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false), Common.ebool_t));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint16 a, euint8 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.min(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint16 a, euint8 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint16.wrap(Impl.max(euint16.unwrap(a), euint16.unwrap(asEuint16(b)), false));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint16.unwrap(a), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint16.unwrap(a), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint16.unwrap(a), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint16.unwrap(a), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint16.unwrap(a), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint16.unwrap(a), euint16.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.add(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.sub(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.mul(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    // Evaluate and(a, b) and return the result.
    function and(euint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.and(euint16.unwrap(a), euint16.unwrap(b)));
    }

    // Evaluate or(a, b) and return the result.
    function or(euint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.or(euint16.unwrap(a), euint16.unwrap(b)));
    }

    // Evaluate xor(a, b) and return the result.
    function xor(euint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.xor(euint16.unwrap(a), euint16.unwrap(b)));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.shl(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.shr(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.min(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.max(euint16.unwrap(a), euint16.unwrap(b), false));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint16 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint16 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint16 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate and(a, b) and return the result.
    function and(euint16 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(asEuint32(a)), euint32.unwrap(b)));
    }

    // Evaluate or(a, b) and return the result.
    function or(euint16 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(asEuint32(a)), euint32.unwrap(b)));
    }

    // Evaluate xor(a, b) and return the result.
    function xor(euint16 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(asEuint32(a)), euint32.unwrap(b)));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint16 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.shl(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint16 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.shr(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint16 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint16 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint16 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint16 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint16 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint16 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint16 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint16 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(asEuint32(a)), euint32.unwrap(b), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint16 a, uint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.shr(euint16.unwrap(a), uint256(b), true));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(uint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.shr(euint16.unwrap(b), uint256(a), true));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint16 a, uint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint16.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(uint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint16.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint16 a, uint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint16.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(uint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint16.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint16 a, uint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint16.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(uint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint16.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint16 a, uint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint16.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(uint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint16.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint16 a, uint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint16.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(uint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint16.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint16 a, uint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint16.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(uint16 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint16.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint16 a, uint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.add(euint16.unwrap(a), uint256(b), true));
    }

    // Evaluate add(a, b) and return the result.
    function add(uint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.add(euint16.unwrap(b), uint256(a), true));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint16 a, uint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.sub(euint16.unwrap(a), uint256(b), true));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(uint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.sub(euint16.unwrap(b), uint256(a), true));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint16 a, uint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.mul(euint16.unwrap(a), uint256(b), true));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(uint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.mul(euint16.unwrap(b), uint256(a), true));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint16 a, uint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.shl(euint16.unwrap(a), uint256(b), true));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(uint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.shl(euint16.unwrap(b), uint256(a), true));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint16 a, uint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.min(euint16.unwrap(a), uint256(b), true));
    }

    // Evaluate min(a, b) and return the result.
    function min(uint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.min(euint16.unwrap(b), uint256(a), true));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint16 a, uint16 b) internal view returns (euint16) {
        if (!isInitialized(a)) {
            a = asEuint16(0);
        }
        return euint16.wrap(Impl.max(euint16.unwrap(a), uint256(b), true));
    }

    // Evaluate max(a, b) and return the result.
    function max(uint16 a, euint16 b) internal view returns (euint16) {
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint16.wrap(Impl.max(euint16.unwrap(b), uint256(a), true));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint32 a, euint8 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint32 a, euint8 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint32 a, euint8 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

// Evaluate and(a, b) and return the result.
function and(euint32 a, euint8 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(a), euint32.unwrap(asEuint32(b))));
    }

// Evaluate or(a, b) and return the result.
function or(euint32 a, euint8 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(a), euint32.unwrap(asEuint32(b))));
    }

// Evaluate xor(a, b) and return the result.
function xor(euint32 a, euint8 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(a), euint32.unwrap(asEuint32(b))));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint32 a, euint8 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.shl(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint32 a, euint8 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.shr(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint32 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint32 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint32 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint32 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint32 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint32 a, euint8 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint32 a, euint8 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint32 a, euint8 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint8(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint32 a, euint16 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint32 a, euint16 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint32 a, euint16 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

// Evaluate and(a, b) and return the result.
function and(euint32 a, euint16 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(a), euint32.unwrap(asEuint32(b))));
    }

// Evaluate or(a, b) and return the result.
function or(euint32 a, euint16 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(a), euint32.unwrap(asEuint32(b))));
    }

// Evaluate xor(a, b) and return the result.
function xor(euint32 a, euint16 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(a), euint32.unwrap(asEuint32(b))));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint32 a, euint16 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.shl(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint32 a, euint16 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.shr(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint32 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint32 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint32 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint32 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint32 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint32 a, euint16 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false), Common.ebool_t));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint32 a, euint16 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint32 a, euint16 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint16(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(a), euint32.unwrap(asEuint32(b)), false));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint32.unwrap(a), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint32.unwrap(a), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint32.unwrap(a), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint32.unwrap(a), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint32.unwrap(a), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint32.unwrap(a), euint32.unwrap(b), false), Common.ebool_t));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    // Evaluate and(a, b) and return the result.
    function and(euint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.and(euint32.unwrap(a), euint32.unwrap(b)));
    }

    // Evaluate or(a, b) and return the result.
    function or(euint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.or(euint32.unwrap(a), euint32.unwrap(b)));
    }

    // Evaluate xor(a, b) and return the result.
    function xor(euint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.xor(euint32.unwrap(a), euint32.unwrap(b)));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.shl(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.shr(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(a), euint32.unwrap(b), false));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(euint32 a, uint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.shr(euint32.unwrap(a), uint256(b), true));
    }

    // Evaluate shr(a, b) and return the result.
    function shr(uint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.shr(euint32.unwrap(b), uint256(a), true));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(euint32 a, uint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint32.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate eq(a, b) and return the boolean result.
    function eq(uint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.eq(euint32.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(euint32 a, uint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint32.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate ne(a, b) and return the boolean result.
    function ne(uint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.ne(euint32.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(euint32 a, uint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint32.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate ge(a, b) and return the boolean result.
    function ge(uint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint32.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(euint32 a, uint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint32.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate gt(a, b) and return the boolean result.
    function gt(uint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint32.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(euint32 a, uint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.le(euint32.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate le(a, b) and return the boolean result.
    function le(uint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.ge(euint32.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(euint32 a, uint32 b) internal view returns (ebool) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.lt(euint32.unwrap(a), uint256(b), true), Common.ebool_t));
    }

    // Evaluate lt(a, b) and return the boolean result.
    function lt(uint32 a, euint32 b) internal view returns (ebool) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return ebool.wrap(Impl.cast(Impl.gt(euint32.unwrap(b), uint256(a), true), Common.ebool_t));
    }

    // Evaluate add(a, b) and return the result.
    function add(euint32 a, uint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(a), uint256(b), true));
    }

    // Evaluate add(a, b) and return the result.
    function add(uint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.add(euint32.unwrap(b), uint256(a), true));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(euint32 a, uint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(a), uint256(b), true));
    }

    // Evaluate sub(a, b) and return the result.
    function sub(uint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.sub(euint32.unwrap(b), uint256(a), true));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(euint32 a, uint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(a), uint256(b), true));
    }

    // Evaluate mul(a, b) and return the result.
    function mul(uint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.mul(euint32.unwrap(b), uint256(a), true));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(euint32 a, uint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.shl(euint32.unwrap(a), uint256(b), true));
    }

    // Evaluate shl(a, b) and return the result.
    function shl(uint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.shl(euint32.unwrap(b), uint256(a), true));
    }

    // Evaluate min(a, b) and return the result.
    function min(euint32 a, uint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(a), uint256(b), true));
    }

    // Evaluate min(a, b) and return the result.
    function min(uint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.min(euint32.unwrap(b), uint256(a), true));
    }

    // Evaluate max(a, b) and return the result.
    function max(euint32 a, uint32 b) internal view returns (euint32) {
        if (!isInitialized(a)) {
            a = asEuint32(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(a), uint256(b), true));
    }

    // Evaluate max(a, b) and return the result.
    function max(uint32 a, euint32 b) internal view returns (euint32) {
        if (!isInitialized(b)) {
            b = asEuint32(0);
        }
        return euint32.wrap(Impl.max(euint32.unwrap(b), uint256(a), true));
    }

    // If `control`'s value is 1, the result has the same value as `a`.
    // If `control`'s value is 0, the result has the same value as `b`.
    function cmux(ebool control, euint8 a, euint8 b) internal view returns (euint8) {
        return euint8.wrap(Impl.cmux(ebool.unwrap(control), euint8.unwrap(a), euint8.unwrap(b)));
    }

    // If `control`'s value is 1, the result has the same value as `a`.
    // If `control`'s value is 0, the result has the same value as `b`.
    function cmux(ebool control, euint16 a, euint16 b) internal view returns (euint16) {
        return euint16.wrap(Impl.cmux(ebool.unwrap(control), euint16.unwrap(a), euint16.unwrap(b)));
    }

    // If `control`'s value is 1, the result has the same value as `a`.
    // If `control`'s value is 0, the result has the same value as `b`.
    function cmux(ebool control, euint32 a, euint32 b) internal view returns (euint32) {
        return euint32.wrap(Impl.cmux(ebool.unwrap(control), euint32.unwrap(a), euint32.unwrap(b)));
    }

    // Cast an encrypted integer from euint16 to euint8.
    function asEuint8(euint16 value) internal view returns (euint8) {
        return euint8.wrap(Impl.cast(euint16.unwrap(value), Common.euint8_t));
    }

    // Cast an encrypted integer from euint32 to euint8.
    function asEuint8(euint32 value) internal view returns (euint8) {
        return euint8.wrap(Impl.cast(euint32.unwrap(value), Common.euint8_t));
    }

    // Cast an encrypted integer from euint8 to ebool.
    function asEbool(euint8 value) internal view returns (ebool) {
        return ne(value, 0);
    }

    // Convert a serialized `ciphertext` to an encrypted boolean.
    function asEbool(bytes memory ciphertext) internal view returns (ebool) {
        return asEbool(asEuint8(ciphertext));
    }

    // Convert a plaintext boolean to an encrypted boolean.
    function asEbool(bool value) internal view returns (ebool) {
        if (value) {
            return asEbool(asEuint8(1));
        } else {
            return asEbool(asEuint8(0));
        }
    }

    // Cast an encrypted integer from euint8 to euint16.
    function asEuint16(euint8 value) internal view returns (euint16) {
        return euint16.wrap(Impl.cast(euint8.unwrap(value), Common.euint16_t));
    }

    // Cast an encrypted integer from euint32 to euint16.
    function asEuint16(euint32 value) internal view returns (euint16) {
        return euint16.wrap(Impl.cast(euint32.unwrap(value), Common.euint16_t));
    }

    // Cast an encrypted integer from euint16 to ebool.
    function asEbool(euint16 value) internal view returns (ebool) {
        return ne(value, 0);
    }

    // Cast an encrypted integer from euint8 to euint32.
    function asEuint32(euint8 value) internal view returns (euint32) {
        return euint32.wrap(Impl.cast(euint8.unwrap(value), Common.euint32_t));
    }

    // Cast an encrypted integer from euint16 to euint32.
    function asEuint32(euint16 value) internal view returns (euint32) {
        return euint32.wrap(Impl.cast(euint16.unwrap(value), Common.euint32_t));
    }

    // Cast an encrypted integer from euint32 to ebool.
    function asEbool(euint32 value) internal view returns (ebool) {
        return ne(value, 0);
    }

    // Convert a serialized `ciphertext` to an encrypted euint8 integer.
    function asEuint8(bytes memory ciphertext) internal view returns (euint8) {
        return euint8.wrap(Impl.verify(ciphertext, Common.euint8_t));
    }

    // Convert a plaintext value to an encrypted euint8 integer.
    function asEuint8(uint256 value) internal view returns (euint8) {
        return euint8.wrap(Impl.trivialEncrypt(value, Common.euint8_t));
    }

    // Reencrypt the given `value` under the given `publicKey`.
    // Return a serialized euint8 ciphertext.
    function reencrypt(euint8 value, bytes32 publicKey) internal view returns (bytes memory reencrypted) {
        return Impl.reencrypt(euint8.unwrap(value), publicKey);
    }

    // Reencrypt the given `value` under the given `publicKey`.
    // If `value` is not initialized, the returned value will contain the `defaultValue` constant.
    // Return a serialized euint8 ciphertext.
    function reencrypt(euint8 value, bytes32 publicKey, uint8 defaultValue) internal view returns (bytes memory reencrypted) {
        if (euint8.unwrap(value) != 0) {
            return Impl.reencrypt(euint8.unwrap(value), publicKey);
        } else {
            return Impl.reencrypt(euint8.unwrap(asEuint8(defaultValue)), publicKey);
        }
    }

    // Require that the encrypted `value` is not equal to 0.
    // Involves decrypting `value`.
    function req(euint8 value) internal view {
        Impl.req(euint8.unwrap(value));
    }

    // Return the negation of `value`.
    function neg(euint8 value) internal view returns (euint8) {
        return euint8.wrap(Impl.neg(euint8.unwrap(value)));
    }

    // Return `!value`.
    function not(euint8 value) internal view returns (euint8) {
        return euint8.wrap(Impl.not(euint8.unwrap(value)));
    }

    // Optimistically require that `value` is not equal to 0.
    //
    // This function does not evaluate `value` at the time of the call.
    // Instead, it accumulates all optimistic requires and evaluates a single combined
    // require at the end of the transaction. A side effect of this mechanism
    // is that a method call with a failed optimistic require will always incur the full
    // gas cost, as if all optimistic requires were true. Yet, the transaction will be
    // reverted at the end if any of the optimisic requires were false.
    //
    // The benefit of optimistic requires is that they are faster than non-optimistic ones,
    // because there is a single call to the decryption oracle per transaction, irrespective
    // of how many optimistic requires were used.
    function optReq(euint8 value) internal view {
        Impl.optReq(euint8.unwrap(value));
    }

    // Convert a serialized `ciphertext` to an encrypted euint16 integer.
    function asEuint16(bytes memory ciphertext) internal view returns (euint16) {
        return euint16.wrap(Impl.verify(ciphertext, Common.euint16_t));
    }

    // Convert a plaintext value to an encrypted euint16 integer.
    function asEuint16(uint256 value) internal view returns (euint16) {
        return euint16.wrap(Impl.trivialEncrypt(value, Common.euint16_t));
    }

    // Reencrypt the given `value` under the given `publicKey`.
    // Return a serialized euint16 ciphertext.
    function reencrypt(euint16 value, bytes32 publicKey) internal view returns (bytes memory reencrypted) {
        return Impl.reencrypt(euint16.unwrap(value), publicKey);
    }

    // Reencrypt the given `value` under the given `publicKey`.
    // If `value` is not initialized, the returned value will contain the `defaultValue` constant.
    // Return a serialized euint16 ciphertext.
    function reencrypt(euint16 value, bytes32 publicKey, uint16 defaultValue) internal view returns (bytes memory reencrypted) {
        if (euint16.unwrap(value) != 0) {
            return Impl.reencrypt(euint16.unwrap(value), publicKey);
        } else {
            return Impl.reencrypt(euint16.unwrap(asEuint16(defaultValue)), publicKey);
        }
    }

    // Require that the encrypted `value` is not equal to 0.
    // Involves decrypting `value`.
    function req(euint16 value) internal view {
        Impl.req(euint16.unwrap(value));
    }

    // Return the negation of `value`.
    function neg(euint16 value) internal view returns (euint16) {
        return euint16.wrap(Impl.neg(euint16.unwrap(value)));
    }

    // Return `!value`.
    function not(euint16 value) internal view returns (euint16) {
        return euint16.wrap(Impl.not(euint16.unwrap(value)));
    }

    // Optimistically require that `value` is not equal to 0.
    //
    // This function does not evaluate `value` at the time of the call.
    // Instead, it accumulates all optimistic requires and evaluates a single combined
    // require at the end of the transaction. A side effect of this mechanism
    // is that a method call with a failed optimistic require will always incur the full
    // gas cost, as if all optimistic requires were true. Yet, the transaction will be
    // reverted at the end if any of the optimisic requires were false.
    //
    // The benefit of optimistic requires is that they are faster than non-optimistic ones,
    // because there is a single call to the decryption oracle per transaction, irrespective
    // of how many optimistic requires were used.
    function optReq(euint16 value) internal view {
        Impl.optReq(euint8.unwrap(asEuint8(value)));
    }

    // Convert a serialized `ciphertext` to an encrypted euint32 integer.
    function asEuint32(bytes memory ciphertext) internal view returns (euint32) {
        return euint32.wrap(Impl.verify(ciphertext, Common.euint32_t));
    }

    // Convert a plaintext value to an encrypted euint32 integer.
    function asEuint32(uint256 value) internal view returns (euint32) {
        return euint32.wrap(Impl.trivialEncrypt(value, Common.euint32_t));
    }

    // Reencrypt the given `value` under the given `publicKey`.
    // Return a serialized euint32 ciphertext.
    function reencrypt(euint32 value, bytes32 publicKey) internal view returns (bytes memory reencrypted) {
        return Impl.reencrypt(euint32.unwrap(value), publicKey);
    }

    // Reencrypt the given `value` under the given `publicKey`.
    // If `value` is not initialized, the returned value will contain the `defaultValue` constant.
    // Return a serialized euint32 ciphertext.
    function reencrypt(euint32 value, bytes32 publicKey, uint32 defaultValue) internal view returns (bytes memory reencrypted) {
        if (euint32.unwrap(value) != 0) {
            return Impl.reencrypt(euint32.unwrap(value), publicKey);
        } else {
            return Impl.reencrypt(euint32.unwrap(asEuint32(defaultValue)), publicKey);
        }
    }

    // Require that the encrypted `value` is not equal to 0.
    // Involves decrypting `value`.
    function req(euint32 value) internal view {
        Impl.req(euint32.unwrap(value));
    }

    // Return the negation of `value`.
    function neg(euint32 value) internal view returns (euint32) {
        return euint32.wrap(Impl.neg(euint32.unwrap(value)));
    }

    // Return `!value`.
    function not(euint32 value) internal view returns (euint32) {
        return euint32.wrap(Impl.not(euint32.unwrap(value)));
    }

    // Optimistically require that `value` is not equal to 0.
    //
    // This function does not evaluate `value` at the time of the call.
    // Instead, it accumulates all optimistic requires and evaluates a single combined
    // require at the end of the transaction. A side effect of this mechanism
    // is that a method call with a failed optimistic require will always incur the full
    // gas cost, as if all optimistic requires were true. Yet, the transaction will be
    // reverted at the end if any of the optimisic requires were false.
    //
    // The benefit of optimistic requires is that they are faster than non-optimistic ones,
    // because there is a single call to the decryption oracle per transaction, irrespective
    // of how many optimistic requires were used.
    function optReq(euint32 value) internal view {
        Impl.optReq(euint8.unwrap(asEuint8(value)));
    }

    // Require that the encrypted bool `b` is not equal to 0.
    // Involves decrypting `b`.
    function req(ebool b) internal view {
        Impl.req(ebool.unwrap(b));
    }
    
    // Optimistically require that `b` is not equal to 0.
    function optReq(ebool b) internal view {
        Impl.optReq(ebool.unwrap(b));
    }
        
    // Converts an `ebool` to an `euint8`.
    function asEuint8(ebool b) internal pure returns (euint8) {{
        return euint8.wrap(ebool.unwrap(b));
    }}

    // Reencrypt the given `value` under the given `publicKey`.
    // Return a serialized euint8 value.
    function reencrypt(ebool value, bytes32 publicKey) internal view returns (bytes memory reencrypted) {
        return Impl.reencrypt(ebool.unwrap(value), publicKey);
    }

    // Reencrypt the given `value` under the given `publicKey`.
    // Return a serialized euint8 value.
    // If `value` is not initialized, the returned value will contain the `defaultValue` constant.
    function reencrypt(ebool value, bytes32 publicKey, bool defaultValue) internal view returns (bytes memory reencrypted) {
        if (ebool.unwrap(value) != 0) {
            return Impl.reencrypt(ebool.unwrap(value), publicKey);
        } else {
            return Impl.reencrypt(ebool.unwrap(asEbool(defaultValue)), publicKey);
        }
    }
    
    // Returns the network public FHE key.
    function fhePubKey() internal view returns (bytes memory) {
        return Impl.fhePubKey();
    }
}
