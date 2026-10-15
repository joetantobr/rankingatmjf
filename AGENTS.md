<!-- LOVABLE:BEGIN -->
> [!IMPORTANT]
> This project is connected to [Lovable](https://lovable.dev). Avoid rewriting
> published git history — force pushing, or rebasing/amending/squashing commits
> that are already pushed — as it rewrites history on Lovable's side and the
> user will likely lose their project history.
>
> Commits you push to the connected branch sync back to Lovable and show up in
> the editor, so keep the branch in a working state.
<!-- LOVABLE:END -->

- Keep match-screen layout changes in the standalone ranking page served by the root iframe so the existing shared-data behavior stays intact.
- public/ranking.html stores data through a Supabase adapter ({id, data} rows in players/matches/settings/clubs) — never reintroduce the Claude artifact `claude.use('db')`/`onSnapshot` API; downloads use a Blob fallback, user profiles are unavailable.
- The app ships the user's v3.8.3 multi-club version; clubs need a row in public.clubs (id TEXT PK, data JSONB, public policies, realtime publication) like the other tables.
