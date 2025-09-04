<%*
const characterName = await tp.system.prompt("Enter character name");
const baseFolder = "Characters"; // Change if needed

// Create the folder
const folderPath = `${baseFolder}/${characterName}`;
await app.vault.createFolder(folderPath).catch(() => {});

// Create the new character note path
const filePath = `${folderPath}/${characterName}.md`;

// Generate the content
const frontmatter = `---
name: ${characterName}
player: 
system: 
campaign: 
tags: [character]
created: ${tp.date.now("YYYY-MM-DD")}
---

# ${characterName}

## Concept
## Stats
## Backstory
`;

await app.vault.create(filePath, frontmatter);
tR += `Character "${characterName}" created at: [[${filePath}]]`;
%>
