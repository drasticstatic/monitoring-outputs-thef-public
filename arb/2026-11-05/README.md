<div align="center">

# Arbitrage observer — 2026-11-05

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--05-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.00 h observed, 5,740 polls, 4,857 candidates, 3 cleared costs, 0 would have fired; 247 chases; best +0.000023 ETH on curious-umbral-gecko Opal Quay→Juniper at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.00 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.92 h |
| Polls · pair samples | 5,740 · 63,140 |
| Pairs watched · pools priced | 11 · 75 |
| Study to date (observed) | **246.58 h** of 168 h (146.8%) |
| Study to date (calendar, to the last poll) | 271.25 h |
| Heartbeat | last poll Nov 5, 23:59 ET, block 521,692,743 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,857 | 4,857 | 3 | **0** | 1 | +0.000038 ETH | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 10:24 ET | curious-umbral-gecko | Opal Quay→Juniper | +0.0675% | 0.05 ETH | +0.000023 ETH ($0.05) | yes |
| 10:24 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0046% | 0.05 ETH | +0.000010 ETH ($0.02) | yes |
| 11:05 ET | plucky-hollow-walrus | Juniper→Opal Cross | +0.0223% | 0.05 ETH | +0.000005 ETH ($0.01) | yes |
| 10:24 ET | curious-oblique-egret | Opal Quay→Opal Cross | +0.1953% | 0.01 ETH | -0.000001 ETH ($0.00) | no |
| 11:05 ET | curious-oblique-egret | Rowan Gate→Opal Cross | +0.1980% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 5,740 | 0.0722% | 1.6046% | 2.2570% | -0.0065% | +1.2320% | 2,641 | 896 |
| steady-lunar-wombat | 5,740 | 0.4054% | 1.6349% | 2.1918% | +0.0350% | +1.0218% | 3,944 | 840 |
| curious-oblique-egret | 5,740 | 0.0684% | 0.3621% | 1.8111% | +0.0435% | +0.8011% | 5,357 | 2 |
| curious-umbral-gecko | 5,740 | 0.5636% | 3.3454% | 4.4698% | -0.0042% | +0.1140% | 1,977 | 0 |
| lucky-glacial-urchin | 5,740 | 0.0838% | 0.3341% | 0.5041% | -0.0369% | +0.1014% | 1,421 | 0 |
| plucky-hollow-walrus | 5,740 | 0.0245% | 0.0755% | 1.0762% | -0.0041% | +0.0809% | 2,121 | 0 |
| lucky-crystalline-narwhal | 5,740 | 0.0536% | 1.1987% | 1.3798% | -0.0569% | +0.0482% | 78 | 0 |
| witty-tangerine-walrus | 5,740 | 0.0036% | 0.0447% | 0.0542% | -0.0065% | +0.0342% | 363 | 0 |
| brisk-umbral-bison | 5,740 | 0.0215% | 0.3109% | 1.1618% | -0.0887% | +0.0055% | 1 | 0 |
| curious-lunar-otter | 5,740 | 0.0051% | 0.0089% | 0.0096% | -0.0104% | -0.0084% | 0 | 0 |
| wry-marbled-puffin | 5,740 | 0.2636% | 0.8506% | 1.0655% | -0.6929% | -0.2345% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **247** opened: 3 closed by a swap, 98 by drift, 146 still open when the budget ran out. Median lifetime **206 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 36 | 161 blocks | 44% | +0.4904% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 28 | 196 blocks | 50% | +0.1455% |
| nimble-woolly-zebra | Juniper→Opal Hill | 24 | 225 blocks | 88% | +1.3289% |
| steady-lunar-wombat | Opal Hill→Opal Cross | 19 | 221 blocks | 95% | +0.6288% |
| curious-oblique-egret | Juniper→Opal Quay | 13 | 200 blocks | 62% | +0.1520% |
| nimble-woolly-zebra | Opal Cross→Opal Hill | 12 | 224 blocks | 83% | +0.7480% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 205 | 213 blocks | nothing pays | 0.5 ETH | -0.326044 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 177 | 204 blocks | nothing pays | 0.5 ETH | -0.049228 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 145 | 199 blocks | nothing pays | 0.5 ETH | -0.053106 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,036** reads across 8 cycles, 10,715 positive after fees; 641 quoted as a round trip, 0 cleared, best quoted net -0.000008 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Opal Quay → Opal Hill → Juniper | 3,597 | 2,437 | +1.2883% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Rowan Cross | 2,162 | 1,067 | +1.0520% |
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Rowan Quay | 2,796 | 2,709 | +0.5025% |
| WETH→Zebra→Lemur→WETH | Opal Hill → Juniper → Juniper | 2,963 | 2,870 | +0.2912% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Juniper | 3,031 | 232 | +0.2198% |

## The census

The wider net: 497 pools on the chain read from a public listing at 23:06 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| cheeky-cosmic-tapir | +23.5446% | $232,294 |
| jolly-glacial-urchin | +0.9756% | $293,292 |
| frisky-electric-gecko | +1.0246% | $98,482 |
| curious-lunar-otter | +0.5042% | $115,987 |
| curious-umbral-gecko | +0.2959% | $132,606 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 2–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-06-24 pays 8.67% fixed against 11.32% variable (-2.66 pts, $23,089 deep); Aave Lemur supplies 2.93%, borrows 3.94%; best basis carry BTC: funding 1.37% − Lemur 2.93% = -1.56 pts.
- **TON.** 59 Heron pools above $50,000 on two DEXes (49,415 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.976% with a $64,624 thin leg. Heron ≈ $1.096.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 9 pools from $0.99506 to $1.15632 (+16.21%), deepest on solana at $0.99506. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 3.31 blocks/s (median block 302 ms); a 15 s poll spans about 50 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 48 ms | 63 ms | 0 | yes |
| public | arb1.arbitrum.io | 70 ms | 61 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 68 ms | 70 ms | 0 | yes |
| public | 1rpc.io | 57 ms | 335 ms | 4 | yes |
| public | arbitrum.drpc.org | 73 ms | 94 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 6, 00:06 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
