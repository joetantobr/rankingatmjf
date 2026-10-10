import { createFileRoute } from "@tanstack/react-router";

export const Route = createFileRoute("/")({
  head: () => ({
    meta: [
      { title: "Ranking ATMJF — Tênis de Mesa" },
      { name: "description", content: "Registre partidas e acompanhe o ranking dos jogadores da ATMJF." },
      { property: "og:title", content: "Ranking ATMJF — Tênis de Mesa" },
      { property: "og:description", content: "Registre partidas e acompanhe o ranking dos jogadores da ATMJF." },
      { property: "og:type", content: "website" },
      { name: "twitter:card", content: "summary" },
    ],
  }),
  component: Index,
});

function Index() {
  return (
    <iframe
      src="/ranking.html"
      title="Ranking ATMJF"
      className="fixed inset-0 h-full w-full border-0"
    />
  );
}
