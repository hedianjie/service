/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1573611529833_9186';

  // add your middleware config here
  config.middleware = [];

  config.mysql = {
    client: {
      host: '192.168.10.101',
      port: 3306,
      user: 'root',
      password: 'Hedianjie2112.',
      database: 'api_project'
    }
  }

  config.security = {
    csrf: {
      enable: false
    }
  }

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };

  return {
    ...config,
    ...userConfig,
  };
};
