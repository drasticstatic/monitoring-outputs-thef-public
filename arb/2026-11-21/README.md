<div align="center">

# Arbitrage observer — 2026-11-21

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--21-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.35 h observed, 5,732 polls, 5,543 candidates, 0 cleared costs, 0 would have fired; 279 chases; best -0.000005 ETH on plucky-hollow-walrus Rowan Quay→Juniper at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.35 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.92 h |
| Polls · pair samples | 5,732 · 63,051 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **637.34 h** of 168 h (379.4%) |
| Study to date (calendar, to the last poll) | 655.25 h |
| Heartbeat | last poll Nov 21, 23:59 ET, block 526,425,620 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,543 | 5,543 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 04:40 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0414% | 0.05 ETH | -0.000005 ETH (-$0.01) | no |
| 04:55 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0408% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 03:53 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0399% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 06:04 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0390% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 22:08 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0387% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,732 | 0.9044% | 2.8986% | 3.3069% | +0.0328% | +2.2569% | 4,076 | 2,369 |
| nimble-woolly-zebra | 5,732 | 0.1733% | 1.7195% | 2.7450% | +0.0734% | +1.7198% | 4,583 | 1,082 |
| curious-oblique-egret | 5,732 | 0.1319% | 0.4497% | 1.2812% | +0.0982% | +1.0869% | 5,567 | 432 |
| curious-umbral-gecko | 5,732 | 0.0379% | 0.0991% | 1.0743% | +0.0168% | +0.1483% | 4,720 | 0 |
| witty-tangerine-walrus | 5,732 | 0.0057% | 0.0235% | 0.1520% | -0.0050% | +0.1395% | 987 | 0 |
| plucky-hollow-walrus | 5,732 | 0.0277% | 0.0891% | 1.1435% | -0.0003% | +0.1335% | 2,825 | 0 |
| lucky-glacial-urchin | 5,732 | 0.0587% | 0.3108% | 0.4650% | -0.0608% | +0.0571% | 375 | 0 |
| lucky-crystalline-narwhal | 5,732 | 0.0260% | 1.1217% | 1.3422% | -0.0568% | +0.0479% | 64 | 0 |
| brisk-umbral-bison | 5,732 | 0.0247% | 0.3891% | 1.3520% | -0.0867% | +0.0268% | 11 | 0 |
| wry-marbled-puffin | 5,732 | 0.3300% | 0.9654% | 1.0514% | -0.6408% | +0.0000% | 38 | 0 |
| curious-lunar-otter | 5,731 | 0.0048% | 0.0075% | 0.0088% | -0.0111% | -0.0068% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **279** opened: 58 closed by a swap, 14 by drift, 207 still open when the budget ran out. Median lifetime **192 blocks** (60.2 s), p90 60.4 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 32 | 215 blocks | 100% | +2.2109% |
| nimble-woolly-zebra | Juniper→Opal Cross | 25 | 190 blocks | 84% | +0.3120% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 25 | 190 blocks | 92% | +0.6389% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 20 | 199 blocks | 95% | +0.4963% |
| curious-oblique-egret | Opal Quay→Juniper | 16 | 208 blocks | 81% | +0.3427% |
| curious-umbral-gecko | Opal Quay→Juniper | 16 | 80 blocks | 6% | +0.1159% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:50 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 281 | 205 blocks | nothing pays | 0.5 ETH | -0.371874 ETH | — |
| steady-lunar-wombat | Opal Hill→Opal Cross | 124 | 221 blocks | nothing pays | 0.5 ETH | -0.334883 ETH | — |
| curious-oblique-egret | Opal Quay→Juniper | 158 | 195 blocks | nothing pays | 0.5 ETH | -0.352806 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,004** reads across 8 cycles, 13,085 positive after fees; 497 quoted as a round trip, 0 cleared, best quoted net -0.000009 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Juniper → Opal Hill → Juniper | 3,476 | 3,189 | +1.7979% |
| WETH→Lemur→Zebra→WETH | Juniper → Rowan Quay → Opal Quay | 2,631 | 2,628 | +1.1550% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Juniper | 2,275 | 1,971 | +1.1360% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Rowan Quay → Opal Quay | 3,120 | 3,114 | +0.8387% |
| WETH→Lemur→Falcon→WETH | Opal Quay → Opal Row → Rowan Cross | 3,417 | 193 | +0.2241% |

## The census

The wider net: 499 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| jolly-glacial-urchin | +50.0198% | $226,621 |
| focused-winsome-zebra | +0.2265% | $358,393 |
| wry-verdant-unicorn | +0.0518% | $171,195 |
| plucky-hollow-walrus | +0.0314% | $290,869 |
| steady-lunar-wombat | -0.0082% | $72,058 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 11.87% fixed against 8.37% variable (+3.50 pts, $4,058,395 deep); Aave Lemur supplies 5.65%, borrows 6.69%; best basis carry Copper: funding 1.37% − Lemur 5.65% = -4.28 pts.
- **TON.** 53 Heron pools above $50,000 on two DEXes (50,593 Slate and 52,340 Umber listed), 4 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.414% with a $55,055 thin leg. Heron ≈ $0.938.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 8 pools from $0.98625 to $1.15862 (+17.48%), deepest on solana at $1.13072. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:57 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 67 ms | 68 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 65 ms | 59 ms | 0 | yes |
| public | 1rpc.io | 67 ms | 405 ms | 0 | yes |
| public | arbitrum.drpc.org | 68 ms | 90 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 22, 01:17 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
