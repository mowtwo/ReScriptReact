const httpProxy = require('http2-proxy')
/**
 * @type {import("snowpack").SnowpackConfig}
 */
module.exports = {
  plugins: [],
  routes: [
    {
      src: '/api/.*',
      dest(req, res) {
        req.url = req.url.replace(/^\/api\//, '/')
        return httpProxy.web(req, res, {
          hostname: 'localhost',
          port: 3000,
        })
      },
    },
    {
      //设置SPA的路由
      match: 'routes',
      src: '.*',
      dest: '/index.html',
    },
  ],
}
