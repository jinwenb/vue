let Router = require('koa-router');
let router = new Router();
//首页轮播接口
router.get('/shoplist', async ctx => {
    let {db} = ctx;
    let result = await db.select('cart');
    ctx.body = {
        code: 0,
        data: result
    }
});
//添加购物车接口
router.post('/addshop', async ctx => {
    let {db} = ctx;
    let {thumb_url, goods_name, price, short_name, goods_id} = ctx.request.body;
    let result = await db.select(`cart`, ['goods_id'], {goods_id});
    let by_count = 1;
    if (result.length) {
        //如果已经有了则更新
        result = await db.select(`cart`, ['by_count'], {goods_id});
        by_count = result[0].by_count + 1;
        await   db.update(`cart`, {by_count}, {goods_id})
        ctx.body = {
            code: 0,
            message: '更新成功'
        }
    } else {
        //如果没有就插入
        result = await db.insert(`cart`, {
            thumb_url, goods_name, price, short_name, goods_id,
            by_count
        });
        ctx.body = {
            code: 0,
            message: '添加购物车成功'
        }
    }
});


module.exports = router;
