# Film sotto l'albero

App natalizia per Alessio e Giada: quattro proposte casuali di film e serie TV, voto "Lo vediamo / Non lo vediamo", regalo che si apre quando piace a entrambi, film visti con voti a pupazzi di neve e statistiche.

È un unico file statico (`index.html`), senza build e senza dipendenze da installare.

## Pubblicarla con GitHub Pages

1. Crea un nuovo repository su GitHub.
2. Carica `index.html` e `README.md` nella radice del repository.
3. Vai su **Settings → Pages**, scegli **Deploy from a branch**, branch `main`, cartella `/ (root)`, poi **Save**.
4. Dopo un minuto circa l'app è online su `https://TUO-UTENTE.github.io/NOME-REPOSITORY/`.

## Come funziona

- Lista, proposte, voti e film visti restano salvati nel browser del dispositivo (localStorage).
- Alessio e Giada usano lo stesso dispositivo e cambiano profilo dal selettore in alto. "Affiancate" mostra entrambe le viste insieme su schermi larghi.
- Se usate due telefoni diversi, i dati non si sincronizzano: servirebbe un piccolo servizio online per condividerli.
- Il pulsante "Ricomincia da capo" cancella i dati salvati e ripristina la lista di partenza.
