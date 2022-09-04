const express = require('express');
const notesRouter = require('./routes/notes');
//laod environment variables
require('dotenv').config();

//initialize express server
const app = express();

//setup the port

const PORT = process.env.PORT || 3001;
//app.use(express.urlencoded({ extended: true }));

//adding json parsing middleware
app.use(express.json());

app.use('/notes', notesRouter);

//listening to port
app.listen(PORT, () => console.log(`Listening on port ${PORT}`));
