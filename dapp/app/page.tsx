"use client";
import React from 'react';
import { Carousel } from 'react-responsive-carousel';
import { Button } from 'antd';
import Link from 'next/link';
import "react-responsive-carousel/lib/styles/carousel.min.css"; // requires a loader

function HomePage() {
  const descriptionArray = [
    'A media organization running a vote limited to digital passport holders of a specific country',
    'Holders of a certain professional credential voting on a proposal that affects the industry',
    'People with a specific diagnosis being able to vote on whether a specific medicine should be approved by a regulator',
    'Code contributors to an open source project voting on a proposal',
    'Member of a network state voting on a proposal that affects the network'
  ];

  return (
    <div className="flex flex-col items-center space-y-4 bg-gray-100">
      <h2 className="text-2xl font-bold">Time to vote, anon</h2>
      <p className="text-lg p-8">This project presents a <span>secure</span> and anonymous modular voting system. This has registration system for verifying and registering eligible participants and a voting system for collecting ballots and tallying results. TTVA is built compatible with various credentials and identity systems, aiming for digital elections that are simple, easy to verify yet secure. Powered by Ethereum Attestation Service and Fully Homomorphic Encryption. Some potential use cases of a verifiable voting system is below.</p>
      <Carousel autoPlay infiniteLoop showStatus={false} showIndicators={false} showThumbs={false}>
        {descriptionArray.map((description, idx) => (
          <div key={idx} className="p-8 bg-gray-100 rounded px-4">
            <p>{description}</p>
          </div>
        ))}
      </Carousel>
      <div className="flex space-x-4">
        <Link href="/register"><Button>Register</Button></Link>
        <Link href="/vote"><Button>Vote</Button></Link>
        <Link href="/tally"><Button>Tally</Button></Link>
      </div>
    </div>
  );
}
export default HomePage;