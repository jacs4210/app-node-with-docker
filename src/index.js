const app = require('./app');

async function main() {
    await app.listen(3000);
    console.log("Server On");
}

main();
//app.listen(3000, () => console.log("Server On"));