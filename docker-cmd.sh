#!/bin/bash
export ACCOUNTS_DIR="./accounts"
export MPL_CORE="CoREENxT6tW1HoK8ypY1SxRMZTcVPm7R94rH4PZNhX7d"
export MPL_CORE_DATA="9ZC25KLUrfgSoFVgjE1rrydZBbZns58UXi8A8ZhTdGfr"
export MPL_CORE_CG="CMAGAKJ67e9hRZgfC5SFTbZH8MgEmtqazKXjmkaJjWTJ"
export MPL_CORE_CG_DATA="GADi4g14b9y6fcn6DWbZy7nd2DCToD7viEMu9UGEDXqB"
export MPL_CORE_CM="CMACYFENjoBMHzapRXyo1JZkVS6EtaDDzkjMrmQLvr4J"
export MPL_CORE_CM_DATA="3w3omcedXpcSCMASSGLFrbeSR4Bv27EUUxWuE7JXV7WC"
export MPL_METADATA="metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s"
export MPL_METADATA_DATA="PwDiXFxQsGra4sFFTT8r1QWRMd4vfumiWC1jfWNfdYT"

solana-test-validator \
    --account-dir $ACCOUNTS_DIR \
    --mint "FeeSoLT7WdoZVXsBPSZc7WKEuhVDVA1TKrNQoHacvxYm" \
    --clone $MPL_CORE --clone $MPL_CORE_DATA \
    --clone $MPL_CORE_CG --clone $MPL_CORE_CG_DATA \
    --clone $MPL_CORE_CM --clone $MPL_CORE_CM_DATA \
    --clone $MPL_METADATA --clone $MPL_METADATA_DATA \
    --url https://api.devnet.solana.com
