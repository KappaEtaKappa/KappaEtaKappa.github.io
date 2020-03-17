#!/bin/bash
# This scrip pulls and builds the latest version of the site.
# It can be run manually, but it is much more useful as a cron job.
#
# For example, this crontab entry will build the site every 15 minutes.
#
#   */15 * * * * systemd-cat -t "delta.khk.org" /home/admin/delta.khk.org/server/update.sh /home/admin/delta.khk.org /var/www/delta.khk.org

if [[ $# -eq 0 ]] ; then
    printf "\n[$(date)] Update Failed: Missing path(s)"
    printf "\n\tUsage: update.sh <site path> <output path>"
    printf "\n"
    exit 1
fi

printf "\n[$(date)] Update Started: `cd $1`\n"
cd $1

printf "[$(date)] Pull Started: `git checkout master && git pull`\n"
git checkout master
git pull

printf "[$(date)] Dependency Update Started: `bundle install`\n"
bundle install

printf "[$(date)] Jekyll Build Started: `bundle exec jekyll build -d $2`\n"
bundle exec jekyll build -d $2

printf "[$(date)] Update Deployed: $1 > $2\n"
exit 0;
