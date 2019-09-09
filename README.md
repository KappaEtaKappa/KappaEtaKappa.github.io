# delta.khk.org

This project is built with [Jekyll](https://jekyllrb.com/). Jekyll is a simple and powerful tool for building static websites. You can learn a lot from the documentation. Here are a few links to get started.
- [Installation](https://jekyllrb.com/docs/installation/)
- [Configuration](https://jekyllrb.com/docs/configuration/)
- [Front Matter](https://jekyllrb.com/docs/frontmatter/)
- [Templates](https://jekyllrb.com/docs/templates/)

Checkout the section, *Why Jekyll?*, below for more.

### Development
Before you begin, make sure to [install Jekyll](https://jekyllrb.com/docs/installation/).
```bash
# Clone the repository
$ git clone git@github.com:KappaEtaKappa/delta.khk.org.git
$ cd delta.khk.org

# Download and build all project dependencies
$ bundle install --path vendor/bundle

# Run the Jekyll development server (http://localhost:1924)
$ bundle exec jekyll serve
```
Jekyll will watch the current directory for changes and rebuild automatically.

**Note:** When running in production, we use `jekyll build` to create all required files *once* and NGINX (or Apache) to serve them. The server provided by Jekyll is just for convenience.

### Pushing to Production
It's best to make small, contained changes. Once you've committed your change(s) submit a pull-request. Reach out to the current site maintainer(s) to have your code merged and pulled into production.

If you're new to git, checkout [Git No Deep Shit!](http://rogerdudler.github.io/git-guide/). Here is the basic workflow.
```bash
# Checkout the repository
$ git clone <repo>

# Start a new branch
$ git checkout -b my_new_feature
```
Make your changes now. It's best to keep your commits small. Make sure to build and verify your changes.
```bash
# Add and commit your changes
$ git add --all
$ git commit -m "<description of changes>"

# Push your changes to github
$ git push --set-upstream origin my_new_feature
# NOTE: If your upstream is already set, you can omit that flag. `git push` should work.
```
Your branch will now be on Github. You can create a pull request from there. Maintainers and other developers can then comment on and merge your changes into master. Once your changes are on master, they can be pulled into production.

Depending on the host configuration, new changes will be picked up periodically. Ask your webmaster for details.

---

### Why Jekyll?
KHK Delta is notorious for re-creating our website. In the past we've used CMS solutions like Wordpress and Drupal. These systems make management impressively easy for non-technical maintainers. You can write new content and upload photos directly from the website's admin view.

This user-convenience comes with a lot of site weight. Wordpress, PHP, and MySQL all require updates. Sometimes versions aren't directly compatible. Often updates will take down our site. This also means our site isn't portable. Once set-up, it's impossible to move. This isn't maintainable with such a high turnover in webmasters. Worse yet, our 'site' start to seem detached from our website. Jekyll allows us to write simple markdown files for all of our content. Our images are kept static and referenced by their literal path. Our styles and features can change readily without going through Wordpress or Wordpress themes and plugins.

Conventional database-*like* data, like 'member' data, is supported by Jekyll too. JSON, YAML, and CSV files can be created to hold any well-structured data. Accessing our member data is as simple as reading from site.members. You might be saying, "what about speed?" Jekyll is a static site engine. This mean all cost is spent up-front. Loading the site is actually incredibly fast. Then you might ask, "what about dynamic content? Like public comments?" This [is supported](https://jekyllrb.com/docs/plugins/), but it's not meaningful for our site.

Ultimately, the all-in-one solutions of the past turned out to be too much hassle. Our content is now quickly readable and easy to update. Site updates are done with the familiar tool, Git.  We're invulnerable to security attacks [common to CMS site](https://www.cvedetails.com/vulnerability-list/vendor_id-2337/product_id-4096/). Our site is *much faster* to load and works great on mobile.

Plus, we're a computer engineering fraternity, our site should be built by us.
