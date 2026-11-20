<div align="center">

# Arbitrage observer — 2026-11-18

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--18-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.42 h observed, 5,729 polls, 5,234 candidates, 0 cleared costs, 0 would have fired; 283 chases; best -0.000006 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.42 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.92 h |
| Polls · pair samples | 5,729 · 63,019 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **563.80 h** of 168 h (335.6%) |
| Study to date (calendar, to the last poll) | 583.25 h |
| Heartbeat | last poll Nov 18, 23:59 ET, block 525,523,011 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,234 | 5,231 | 0 | **0** | 17 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 10:30 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0403% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 11:03 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0395% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 11:20 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1618% | 0.01 ETH | -0.000008 ETH (-$0.01) | no |
| 18:31 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0367% | 0.05 ETH | -0.000008 ETH (-$0.01) | no |
| 13:16 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0184% | 0.05 ETH | -0.000008 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,729 | 2.6042% | 5.8594% | 7.1615% | +1.4240% | +6.1115% | 4,995 | 4,457 |
| nimble-woolly-zebra | 5,729 | 0.1073% | 0.2681% | 1.2004% | +0.0277% | +0.2807% | 3,778 | 0 |
| curious-oblique-egret | 5,729 | 0.0737% | 0.3575% | 1.2906% | +0.0499% | +0.2684% | 5,396 | 0 |
| curious-umbral-gecko | 5,729 | 0.0279% | 0.0616% | 1.0759% | +0.0068% | +0.1140% | 3,741 | 0 |
| plucky-hollow-walrus | 5,729 | 0.0227% | 1.0144% | 1.1189% | -0.0016% | +0.1089% | 2,656 | 0 |
| brisk-umbral-bison | 5,729 | 0.0234% | 0.3029% | 1.1749% | -0.0877% | +0.0791% | 6 | 0 |
| lucky-glacial-urchin | 5,729 | 0.0584% | 0.1971% | 0.4512% | -0.0607% | +0.0663% | 238 | 0 |
| lucky-crystalline-narwhal | 5,729 | 0.0219% | 1.1477% | 1.3333% | -0.0386% | +0.0424% | 211 | 0 |
| wry-marbled-puffin | 5,729 | 0.1240% | 0.7952% | 1.1095% | -0.3008% | +0.0095% | 1 | 0 |
| curious-lunar-otter | 5,729 | 0.0049% | 0.0126% | 0.0148% | -0.0101% | -0.0002% | 0 | 0 |
| witty-tangerine-walrus | 5,729 | 0.0020% | 0.0149% | 0.0170% | -0.0075% | -0.0014% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **283** opened: 61 closed by a swap, 26 by drift, 196 still open when the budget ran out. Median lifetime **199 blocks** (60.2 s), p90 60.4 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 51 | 206 blocks | 98% | +5.9771% |
| nimble-woolly-zebra | Opal Cross→Juniper | 31 | 189 blocks | 55% | +0.2810% |
| curious-oblique-egret | Opal Quay→Juniper | 30 | 202 blocks | 73% | +0.2200% |
| nimble-woolly-zebra | Juniper→Opal Cross | 26 | 188 blocks | 58% | +0.2287% |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 23 | 218 blocks | 100% | +2.4656% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 19 | 166 blocks | 42% | +0.2620% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:50 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 427 | 208 blocks | nothing pays | 0.5 ETH | -0.362176 ETH | — |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 134 | 209 blocks | nothing pays | 0.5 ETH | -0.362179 ETH | — |
| curious-oblique-egret | Opal Quay→Juniper | 162 | 188 blocks | nothing pays | 0.5 ETH | -0.254029 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,996** reads across 8 cycles, 12,657 positive after fees; 698 quoted as a round trip, 0 cleared, best quoted net -0.000009 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Cross → Opal Quay | 3,123 | 2,849 | +0.3467% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Opal Quay | 3,011 | 2,965 | +0.3042% |
| WETH→Lemur→Egret→WETH | Juniper → Opal Cross → Juniper | 2,626 | 2,348 | +0.2717% |
| WETH→Lemur→Zebra→WETH | Opal Quay → Rowan Quay → Opal Quay | 2,738 | 2,686 | +0.1873% |
| WETH→Lemur→Falcon→WETH | Juniper → Opal Row → Rowan Cross | 2,291 | 119 | +0.1776% |

## The census

The wider net: 496 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| frisky-electric-gecko | +0.4198% | $192,705 |
| steady-lunar-wombat | +0.1969% | $81,940 |
| lucky-crystalline-narwhal | +0.1240% | $121,696 |
| steady-electric-quokka | +0.0493% | $200,350 |
| nimble-woolly-zebra | +0.0438% | $137,812 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 9.00% fixed against 8.38% variable (+0.62 pts, $4,045,781 deep); Aave Lemur supplies 3.45%, borrows 4.28%; best basis carry BTC: funding 1.37% − Lemur 3.45% = -2.08 pts.
- **TON.** 56 Heron pools above $50,000 on two DEXes (50,325 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.029% with a $60,428 thin leg. Heron ≈ $1.028.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 7 pools from $1.01895 to $1.15304 (+13.16%), deepest on solana at $1.01895. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 01:00 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 113 ms | 131 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 106 ms | 112 ms | 0 | yes |
| public | 1rpc.io | 187 ms | 735 ms | 2 | yes |
| public | arbitrum.drpc.org | 75 ms | 106 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 19, 00:59 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
