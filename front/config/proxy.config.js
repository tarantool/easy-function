const proxyConfig = {
  target: process.env.REACT_APP_PROXY_ENTRY,
  secure: true,
  changeOrigin: true,
  onProxyRes: function onProxyRes(proxyRes) {
    let header = proxyRes.headers['set-cookie'];
    if (header) {
      const removeCookieSecure = header => header.replace(/; secure/i, '');

      if (Array.isArray(header)) {
        header = header.map(removeCookieSecure);
      } else {
        header = removeCookieSecure(header);
      }
      proxyRes.headers['set-cookie'] = header;
    }
  },
};

const targets = [
  process.env.REACT_APP_LOGIN_API_ENDPOINT,
  process.env.REACT_APP_LOGOUT_API_ENDPOINT,
  process.env.REACT_APP_GRAPHQL_API_ENDPOINT,
  process.env.REACT_APP_GRAPHQL_API_CARTRIDGE_ENDPOINT,
  process.env.REACT_APP_SOAP_API_ENDPOINT,
  process.env.REACT_APP_JSON_API_ENDPOINT,
  process.env.REACT_APP_CONFIG_ENDPOINT,
  process.env.REACT_APP_DOCS_ENDPOINT
];

module.exports = targets.reduce((config, target) => (config[target] = proxyConfig, config), {});
