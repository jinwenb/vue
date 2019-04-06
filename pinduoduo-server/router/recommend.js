let Router = require('koa-router');
let router = new Router();
//首页导航接口
router.get('/shoplist', async ctx => {
    let {db} = ctx;
    let {pageSize = 1, pageNumber = 10} = ctx.query;
    await new Promise((resolve)=>{
        setTimeout(()=>{
            resolve()
        },1000)
    })
    //请求homecasual表中的数据
    ctx.body = await db.query(`SELECT * FROM recommend LIMIT ${(pageSize-1)*pageNumber},${pageNumber}`)
});
module.exports = router;
