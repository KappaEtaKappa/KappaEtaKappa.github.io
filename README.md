# delta.khk.org

This project is built with [Jekyll](https://jekyllrb.com/). Jekyll is a simple and powerful tool for building static websites. You can learn a lot from the documentation. Here are a few links to get started.
- [Installation](https://jekyllrb.com/docs/installation/)
- [Configuration](https://jekyllrb.com/docs/configuration/)
- [Front Matter](https://jekyllrb.com/docs/frontmatter/)
- [Templates](https://jekyllrb.com/docs/templates/)

### Development
```bash
# Fork and/or checkout the repository 
$ git clone git@github.com:KappaEtaKappa/delta.khk.org.jekyll.git

# Run the Jekyll development server (http://localhost:1924)
$ cd delta.khk.org.jekyll
$ jekyll serve
```
Jekyll will watch the current directory for changes and rebuild automatically.

When running in production, we use `jekyll build` to create all required files and NGINX (or Apache) to serve them. The server provided by Jekyll is just for convenience.

### Pushing to Production
It's best to make small, contained changes. Once you've committed your change(s) submit a pull-request. Reach out to the current site maintainer(s) to have your code merged and pulled into production.

If you're new to git, checkout [Git No Deep Shit!](http://rogerdudler.github.io/git-guide/). Here is the basic workflow.
```bash
# Checkout the repository 
$ git clone <repo>

# Start a new branch
$ git checkout -b my_new_feature
```
Make your changes now. It's best to keep your commits small.
```bash
# Add and commit your changes
$ git add --all
$ git commit -m "<description of changes>"

# Push your changes to github
$ git push
```
Your changes will now be on Github. You can create a pull request from there. Maintainers and other developers can then comment on and merge your changes into master. Once your changes are on master, they can be pulled into production. 


