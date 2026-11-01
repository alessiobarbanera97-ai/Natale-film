# Christmas Movie Night – Alessio & Giada

## Cosa contiene
- PWA installabile su iPhone e Android
- Profili Alessio e Giada
- Quattro proposte casuali al giorno (con possibilità di nuovo sorteggio)
- Voti separati e semafori a fiocco di neve
- Doppio sì e conferma del film
- Libreria condivisa, archivio dei visti e voti con pupazzi di neve
- Statistiche sulle proposte

## 1. Pubblicazione rapida (Netlify Drop)
1. Estrai lo ZIP sul computer.
2. Vai su https://app.netlify.com/drop e accedi/crea un account.
3. Trascina la cartella `christmas_movie_night` nella pagina.
4. Netlify pubblicherà il sito e ti darà un indirizzo HTTPS.

## 2. Attiva il database condiviso (necessario per due telefoni)
1. Crea un progetto gratuito su https://supabase.com/.
2. Nel progetto apri SQL Editor > New query.
3. Incolla tutto il contenuto di `supabase-setup.sql` e premi Run.
4. Vai in Project Settings > API. Copia Project URL e anon/public key (NON la service_role key).
5. Apri l'app pubblicata > Setup. Inserisci URL, anon/public key e un codice stanza che scegli tu.
6. Ripeti gli stessi valori nella sezione Setup sull'altro iPhone.

IMPORTANTE: la policy SQL inclusa è una configurazione iniziale semplice: chiunque conosca URL, anon key e codice stanza può accedere ai dati della stanza. Non inserire dati personali o sensibili. Per una pubblicazione con sicurezza forte occorre aggiungere autenticazione e policy RLS per utenti autorizzati.

## 3. Installazione su iPhone (tu e Giada)
1. Aprite il link Netlify in Safari (non dentro Instagram/WhatsApp).
2. Toccate Condividi.
3. Scegliete “Aggiungi alla schermata Home”.
4. Attivate “Apri come app”, se compare, poi toccate Aggiungi.
5. Aprite l'icona Christmas Movie Night dalla schermata Home.

Entrambi usate lo stesso link, lo stesso progetto Supabase e lo stesso codice stanza. Ognuno seleziona il proprio profilo prima di votare.

## Nota sul prototipo
La sincronizzazione in tempo reale è implementata tramite Supabase Realtime. Le proposte giornaliere vengono rinnovate al primo accesso del giorno. Il progetto va pubblicato su HTTPS per installazione PWA e service worker.
