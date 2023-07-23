import { NextResponse } from 'next/server';
import { attest, hasMainnetTransactions } from './attest';

export async function POST(request: Request) {
  const body = await request.json();

    if (!body || !body.address) {
        return NextResponse.json(
            { success: false, message: "Missing address" },
            {
                status: 200
            }
        );
    }
    const hasTx = await hasMainnetTransactions(body.address);
    
    if (!hasTx) {
        return NextResponse.json(
            { success: false, message: "No mainnet transactions" },
            {
                status: 200
            }
        );
    }

    await attest(body.address);

  return NextResponse.json(
    { success: true, message: `Attestation successful for ${body.address}` },
    {
      status: 200
    }
  );
}
