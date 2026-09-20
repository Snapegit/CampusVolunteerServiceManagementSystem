const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '志愿者活动管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'志愿者活动',
							url:'/index/zhiyuanzhehuodongList'
						},
					]
				},
				{
					name: '留言反馈管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'留言反馈',
							url:'/index/liuyanfankuiList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "校园志愿者服务管理系统"
        } 
    }
}
export default config
