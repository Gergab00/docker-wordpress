const fs = require('fs');
const { execSync } = require('child_process');

const outputFile = 'CHANGELOG.md';

// Ejecuta el comando 'git log' para obtener los mensajes de commit
const gitLog = execSync('git log --pretty=format:"## %s%n- **Commit ID:** %H%n- **Autor:** %an <%ae>%n- **Fecha:** %cd"', { encoding: 'utf-8' });

// Leer el contenido actual del archivo changelog.md
let changelogContent = '# CHANGELOG'

// Agregar los mensajes de commit al inicio del archivo changelog.md
changelogContent = `${changelogContent}\n\n${gitLog}`;

// Escribir el contenido actualizado en el archivo changelog.md
fs.writeFileSync(outputFile, changelogContent);

console.log('Changelog generado exitosamente.');
