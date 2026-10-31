<div align="center">

# Arbitrage observer — 2026-10-31

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--10--31-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 9.83 h observed, 2,351 polls, 1,772 candidates, 0 cleared costs, 0 would have fired; 85 chases; best -0.000007 ETH on lucky-glacial-urchin Rowan Cross→Juniper at 0.01 ETH. Written while the day is still running (as of 09:49 ET); the nightly run rewrites it.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **9.83 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 9.83 h |
| Polls · pair samples | 2,351 · 23,510 |
| Pairs watched · pools priced | 10 · 49 |
| Study to date (observed) | **113.91 h** of 168 h (67.8%) |
| Study to date (calendar, to the last poll) | 136.08 h |
| Heartbeat | last poll Oct 31, 09:49 ET, block 520,005,570 (0.1 min before this page) |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 1,772 | 1,772 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 02:30 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.1176% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 02:38 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.0974% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |
| 02:37 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.0974% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |
| 02:35 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.0974% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |
| 09:44 ET | wry-marbled-puffin | Juniper→Opal Hill | +0.1997% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 2,351 | 0.0621% | 0.3106% | 1.8735% | +0.0006% | +0.8235% | 1,187 | 52 |
| steady-lunar-wombat | 2,351 | 0.1217% | 1.2077% | 1.3464% | +0.0203% | +0.2964% | 1,412 | 0 |
| curious-oblique-egret | 2,351 | 0.0644% | 0.3307% | 0.4109% | +0.0390% | +0.2163% | 2,048 | 0 |
| wry-marbled-puffin | 2,351 | 0.1979% | 1.0090% | 1.3099% | -0.2306% | +0.1997% | 87 | 0 |
| lucky-glacial-urchin | 2,351 | 0.0792% | 0.3553% | 0.4354% | -0.0404% | +0.1176% | 473 | 0 |
| curious-umbral-gecko | 2,351 | 0.0188% | 0.0445% | 0.0866% | -0.0018% | +0.0666% | 1,012 | 0 |
| plucky-hollow-walrus | 2,351 | 0.0175% | 0.0623% | 0.3239% | -0.0050% | +0.0587% | 865 | 0 |
| lucky-crystalline-narwhal | 2,351 | 0.0179% | 0.2715% | 1.0301% | -0.0573% | +0.0141% | 7 | 0 |
| witty-tangerine-walrus | 2,351 | 0.0032% | 0.0096% | 0.0112% | -0.0093% | -0.0013% | 0 | 0 |
| brisk-umbral-bison | 2,351 | 0.0137% | 0.1615% | 0.3275% | -0.0868% | -0.0225% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **85** opened: 7 closed by a swap, 35 by drift, 43 still open when the budget ran out. Median lifetime **196 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Juniper→Opal Quay | 10 | 215 blocks | 80% | +0.3499% |
| nimble-woolly-zebra | Juniper→Opal Cross | 9 | 129 blocks | 33% | +0.0881% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 9 | 200 blocks | 56% | +0.1674% |
| curious-oblique-egret | Opal Quay→Juniper | 5 | 202 blocks | 60% | +0.0912% |
| steady-lunar-wombat | Rowan Cross→Opal Cross | 5 | 37 blocks | 40% | +0.1439% |
| lucky-glacial-urchin | Rowan Cross→Juniper | 5 | 145 blocks | 20% | +0.1176% |

## Persistent routes

Ranked from the chase log up to the day's last poll (chases × median lifetime × (1 + share still open)); not yet quoted, because the ten-minute quotes start with the next monitor restart.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 120 | 202 blocks | 65% | +0.1925% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 114 | 196 blocks | 53% | +0.2125% |
| curious-oblique-egret | Juniper→Opal Quay | 76 | 204 blocks | 59% | +0.3499% |
| curious-oblique-egret | Opal Quay→Juniper | 64 | 207 blocks | 64% | +0.2631% |
| nimble-woolly-zebra | Opal Hill→Juniper | 42 | 226 blocks | 88% | +0.9087% |

## Triangles

Three-pair cycles priced each poll: **9,404** reads across 8 cycles, 4,288 positive after fees; 213 quoted as a round trip, 0 cleared, best quoted net -0.000011 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Rowan Quay | 1,409 | 907 | +0.8954% |
| WETH→Lemur→Egret→WETH | Opal Quay → Opal Hill → Juniper | 942 | 614 | +0.3488% |
| WETH→Lemur→Zebra→WETH | Opal Quay → Juniper → Opal Quay | 1,212 | 1,171 | +0.2095% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Rowan Quay | 1,139 | 1,102 | +0.1666% |
| WETH→Lemur→Falcon→WETH | Opal Quay → Opal Row → Rowan Cross | 1,588 | 203 | +0.1623% |

## The census

The wider net: 484 pools on the chain read from a public listing at 09:19 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| curious-lunar-otter | +0.1074% | $115,493 |
| lucky-crystalline-narwhal | +0.1027% | $121,489 |
| witty-tangerine-walrus | +0.0868% | $98,873 |
| steady-electric-quokka | +0.0583% | $275,206 |
| steady-lunar-wombat | +0.0261% | $114,711 |

## The frontier

Four scouts read public sources only (last run 09:33 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 10.34% fixed against 7.19% variable (+3.15 pts, $4,286,097 deep); Aave Lemur supplies 2.61%, borrows 3.63%; best basis carry BTC: funding 1.37% − Lemur 2.61% = -1.24 pts.
- **TON.** 62 Heron pools above $50,000 on two DEXes (49,180 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.971% with a $70,040 thin leg. Heron ≈ $1.187.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion wUSDM: 3 pools from $1.04909 to $1.08071 (+3.01%), deepest on eth at $1.08071. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

No wire probe ran this day (it runs nightly at 23:55 ET).

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Oct 31, 09:49 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
