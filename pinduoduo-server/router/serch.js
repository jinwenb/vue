let Router = require('koa-router');
let router = new Router();
let uuid = require('uuid')
let search = require('../data/search')
//首页导航接口
router.get('/', async ctx => {
    ctx.body = search;
});
module.exports = router;
