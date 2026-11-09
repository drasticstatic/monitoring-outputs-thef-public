<div align="center">

# Arbitrage observer — 2026-11-08

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--08-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.00 h observed, 5,740 polls, 4,443 candidates, 0 cleared costs, 0 would have fired; 200 chases; best -0.000006 ETH on lucky-glacial-urchin Juniper→Rowan Cross at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.00 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.92 h |
| Polls · pair samples | 5,740 · 63,140 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **318.58 h** of 168 h (189.6%) |
| Study to date (calendar, to the last poll) | 343.25 h |
| Heartbeat | last poll Nov 8, 23:59 ET, block 522,575,449 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,443 | 4,443 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 17:24 ET | lucky-glacial-urchin | Juniper→Rowan Cross | +0.1178% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 19:03 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1295% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 17:26 ET | lucky-glacial-urchin | Juniper→Rowan Cross | +0.1178% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 17:25 ET | lucky-glacial-urchin | Juniper→Rowan Cross | +0.1178% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 21:33 ET | plucky-hollow-walrus | Rowan Cross→Rowan Quay | +0.0241% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| curious-umbral-gecko | 5,740 | 0.0330% | 0.4236% | 1.1004% | -0.0034% | +0.9803% | 2,264 | 2 |
| nimble-woolly-zebra | 5,740 | 0.0507% | 1.2811% | 1.9929% | -0.0144% | +0.9767% | 2,019 | 234 |
| steady-lunar-wombat | 5,740 | 0.9722% | 1.5068% | 1.9635% | +0.0389% | +0.9135% | 4,003 | 824 |
| curious-oblique-egret | 5,740 | 0.0610% | 0.3373% | 1.4225% | +0.0375% | +0.3583% | 5,294 | 1 |
| lucky-glacial-urchin | 5,740 | 0.0628% | 0.2493% | 0.4258% | -0.0390% | +0.1178% | 1,105 | 0 |
| plucky-hollow-walrus | 5,740 | 0.0225% | 0.0721% | 1.0525% | -0.0027% | +0.0822% | 2,413 | 0 |
| lucky-crystalline-narwhal | 5,740 | 0.0493% | 1.1550% | 1.3871% | -0.0490% | +0.0761% | 159 | 0 |
| wry-marbled-puffin | 5,740 | 0.1115% | 0.8333% | 1.1572% | -0.4331% | +0.0572% | 7 | 0 |
| witty-tangerine-walrus | 5,740 | 0.0014% | 0.0095% | 0.0205% | -0.0060% | +0.0025% | 8 | 0 |
| brisk-umbral-bison | 5,740 | 0.0198% | 0.2763% | 1.1605% | -0.0870% | -0.0009% | 0 | 0 |
| curious-lunar-otter | 5,740 | 0.0045% | 0.0101% | 0.0103% | -0.0105% | -0.0047% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **200** opened: 9 closed by a swap, 56 by drift, 135 still open when the budget ran out. Median lifetime **201 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 32 | 188 blocks | 66% | +0.5468% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 23 | 201 blocks | 83% | +0.1471% |
| steady-lunar-wombat | Opal Cross→Opal Hill | 19 | 219 blocks | 95% | +0.7919% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 16 | 208 blocks | 88% | +0.1595% |
| curious-oblique-egret | Opal Quay→Juniper | 15 | 205 blocks | 73% | +0.2250% |
| curious-oblique-egret | Juniper→Opal Quay | 12 | 193 blocks | 75% | +0.1550% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 272 | 208 blocks | nothing pays | 0.5 ETH | -0.325612 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 199 | 200 blocks | nothing pays | 0.5 ETH | -0.046755 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 145 | 199 blocks | nothing pays | 0.5 ETH | -0.054377 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,036** reads across 8 cycles, 10,134 positive after fees; 590 quoted as a round trip, 0 cleared, best quoted net -0.000006 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Rowan Quay | 2,804 | 1,549 | +1.8026% |
| WETH→Zebra→Lemur→WETH | Rowan Gate → Juniper → Rowan Quay | 3,071 | 2,974 | +1.1412% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Rowan Quay | 3,465 | 174 | +0.9983% |
| Lemur→Lemur→WETH→Lemur | Rowan Cross → Rowan Quay → Rowan Quay | 2,938 | 473 | +0.9893% |
| WETH→Lemur→Egret→WETH | Opal Quay → Opal Cross → Juniper | 2,955 | 1,771 | +0.8848% |

## The census

The wider net: 493 pools on the chain read from a public listing at 23:16 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| steady-lunar-wombat | +0.4025% | $95,636 |
| curious-umbral-gecko | +0.1370% | $128,192 |
| plucky-hollow-walrus | +0.0002% | $1,180,452 |
| merry-electric-gecko | -0.0104% | $319,778 |
| steady-electric-quokka | -0.0217% | $259,145 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.091% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 9.10% fixed against 7.09% variable (+2.01 pts, $4,372,840 deep); Aave Lemur supplies 2.84%, borrows 3.88%; best basis carry BTC: funding 1.37% − Lemur 2.84% = -1.47 pts.
- **TON.** 55 Heron pools above $50,000 on two DEXes (49,572 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.965% with a $59,448 thin leg. Heron ≈ $1.010.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 6 pools from $0.99433 to $1.18115 (+18.79%), deepest on solana at $0.99433. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 3.64 blocks/s (median block 302 ms); a 15 s poll spans about 50 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 66 ms | 79 ms | 0 | yes |
| public | arb1.arbitrum.io | 82 ms | 93 ms | 3 | yes |
| public | arbitrum-one.publicnode.com | 86 ms | 64 ms | 0 | yes |
| public | 1rpc.io | 76 ms | 523 ms | 5 | yes |
| public | arbitrum.drpc.org | 89 ms | 107 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 9, 00:03 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
