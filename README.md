# Frax Template

# Installation
`npm i && forge build`

# Compile
`forge build`

# Test
`forge test`

`forge test -w` watch for file changes

`forge test -vvv` show stack traces for failed tests

# Update to latest version of frax-standard-solidity
`npm update frax-standard-solidity`

# Tooling
This repo uses the following tools:
- frax-standard-solidity for testing and scripting helpers
- forge fmt & prettier for code formatting
- lint-staged & husky for pre-commit formatting checks
- solhint for code quality and style hints
- foundry for compiling, testing, and deploying
