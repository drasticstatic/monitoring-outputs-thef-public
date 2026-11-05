<div align="center">

# Arbitrage observer — 2026-11-02

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--02-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.01 h observed, 5,760 polls, 5,404 candidates, 0 cleared costs, 0 would have fired; 274 chases; best -0.000004 ETH on curious-oblique-egret Rowan Quay→Juniper at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.01 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.00 h |
| Polls · pair samples | 5,760 · 63,360 |
| Pairs watched · pools priced | 11 · 75 |
| Study to date (observed) | **174.58 h** of 168 h (103.9%) |
| Study to date (calendar, to the last poll) | 199.25 h |
| Heartbeat | last poll Nov 2, 23:59 ET, block 520,778,250 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,404 | 5,404 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 16:37 ET | curious-oblique-egret | Rowan Quay→Juniper | +0.1467% | 0.01 ETH | -0.000004 ETH (-$0.01) | no |
| 20:53 ET | curious-oblique-egret | Rowan Quay→Juniper | +0.1329% | 0.01 ETH | -0.000005 ETH (-$0.01) | no |
| 22:28 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1297% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 12:24 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0387% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 03:29 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0390% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,760 | 1.2723% | 1.7744% | 2.1384% | +0.2223% | +1.0884% | 4,966 | 2,315 |
| nimble-woolly-zebra | 5,760 | 0.1151% | 1.6055% | 1.9373% | +0.0352% | +0.9126% | 4,077 | 942 |
| curious-oblique-egret | 5,760 | 0.0820% | 0.3462% | 1.2093% | +0.0567% | +0.2006% | 5,443 | 0 |
| lucky-glacial-urchin | 5,760 | 0.1016% | 0.2852% | 0.4274% | -0.0393% | +0.1036% | 1,879 | 0 |
| curious-umbral-gecko | 5,760 | 0.5179% | 1.0533% | 1.3814% | +0.0004% | +0.0947% | 2,986 | 0 |
| lucky-crystalline-narwhal | 5,760 | 0.0548% | 1.1845% | 1.3488% | -0.0540% | +0.0862% | 55 | 0 |
| plucky-hollow-walrus | 5,760 | 0.0240% | 0.0660% | 1.0404% | -0.0021% | +0.0590% | 2,626 | 0 |
| brisk-umbral-bison | 5,760 | 0.0218% | 0.3203% | 1.1147% | -0.0874% | +0.0221% | 1 | 0 |
| witty-tangerine-walrus | 5,760 | 0.0029% | 0.0253% | 0.0312% | -0.0063% | +0.0032% | 9 | 0 |
| wry-marbled-puffin | 5,760 | 0.2876% | 0.8307% | 1.0387% | -0.5757% | +0.0000% | 1 | 0 |
| curious-lunar-otter | 5,760 | 0.0057% | 0.0148% | 0.0162% | -0.0102% | -0.0043% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **274** opened: 2 closed by a swap, 67 by drift, 205 still open when the budget ran out. Median lifetime **208 blocks** (60.2 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 67 | 214 blocks | 99% | +1.0884% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 23 | 206 blocks | 61% | +0.2006% |
| nimble-woolly-zebra | Opal Hill→Juniper | 20 | 215 blocks | 95% | +0.7354% |
| curious-oblique-egret | Opal Quay→Juniper | 15 | 203 blocks | 73% | +0.1497% |
| lucky-glacial-urchin | Opal Cross→Rowan Cross | 14 | 214 blocks | 86% | +0.1036% |
| curious-oblique-egret | Juniper→Rowan Quay | 13 | 137 blocks | 39% | +0.1297% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 156 | 205 blocks | nothing pays | 0.5 ETH | -0.050299 ETH | — |
| steady-lunar-wombat | Opal Hill→Opal Cross | 112 | 210 blocks | nothing pays | 0.5 ETH | -0.319362 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 139 | 197 blocks | nothing pays | 0.5 ETH | -0.053088 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,036** reads across 8 cycles, 12,093 positive after fees; 549 quoted as a round trip, 0 cleared, best quoted net -0.000010 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Juniper | 3,947 | 3,463 | +0.9182% |
| WETH→Lemur→Zebra→WETH | Opal Quay → Juniper → Opal Quay | 2,552 | 2,475 | +0.1997% |
| WETH→Lemur→Egret→WETH | Opal Quay → Juniper → Juniper | 1,812 | 1,354 | +0.1955% |
| WETH→Zebra→Lemur→WETH | Opal Hill → Juniper → Opal Quay | 3,207 | 3,149 | +0.1836% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Rowan Quay | 3,589 | 326 | +0.1424% |

## The census

The wider net: 496 pools on the chain read from a public listing at 23:06 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| merry-electric-gecko | +0.6700% | $363,496 |
| curious-lunar-otter | +0.5345% | $115,922 |
| brisk-umbral-bison | +0.1065% | $202,888 |
| plucky-hollow-walrus | +0.0507% | $975,791 |
| curious-umbral-gecko | +0.0205% | $2,675,831 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-06-24 pays 9.08% fixed against 11.54% variable (-2.46 pts, $137,981 deep); Aave Lemur supplies 2.70%, borrows 3.74%; best basis carry BTC: funding 1.37% − Lemur 2.70% = -1.33 pts.
- **TON.** 62 Heron pools above $50,000 on two DEXes (49,261 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.991% with a $69,445 thin leg. Heron ≈ $1.180.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 4 pools from $1.13204 to $1.1558 (+2.10%), deepest on solana at $1.14946. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 3.6 blocks/s (median block 304 ms); a 15 s poll spans about 49 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 56 ms | 55 ms | 0 | yes |
| public | arb1.arbitrum.io | 79 ms | 68 ms | 1 | yes |
| public | arbitrum-one.publicnode.com | 64 ms | 60 ms | 0 | yes |
| public | 1rpc.io | 63 ms | 307 ms | 9 | yes |
| public | arbitrum.drpc.org | 71 ms | 94 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 4, 00:05 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
