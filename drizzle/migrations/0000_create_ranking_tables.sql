CREATE TABLE public.players (id TEXT PRIMARY KEY, data JSONB NOT NULL);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.players TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.players TO authenticated;
GRANT ALL ON public.players TO service_role;
ALTER TABLE public.players ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public read players" ON public.players FOR SELECT TO anon, authenticated USING (true);
CREATE POLICY "public write players" ON public.players FOR INSERT TO anon, authenticated WITH CHECK (true);
CREATE POLICY "public update players" ON public.players FOR UPDATE TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "public delete players" ON public.players FOR DELETE TO anon, authenticated USING (true);

CREATE TABLE public.matches (id TEXT PRIMARY KEY, data JSONB NOT NULL);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.matches TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.matches TO authenticated;
GRANT ALL ON public.matches TO service_role;
ALTER TABLE public.matches ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public read matches" ON public.matches FOR SELECT TO anon, authenticated USING (true);
CREATE POLICY "public write matches" ON public.matches FOR INSERT TO anon, authenticated WITH CHECK (true);
CREATE POLICY "public update matches" ON public.matches FOR UPDATE TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "public delete matches" ON public.matches FOR DELETE TO anon, authenticated USING (true);

CREATE TABLE public.settings (id TEXT PRIMARY KEY, data JSONB NOT NULL);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.settings TO anon;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.settings TO authenticated;
GRANT ALL ON public.settings TO service_role;
ALTER TABLE public.settings ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public read settings" ON public.settings FOR SELECT TO anon, authenticated USING (true);
CREATE POLICY "public write settings" ON public.settings FOR INSERT TO anon, authenticated WITH CHECK (true);
CREATE POLICY "public update settings" ON public.settings FOR UPDATE TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "public delete settings" ON public.settings FOR DELETE TO anon, authenticated USING (true);

ALTER PUBLICATION supabase_realtime ADD TABLE public.players;
ALTER PUBLICATION supabase_realtime ADD TABLE public.matches;
ALTER PUBLICATION supabase_realtime ADD TABLE public.settings;