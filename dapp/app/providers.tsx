'use client';

import * as React from 'react';
import {
  RainbowKitProvider,
  getDefaultWallets,
  connectorsForWallets,
} from '@rainbow-me/rainbowkit';
import {
  argentWallet,
  trustWallet,
  ledgerWallet,
} from '@rainbow-me/rainbowkit/wallets';
import { configureChains, createConfig, WagmiConfig } from 'wagmi';
import {
  mainnet,
  polygon,
  optimism,
  arbitrum,
  zora,
  optimismGoerli,

} from 'wagmi/chains';
import { publicProvider } from 'wagmi/providers/public';


const FHEVM = {
    id: 8011,
    name: "Fhenix Devnet",
    network: "fhenix-devnet",
    nativeCurrency: {
        name: "Ether",
        symbol: "FHE",
        decimals: 18,
    },
    rpcUrls: {
        default: {
            http: ["https://devnet.fhenix.io/"],
            webSocket: ["wss://devnet.fhenix.io/ws"],
        },
        public: {
            http: ["https://devnet.fhenix.io/"],
            webSocket: ["wss://devnet.fhenix.io/ws"],
        },
    },
    blockExplorers: {
        default: {
            name: "fhenixExplorer",
            url: "https://fhenix.explorer.zama.ai",
        },
    },
    contracts: {
        multicall3: {
            address: "0xF9cda624FBC7e059355ce98a31693d299FACd963",
        },
    },
    testnet: true,
  };
  

const { chains, publicClient, webSocketPublicClient } = configureChains(
  [
    mainnet,
    FHEVM as any,
    optimismGoerli,
    ...(process.env.NEXT_PUBLIC_ENABLE_TESTNETS === 'true' ? [optimismGoerli] : []),
  ],
  [publicProvider()]
);

const projectId = 'YOUR_PROJECT_ID';

const { wallets } = getDefaultWallets({
  appName: 'RainbowKit demo',
  projectId,
  chains,
});

const demoAppInfo = {
  appName: 'Rainbowkit Demo',
};

const connectors = connectorsForWallets([
  ...wallets,
  {
    groupName: 'Other',
    wallets: [
      argentWallet({ projectId, chains }),
      trustWallet({ projectId, chains }),
      ledgerWallet({ projectId, chains }),
    ],
  },
]);

const wagmiConfig = createConfig({
  autoConnect: true,
  connectors,
  publicClient,
  webSocketPublicClient,
});

export function Providers({ children }: { children: React.ReactNode }) {
  const [mounted, setMounted] = React.useState(false);
  React.useEffect(() => setMounted(true), []);
  return (
    <WagmiConfig config={wagmiConfig}>
      <RainbowKitProvider chains={chains} appInfo={demoAppInfo}>
        {mounted && children}
      </RainbowKitProvider>
    </WagmiConfig>
  );
}
