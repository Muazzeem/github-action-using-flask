const { execSync } = require('child_process');
const command = process.env.INPUT_TEST_COMMAND;

try {
  execSync(command, { stdio: 'inherit' });
} catch (error) {
  console.error(error);
  process.exit(1);
}
