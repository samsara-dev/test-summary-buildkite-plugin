FROM ruby:3.2.3-alpine3.19

# Fetch/install gems
RUN mkdir -p /opt/gems
COPY Gemfile Gemfile.lock /opt/gems/
WORKDIR /opt/gems
# https://scout.docker.com/vulnerabilities/id/CVE-2024-27281
RUN gem uninstall rdoc
RUN bundle install --deployment --without development

ENV APP_DIR=/usr/src/app

COPY . $APP_DIR
RUN mkdir -p $APP_DIR/vendor && ln -s /opt/gems/vendor/bundle $APP_DIR/vendor/bundle

WORKDIR $APP_DIR
CMD ["./bin/run"]
