<div align="center">

# Arbitrage observer — 2026-10-30

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--10--30-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 18.06 h observed, 4,324 polls, 3,715 candidates, 0 cleared costs, 0 would have fired; 197 chases; best -0.000005 ETH on curious-oblique-egret Juniper→Rowan Quay at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **18.06 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 18.05 h |
| Polls · pair samples | 4,324 · 43,205 |
| Pairs watched · pools priced | 11 · 61 |
| Study to date (observed) | **104.08 h** of 168 h (61.9%) |
| Study to date (calendar, to the last poll) | 126.25 h |
| Heartbeat | last poll Oct 30, 23:59 ET, block 519,880,934 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 3,715 | 3,709 | 0 | **0** | 30 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 18:17 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1374% | 0.01 ETH | -0.000005 ETH (-$0.01) | no |
| 07:51 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0371% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 11:20 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0498% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |
| 21:26 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1204% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |
| 21:27 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1204% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| bold-nebulous-dingo | 7 | 49.9566% | 49.9566% | 49.9566% | +49.3561% | +49.3561% | 7 | 7 |
| brisk-umbral-bison | 4,324 | 0.0117% | 0.2749% | 3.4602% | -0.0886% | +3.3952% | 7 | 7 |
| steady-lunar-wombat | 4,324 | 0.3942% | 1.8987% | 2.2528% | +0.0311% | +1.2028% | 3,116 | 1,135 |
| nimble-woolly-zebra | 4,324 | 0.0689% | 1.2342% | 1.8996% | -0.0105% | +0.8496% | 1,751 | 116 |
| curious-oblique-egret | 4,317 | 0.0793% | 0.3521% | 1.1457% | +0.0544% | +0.2763% | 3,984 | 0 |
| lucky-glacial-urchin | 4,317 | 0.0809% | 0.3612% | 0.5277% | -0.0394% | +0.1024% | 1,128 | 0 |
| curious-umbral-gecko | 4,317 | 0.0197% | 0.0536% | 0.1209% | -0.0009% | +0.1009% | 2,039 | 0 |
| plucky-hollow-walrus | 4,317 | 0.0200% | 0.0717% | 1.0699% | -0.0027% | +0.0609% | 1,825 | 0 |
| lucky-crystalline-narwhal | 4,317 | 0.0184% | 0.2705% | 1.0703% | -0.0573% | +0.0583% | 25 | 0 |
| wry-marbled-puffin | 4,317 | 0.2801% | 0.7887% | 1.0164% | -0.5867% | +0.0000% | 14 | 0 |
| witty-tangerine-walrus | 4,324 | 0.0062% | 0.0084% | 0.0118% | -0.0063% | -0.0007% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **197** opened: 7 closed by a swap, 66 by drift, 124 still open when the budget ran out. Median lifetime **218 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 32 | 224 blocks | 81% | +1.1549% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 19 | 213 blocks | 74% | +0.1925% |
| curious-oblique-egret | Juniper→Opal Quay | 16 | 217 blocks | 69% | +0.1986% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 14 | 195 blocks | 50% | +0.1425% |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 11 | 237 blocks | 100% | +0.8955% |
| curious-oblique-egret | Opal Quay→Juniper | 10 | 209 blocks | 60% | +0.2631% |

## Persistent routes

Ranked from the chase log up to the day's last poll (chases × median lifetime × (1 + share still open)); not yet quoted, because the ten-minute quotes start with the next monitor restart.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 118 | 202 blocks | 64% | +0.1925% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 105 | 195 blocks | 52% | +0.2125% |
| curious-oblique-egret | Juniper→Opal Quay | 66 | 203 blocks | 56% | +0.2458% |
| curious-oblique-egret | Opal Quay→Juniper | 59 | 209 blocks | 64% | +0.2631% |
| nimble-woolly-zebra | Opal Hill→Juniper | 39 | 226 blocks | 90% | +0.9087% |

## Triangles

Three-pair cycles priced each poll: **17,268** reads across 8 cycles, 7,905 positive after fees; 470 quoted as a round trip, 0 cleared, best quoted net -0.000011 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Rowan Quay → Opal Hill → Juniper | 2,173 | 1,356 | +0.8225% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Rowan Quay | 2,144 | 1,240 | +0.5485% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Juniper | 2,581 | 2,535 | +0.2572% |
| WETH→Lemur→Zebra→WETH | Rowan Quay → Juniper → Opal Quay | 1,736 | 1,702 | +0.2258% |
| WETH→Lemur→Falcon→WETH | Juniper → Opal Row → Rowan Cross | 2,960 | 272 | +0.1719% |

## The census

The wider net: 447 pools on the chain read from a public listing at 23:06 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| jolly-glacial-urchin | +23.9651% | $401,994 |
| cheeky-cosmic-tapir | +5.5723% | $313,559 |
| candid-tidal-salmon | +5.1917% | $356,357 |
| plucky-hollow-walrus | +0.2214% | $426,951 |
| jolly-woolly-bison | +0.0752% | $450,586 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 10.30% fixed against 7.19% variable (+3.11 pts, $4,467,128 deep); Aave Lemur supplies 2.62%, borrows 3.65%; best basis carry Ibex: funding 1.53% − Lemur 2.62% = -1.09 pts.
- **TON.** 62 Heron pools above $50,000 on two DEXes (49,171 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.971% with a $69,451 thin leg. Heron ≈ $1.186.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion wUSDM: 3 pools from $1.04909 to $1.08071 (+3.01%), deepest on eth at $1.08071. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 3.14 blocks/s (median block 302 ms); a 15 s poll spans about 50 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 62 ms | 55 ms | 0 | yes |
| public | arb1.arbitrum.io | 79 ms | 72 ms | 1 | yes |
| public | arbitrum-one.publicnode.com | 72 ms | 66 ms | 0 | yes |
| public | 1rpc.io | 243 ms | 455 ms | 4 | yes |
| public | arbitrum.drpc.org | 76 ms | 107 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Oct 31, 09:38 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
