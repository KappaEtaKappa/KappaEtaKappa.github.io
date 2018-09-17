# Updating Events
Events are how people get involved with KHK. It's important to keep these up to day each semester.

# Creating a new event
Add a new file to the `_events/` directory. The filename should look like `YYY-MM-DD-anything.md`. This date is ***very important*** because it will be used when rendering the actual date of the event.

Posts should be written in [markdown](https://daringfireball.net/projects/markdown/). You can also write inline HTML too since Jekyll uses [kramdown](https://kramdown.gettalong.org/index.html).

**Note:** After processing, Jekyll outputs all pages from the `_events` directly to the `/events` directory (as raw HTMl).

# Font Matter
Make sure to add [front matter](https://jekyllrb.com/docs/front-matter/) to your file. As an *event* there's a few required fields.
```yml
---
# Self descriptive - You don't need to add a title as part of your markdown content.
title: New Fall Members
# This is an image that's rendered *full bleed* and at the top of your post
featured: /assets/images/banquet.jpg
location: Our house # A common name for the location/landmark of the event
# A navigable address. Links that use this blob will open in Google Maps.
address: >- # In YAML, `>-` means the following is multiline text
  114 N. Orchard St.
  Madison, WI 53715
---

Join us for our semi-annual...
```

**Note:** Jekyll requires all posts to have front matter, even if there's no fields set. Otherwise the file won't be parsed.

# Liquid Templating
If you need to render data with *conditions*, *iterations* or other computation, you can using [Liquid](https://shopify.github.io/liquid/) tags.

```yml
Today is {{"now" | date: "%b %d, %y"}}.
---
Output > Today is Today is Sep 17, 18.
```

Liquid also allows you to use front matter data and other site-wide data. Checkout `_members/index.php` for an example.
