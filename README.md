# Drupal on Docker

## Usage

```sh
# Set up
$ docker run --rm drupal:11.0.12-php8.3-apache-bookworm \
bash -c "composer require drush/drush && tar -cC /opt/drupal --exclude ./vendor --exclude ./web/core --exclude ./web/profiles ." | tar -xC ./
$ docker compose up
# Clean up
$ docker compose stop
$ docker compose down 
$ docker compose down --volumes
```
