import "../styles/global.css";
import "@rainbow-me/rainbowkit/styles.css";
import { Providers } from "./providers";
import { ConnectButton } from "@rainbow-me/rainbowkit";

function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body>
        <Providers>
          <div
          className="bg-gray-100"
            style={{
              display: "flex",
              justifyContent: "flex-end",
              padding: 12,
            }}
          >
            <ConnectButton />
          </div>
          <div className="flex items-center justify-center min-h-screen bg-gray-100">
          {children}

          </div>
        </Providers>
      </body>
    </html>
  );
}

export default RootLayout;
