({
    appDir: "../",
    baseUrl: "scripts/",
    dir: "../../build",

    // This is done with SASS & Compass
    optimizeCss: "none",
    inlineText: true,

    paths: {
        "jquery": "require-jquery"
    },

    pragmas: {
        //buildExclude: true
    },

    modules: [
        //Optimize the require-jquery.js file by applying any minification
        //that is desired via the optimize: setting above.
        {
            name: "require-jquery"
        },

        //Optimize the application files. Exclude jQuery since it is
        //included already in require-jquery.js
        {
            name: "main",
            exclude: ["jquery"]
        }
    ]
})
