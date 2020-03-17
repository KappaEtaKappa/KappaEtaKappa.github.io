# Updating posts
Posts are how we keep the world updated about KHK. Anything can fit here as a 'post'. The more posts the better.

# Writing posts
Add a new file to the `_posts/` directory. The filename should look like `YYY-MM-DD-anything.md`. Jekyll uses this date format to set the data of publication.

Posts should be written in [markdown](https://daringfireball.net/projects/markdown/). You can also write inline HTML too since Jekyll uses [kramdown](https://kramdown.gettalong.org/index.html).

**Note:** After processing, Jekyll outputs all pages from the `_posts` directly to the `/posts` directory (as raw HTMl).

# Font Matter
Make sure to add [front matter](https://jekyllrb.com/docs/front-matter/) to your file. As a *post* there's a few required fields.
```yml
---
# Self descriptive - You don't need to add a title as part of your markdown content.
title: New Fall Members
# This is an image that's rendered *full bleed* and at the top of your post
featured: /assets/images/banquet.jpg
author: You! # Or whoever else deserves post attribution
# Note: Authors does not have to be `members` or have an bio in `member_bios.yml`.
#   In fact, authors can be anything, e.g. "This semester's incoming class."
---

We're happy to announce our incomin...
# Note: Use `<!-- More -->` to tell Jekyll where to truncate excerpts for use in `post_card.html`
# Note: Don't put links before the `<!-- More -->` directive (bug)
```

**Note:** Jekyll requires all posts to have front matter, even if there's no fields set. Otherwise the file won't be parsed.

# Liquid Templating
If you need to render data with *conditions*, *iterations* or other computation, you can using [Liquid](https://shopify.github.io/liquid/) tags.

```yml
Today is {{"now" | date: "%b %d, %y"}}.
---
Output > Today is Today is Sep 17, 18.
```

Liquid also allows you to use front matter data and other site-wide data. Checkout `_members/index.php` for a real example.
