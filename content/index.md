---
date: 2025-07-19
---

# Kevin's Vault


## Latest updated notes:

```dataview
TABLE title, file.folder as "dir"
WHERE file.name != ""
AND title != ""
SORT file-mtime DESC
LIMIT 30
```

<!-- QueryToSerialize: TABLE title FROM "the-vault" WHERE file.name != "" AND title != "" SORT file.mtime DESC LIMIT 30 -->