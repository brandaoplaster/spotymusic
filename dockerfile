FROM ruby:2.5.1-slim
 
# Installing dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
    build-essential libpq-dev imagemagick curl


# Install NodeJS v12
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs

# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install -y yarn

# Set the path
ENV INSTALL_PATH /spotymusic
 
# Create directory
RUN mkdir -p $INSTALL_PATH
 
# Set path as the main directory
WORKDIR $INSTALL_PATH
 
# Copy Gemfile into Container
COPY Gemfile ./
 
# Set the path to the gems
ENV BUNDLE_PATH /box
 
# Copy code into container
COPY . .