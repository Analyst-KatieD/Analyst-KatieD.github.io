FROM ruby:slim

ENV DEBIAN_FRONTEND=noninteractive

# Set build arguments to match your host user
ARG USERID=1000
ARG GROUPID=1000
ARG USERNAME=katied
ARG GROUPNAME=katied

LABEL authors="Amir Pourmand,George Araújo" \
      description="Docker image for al-folio academic template" \
      maintainer="Amir Pourmand"

# Create matching non-root user
RUN groupadd -r $GROUPNAME -g $GROUPID && \
    useradd -u $USERID -m -g $GROUPNAME $USERNAME

# Install system dependencies
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        git \
        imagemagick \
        inotify-tools \
        locales \
        nodejs \
        procps \
        python3-pip \
        zlib1g-dev && \
    pip --no-cache-dir install --upgrade --break-system-packages nbconvert && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* /tmp/*

# Set locale
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen

# Environment variables
ENV EXECJS_RUNTIME=Node \
    JEKYLL_ENV=development \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

# Switch to project directory
WORKDIR /srv/jekyll

# Copy gem configuration
ADD Gemfile /srv/jekyll
ADD Gemfile.lock /srv/jekyll

# Install gems AS ROOT (avoids Gemfile.lock permission issues)
RUN gem install --no-document jekyll bundler && \
    bundle install --no-cache

# AFTER bundle install, switch to non-root user
USER $USERNAME

EXPOSE 4000
CMD ["bash"]

