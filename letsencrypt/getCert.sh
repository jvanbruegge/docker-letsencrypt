#!/bin/bash

certbot certonly --webroot -w /var/www/html -d <domain> -d <otherDomain>
