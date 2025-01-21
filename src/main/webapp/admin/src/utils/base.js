const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm895th/",
            name: "ssm895th",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm895th/front/h5/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "养老院管理系统"
        } 
    }
}
export default base
