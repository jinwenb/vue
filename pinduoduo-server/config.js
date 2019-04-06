const CONFIG = {
    key: 'koa:sess',
    maxAge: 86400000,
    overwrite: true,
    httpOnly: true,
    signed: true,
    rolling: false,
    renew: false,
};
module.exports = {
    sessionKey:['ddd','fjdjdffd'],
    sessionConfig:CONFIG
}