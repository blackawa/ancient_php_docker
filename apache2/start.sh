#!/bin/bash
source /etc/apache2/envvars
apache2 -V
apache2 -D FOREGROUND
