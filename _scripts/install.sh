#!/bin/bash
set -x # Show the output of the following commands (useful for debugging)

# Import the SSH deployment key
openssl aes-256-cbc -K $encrypted_f63a7b37db9b_key -iv $encrypted_f63a7b37db9b_iv -in id_rsa.enc -out id_rsa -d
rm id_rsa.enc # Don't need it anymore
chmod 600 deploy-key
mv id_rsa ~/.ssh/id_rsa
cat ~/.ssh/id_rsa
