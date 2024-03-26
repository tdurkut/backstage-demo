#!/bin/bash

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Please make sure to install Node.js before proceeding."
    echo "Refer to the Node.js website for installation instructions: https://nodejs.org/"
    exit 1
fi

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please make sure to install Git before proceeding."
    echo "Refer to the Backstage documentation for prerequisites: https://backstage.io/docs/getting-started/#prerequisites"
    exit 1
fi

# Check if Yarn is installed
if ! command -v yarn &> /dev/null; then
    echo "Yarn is not installed. Please make sure to install Yarn before proceeding."
    echo "Refer to the Backstage documentation for prerequisites: https://backstage.io/docs/getting-started/#prerequisites"
    exit 1
fi

# Create a folder named 'project-backstage' and change directory to it
mkdir project-backstage
cd project-backstage

# Clone the 'backstage-demo' repository
git clone https://github.com/tdurkut/backstage-demo

# Clone the 'backstage-sample-app' repository
git clone https://github.com/tdurkut/backstage-sample-app

# Change directory to 'backstage-demo' repository
cd backstage-demo

# Install dependencies using Yarn
yarn install

# For GitHub authentication provider setup, kindly check the link --> https://backstage.io/docs/auth/github/provider
# Set environment variables for GitHub Client ID, and GitHub Client Secret
export AUTH_GITHUB_CLIENT_ID="your_github_client_id_here"
export AUTH_GITHUB_CLIENT_SECRET="your_github_client_secret_here"
# Run the application in development mode using Yarn
yarn dev
