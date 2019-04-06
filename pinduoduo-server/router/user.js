let Router = require('koa-router');
let {includes} = require('../util')
let router = new Router();
//用户信息登陆接口
router.post('/login', async ctx => {
    let {username, password} = ctx.request.body;
    username = String(username);
    password = String(password);
    //判断传进来的值合不合法
    if (includes(username, password)) {
        ctx.body = {
            code: 1,
            message: '请输入用户名或者密码'
        }
    } else if (/^\s+?<script/.test(username) || /^\s+?<script/.test(password)) {
        ctx.body = {
            code: 1,
            message: '请输入用户名或者密码'
        }
    } else if ((username).length <= 1 || password.length <= 2) {
        ctx.body = {
            code: 1,
            message: '请完善用户或者密码'
        }
    } else {
        let result = await db.select(`user`, null, {username, password});
        //保存id到session中
//origin
        ctx.cookies.set('userInfo', result[0].id,
            {
                domain: 'localhost',  // 写cookie所在的域名
                maxAge: 10 * 60 * 1000, // cookie有效时长
                httpOnly: false,  // 是否只用于http请求中获取
                overwrite: false,// 是否允许重写
                path: '/me',
            });
        ctx.body = {
            code: 1,
            data: result[0]
        }
    }
});
router.post('/register', async ctx => {
    let {username, password} = ctx.request.body;
    username = String(username);
    password = String(password);
    const {db} = ctx;
    //判断传进来的值合不合法
    if (includes(username, password)) {
        ctx.body = {
            code: 1,
            message: '请输入用户名或者密码'
        }
    } else if (/^\s+?<script/.test(username) || /^\s+?<script/.test(password)) {
        ctx.body = {
            code: 1,
            message: '不要想注入非法信息'
        }
    } else if ((username).length <= 1 || password.length <= 2) {
        return ctx.body = {
            code: 1,
            message: '请完善用户或者密码'
        }
    }
    else {
        let users = await db.select(`user`, null, {username});
        if (users.length === 0) {
            await db.insert(`user`, {username, password});
            return await ctx.find(`user`, ['id', 'username'], {username})
        } else {
            ctx.body = {
                code: 1,
                msg: '此用户已经存在'
            }
        }
    }

});
//实现自动登陆接口
router.get('/info', async ctx => {
    //user_id
    let {userInfo} = ctx.session;
    let {db} = ctx;
    if (!userInfo) {
        ctx.body = {
            code: 1,
            message: '请先去登陆'
        }
    } else {
        let result = await db.select(`user`, null, {id: userInfo});

        if (result.length) {
            ctx.body = {
                code: 0,
                data: result[0]
            }
        } else {
            ctx.body = {
                code: 1,
                message: '请先去登陆'
            }
        }

    }
})
router.post('/destroy', async ctx => {
    // delete
    ctx.cookies.set('user_info', '', {signed: false, maxAge: 0})
    ctx.body = {
        code: 0,
        message: '已经退出登陆'
    }
})
module.exports = router;
