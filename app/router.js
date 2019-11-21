'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.home.index);

  router.post('/api/addProject', controller.api.addProject);
  router.get('/api/getProjectList', controller.api.getProjectList);
  router.delete('/api/delProject', controller.api.delProject);

  router.post('/api/addProjectApi', controller.api.addProjectApi);
  router.delete('/api/delProjectApi', controller.api.delProjectApi);
};
