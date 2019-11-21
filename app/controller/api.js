const Controller  = require('egg').Controller;

class ApiController extends Controller {
    /**
     * 添加/编辑项目
     */
    async addProject() {
        const {ctx, service} = this;
        const body = ctx.request.body;
        console.log('addProject', body);
        const result = await service.api.addProject(body);

        if(result.affectedRows === 1) {
            ctx.body = {
                state: 0,
                msg: '操作成功！',
                data: {id: result.insertId}
            };
        }
        else {
            ctx.body = {
                state: 1,
                msg: `操作失败：${result.toString()}`,
            };
        }

    }
    /**
     * 获取项目列表
     */
    async getProjectList() {
        const {ctx, service} = this;
        const result = await service.api.getProjectList();
        ctx.body = {
            state: 0,
            msg: '获取项目列表成功!',
            data: result
        }
    }
    /**
     * 删除项目
     */
    async delProject() {
        const {ctx, service} = this;
        const body = ctx.query;
        const result = await service.api.delProject(body.id);
        if(result.affectedRows === 1) {
            ctx.body = {
                state: 0,
                msg: '操作成功！',
            };
        }
        else {
            ctx.body = {
                state: 1,
                msg: `操作失败：${result.toString()}`,
            };
        }
    }

    /**
     * 添加/编辑项目下的API
     */
    async addProjectApi() {
        const {ctx, service} = this;
        const body = ctx.request.body;
        console.log('addProjectApi', body);
        const result = await service.api.addProjectApi(body);
        if(result.affectedRows === 1) {
            ctx.body = {
                state: 0,
                msg: '操作成功！',
                data: {id: result.insertId}
            };
        }
        else {
            ctx.body = {
                state: 1,
                msg: `操作失败：${result.toString()}`,
            };
        }
    }

    /**
     * 删除项目下的API
     */
    async delProjectApi() {
        const {ctx, service} = this;
        const body = ctx.query;
        const result = await service.api.delProjectApi(body.id);
        if(result.affectedRows === 1) {
            ctx.body = {
                state: 0,
                msg: '操作成功！',
            };
        }
        else {
            ctx.body = {
                state: 1,
                msg: `操作失败：${result.toString()}`,
            };
        }
    }
}

module.exports = ApiController;