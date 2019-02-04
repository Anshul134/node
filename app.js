const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');

const indexRouter = require('./src/routes/index');
const migrateRouter = require('./src/routes/migrateDb');
const usersRouter = require('./src/routes/users');
const hbs = require( 'express-handlebars');

const app = express();

// Module Dependencies
const sass = require('node-sass');
const sassMiddleware = require('node-sass-middleware');
// Express Configuration
app.use(express.static(path.join(__dirname, 'public')));

app.use(sassMiddleware({
          src: path.join(__dirname, 'public/stylesheets/sass'),
          dest: path.join(__dirname, 'public/stylesheets'),
          debug: true,
          indentedSyntax: true,
          outputStyle: 'compressed',
          prefix: '/stylesheets'
  }));


app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);
//Route for migrating db from mysql to mongo;
app.use('/migrate', migrateRouter);

app.engine( 'hbs', hbs( {
  extname: 'hbs',
  defaultView: 'default',
  layoutsDir: __dirname + '/views/layouts/',
  partialsDir: __dirname + '/views/partials/',
  helpers : __dirname + '/src/utils/hbsHelpers'
}));



module.exports = app;
