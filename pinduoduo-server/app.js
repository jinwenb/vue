const path = require('path');
const Koa = require('koa');
const Router = require('koa-router');
const cors = require('koa-cors');
const convert = require('koa-convert');
const bodyParser = require('koa-bodyparser');
const static = require('koa-static');
const session = require('koa-session');
let db = require('./mysql');
let {sessionKey,sessionConfig}= require('./config');
let {find} =require('./util');
//引用路由
const Search = require('./router/serch');
const Recommend = require('./router/recommend');
const Home = require('./router/home');
const User = require('./router/user');
const Cart =require('./router/cart')
const app = new Koa();

app.use(convert(cors()));
//app.keys = ['eee','e']
 app.keys = sessionKey;
//使用中间件
 app.use(session(sessionConfig,app));
app.use(async (ctx, next) => {
        ctx.db = db;
        ctx.find = find.bind(ctx);
        await next()
    }
);
app.use(static(
    path.join(__dirname, 'public')
));
app.use(convert(bodyParser()));

let router = new Router();
router.use('/home', Home.routes());
router.use('/recommend', Recommend.routes());
router.use('/search', Search.routes());
router.use('/user', User.routes());
router.use('/cart', Cart.routes());
app.use(router.routes());
app.listen(3000);