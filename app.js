// A super simple Express.js app
const express = require("express");
const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send("🚀 Hello World from Dockerized Node.js app!");
});

app.listen(PORT, () => {
  console.log(`✅ Server running on port ${PORT}`);
});
