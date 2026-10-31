<div align="center">

# Arbitrage observer — 2026-10-29

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--10--29-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 7.60 h observed, 1,818 polls, 1,362 candidates, 0 cleared costs, 0 would have fired; 65 chases; best -0.000006 ETH on lucky-glacial-urchin Rowan Cross→Juniper at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **7.60 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 7.60 h |
| Polls · pair samples | 1,818 · 18,180 |
| Pairs watched · pools priced | 10 · 47 |
| Study to date (observed) | **86.01 h** of 168 h (51.2%) |
| Study to date (calendar, to the last poll) | 85.85 h |
| Heartbeat | last poll Oct 29, 07:35 ET, block 519,344,442 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 1,362 | 1,362 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 05:10 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.1136% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 05:09 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.1136% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 05:40 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0367% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |
| 01:16 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0347% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |
| 06:53 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0339% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 1,818 | 0.0672% | 1.3415% | 2.0695% | -0.0118% | +1.0195% | 768 | 94 |
| curious-oblique-egret | 1,818 | 0.0626% | 0.1383% | 0.1907% | +0.0425% | +0.1707% | 1,634 | 0 |
| steady-lunar-wombat | 1,818 | 0.1214% | 0.7229% | 1.0962% | -0.0264% | +0.1436% | 897 | 0 |
| lucky-glacial-urchin | 1,818 | 0.0813% | 0.2434% | 0.4058% | -0.0190% | +0.1136% | 481 | 0 |
| plucky-hollow-walrus | 1,818 | 0.0196% | 0.0675% | 0.3011% | -0.0028% | +0.0393% | 815 | 0 |
| curious-umbral-gecko | 1,818 | 0.0144% | 0.0380% | 0.0707% | -0.0061% | +0.0384% | 515 | 0 |
| lucky-crystalline-narwhal | 1,818 | 0.0179% | 0.2771% | 1.0334% | -0.0581% | +0.0084% | 2 | 0 |
| witty-tangerine-walrus | 1,818 | 0.0022% | 0.0072% | 0.0077% | -0.0103% | -0.0048% | 0 | 0 |
| brisk-umbral-bison | 1,818 | 0.0096% | 0.2751% | 0.3025% | -0.0915% | -0.0475% | 0 | 0 |
| wry-marbled-puffin | 1,818 | 0.3035% | 0.7713% | 0.8235% | -0.7156% | -0.4310% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **65** opened: 1 closed by a swap, 28 by drift, 36 still open when the budget ran out. Median lifetime **188 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Rowan Quay→Opal Quay | 9 | 75 blocks | 33% | +0.1513% |
| curious-oblique-egret | Juniper→Opal Quay | 9 | 203 blocks | 67% | +0.1300% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 8 | 189 blocks | 75% | +0.1348% |
| curious-oblique-egret | Opal Quay→Juniper | 7 | 203 blocks | 71% | +0.1351% |
| nimble-woolly-zebra | Opal Cross→Opal Hill | 5 | 209 blocks | 100% | +0.6217% |
| nimble-woolly-zebra | Opal Cross→Juniper | 5 | 115 blocks | 20% | +0.0718% |

## Persistent routes

Ranked from the chase log up to the day's last poll (chases × median lifetime × (1 + share still open)); not yet quoted, because the ten-minute quotes start with the next monitor restart.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 99 | 199 blocks | 63% | +0.1827% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 91 | 195 blocks | 53% | +0.2125% |
| curious-oblique-egret | Opal Quay→Juniper | 49 | 205 blocks | 65% | +0.1601% |
| nimble-woolly-zebra | Opal Hill→Juniper | 35 | 225 blocks | 91% | +0.9087% |
| curious-oblique-egret | Juniper→Opal Quay | 50 | 198 blocks | 52% | +0.2458% |

## Triangles

Three-pair cycles priced each poll: **7,272** reads across 8 cycles, 3,222 positive after fees; 202 quoted as a round trip, 0 cleared, best quoted net -0.000014 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Rowan Quay | 876 | 472 | +1.0745% |
| WETH→Lemur→Egret→WETH | Opal Quay → Opal Hill → Juniper | 942 | 541 | +0.8610% |
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Opal Quay | 839 | 799 | +0.1832% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Rowan Quay | 979 | 930 | +0.1518% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Opal Quay | 943 | 93 | +0.1268% |

## The census

The wider net: 450 pools on the chain read from a public listing at 06:43 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| jolly-glacial-urchin | +22.6701% | $420,313 |
| cheeky-cosmic-tapir | +5.6421% | $332,219 |
| candid-tidal-salmon | +3.5337% | $373,549 |
| frisky-electric-gecko | +0.3733% | $101,516 |
| brisk-umbral-bison | +0.2528% | $301,571 |

## The frontier

Four scouts read public sources only (last run 23:58 ET):

- **Intents.** Across pays a filler +0.010% to +0.042% per fill on the five corridors, settling in 1–900 s. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** no reading (the scout returned nothing this run).
- **TON.** 5 Heron pools above $50,000 on two DEXes (0 Slate and 52,340 Umber listed), 0 pairs priced on two or more venues, 0 apart after fees. Heron ≈ $—.
- **Tokenised treasuries.** 2 of 8 tokenised treasuries have pools above $25,000; widest dispersion USDM: 6 pools from $0.9916 to $1.00779 (+1.63%), deepest on eth at $1.0005. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:58 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (request timeout) |
| public | arb1.arbitrum.io | — ms | — ms | 3 | no (request timeout) |
| public | arbitrum-one.publicnode.com | — ms | 5,123 ms | 0 | no (request timeout) |
| public | 1rpc.io | 70 ms | 318 ms | 0 | yes |
| public | arbitrum.drpc.org | 68 ms | 165 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Oct 31, 09:49 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
