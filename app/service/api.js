const Service = require('egg').Service;

class ApiService extends Service {

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

}

module.exports = ApiService;