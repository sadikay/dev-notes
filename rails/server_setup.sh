echo "Initial dependencies"
sudo apt-get update -qq && sudo apt-get install -y build-essential nodejs npm nodejs-legacy vim libpq-dev cron
sudo apt-get install -y imagemagick monit libmysqlclient-dev

echo "Install dev server"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 68576280

sudo apt-get update
sudo apt-get install -y npm
sudo apt-get install -y wget
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo ln -sf /usr/local/n/versions/node/v7.4.0/bin/node /usr/bin/node

echo "Essential Configns installing..."
sudo apt-get update
sudo apt-get install -y build-essential chrpath libssl-dev libxft-dev
sudo apt-get install -y libfreetype6 libfreetype6-dev
sudo apt-get install -y ilibfontconfig1 libfontconfig1-dev


sudo apt-get install -y libjpeg-dev libpng-dev libtiff-dev libgif-dev

echo "Installing Python..."
sudo apt-get install -y python-pip
sudo apt-get install -y libjsoncpp-dev libjsoncpp0

echo "Installing rbenv..."
sudo apt-get update
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl1.0-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

echo "Installing ruby version..."
rbenv install -v 2.4.2
rbenv global 2.4.2
echo "gem: --no-document" > ~/.gemrc
gem install bundler

echo "DONE! Installing completed succesfully!"
