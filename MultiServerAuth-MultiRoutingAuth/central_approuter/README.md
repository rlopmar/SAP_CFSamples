

### Important notes
1. For role restrictions to work in CAP, we have to define a Scope having the same name as the Role being used in CAP @restrict(...) annotation

WON'T WORK:
Scopes:
- read
- write

Roles:
- viewer --> has **read** scope
- editor --> has **read and write** scopes


WILL WORK:
Scopes:
- viewer
- editor

Roles:
- viewer --> has **viewer** scope
- editor --> has **viewer and editor** scopes