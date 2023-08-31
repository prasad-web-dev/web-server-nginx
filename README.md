# web-server-nginx

```
Working with nginx configuration
    01. nginx install scrripts.
            - manually installaiton steps:
                => sudo apt install -y nginx
            - for automation install using bash scripts.
                => chmod +x nginx-install.sh
                    ./nginx-install.sh

    02. nginx.configuration
            - nginx configuration file = nginx.conf

    03. virtual host configuration.
            - php application/website
            - wordpress websites.
            - nginx virtual host = nginx.conf

    04. handling logs size.
            - use logroation handle logs size.
            - edit logroation rotation file
                = nano /etc/logrotate.d/nginx  and save it.
```