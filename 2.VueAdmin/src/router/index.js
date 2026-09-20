	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import xuesheng from '@/views/xuesheng/list'
	import huodongcanjia from '@/views/huodongcanjia/list'
	import discusszhiyuanzhehuodong from '@/views/discusszhiyuanzhehuodong/list'
	import jiajifen from '@/views/jiajifen/list'
	import liuyanfankui from '@/views/liuyanfankui/list'
	import jiaoshi from '@/views/jiaoshi/list'
	import config from '@/views/config/list'
	import jianjifen from '@/views/jianjifen/list'
	import users from '@/views/users/list'
	import zhiyuanzhehuodong from '@/views/zhiyuanzhehuodong/list'
	import jiaoshiRegister from '@/views/jiaoshi/register'
	import jiaoshiCenter from '@/views/jiaoshi/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/jiaoshiCenter',
			name: '教师个人中心',
			component: jiaoshiCenter
		}
		,{
			path: '/xuesheng',
			name: '学生',
			component: xuesheng
		}
		,{
			path: '/huodongcanjia',
			name: '活动参加',
			component: huodongcanjia
		}
		,{
			path: '/discusszhiyuanzhehuodong',
			name: '志愿者活动评论',
			component: discusszhiyuanzhehuodong
		}
		,{
			path: '/jiajifen',
			name: '加积分',
			component: jiajifen
		}
		,{
			path: '/liuyanfankui',
			name: '留言反馈',
			component: liuyanfankui
		}
		,{
			path: '/jiaoshi',
			name: '教师',
			component: jiaoshi
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/jianjifen',
			name: '减积分',
			component: jianjifen
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/zhiyuanzhehuodong',
			name: '志愿者活动',
			component: zhiyuanzhehuodong
		}
		]
	},
	{
		path: '/jiaoshiRegister',
		name: '教师注册',
		component: jiaoshiRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
