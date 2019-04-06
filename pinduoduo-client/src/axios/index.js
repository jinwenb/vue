import ajax from './ajax'

const baseUrl = 'http://localhost:3000/'
//请求首页轮播图的数据
export const getHomeCasual = () => ajax(baseUrl + 'home/homecasual');
//请求首页navbar 数据
export const getHomeNav = () => ajax(baseUrl + 'home/homenav');
//获取首页商品数据
export const getHomeShopList = () => ajax(baseUrl + 'home/shoplist');
//获取推荐页面数据
export const getRecommendShopList = ({pageSize, pageNumber}) => ajax(baseUrl + 'recommend/shoplist', {
    pageSize,
    pageNumber
});
//获取搜索页面数据
export const getSearchShopList = () => ajax(baseUrl + 'search');

//请求注册接口
export const userRegister = ({username, password}) => ajax(baseUrl + 'user/register', {username, password}, 'post');

//请求登陆接口
export const userLogin = ({username, password}) => ajax(baseUrl + 'user/login', {username, password}, 'post');


//请求用户信息接口
export const getUserInfo = () => ajax(baseUrl + 'user/info');
//退出登陆接口
export const destroyCookie = () => ajax(baseUrl + 'user/destroy', {}, 'post')
//请求购物车商品的接口
export const getCartShopList = () => ajax(baseUrl + 'cart/shoplist');
//添加购物车的的接口
export const addCartShopList = ({thumb_url, goods_name, price, short_name, goods_id}) => ajax(baseUrl + 'cart/addshop', {
    thumb_url,
    goods_name,
    price,
    short_name,
    goods_id
}, 'post');

