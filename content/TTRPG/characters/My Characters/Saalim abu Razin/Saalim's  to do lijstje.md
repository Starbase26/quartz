---
created: 2025-07-27 15:52:13
modified: 2025-07-27 15:52:19
---

# To do:

## Takenlijst

```dataview
TASK
FROM "TTRPG"
WHERE contains(lower(character-name), "saalim")
  AND contains(lower(file.tags), "#todo/character")
  AND !completed
SORT modified DESC
```

## Lijst van notes met taken

<!-- QueryToSerialize: TABLE WITHOUT ID file.link as "Locatie" FROM "TTRPG" WHERE contains(lower(file.tags), "#todo/character") SORT modified DESC -->
<!-- SerializedQuery: TABLE WITHOUT ID file.link as "Locatie" FROM "TTRPG" WHERE contains(lower(file.tags), "#todo/character") SORT modified DESC -->

| Locatie                                       |
| --------------------------------------------- |
| [[20250728]] |
| [[20250726]] |
<!-- SerializedQuery END -->
