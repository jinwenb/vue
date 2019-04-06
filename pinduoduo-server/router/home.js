let Router = require('koa-router');
let router = new Router();
//首页轮播接口
router.get('/homecasual', async ctx => {
    let {db} = ctx;
    //请求homecasual表中的数据
    ctx.body = await db.select('homecasual')
});
//首页导航接口
router.get('/homenav', async ctx => {
    let {db} = ctx;
    //请求homecasual表中的数据
    ctx.body = await db.select('homenav')
})
router.get('/shoplist', async ctx => {
    let {db} = ctx;
    //请求homecasual表中的数据
    ctx.body = await db.select('shoplist')
})

module.exports = router;
