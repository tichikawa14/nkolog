const { environment } = require('@rails/webpacker')
// const erb =  require('./loaders/erb')

const webpack = require('webpack')
// environment.plugins.prepend('Provide',
//     new webpack.ProvidePlugin({
//         $: 'jquery/jquery',
//         jQuery: 'jquery/jquery',
//         jquery: 'jquery/jquery',
//     })
// )

// environment.loaders.prepend('erb', erb)
module.exports = environment
