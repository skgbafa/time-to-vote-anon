"use client";

import React, { useState } from 'react';
import { Button } from 'antd';
import Link from 'next/link';

function TallyPage() {

  const [status, setStatus] = useState('');

  const handleCount = () => {
    console.log('Counting...');
    setStatus('Counting...');
  };

  return (
    <div className="flex flex-col items-center space-y-4">
      <h2 className="text-2xl font-bold">Tally</h2>
      <p className="text-lg">Count the votes in a privacy preserving but verifiably accurate way</p>
      <div className="flex space-x-4">
        <Button onClick={handleCount}>Count Ballots</Button>
      </div>
      <p>{status}</p>
      <div className="mt-4">
        <Link href="/"><Button>Back</Button></Link>
      </div>
    </div>
  );
}

export default TallyPage;