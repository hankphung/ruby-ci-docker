FROM ruby:2.3.8

RUN curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb [trusted=yes] https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get -y install nodejs yarn libqt5webkit5-dev qt5-qmake libxml2-dev libxslt1-dev xvfb
RUN gem install bundler -v 1.17.3