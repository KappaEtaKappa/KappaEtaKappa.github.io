#!/bin/bash
# This scrip pulls and builds the latest version of the site.
# It can be run manually, but it is much more useful as a cron job.
#
# For example, this crontab entry will build the site every 15 minutes.
#
#   0 */15 * ? * * sh /home/admin/delta.khk.org/server/update.sh /home/admin/delta.khk.org /var/www/delta.khk.org

if [[ $# -eq 0 ]] ; then
    printf "\n\n[$(date)]Jekyll Build Failed: No path to Jekyll site supplied.\n"
    exit 1
fi

cd $1
git checkout master
git pull
bundle install
bundle exec jekyll build -d $2

printf "\n\n[$(date)] \tJekyll Build: $1 > $2\n"
exit 0;
