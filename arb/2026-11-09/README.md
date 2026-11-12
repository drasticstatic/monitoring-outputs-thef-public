<div align="center">

# Arbitrage observer — 2026-11-09

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--09-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.13 h observed, 5,758 polls, 4,662 candidates, 2 cleared costs, 0 would have fired; 238 chases; best +0.000072 ETH on curious-umbral-gecko Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.13 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.00 h |
| Polls · pair samples | 5,758 · 63,338 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **342.70 h** of 168 h (204.0%) |
| Study to date (calendar, to the last poll) | 367.25 h |
| Heartbeat | last poll Nov 9, 23:59 ET, block 522,883,361 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,662 | 4,662 | 2 | **0** | 3 | +0.000086 ETH | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 09:58 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0497% | 0.05 ETH | +0.000072 ETH ($0.15) | yes |
| 09:12 ET | curious-umbral-gecko | Opal Quay→Juniper | +0.0236% | 0.05 ETH | +0.000014 ETH ($0.03) | yes |
| 09:37 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0200% | 0.05 ETH | -0.000002 ETH ($0.00) | no |
| 05:16 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0391% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 02:02 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1247% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 5,758 | 0.0702% | 1.5633% | 2.1715% | -0.0105% | +1.1215% | 2,501 | 824 |
| steady-lunar-wombat | 5,758 | 0.2703% | 1.4966% | 2.0107% | +0.0319% | +0.9607% | 3,205 | 545 |
| curious-oblique-egret | 5,758 | 0.0697% | 0.3486% | 1.1205% | +0.0437% | +0.2863% | 5,306 | 0 |
| plucky-hollow-walrus | 5,758 | 0.0274% | 0.0799% | 1.1554% | -0.0017% | +0.1446% | 2,568 | 0 |
| curious-umbral-gecko | 5,758 | 0.0438% | 0.2914% | 0.3828% | -0.0017% | +0.1443% | 2,542 | 0 |
| lucky-glacial-urchin | 5,758 | 0.0610% | 0.3403% | 0.4611% | -0.0592% | +0.1030% | 1,127 | 0 |
| lucky-crystalline-narwhal | 5,758 | 0.0525% | 1.2073% | 1.3552% | -0.0532% | +0.0624% | 136 | 0 |
| wry-marbled-puffin | 5,758 | 0.1374% | 0.8217% | 1.1053% | -0.2912% | +0.0053% | 7 | 0 |
| witty-tangerine-walrus | 5,758 | 0.0018% | 0.0088% | 0.0118% | -0.0069% | -0.0004% | 0 | 0 |
| brisk-umbral-bison | 5,758 | 0.0245% | 0.3298% | 1.1203% | -0.0813% | -0.0007% | 0 | 0 |
| curious-lunar-otter | 5,758 | 0.0037% | 0.0086% | 0.0140% | -0.0113% | -0.0010% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **238** opened: 32 closed by a swap, 73 by drift, 133 still open when the budget ran out. Median lifetime **201 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 32 | 198 blocks | 47% | +0.2168% |
| nimble-woolly-zebra | Opal Hill→Juniper | 32 | 211 blocks | 84% | +0.6074% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 29 | 165 blocks | 35% | +0.1795% |
| curious-oblique-egret | Opal Quay→Juniper | 25 | 204 blocks | 52% | +0.1829% |
| steady-lunar-wombat | Opal Cross→Opal Hill | 19 | 230 blocks | 100% | +0.8839% |
| curious-oblique-egret | Juniper→Opal Quay | 12 | 203 blocks | 58% | +0.1852% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 213 | 207 blocks | nothing pays | 0.5 ETH | -0.323996 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 208 | 199 blocks | nothing pays | 0.5 ETH | -0.045848 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 160 | 193 blocks | nothing pays | 0.5 ETH | -0.054216 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,032** reads across 8 cycles, 10,907 positive after fees; 647 quoted as a round trip, 0 cleared, best quoted net -0.000012 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Opal Quay → Opal Hill → Juniper | 1,861 | 871 | +1.1250% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Opal Quay | 3,897 | 2,638 | +0.9840% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Rowan Quay → Rowan Cross | 3,433 | 3,341 | +0.2816% |
| WETH→Lemur→Zebra→WETH | Rowan Quay → Juniper → Opal Quay | 2,325 | 2,265 | +0.1739% |
| Lemur→WETH→Lemur→Lemur | Juniper → Juniper → Rowan Cross | 3,023 | 975 | +0.1716% |

## The census

The wider net: 495 pools on the chain read from a public listing at 23:16 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| cheeky-cosmic-tapir | +7.3497% | $215,977 |
| lucky-crystalline-narwhal | +0.0983% | $93,151 |
| curious-oblique-egret | +0.0785% | $166,264 |
| witty-glacial-pangolin | +0.0535% | $121,443 |
| steady-lunar-wombat | +0.0402% | $94,862 |

## The frontier

Four scouts read public sources only (last run 23:40 ET):

- **Intents.** Across pays a filler +0.010% to +0.091% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 9.09% fixed against 7.06% variable (+2.02 pts, $4,383,347 deep); Aave Lemur supplies 2.85%, borrows 3.89%; best basis carry BTC: funding 1.37% − Lemur 2.85% = -1.49 pts.
- **TON.** 58 Heron pools above $50,000 on two DEXes (49,666 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.971% with a $63,330 thin leg. Heron ≈ $1.079.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 8 pools from $0.98536 to $1.15436 (+17.15%), deepest on solana at $0.99003. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

No wire probe ran this day (it runs nightly at 23:55 ET).

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 11, 01:05 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
