const core = require('@actions/core');
// const github = require('@actions/github');

try {
    const nameToGreet = core.getInput('stage');
    console.log(`Hello ${nameToGreet}!`);
} catch (error) {
    core.setFailed(error.message);
}