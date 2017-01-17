FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.3

RUN gem install cloudstack_ruby_client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cloudstack_ruby_client"]
CMD ["--help"]
