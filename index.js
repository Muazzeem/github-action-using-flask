const core = require('@actions/core');
// const github = require('@actions/github');

try {
    const stage = core.getInput('who-to-greet');
    console.log(`Hello ${stage}!`);
    core.setOutput("stage", stage);
} catch (error) {
    core.setFailed(error.message);
}