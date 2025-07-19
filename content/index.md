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

<!-- QueryToSerialize: TABLE WITHOUT ID file.folder as "dir", file.name as "name" FROM "" SORT file.mtime DESC, 1 DESC-->
<!-- QueryToSerialize: LIST FROM "" SORT file.mtime DESC -->