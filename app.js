//  comment. app.js
const express = require('express');
const app = express();
const PORT = 3008;
 
app.get('/', (req, res) => {
    res.send('Hola Mundo desde Express, Charleny -desplegado en Render');
});
 
app.listen(PORT, () => {
    console.log(`Servidor ejecutándose en http://localhost:${PORT}`);
});