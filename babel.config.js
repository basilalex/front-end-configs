module.exports = {
    presets: ['@babel/env', '@babel/react'],
    plugins: [
        '@babel/plugin-transform-runtime',
        [
            'transform-imports',
            {
                'lodash': {
                    transform: 'lodash/${member}.js',
                    preventFullImport: true,
                },
            },
        ],
    ],
};
