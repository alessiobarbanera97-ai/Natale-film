# Film sotto l'albero

App natalizia per Alessio e Giada: quattro proposte casuali di film e serie TV, voto "Lo vediamo / Non lo vediamo", regalo che si apre quando piace a entrambi, film visti con voti a pupazzi di neve e statistiche.

È un'app web installabile (PWA): senza build e senza dipendenze da installare.

## File da caricare (tutti, nella radice del repository)

`index.html`, `manifest.webmanifest`, `sw.js`, `icon-192.png`, `icon-512.png`, `apple-touch-icon.png`, `README.md`

## Pubblicarla con GitHub Pages

1. Crea un nuovo repository su GitHub.
2. Carica tutti i file qui sopra nella radice.
3. Vai su **Settings → Pages**, scegli **Deploy from a branch**, branch `main`, cartella `/ (root)`, poi **Save**.
4. Dopo un minuto circa l'app è online su `https://TUO-UTENTE.github.io/NOME-REPOSITORY/`.

## Installarla come una vera app

- **iPhone (Safari):** apri il link, tocca Condividi, poi "Aggiungi alla schermata Home".
- **Android (Chrome):** apri il link, tocca il menu ⋮, poi "Installa app" o "Aggiungi a schermata Home".
- **Computer (Chrome o Edge):** clicca l'icona di installazione nella barra degli indirizzi.

Si apre a schermo intero con la sua icona, e dopo la prima visita funziona anche senza connessione.

## Come funziona

- Lista, proposte, voti e film visti restano salvati sul dispositivo (localStorage).
- Alessio e Giada usano lo stesso dispositivo e cambiano profilo dal selettore in alto. "Affiancate" mostra entrambe le viste insieme su schermi larghi.
- Con due telefoni diversi i dati non si sincronizzano: servirebbe un piccolo servizio online per condividerli.
- "Ricomincia da capo" cancella i dati salvati e ripristina la lista di partenza.
- Se aggiorni `index.html` e l'app installata mostra ancora la versione vecchia, cambia il nome `CACHE` in `sw.js` (per esempio `v2`) e ricarica.
