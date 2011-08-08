sudo gem install bundler --no-rdoc --no-ri
bundle install --local
cd dev
compass watch . &
echo "Starting up simple static server..." &
sudo python -m SimpleHTTPServer 80 &
wait
