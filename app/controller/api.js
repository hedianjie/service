const Controller  = require('egg').Controller;

class ApiController extends Controller {
    async addProject() {
        const {ctx, service} = this;
        const body = ctx.request.body;
        const result = await service.api.addProject(body);
        if(result.affectedRows === 1) {
            ctx.body = 'xxx';
        }
        else {
            ctx.body = 'xxxerror';
        }

    }
}

module.exports = ApiController;