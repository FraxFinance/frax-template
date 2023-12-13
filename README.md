# Frax Template

## Optional Setup
Add:
```
function profile() {
  FOUNDRY_PROFILE=$1 "${@:2}"}
```
To easily execute specific foundry profiles like `profile test forge test -w`

## Installation
`pnpm i`

## Compile
`forge build`

## Test
`profile test forge test`

`profile test forge test -w` watch for file changes

`profile test forge test -vvv` show stack traces for failed tests

## Deploy
- Update environment variables
  - If deploying to networks other than mainnet/polygon, also update the bottom of `foundry.toml`
- Edit `package.json` scripts of `deploy` to your desired configuration
  - NOTE: to dry-run only, remove all flags after `-vvvv`
- `source .env`
- `npm run deploy:{network}`


## Tooling
This repo uses the following tools:
- frax-standard-solidity for testing and scripting helpers
- forge fmt & prettier for code formatting
- lint-staged & husky for pre-commit formatting checks
- solhint for code quality and style hints
- foundry for compiling, testing, and deploying
