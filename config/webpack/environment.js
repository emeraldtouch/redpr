const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

const manifestPlugin = environment.plugins.get('Manifest')
manifestPlugin.options.writeToFileEmit = false

environment.plugins.prepend(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        jquery: 'jquery',
        'window.Tether': 'tether',
        Popper: ['popper.js', 'default'],
    })
)

module.exports = environment
