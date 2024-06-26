const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (_req, res) => {
  console.log('Request received!');
  res.send('Hello from Express - Version 2!');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
