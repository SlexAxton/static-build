# Alex Sexton's Static Build

Pretty much just a starting off point for a static site with a build process.

## What's in it?

It's a `require.js` (v0.25.0) based app with `jQuery` 1.6.2, `Sproutcore` 2.0 Beta, and `Underscore.js` all modified to be modules in require that don't leak globally.

The CSS is Compass on SASS (feel free to change it to SCSS if that's your jam).

## Known Issues

* So far sproutcore doesn't like it if `window.sc_assert` is not global. So whatever...

## Running Static Builds

`cd static`

### Run in development mode

`./serveDev.sh`

This will initially install the correct gems and packages necessary to serve the static directory in development mode.

It will automatically watch your .sass files for changes (based on the `config.rb` file) and update the generated .css files on the fly. It will also start up the python simpleServer in order to serve the directory. RequireJS works out of the box here, since it was designed to be programmed in 'development mode' - and then built for efficiency.

### Run a build

`./build.sh`

This will just run a build. It won't watch anything in any folder for changes. It will just output a `/build` folder with the necessary output for a built static folder.

### Serve a build (Usually for testing builds)

`/.serveBuild.sh`

This will run `build.sh` and then serve the `/build` folder. It will not watch for changes (as you shouldn't be updating builds). Anything in the `/build` folder is ignored in version control.

## Requirements

* NodeJS >= 0.4.x (for requirejs builds) ( `npm` and `nvm` suggested tools )
* UglifyJS ( `npm install uglify-js -g` - I think this might happen automatically... not sure though. Happens in Require )
* Ruby (I prefer 1.9.2 cause it makes me feel cool, but I think it all works)
* RubyGems
* Bundler (installed via RubyGems, automatically)
* Compass (installed via bundler)
* fsevent gem (installed via bundler)
