<div align="center">

# Arbitrage observer — 2026-11-24

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--24-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.69 h observed, 5,738 polls, 5,336 candidates, 0 cleared costs, 0 would have fired; 284 chases; best -0.000007 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.69 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.00 h |
| Polls · pair samples | 5,738 · 63,113 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **712.90 h** of 168 h (424.3%) |
| Study to date (calendar, to the last poll) | 727.25 h |
| Heartbeat | last poll Nov 24, 23:59 ET, block 527,325,678 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,336 | 5,336 | 0 | **0** | 2 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 06:02 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0373% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |
| 20:34 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0383% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |
| 13:45 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0374% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |
| 23:18 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.1013% | 0.01 ETH | -0.000008 ETH (-$0.01) | no |
| 01:36 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0901% | 0.01 ETH | -0.000008 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,738 | 1.2129% | 2.0080% | 2.4194% | +0.1629% | +1.3694% | 4,378 | 2,023 |
| nimble-woolly-zebra | 5,738 | 0.1916% | 1.8672% | 2.3630% | +0.0852% | +1.3380% | 4,637 | 1,385 |
| curious-oblique-egret | 5,737 | 0.0775% | 0.3450% | 1.1503% | +0.0523% | +0.2234% | 5,392 | 0 |
| curious-umbral-gecko | 5,737 | 0.0339% | 0.0728% | 1.0315% | +0.0131% | +0.1132% | 4,539 | 0 |
| lucky-glacial-urchin | 5,738 | 0.0573% | 0.3620% | 0.4530% | -0.0620% | +0.0886% | 388 | 0 |
| lucky-crystalline-narwhal | 5,736 | 0.0262% | 1.1311% | 1.3523% | -0.0568% | +0.0570% | 41 | 0 |
| plucky-hollow-walrus | 5,737 | 0.0228% | 0.0795% | 0.1353% | -0.0018% | +0.0485% | 2,597 | 0 |
| witty-tangerine-walrus | 5,738 | 0.0026% | 0.0110% | 0.0173% | -0.0072% | +0.0014% | 4 | 0 |
| brisk-umbral-bison | 5,738 | 0.0236% | 0.3612% | 1.3356% | -0.0867% | -0.0009% | 0 | 0 |
| curious-lunar-otter | 5,738 | 0.0045% | 0.0071% | 0.0094% | -0.0106% | -0.0081% | 0 | 0 |
| wry-marbled-puffin | 5,738 | 0.4759% | 0.9761% | 1.2581% | -0.5634% | -0.0419% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **284** opened: 71 closed by a swap, 38 by drift, 175 still open when the budget ran out. Median lifetime **201 blocks** (60.2 s), p90 60.5 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 38 | 219 blocks | 100% | +1.2319% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 28 | 161 blocks | 50% | +0.2052% |
| nimble-woolly-zebra | Opal Hill→Juniper | 21 | 222 blocks | 100% | +1.1769% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 20 | 178 blocks | 35% | +0.1802% |
| nimble-woolly-zebra | Juniper→Opal Cross | 19 | 113 blocks | 37% | +0.1936% |
| curious-oblique-egret | Opal Quay→Juniper | 19 | 215 blocks | 53% | +0.1553% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:51 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 162 | 221 blocks | nothing pays | 0.5 ETH | -0.333697 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 159 | 189 blocks | nothing pays | 0.5 ETH | -0.361084 ETH | — |
| curious-oblique-egret | Opal Quay→Juniper | 138 | 202 blocks | nothing pays | 0.5 ETH | -0.361046 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,948** reads across 8 cycles, 12,612 positive after fees; 614 quoted as a round trip, 0 cleared, best quoted net -0.000014 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Rowan Quay → Opal Hill → Juniper | 1,887 | 1,582 | +1.3826% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Juniper | 3,850 | 3,543 | +1.2991% |
| WETH→Lemur→Zebra→WETH | Opal Quay → Juniper → Opal Quay | 2,597 | 2,590 | +0.2395% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Rowan Quay | 3,140 | 3,113 | +0.2207% |
| WETH→Lemur→Falcon→WETH | Opal Quay → Opal Row → Rowan Cross | 2,276 | 157 | +0.2002% |

## The census

The wider net: 501 pools on the chain read from a public listing at 23:52 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| steady-lunar-wombat | +0.2371% | $70,866 |
| merry-electric-gecko | -0.0084% | $453,140 |
| curious-oblique-egret | -0.0311% | $269,979 |
| plucky-hollow-walrus | -0.0847% | $312,614 |
| witty-glacial-pangolin | -0.1000% | $86,806 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 9.22% fixed against 8.36% variable (+0.85 pts, $4,141,828 deep); Aave Lemur supplies 3.87%, borrows 4.91%; best basis carry SOL: funding 1.37% − Lemur 3.87% = -2.50 pts.
- **TON.** 53 Heron pools above $50,000 on two DEXes (50,798 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.445% with a $54,512 thin leg. Heron ≈ $0.928.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion wUSDM: 2 pools from $1.0675 to $1.08214 (+1.37%), deepest on eth at $1.08214. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:57 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 82 ms | 86 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 91 ms | 87 ms | 0 | yes |
| public | 1rpc.io | 76 ms | 300 ms | 3 | yes |
| public | arbitrum.drpc.org | 74 ms | 87 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 26, 01:06 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
