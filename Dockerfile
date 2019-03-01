FROM ruby:2.3.8-alpine3.8

RUN apk add --no-cache bash openssh rsync nodejs yarn qt5-qtwebkit-dev qt5-qtbase-dev libxml2-dev libxslt-dev xvfb
