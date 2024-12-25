FROM ghcr.io/beeman/solana-test-validator:latest

RUN mkdir -pv /workspace/test-ledger

COPY ./accounts /workspace/accounts
COPY ./keypairs /workspace/keypairs

COPY ./docker-cmd.sh /workspace/docker-cmd.sh

CMD ["/workspace/docker-cmd.sh"]