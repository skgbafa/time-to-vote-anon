import React from 'react';
import { Button } from 'antd';
import Link from 'next/link'

function HomePage() {
    const handlePageTransition = (pageName: string) => {
       // handle button click here
    };

  return (
    <div className="flex flex-col items-center space-y-4">
      <h2 className="text-2xl font-bold">Time to vote, anon</h2>
      <p className="text-lg">Project Description</p>
      <div className="flex space-x-4">
        <Link href="/register"><Button>Register</Button></Link>
        <Link href="/vote"><Button>Vote</Button></Link>
        <Link href="/tally"><Button>Tally</Button></Link>
      </div>
    </div>
  );
}
export default HomePage;