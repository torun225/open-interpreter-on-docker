FROM ubuntu:22.04

RUN apt-get update && apt-get upgrade -y

# 必要なパッケージのインストール
RUN apt-get install -y \
  python3 \
  python3-pip \
  git\
  wget \
  unzip \
  xvfb \
  libxi6 \
  libgconf-2-4 \
  libnss3

RUN apt-get install -y \
  fonts-noto-cjk fonts-noto-cjk-extra language-selector-common language-pack-ja

RUN update-locale LANG=ja_JP.UTF-8

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

# ChromeとChromedriverのインストール
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
  dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

# ChromeDriverのインストール
RUN wget https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/116.0.5845.96/linux64/chromedriver-linux64.zip && \
  unzip chromedriver-linux64.zip && \
  mv chromedriver-linux64/chromedriver /usr/bin/chromedriver && \
  chown root:root /usr/bin/chromedriver && \
  chmod +x /usr/bin/chromedriver && \
  rm chromedriver-linux64.zip

RUN pip install open-interpreter==0.1.4
RUN pip install selenium

WORKDIR /root