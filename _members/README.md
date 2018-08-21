# Updating Members
Member lists are found in `./{year}/{semester}.html`. Create a new file in the appropriate destination. Fill in the `members` variable in the YAML frontmatter.

```yml
members:
- Joseph Dailey
- Ethan Erdmann
- Lucas Mullens
```

**Note:** These names are IDs. They can be anything as long as they match an object in `../_data/member_bios.yml`

# Adding Member Information
Add a section to `member_bios`.
```yml
/_data/member_bios.yml
---
Ethan Erdmann: # Matching ID
  name: Ethan Erdmann
  status: alumnus
```

# Rendering Member Information
`member.html` is an HTML fragment that can be included with liquid.
```yml
/_layouts/members_layout.html
---
{% for member_id in page.members %}
  {% include member.html id=member_id %}
{% endfor %}
```
