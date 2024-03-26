# Backstage Demo Project

## Note: Before getting started, please make sure
- to review the prerequisites mentioned in the [Backstage documentation](https://backstage.io/docs/getting-started/#prerequisites).
- to setup an example GitHub OAuth application 
- to update example user entity metadata.name field in the file "[org.yaml](examples/org.yaml)" under examples folder with the user who will login through GitHub

This repository contains a demo project showcasing the integration of Backstage with GitHub OAuth authentication and CI/CD pipelines.

Please refer [startup.sh](startup.sh) script for a quick start or,

To start the app, run:

```sh
# Install dependencies using Yarn
yarn install

# For GitHub authentication provider setup, kindly check the link --> https://backstage.io/docs/auth/github/provider
# Set environment variables for GitHub Client ID, and GitHub Client Secret
export AUTH_GITHUB_CLIENT_ID="your_github_client_id_here"
export AUTH_GITHUB_CLIENT_SECRET="your_github_client_secret_here"
# Run the application in development mode using Yarn
yarn dev
```
