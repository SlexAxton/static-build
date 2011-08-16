sudo gem install bundler --no-rdoc --no-ri
bundle install --local
cd dev
sudo python -m SimpleHTTPServer 80 &
compass watch . &
echo "Starting up simple static server..." &
wait
