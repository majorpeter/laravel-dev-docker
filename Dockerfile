FROM cswl/xampp:latest

# Link PHP to PATH
RUN ln -s /opt/lampp/bin/php /usr/local/bin/php

# Install Composer
RUN curl -s https://getcomposer.org/installer | /opt/lampp/bin/php

# Move to PATH and rename
RUN mv composer.phar /usr/local/bin/composer

# Install Laravel and link to PATH
RUN composer global require laravel/installer
RUN ln -s /root/.composer/vendor/bin/laravel /usr/local/bin/laravel
