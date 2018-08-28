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

# Run the Jekyll development server
$ cd delta.khk.org.jekyll
$ jekyll serve
```
Jekyll will watch the current directory for changes and rebuild automatically.

When running in production, we use `jekyll build` to create all required files and NGINX (or Apache) to serve them. The server provided by Jekyll is just for convenience.

It's best to make small, contained changes. When you've committed your change(s) submit a pull-request. Reach out to the current maintainer(s) to have your code merged and loaded into production.
