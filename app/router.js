'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.home.index);

  // 添加／编辑项目
  router.post('/api/addProject', controller.api.addProject);
  // 获取项目列表
  router.get('/api/getProjectList', controller.api.getProjectList);
  // 删除项目
  router.delete('/api/delProject', controller.api.delProject);

  // 添加／编辑项目下的API
  router.post('/api/addProjectApi', controller.api.addProjectApi);
  // 删除项目下的API
  router.delete('/api/delProjectApi', controller.api.delProjectApi);
  // 获取项目下的所有API
  router.get('/api/getProjectApiList', controller.api.getProjectApiList);
  // 获取单个API详细
  router.get('/api/getProjectApiInfo', controller.api.getProjectApiInfo);
};
