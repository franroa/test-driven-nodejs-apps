FROM node:8.2

# ENV DEBIAN_FRONTEND=noninteractive

# RUN apt-get update && apt-get install -y curl xvfb chromium


RUN \
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
  apt-get update && \
  apt-get install -y google-chrome-stable && \
  rm -rf /var/lib/apt/lists/*

# RUN ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser

# in this port karma is serving the localhost
EXPOSE 8080