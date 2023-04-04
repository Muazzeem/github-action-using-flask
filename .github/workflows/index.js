const { execSync } = require('child_process');
const command = process.env.INPUT_TEST_COMMAND;

try {
  execSync(command, { stdio: 'inherit' });
  console.log("command:", command)
} catch (error) {
  console.error(error);
  process.exit(1);
}
