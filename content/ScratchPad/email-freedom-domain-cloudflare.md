---
created: 2025-08-12 15:40:56
modified: 2025-08-12 15:49:46
---

Onderwerp:
DNS migratie naar Cloudflare zonder e-mail downtime

---

Beste Freedom.nl,

Ik weet dat u geen ondersteuning geeft voor interne netwerken e.d. Maar ik hoop dat dit een onderwerp is waar u wel wat tips over kan geven. 

Ik maak op dit moment gebruik van reverse proxy in mijn netwerk, maar wil ook graag \*.subdomein.starbase26.nl gebruiken voor SSL certificaten. Volgens mij is dat niet iets dat u ondersteunt.

Daarom wil ik graag Cloudflare gebruiken, ten minste dat is een van de redenen. 

Waar ik echter bezorgt over ben, is dat wanneer ik de nameservers van Freedom.nl naar Cloudflare omzet, dat ik dan wellicht downtime heb in het ontvangen van e-mails. 
Daarnaast ben ik ook bezorgt dat Soverin misschien niet de MX records accepteert van Cloudflare, want ik zag namelijk op mij.freedom.nl onder domein instellingen, dat de mail voor starbase.nl is geconfigureerd als freedom.nl 

Hoe graag ik ook deze conversie zou willen maken, is downtime van mijn e-mail echt een deal breaker. 

Kunt u iets zeggen of mijn bezorgdheden valide zijn en heeft u wellicht tips hoe ik dat tot een minimum kan beperken. Of is er een mogelijkheid dat nginx-proxy-manager te configureren is om een dns-01 challenge uit te voeren met uw DNS-servers?

Alvast mijn zeer hartelijke dank  voor het lezen van de e-mail en ik hoop dat u antwoord hierop kan geven.

Met vriendelijke groet,

Kevin Schaaps
Een blije klant!

---

### Verbeterde versie volgens ChatGPT

