FROM drupal:11.0.11-php8.4-apache-bookworm

# Drushインストール
RUN composer require drush/drush \
  && ln -s /opt/drupal/vendor/bin/drush /usr/local/bin/drush \
  && drush --version

# 初回起動時にDrupalをインストールする用のshellを配置
COPY docker-entrypoint.sh /tmp
RUN sed -i 's/\r//g' /tmp/docker-entrypoint.sh
