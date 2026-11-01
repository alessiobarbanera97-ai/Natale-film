-- Christmas Movie Night: setup Supabase
-- Supabase Dashboard > SQL Editor > New query > incolla ed esegui.
create table if not exists public.app_state (
  id text primary key,
  state jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.app_state enable row level security;
-- SEMPLICE modalità privata tramite codice stanza non segreto: chi conosce
-- URL, anon key e room può leggere/modificare lo stato. Non usare dati sensibili.
create policy "cmn_read" on public.app_state for select to anon using (true);
create policy "cmn_insert" on public.app_state for insert to anon with check (true);
create policy "cmn_update" on public.app_state for update to anon using (true) with check (true);
alter publication supabase_realtime add table public.app_state;
