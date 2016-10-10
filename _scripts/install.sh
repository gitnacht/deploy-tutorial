#!/bin/bash
set -x # Show the output of the following commands (useful for debugging)

# Import the SSH deployment key
openssl aes-256-cbc -K $encrypted_0b522ad0db2b_key -iv $encrypted_0b522ad0db2b_iv -in chathappens_deploy.enc -out chathappens_deploy -d
rm chathappens_deploy.enc # Don't need it anymore
chmod 600 chathappens_deploy
mv chathappens_deploy ~/.ssh/id_rsa
