<div align="center">

# Arbitrage observer — 2026-11-10

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--10-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.42 h observed, 5,716 polls, 4,662 candidates, 0 cleared costs, 0 would have fired; 245 chases; best -0.000005 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.42 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.99 h |
| Polls · pair samples | 5,716 · 62,876 |
| Pairs watched · pools priced | 11 · 77 |
| Study to date (observed) | **367.12 h** of 168 h (218.5%) |
| Study to date (calendar, to the last poll) | 391.25 h |
| Heartbeat | last poll Nov 10, 23:59 ET, block 523,187,836 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,662 | 4,648 | 0 | **0** | 70 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 03:04 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0434% | 0.05 ETH | -0.000005 ETH (-$0.01) | no |
| 12:27 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0404% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 21:19 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0392% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |
| 12:29 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0378% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |
| 04:17 ET | curious-umbral-gecko | Opal Quay→Juniper | +0.0637% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| curious-oblique-egret | 5,716 | 0.5224% | 2.1781% | 2.4096% | +0.2624% | +2.1496% | 5,531 | 2,784 |
| nimble-woolly-zebra | 5,716 | 0.0815% | 1.6780% | 2.2340% | -0.0023% | +1.2089% | 2,783 | 969 |
| steady-lunar-wombat | 5,716 | 0.2663% | 1.5789% | 2.2788% | +0.0026% | +0.9788% | 3,002 | 458 |
| curious-umbral-gecko | 5,716 | 0.0318% | 0.2838% | 1.0192% | -0.0014% | +0.1441% | 2,606 | 0 |
| plucky-hollow-walrus | 5,716 | 0.0280% | 0.0812% | 1.1588% | -0.0006% | +0.1164% | 2,755 | 0 |
| lucky-glacial-urchin | 5,716 | 0.0795% | 0.2608% | 0.4369% | -0.0404% | +0.1091% | 1,047 | 0 |
| lucky-crystalline-narwhal | 5,716 | 0.0350% | 1.1855% | 1.3670% | -0.0567% | +0.0453% | 63 | 0 |
| witty-tangerine-walrus | 5,716 | 0.0016% | 0.0095% | 0.0163% | -0.0059% | +0.0005% | 10 | 0 |
| curious-lunar-otter | 5,716 | 0.0054% | 0.0132% | 0.0152% | -0.0096% | +0.0002% | 72 | 0 |
| brisk-umbral-bison | 5,716 | 0.0229% | 0.2732% | 1.1741% | -0.0885% | -0.0019% | 0 | 0 |
| wry-marbled-puffin | 5,716 | 0.2205% | 0.8134% | 1.1062% | -0.5139% | -0.0023% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **245** opened: 62 closed by a swap, 8 by drift, 175 still open when the budget ran out. Median lifetime **208 blocks** (60.2 s), p90 60.4 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Gate | 32 | 213 blocks | 97% | +2.1436% |
| curious-oblique-egret | Rowan Quay→Rowan Gate | 29 | 219 blocks | 97% | +1.9209% |
| steady-lunar-wombat | Opal Cross→Opal Hill | 20 | 222 blocks | 80% | +0.6696% |
| nimble-woolly-zebra | Opal Hill→Juniper | 17 | 207 blocks | 77% | +1.0270% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 16 | 151 blocks | 38% | +0.1401% |
| curious-oblique-egret | Juniper→Rowan Gate | 16 | 215 blocks | 100% | +2.0336% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 175 | 202 blocks | nothing pays | 0.5 ETH | -0.326593 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 203 | 199 blocks | nothing pays | 0.5 ETH | -0.044924 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 152 | 193 blocks | nothing pays | 0.5 ETH | -0.052897 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,864** reads across 8 cycles, 11,028 positive after fees; 447 quoted as a round trip, 0 cleared, best quoted net -0.000011 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Zebra→WETH | Rowan Quay → Juniper → Rowan Gate | 4,248 | 4,217 | +2.1399% |
| WETH→Zebra→Lemur→WETH | Rowan Gate → Juniper → Juniper | 1,468 | 1,422 | +2.1303% |
| WETH→Egret→Lemur→WETH | Opal Cross → Opal Hill → Opal Quay | 2,996 | 1,829 | +1.2475% |
| WETH→Lemur→Egret→WETH | Rowan Quay → Opal Hill → Juniper | 2,720 | 1,693 | +0.8783% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Opal Quay | 2,452 | 83 | +0.2491% |

## The census

The wider net: 498 pools on the chain read from a public listing at 23:56 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| jolly-glacial-urchin | +2.9221% | $262,402 |
| lucky-glacial-urchin | +0.2791% | $105,829 |
| lucky-crystalline-narwhal | +0.0274% | $180,547 |
| merry-electric-gecko | -0.0100% | $315,380 |
| witty-glacial-pangolin | -0.0138% | $120,579 |

## The frontier

Four scouts read public sources only (last run 23:20 ET):

- **Intents.** Across pays a filler +0.010% to +0.091% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 9.04% fixed against 7.05% variable (+2.00 pts, $4,496,874 deep); Aave Lemur supplies 2.90%, borrows 3.92%; best basis carry BTC: funding 1.37% − Lemur 2.90% = -1.53 pts.
- **TON.** 59 Heron pools above $50,000 on two DEXes (49,718 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.971% with a $67,097 thin leg. Heron ≈ $1.139.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 7 pools from $0.99812 to $1.1553 (+15.75%), deepest on solana at $0.99812. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 01:04 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 69 ms | 78 ms | 1 | yes |
| public | arbitrum-one.publicnode.com | 67 ms | 65 ms | 0 | yes |
| public | 1rpc.io | 64 ms | 298 ms | 9 | yes |
| public | arbitrum.drpc.org | 67 ms | 92 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 12, 01:13 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
