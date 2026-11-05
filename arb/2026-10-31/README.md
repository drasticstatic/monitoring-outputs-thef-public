<div align="center">

# Arbitrage observer — 2026-10-31

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--10--31-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.00 h observed, 5,744 polls, 4,232 candidates, 0 cleared costs, 0 would have fired; 190 chases; best -0.000007 ETH on lucky-glacial-urchin Rowan Cross→Juniper at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.00 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.00 h |
| Polls · pair samples | 5,744 · 60,094 |
| Pairs watched · pools priced | 11 · 75 |
| Study to date (observed) | **128.08 h** of 168 h (76.2%) |
| Study to date (calendar, to the last poll) | 150.25 h |
| Heartbeat | last poll Oct 31, 23:59 ET, block 520,175,267 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,232 | 4,232 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 02:30 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.1176% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 17:49 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0367% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |
| 02:38 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.0974% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |
| 02:37 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.0974% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |
| 18:08 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0358% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 5,744 | 0.0584% | 1.1797% | 1.8987% | -0.0043% | +0.8887% | 2,643 | 161 |
| steady-lunar-wombat | 5,744 | 0.1218% | 0.9756% | 1.3464% | +0.0198% | +0.2964% | 3,018 | 0 |
| curious-oblique-egret | 5,744 | 0.0613% | 0.3127% | 1.2551% | +0.0387% | +0.2451% | 5,206 | 0 |
| wry-marbled-puffin | 5,744 | 0.2468% | 1.0053% | 1.3099% | -0.5022% | +0.1997% | 119 | 0 |
| lucky-glacial-urchin | 5,744 | 0.0789% | 0.3357% | 0.4467% | -0.0419% | +0.1176% | 1,017 | 0 |
| curious-umbral-gecko | 5,744 | 0.0224% | 0.4521% | 0.7101% | -0.0025% | +0.0666% | 2,381 | 0 |
| plucky-hollow-walrus | 5,744 | 0.0198% | 0.0654% | 0.3239% | -0.0035% | +0.0587% | 2,279 | 0 |
| lucky-crystalline-narwhal | 5,744 | 0.0255% | 0.0952% | 1.0301% | -0.0473% | +0.0247% | 137 | 0 |
| brisk-umbral-bison | 5,744 | 0.0177% | 0.0419% | 0.3546% | -0.0881% | +0.0046% | 1 | 0 |
| witty-tangerine-walrus | 5,744 | 0.0027% | 0.0093% | 0.0123% | -0.0072% | -0.0013% | 0 | 0 |
| curious-lunar-otter | 2,654 | 0.0030% | 0.0062% | 0.0062% | -0.0120% | -0.0088% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **190** opened: 10 closed by a swap, 66 by drift, 114 still open when the budget ran out. Median lifetime **197 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Rowan Quay→Opal Quay | 23 | 200 blocks | 83% | +0.1674% |
| curious-oblique-egret | Juniper→Opal Quay | 21 | 213 blocks | 86% | +0.3499% |
| lucky-glacial-urchin | Opal Cross→Rowan Cross | 14 | 153 blocks | 43% | +0.0775% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 13 | 208 blocks | 77% | +0.1065% |
| steady-lunar-wombat | Rowan Cross→Opal Cross | 12 | 186 blocks | 50% | +0.1439% |
| nimble-woolly-zebra | Juniper→Opal Hill | 12 | 206 blocks | 75% | +0.4474% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (67 runs this day; the last at 23:59 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 131 | 202 blocks | nothing pays | 0.5 ETH | -0.050586 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 128 | 198 blocks | nothing pays | 0.5 ETH | -0.053177 ETH | — |
| curious-oblique-egret | Juniper→Opal Quay | 87 | 204 blocks | nothing pays | 0.5 ETH | -0.061906 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,976** reads across 8 cycles, 10,807 positive after fees; 556 quoted as a round trip, 0 cleared, best quoted net -0.000011 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Rowan Quay | 2,879 | 1,951 | +0.8954% |
| WETH→Lemur→Egret→WETH | Juniper → Opal Hill → Juniper | 2,865 | 2,188 | +0.8762% |
| WETH→Lemur→Zebra→WETH | Rowan Cross → Juniper → Opal Hill | 2,911 | 2,828 | +0.2329% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Rowan Quay | 2,833 | 2,725 | +0.1666% |
| WETH→Lemur→Falcon→WETH | Opal Quay → Opal Row → Rowan Cross | 4,089 | 369 | +0.1623% |

## The census

The wider net: 486 pools on the chain read from a public listing at 23:01 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| cheeky-cosmic-tapir | +5.5723% | $316,410 |
| nimble-woolly-zebra | +0.1116% | $209,238 |
| curious-umbral-gecko | +0.0914% | $2,723,500 |
| lucky-crystalline-narwhal | +0.0794% | $121,869 |
| brisk-umbral-bison | -0.0013% | $317,757 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 10.33% fixed against 7.18% variable (+3.14 pts, $4,286,636 deep); Aave Lemur supplies 2.69%, borrows 3.73%; best basis carry Ibex: funding 5.06% − Lemur 2.69% = +2.38 pts.
- **TON.** 63 Heron pools above $50,000 on two DEXes (49,197 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.991% with a $70,622 thin leg. Heron ≈ $1.201.
- **Tokenised treasuries.** 2 of 8 tokenised treasuries have pools above $25,000; widest dispersion Falcon: 7 pools from $0.98803 to $1.00354 (+1.57%), deepest on eth at $0.99846. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 3.46 blocks/s (median block 303 ms); a 15 s poll spans about 50 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 54 ms | 56 ms | 1 | yes |
| public | arb1.arbitrum.io | 69 ms | 74 ms | 3 | yes |
| public | arbitrum-one.publicnode.com | 62 ms | 64 ms | 0 | yes |
| public | 1rpc.io | 64 ms | 303 ms | 6 | yes |
| public | arbitrum.drpc.org | 79 ms | 91 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 2, 00:07 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
