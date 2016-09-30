#!/bin/bash
set -x # Show the output of the following commands (useful for debugging)

# Import the SSH deployment key
openssl aes-256-cbc -K $encrypted_f63a7b37db9b_key -iv $encrypted_f63a7b37db9b_iv -in tutorial.enc -out tutorial -d
rm tutorial.enc # Don't need it anymore
chmod 600 tutorial
mv tutorial ~/.ssh/id_rsa
cat ~/.ssh/id_rsa
