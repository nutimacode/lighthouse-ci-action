FROM cpclermont/lighthouse-ci-action:1.0.0
RUN rvm --default use 3.1
RUN gem uninstall shopify-cli
RUN gem install shopify-cli -N -n /usr/local/bin
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
