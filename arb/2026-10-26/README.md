<div align="center">

# Arbitrage observer — 2026-10-26

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--10--26-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.16 h observed, 5,704 polls, 3,289 candidates, 0 cleared costs, 0 would have fired; 97 chases; best -0.000007 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.16 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.00 h |
| Polls · pair samples | 5,704 · 44,802 |
| Pairs watched · pools priced | 10 · 47 |
| Study to date (observed) | **30.40 h** of 168 h (18.1%) |
| Study to date (calendar, to the last poll) | 30.25 h |
| Heartbeat | last poll Oct 26, 23:59 ET, block 518,634,582 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 3,289 | 3,285 | 0 | **0** | 24 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 22:36 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0354% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |
| 22:37 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0354% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |
| 23:21 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0340% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |
| 08:31 ET | lucky-glacial-urchin | Opal Cross→Juniper | +0.0539% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |
| 08:30 ET | lucky-glacial-urchin | Opal Cross→Juniper | +0.0539% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 2,650 | 0.0679% | 1.3486% | 1.9711% | -0.0038% | +0.9211% | 1,233 | 165 |
| steady-lunar-wombat | 5,692 | 0.1199% | 1.3142% | 1.9025% | +0.0179% | +0.8025% | 3,122 | 218 |
| curious-oblique-egret | 2,662 | 0.0629% | 0.1433% | 0.2410% | +0.0415% | +0.2210% | 2,505 | 0 |
| wry-marbled-puffin | 5,692 | 0.2306% | 0.7532% | 1.1256% | -0.7226% | +0.1756% | 1 | 0 |
| lucky-glacial-urchin | 5,692 | 0.0809% | 0.2458% | 0.4063% | -0.0591% | +0.0829% | 1,002 | 0 |
| curious-umbral-gecko | 5,704 | 0.0152% | 0.0380% | 0.3017% | -0.0051% | +0.0732% | 1,718 | 0 |
| plucky-hollow-walrus | 5,704 | 0.0172% | 0.0651% | 0.2912% | -0.0043% | +0.0452% | 2,131 | 0 |
| lucky-crystalline-narwhal | 5,704 | 0.0190% | 0.2716% | 1.0540% | -0.0564% | +0.0159% | 16 | 0 |
| witty-tangerine-walrus | 2,651 | 0.0069% | 0.0091% | 0.0156% | -0.0056% | +0.0031% | 5 | 0 |
| brisk-umbral-bison | 2,651 | 0.0091% | 0.2731% | 0.3219% | -0.0921% | -0.0281% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **97** opened: 2 closed by a swap, 39 by drift, 56 still open when the budget ran out. Median lifetime **192 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 21 | 206 blocks | 76% | +0.1735% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 19 | 193 blocks | 42% | +0.1934% |
| nimble-woolly-zebra | Opal Hill→Opal Cross | 8 | 210 blocks | 100% | +0.4500% |
| nimble-woolly-zebra | Opal Cross→Juniper | 8 | 36 blocks | 13% | +0.1258% |
| curious-oblique-egret | Opal Quay→Juniper | 7 | 191 blocks | 71% | +0.1381% |
| nimble-woolly-zebra | Opal Hill→Juniper | 6 | 201 blocks | 100% | +0.3258% |

## Persistent routes

Ranked from the chase log up to the day's last poll (chases × median lifetime × (1 + share still open)); not yet quoted, because the ten-minute quotes start with the next monitor restart.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 21 | 206 blocks | 76% | +0.1735% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 19 | 193 blocks | 42% | +0.1934% |
| nimble-woolly-zebra | Opal Hill→Opal Cross | 8 | 210 blocks | 100% | +0.4500% |
| steady-lunar-wombat | Opal Hill→Opal Cross | 6 | 206 blocks | 100% | +0.6231% |
| nimble-woolly-zebra | Opal Hill→Juniper | 6 | 201 blocks | 100% | +0.3258% |

## Triangles

Three-pair cycles priced each poll: **10,648** reads across 8 cycles, 4,939 positive after fees; 273 quoted as a round trip, 0 cleared, best quoted net -0.000013 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Rowan Quay | 1,529 | 1,042 | +0.9208% |
| WETH→Lemur→Egret→WETH | Opal Quay → Opal Hill → Juniper | 1,133 | 615 | +0.2553% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Opal Quay | 1,405 | 1,364 | +0.2200% |
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Opal Quay | 1,257 | 1,211 | +0.2070% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Juniper | 1,523 | 107 | +0.1141% |

## The census

The wider net: 448 pools on the chain read from a public listing at 23:46 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| jolly-glacial-urchin | +2.0771% | $422,853 |
| candid-tidal-salmon | +1.8177% | $380,835 |
| curious-lunar-otter | +0.2091% | $115,923 |
| curious-umbral-gecko | +0.1749% | $126,870 |
| jolly-woolly-bison | +0.1162% | $449,599 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.026% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 9.29% fixed against 6.42% variable (+2.87 pts, $7,125,354 deep); Aave Lemur supplies 2.45%, borrows 3.52%; best basis carry BTC: funding 1.37% − Lemur 2.45% = -1.08 pts.
- **TON.** 63 Heron pools above $50,000 on two DEXes (49,081 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.971% with a $70,040 thin leg. Heron ≈ $1.196.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion USDM: 5 pools from $0.99019 to $1.00976 (+1.98%), deepest on cardano at $1.00305. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 2.96 blocks/s (median block 303 ms); a 15 s poll spans about 50 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 61 ms | 56 ms | 1 | yes |
| public | arb1.arbitrum.io | 77 ms | 83 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 74 ms | 66 ms | 0 | yes |
| public | 1rpc.io | 68 ms | 206 ms | 4 | yes |
| public | arbitrum.drpc.org | 68 ms | 111 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Oct 31, 09:38 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
