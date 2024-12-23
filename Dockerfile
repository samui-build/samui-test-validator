FROM ghcr.io/beeman/solana-test-validator:latest

RUN mkdir -pv /workspace/test-ledger

# Copty the keypairs to the working directory
COPY ./keypairs /workspace/keypairs

CMD ["solana-test-validator", \
    # Receive the minted tokens
     "--mint", "FeeSoLT7WdoZVXsBPSZc7WKEuhVDVA1TKrNQoHacvxYm", \
    # Metaplex Core program
    "--clone", "CoREENxT6tW1HoK8ypY1SxRMZTcVPm7R94rH4PZNhX7d", \
    # Metaplex Core program data
    "--clone", "9ZC25KLUrfgSoFVgjE1rrydZBbZns58UXi8A8ZhTdGfr", \
    # Metaplex Metadata program
    "--clone", "metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s", \
    # Metaplex Metadata program data
    "--clone", "PwDiXFxQsGra4sFFTT8r1QWRMd4vfumiWC1jfWNfdYT", \
    # Solana Devnet cluster
    "--url", "https://api.devnet.solana.com" ]