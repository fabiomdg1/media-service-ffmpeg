const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Media service com FFmpeg rodando.');
});

app.get('/ffmpeg-version', (req, res) => {
  const { exec } = require('child_process');
  exec('ffmpeg -version', (error, stdout, stderr) => {
    if (error) {
      return res.status(500).send('Erro ao executar ffmpeg: ' + error.message);
    }
    res.type('text/plain').send(stdout || stderr);
  });
});

app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});