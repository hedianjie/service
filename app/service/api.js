const Service = require('egg').Service;

class ApiService extends Service {
    /**
     * 添加/编辑项目
     */
    async addProject(parameters) {
        let result;
        if(parameters.id) {
            result = await this.app.mysql.update('project', parameters);
        }
        else {
            result = await this.app.mysql.insert('project', parameters);
        }
        return result;
    }
    /**
     * 获取项目列表
     */
    async getProjectList() {
        return await this.app.mysql.select('project');
    }
    /**
     * 删除项目
     */
    async delProject(id) {
        return await this.app.mysql.delete('project', {id});
    }

    /**
     * 添加/编辑项目下的API
     */
    async addProjectApi(parameters) {
        let result;
        if(parameters.id) {
            result = await this.app.mysql.update('api', parameters);
        }
        else {
            result = await this.app.mysql.insert('api', parameters);
        }
        return result;
    }

    /**
     * 删除项目下的API
     */
    async delProjectApi(id) {
        return await this.app.mysql.delete('api', {id});
    }

}

module.exports = ApiService;