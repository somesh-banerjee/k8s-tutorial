const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (_req, res) => {
  res.send('Hello from Express - Version 1!');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
