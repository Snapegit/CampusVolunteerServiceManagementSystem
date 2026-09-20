import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import xueshengList from '@/views/pages/xuesheng/list'
import xueshengDetail from '@/views/pages/xuesheng/formModel'
import xueshengAdd from '@/views/pages/xuesheng/formAdd'
import xueshengRegister from '@/views/pages/xuesheng/register'
import xueshengCenter from '@/views/pages/xuesheng/center'
import jiaoshiList from '@/views/pages/jiaoshi/list'
import jiaoshiDetail from '@/views/pages/jiaoshi/formModel'
import jiaoshiAdd from '@/views/pages/jiaoshi/formAdd'
import zhiyuanzhehuodongList from '@/views/pages/zhiyuanzhehuodong/list'
import zhiyuanzhehuodongDetail from '@/views/pages/zhiyuanzhehuodong/formModel'
import zhiyuanzhehuodongAdd from '@/views/pages/zhiyuanzhehuodong/formAdd'
import huodongcanjiaList from '@/views/pages/huodongcanjia/list'
import huodongcanjiaDetail from '@/views/pages/huodongcanjia/formModel'
import huodongcanjiaAdd from '@/views/pages/huodongcanjia/formAdd'
import jiajifenList from '@/views/pages/jiajifen/list'
import jiajifenDetail from '@/views/pages/jiajifen/formModel'
import jiajifenAdd from '@/views/pages/jiajifen/formAdd'
import jianjifenList from '@/views/pages/jianjifen/list'
import jianjifenDetail from '@/views/pages/jianjifen/formModel'
import jianjifenAdd from '@/views/pages/jianjifen/formAdd'
import liuyanfankuiList from '@/views/pages/liuyanfankui/list'
import liuyanfankuiDetail from '@/views/pages/liuyanfankui/formModel'
import liuyanfankuiAdd from '@/views/pages/liuyanfankui/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'xueshengList',
			component: xueshengList
		}, {
			path: 'xueshengDetail',
			component: xueshengDetail
		}, {
			path: 'xueshengAdd',
			component: xueshengAdd
		}
		, {
			path: 'xueshengCenter',
			component: xueshengCenter
		}
		, {
			path: 'jiaoshiList',
			component: jiaoshiList
		}, {
			path: 'jiaoshiDetail',
			component: jiaoshiDetail
		}, {
			path: 'jiaoshiAdd',
			component: jiaoshiAdd
		}
		, {
			path: 'zhiyuanzhehuodongList',
			component: zhiyuanzhehuodongList
		}, {
			path: 'zhiyuanzhehuodongDetail',
			component: zhiyuanzhehuodongDetail
		}, {
			path: 'zhiyuanzhehuodongAdd',
			component: zhiyuanzhehuodongAdd
		}
		, {
			path: 'huodongcanjiaList',
			component: huodongcanjiaList
		}, {
			path: 'huodongcanjiaDetail',
			component: huodongcanjiaDetail
		}, {
			path: 'huodongcanjiaAdd',
			component: huodongcanjiaAdd
		}
		, {
			path: 'jiajifenList',
			component: jiajifenList
		}, {
			path: 'jiajifenDetail',
			component: jiajifenDetail
		}, {
			path: 'jiajifenAdd',
			component: jiajifenAdd
		}
		, {
			path: 'jianjifenList',
			component: jianjifenList
		}, {
			path: 'jianjifenDetail',
			component: jianjifenDetail
		}, {
			path: 'jianjifenAdd',
			component: jianjifenAdd
		}
		, {
			path: 'liuyanfankuiList',
			component: liuyanfankuiList
		}, {
			path: 'liuyanfankuiDetail',
			component: liuyanfankuiDetail
		}, {
			path: 'liuyanfankuiAdd',
			component: liuyanfankuiAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/xueshengRegister',
		component: xueshengRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
