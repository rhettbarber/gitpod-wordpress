FROM gitpod/workspace-mysql

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/


### General Settings ###
ENV PHP_VERSION="7.4.3"
ENV APACHE_DOCROOT="public_html"

ADD https://api.wordpress.org/secret-key/1.1/salt?rnd=152634 /dev/null
RUN git clone https://github.com/rhettbarber/gitpod-wordpress $HOME/gitpod-wordpress && \
    cat $HOME/gitpod-wordpress/conf/.bashrc.sh >> $HOME/.bashrc && \
    . $HOME/.bashrc && \
    bash -c ". .nvm/nvm.sh && nvm install --lts"