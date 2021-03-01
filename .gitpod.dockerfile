# Gitpod docker image for WordPress | https://github.com/rhettbarber/gitpod-wordpress
# License: MIT (c) 2020 Luiz Paulo "Bills"
# Version: 0.8
FROM gitpod/workspace-mysql

### General Settings ###
ENV PHP_VERSION="7.4"
ENV APACHE_DOCROOT="public_html"

### Setups, Node, NPM ###
USER gitpod
ADD https://api.wordpress.org/secret-key/1.1/salt?rnd=152634 /dev/null
#RUN git clone https://github.com/rhettbarber/gitpod-wordpress /workspace/gitpod-wordpress && \

USER root

RUN git clone https://github.com/rhettbarber/gitpod-wordpress /workspace/gitpod-wordpress-new/ 
#mv /workspace/gitpod-wordpress/temp/.git gitpod-wordpress/.git && \
#rm -rf /workspace/gitpod-wordpress/temp && \


#    cat /workspace/gitpod-wordpress/conf/.bashrc.sh >> /workspace/.bashrc && \

#   bash -c ". .nvm/nvm.sh && nvm install --lts"
# bash -c "nvm install --lts"


# #0## MailHog ###
# ARG DEBIAN_FRONTEND=noninteractive
# RUN go get github.com/mailhog/MailHog && \
#     go get github.com/mailhog/mhsendmail && \
#     cp $GOPATH/bin/MailHog /usr/local/bin/mailhog && \
#     cp $GOPATH/bin/mhsendmail /usr/local/bin/mhsendmail && \
#     ln $GOPATH/bin/mhsendmail /usr/sbin/sendmail && \
#     ln $GOPATH/bin/mhsendmail /usr/bin/mail &&\
#     ### Apache ###
#     # apt-get -y install apache2 && \
#     chown -R gitpod:gitpod /var/run/apache2 /var/lock/apache2 /var/log/apache2 && \
#     echo "include /workspace/gitpod-wordpress/conf/apache.conf" > /etc/apache2/apache2.conf && \
#     echo ". /workspace/gitpod-wordpress/conf/apache.env.sh" > /etc/apache2/envvars && \
#     ### PHP ###
#     apt-get -qy purge php* && \
#     add-apt-repository ppa:ondrej/php && \
#     apt-get update && \
#     apt-get -qy install \
#         libapache2-mod-php \
#         php${PHP_VERSION} \
#         php${PHP_VERSION}-common \
#         php${PHP_VERSION}-cli \
#         php${PHP_VERSION}-mbstring \
#         php${PHP_VERSION}-curl \
#         php${PHP_VERSION}-gd \
#         php${PHP_VERSION}-intl \
#         php${PHP_VERSION}-mysql \
#         php${PHP_VERSION}-xml \
#         php${PHP_VERSION}-json \
#         php${PHP_VERSION}-zip \
#         php${PHP_VERSION}-soap \
#         php${PHP_VERSION}-bcmath \
#         php${PHP_VERSION}-opcache \
#         php-xdebug && \
#     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* && \
#     update-alternatives --set php /usr/bin/php${PHP_VERSION} && \
#     cat /home/gitpod/gitpod-wordpress/conf/php.ini >> /etc/php/${PHP_VERSION}/apache2/php.ini && \
#     ### Setup PHP in Apache ###
#     a2dismod php* && \
#     a2dismod mpm_* && \
#     a2enmod mpm_prefork && \
#     a2enmod php${PHP_VERSION} && \
#     ### WP-CLI ###
#     wget -q https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /workspace/wp-cli.phar && \
#     chmod +x /workspace/wp-cli.phar && \
#     mv /workspace/wp-cli.phar /usr/local/bin/wp && \
#     chown gitpod:gitpod /usr/local/bin/wp

# USER gitpod
