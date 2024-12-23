#docker_app/back_end_app/Dockerfile

# you may need to update the ruby version
# Dockerfile

# Base image
FROM ruby:3.3.6

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set an environment variable to store where the app is installed to inside
# of the Docker image.
ENV RAILS_ROOT /var/www/app_name
RUN mkdir -p $RAILS_ROOT 

# Set working directory
WORKDIR $RAILS_ROOT

# Adding gems
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler:2.4.12
RUN bundle install --verbose

# Adding project files
COPY . .

# Expose port 3000 to the Docker host, so we can access it
# from the outside.
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]