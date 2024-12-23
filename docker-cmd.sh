#!/bin/bash

export MPL_CORE="CoREENxT6tW1HoK8ypY1SxRMZTcVPm7R94rH4PZNhX7d"
export MPL_CORE_DATA="9ZC25KLUrfgSoFVgjE1rrydZBbZns58UXi8A8ZhTdGfr"
export MPL_METADATA="metaqbxxUerdq28cj1RbAWkYQm3ybzjb6a8bt518x1s"
export MPL_METADATA_DATA="PwDiXFxQsGra4sFFTT8r1QWRMd4vfumiWC1jfWNfdYT"

solana-test-validator \
    --mint "FeeSoLT7WdoZVXsBPSZc7WKEuhVDVA1TKrNQoHacvxYm" \
    --clone $MPL_CORE --clone $MPL_CORE_DATA \
    --clone $MPL_METADATA --clone $MPL_METADATA_DATA \
    --url https://api.devnet.solana.com
