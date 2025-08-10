---
type: character
created: 2025-08-09 18:59:29
modified: 2025-08-10 02:40:56
player: Kevin Schaaps
character-name:
  - Drovath Vhaelythar
world: kurvalyn
location: kemet
---

# Drovath Vhaelythar

> [!Pronounciation]-
> **Drovath**
> - Dro: like _dro_ in “droll” (rhymes with “throw” without the w)
> - vath: “vath” with soft “th” as in “thin”
> So: DRO-vath (emphasis on the first syllable)
> **Vhaelythar**
> - Vhae: “Vhay” — like “v” + “hay” (soft, breathy)
> - ly: short “lih” as in “lit” without the t
> - thar: “th” as in “thorn,” + “ar” as in “car”
> So: Vhay-LIH-thar (emphasis on the middle syllable)
> 
> **IPA**: /ˈdɹoʊ.væθ ˈvhaɪ.lɪ.θɑɹ/

---

- [[charsheet-drovath-vhaelythar.pdf|Character Sheet]]

---

## Notes

### Things still to do

```dataview
TABLE file.mtime AS "Date Modified"
FROM ""
WHERE contains(file.character-name, "Drovath Vhaelythar")
AND any(file.tags, (t) => contains(t, "todo"))
SORT file.mtime DESC
```

---

Nieuwe poging:

```dataview
TABLE character-name
FROM  ""
WHERE contains(character-name, "Saalim")
```
