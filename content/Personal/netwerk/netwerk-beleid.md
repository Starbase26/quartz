---
created: 2025-07-31 18:04:03
modified: 2025-07-31 18:41:52
---

# Starbase 26 Network Policies

#todo/netwerk
- [ ] Verander FQDN van servers
- [x] Voeg `*.lab.starbase26.nl` toe aan DNS configuratie
- [ ] Update Proxy List voor huidige servers
- [ ] Update DNS lijst voor huidige servers

**NOOT**
	- *nginx-proxy-manager kan geen custom locaties van aparte toegang voorzien, dit gebeurd op host niveau!*

## Homelab

- [ ] `*.lab.starbase26.nl` -> 
      Alle servers in HomeLab
- [ ] `*.starbase26.nl` ->
      Alle servers die ook van buiten toegankelijk moeten zijn 
	- **?** DMZ

```
local.starbase26.nl
lab.starbase26.nl
``` 


### Naming convention

> **Alle servers moeten een duidelijke naam in `*.lab.starbase26.nl` hebben dat de functie/doel van de server aangeeft!**

- De naam is alleen voor de box, niet voor enige services die erop draaien.
	- Voorbeeld:
	  `seedbox.lab.starbase26.nl` draait verschillende \*Arr services, deze krijgen niet een aparte naam.
