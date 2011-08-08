mkdir -p build
rm -rf build/*
node r.js -o dev/scripts/app.build.js
sudo gem install bundler --no-rdoc --no-ri
bundle install --local
cd build
cat scripts/LICENSE.txt | cat - scripts/main.js > /tmp/staticbuildout && mv /tmp/staticbuildout scripts/main.js
echo "\n" >> config.rb
echo "output_style = :compressed" >> config.rb
compass compile .
cd ..

