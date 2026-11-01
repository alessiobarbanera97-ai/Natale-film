# Film sotto l'albero

App natalizia per Alessio e Giada: quattro proposte casuali di film e serie TV, voto "Lo vediamo / Non lo vediamo", regalo che si apre quando piace a entrambi, film visti con voti a pupazzi di neve e statistiche.

È un'app web installabile (PWA): senza build e senza dipendenze da installare.

## File da caricare (tutti, nella radice del repository)

`index.html`, `manifest.webmanifest`, `sw.js` (aggiornato), `icon-192.png`, `icon-512.png`, `apple-touch-icon.png`, `README.md`

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

- Lista, proposte, voti e film visti sono salvati online su Firebase (Firestore, piano gratuito) e si sincronizzano tra i telefoni in tempo reale.
- La prima volta ogni telefono chiede "Chi sei?" e apre il proprio profilo. Il selettore in alto permette di cambiare vista; "Affiancate" mostra entrambe su schermi larghi.
- Se Firebase non è raggiungibile, l'app funziona lo stesso ma solo su quel dispositivo (la scritta in alto diventa "Solo su questo dispositivo").
- "Ricomincia da capo" azzera lista, proposte e film visti per entrambi.

## Database (Firestore)

I dati stanno nel documento `stanze/natale` del progetto Firebase configurato in `index.html` (costante `FIREBASE_CONFIG`). In Firestore, scheda **Regole**, incolla:

```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /stanze/natale {
      allow read: if true;
      allow write: if request.resource.data.keys().hasOnly(['films', 'seen', 'proposals', 'uid']);
    }
  }
}
```

Le regole non richiedono accesso: chi conosce l'indirizzo dell'app può leggere e modificare quel documento. Per un'app privata di coppia il rischio è basso; per chiuderla del tutto serve aggiungere un login.
- Se aggiorni `index.html` e l'app installata mostra ancora la versione vecchia, cambia il nome `CACHE` in `sw.js` (per esempio `v2`) e ricarica.
