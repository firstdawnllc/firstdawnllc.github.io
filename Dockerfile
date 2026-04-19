FROM ruby:3.4

RUN groupadd --system nonroot && useradd --create-home --no-log-init --system --shell /bin/bash --gid nonroot nonroot
RUN mkdir -p /srv/jekyll
RUN chown nonroot:nonroot /srv/jekyll
USER nonroot

RUN curl -fsSL https://claude.ai/install.sh | bash
ENV PATH="/home/nonroot/.local/bin:$PATH"

RUN gem install bundler

RUN mkdir -p /home/nonroot/jekyll
COPY --chown=nonroot:nonroot <<EOF /home/nonroot/jekyll/Gemfile
source "https://rubygems.org"
gem "github-pages", group: :jekyll_plugins
EOF

ENV BUNDLE_GEMFILE=/home/nonroot/jekyll/Gemfile
ENV BUNDLE_PATH=/home/nonroot/jekyll/.bundle
RUN bundle install

WORKDIR /srv/jekyll

CMD ["bundle", "exec", "jekyll", "serve", "--watch", "--force_polling", "--host", "0.0.0.0", "--baseurl", ""]
