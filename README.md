# solidity-project-base

This folder is setup to work with [Hardhat](https://hardhat.org/) and [Forge](https://github.com/gakonst/foundry/tree/master/forge).

Commands available :
- `npm run clean` used to clean the compilation folder (Forge)
- `npm run compile` used to compile Solidity files (Forge, automatically run before tests)
- `npm run test` used to run unit tests (Forge, `.t.sol` files in `contracts/test` folder)
- `npm run hh:clean` used to clean the compilation folder (Hardhat)
- `npm run hh:compile` used to compile Solidity files (Hardhat, automatically run before tests)
- `npm run hh:test` used to run unit tests (Hardhat, `.ts` files in `test` folder)
- `npm run lint` and `npm run lint:fix` used to display and format `.js` and `.ts` files so they all follow the same coding standard
- `npm run prettier` used to format `.sol` files so they all follow the same coding standard
- `npm run solhint` and `npm run solhint:fix` used to display and format `.sol` files so they all follow the same coding standard
