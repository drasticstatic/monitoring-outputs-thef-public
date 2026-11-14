<div align="center">

# Arbitrage observer — 2026-11-12

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--12-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.68 h observed, 3,959 polls, 3,717 candidates, 1 cleared costs, 1 would have fired; 241 chases; best +0.000002 ETH on curious-oblique-egret Rowan Gate→Opal Cross at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.68 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.91 h |
| Polls · pair samples | 3,959 · 43,525 |
| Pairs watched · pools priced | 11 · 78 |
| Study to date (observed) | **416.22 h** of 168 h (247.8%) |
| Study to date (calendar, to the last poll) | 439.25 h |
| Heartbeat | last poll Nov 12, 23:59 ET, block 523,767,722 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 3,717 | 3,553 | 1 | **1** | 1,651 | +0.000002 ETH | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 22:53 ET | curious-oblique-egret | Rowan Gate→Opal Cross | +0.3346% | 0.01 ETH | +0.000002 ETH ($0.00) | yes |
| 10:16 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0592% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |
| 23:40 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1521% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 21:20 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0512% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |
| 12:28 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0341% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 3,957 | 0.0920% | 1.4164% | 2.0437% | +0.0055% | +1.0185% | 2,118 | 383 |
| steady-lunar-wombat | 3,955 | 0.2670% | 1.4765% | 1.6129% | +0.0253% | +0.5629% | 2,043 | 410 |
| curious-oblique-egret | 3,958 | 0.0679% | 0.3135% | 1.2211% | +0.0431% | +0.3346% | 3,754 | 1 |
| plucky-hollow-walrus | 3,957 | 0.0262% | 1.0347% | 1.1181% | -0.0002% | +0.1081% | 1,949 | 0 |
| lucky-glacial-urchin | 3,957 | 0.0608% | 0.3032% | 0.4417% | -0.0402% | +0.0999% | 728 | 0 |
| curious-umbral-gecko | 3,958 | 0.0214% | 0.1855% | 1.0057% | -0.0006% | +0.0735% | 1,912 | 0 |
| wry-marbled-puffin | 3,955 | 0.1633% | 0.9987% | 1.1532% | -0.2649% | +0.0532% | 11 | 0 |
| lucky-crystalline-narwhal | 3,959 | 0.0247% | 1.1067% | 1.3233% | -0.0572% | +0.0230% | 23 | 0 |
| brisk-umbral-bison | 3,955 | 0.0240% | 0.2611% | 1.1502% | -0.0862% | +0.0018% | 2 | 0 |
| witty-tangerine-walrus | 3,957 | 0.0022% | 0.0095% | 0.0167% | -0.0057% | +0.0003% | 1 | 0 |
| curious-lunar-otter | 3,957 | 0.0029% | 0.0039% | 0.0049% | -0.0121% | -0.0101% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **241** opened: 69 closed by a swap, 31 by drift, 141 still open when the budget ran out. Median lifetime **99 blocks** (60.2 s), p90 82.7 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 30 | 99 blocks | 67% | +0.1630% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 22 | 109 blocks | 55% | +0.1262% |
| curious-oblique-egret | Opal Quay→Juniper | 17 | 67 blocks | 53% | +0.1298% |
| curious-oblique-egret | Juniper→Opal Quay | 14 | 149 blocks | 64% | +0.1063% |
| nimble-woolly-zebra | Opal Hill→Juniper | 14 | 100 blocks | 93% | +0.5090% |
| steady-lunar-wombat | Opal Cross→Opal Hill | 11 | 204 blocks | 91% | +0.5629% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (142 runs this day; the last at 23:50 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 174 | 193 blocks | nothing pays | 0.5 ETH | -0.085348 ETH | — |
| steady-lunar-wombat | Opal Hill→Opal Cross | 139 | 197 blocks | nothing pays | 0.5 ETH | -0.327393 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 141 | 180 blocks | nothing pays | 0.5 ETH | -0.048373 ETH | — |

## Triangles

Three-pair cycles priced each poll: **15,912** reads across 8 cycles, 7,971 positive after fees; 583 quoted as a round trip, 0 cleared, best quoted net -0.000004 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Rowan Quay → Opal Hill → Opal Cross | 2,152 | 1,588 | +0.9310% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Rowan Quay | 1,826 | 1,257 | +0.9257% |
| WETH→Zebra→Lemur→WETH | Rowan Gate → Juniper → Opal Cross | 2,049 | 2,017 | +0.3352% |
| WETH→Falcon→Lemur→WETH | Opal Cross → Opal Row → Opal Cross | 1,678 | 105 | +0.2185% |
| WETH→Lemur→Zebra→WETH | Rowan Quay → Rowan Quay → Rowan Gate | 1,929 | 1,882 | +0.1807% |

## The census

The wider net: 494 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| jolly-glacial-urchin | +3.5281% | $276,224 |
| lucky-crystalline-narwhal | +0.0371% | $108,341 |
| witty-glacial-pangolin | +0.0187% | $113,938 |
| merry-electric-gecko | -0.0044% | $170,955 |
| curious-umbral-gecko | -0.0479% | $232,844 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 8.92% fixed against 6.99% variable (+1.93 pts, $4,284,832 deep); Aave Lemur supplies 2.92%, borrows 3.94%; best basis carry Egret: funding 1.37% − Lemur 2.92% = -1.55 pts.
- **TON.** 61 Heron pools above $50,000 on two DEXes (49,848 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.998% with a $67,088 thin leg. Heron ≈ $1.144.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 7 pools from $0.98999 to $1.15596 (+16.76%), deepest on solana at $0.98999. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 01:04 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 72 ms | 76 ms | 3 | yes |
| public | arbitrum-one.publicnode.com | 62 ms | 57 ms | 0 | yes |
| public | 1rpc.io | 67 ms | 292 ms | 8 | yes |
| public | arbitrum.drpc.org | 69 ms | 92 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 13, 01:07 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
