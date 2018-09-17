# Updating Members
Member lists are found in `./{year}/{semester}.html`. Create a new file in the appropriate destination. Fill in the `semester_index` `members` variables in the YAML frontmatter.

```yml
semester_index: 5 # Last semester's index plus 1
members:
- Joseph Dailey
- Ethan Erdmann
- Lucas Mullens
```

**Note:** These names are *IDs*. They can be anything that matches an object in `../_data/member_bios.yml`

# Adding Member Information
Add a section to `member_bios.yml`.
```yml
/_data/member_bios.yml
---
Ethan Erdmann: # Matching ID
  name: Ethan 'Fish' Erdmann # Rendered name
  status: Forester for the DNR of Minnesota # Anything
  # Partial Internal (preferred) or full external photo URL
  photo_uri: /assets/images/members/Erdmann, Ethan.jpg
  # Linkedin, Github, or any other link
  # Checkout/update /_includes/member_card.html for supported themes
  connect_uri: https://www.linkedin.com/in/eaerdmann/
```

# Rendering Member Information
`/_includes/member_card.html` is an HTML fragment that can be included with liquid.
```yml
/_layouts/members_layout.html
---
{% for member_id in page.members %}
  {% include member_card.html id=member_id %}
{% endfor %}
```
