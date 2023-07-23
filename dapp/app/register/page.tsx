"use client";
import React, { useState } from 'react';
import { Button } from 'antd';
import Link from 'next/link';

function RegisterPage() {

  const [status, setStatus] = useState('');
  const address = (window.ethereum as any).selectedAddress || ""; // Ethereum address for the user

  const handleAttest = async () => {
    console.log('Attesting...');
    setStatus('Attesting...');

    // Fetch request to /api/attest with { address }
    const response = await fetch('/api/attest', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({ address })
    });

    const data = await response.json();
    console.log(data);
    if (!response.ok) {
      throw new Error(data.error || 'Attestation failed');
    }

    setStatus(data.message || 'Attestation successful');
  };
  

  const handleRegister = () => {
    console.log('Registering...');
    setStatus('Registering...');
  };

  return (
    <div className="flex flex-col items-center space-y-4 px-4 text-center mx-auto">
      <h2 className="text-2xl font-bold">Registration Requirements</h2>
      <p className="text-lg">In order to vote in this Poll, you must have a transaction on mainnet Ethereum. Get an attestation and then register to Vote. </p>
      <div className="flex space-x-4 mx-auto">
        <Button onClick={handleAttest}>Attest</Button>
        <Button onClick={handleRegister}>Register</Button>
      </div>
      <p>{status}</p>
      <div className="mt-4">
        <Link href="/"><Button>Back</Button></Link>
      </div>
    </div>
  );
}

export default RegisterPage;