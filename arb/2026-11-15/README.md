<div align="center">

# Arbitrage observer — 2026-11-15

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--15-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.40 h observed, 5,737 polls, 5,297 candidates, 0 cleared costs, 0 would have fired; 285 chases; best -0.000006 ETH on curious-umbral-gecko Opal Quay→Juniper at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.40 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.92 h |
| Polls · pair samples | 5,737 · 63,107 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **490.58 h** of 168 h (292.0%) |
| Study to date (calendar, to the last poll) | 511.25 h |
| Heartbeat | last poll Nov 15, 23:59 ET, block 524,654,359 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,297 | 5,297 | 0 | **0** | 4 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 17:45 ET | curious-umbral-gecko | Opal Quay→Juniper | +0.1069% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 00:59 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.1323% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 09:38 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.1645% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 05:29 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0739% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 09:13 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1550% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,737 | 2.7344% | 3.6458% | 4.0365% | +1.6844% | +2.9865% | 5,734 | 5,589 |
| curious-umbral-gecko | 5,737 | 0.0386% | 0.0980% | 1.1447% | +0.0169% | +1.1246% | 4,548 | 3 |
| nimble-woolly-zebra | 5,737 | 0.0775% | 0.2352% | 1.1899% | -0.0028% | +0.3129% | 2,773 | 1 |
| curious-oblique-egret | 5,737 | 0.0711% | 0.3567% | 1.1764% | +0.0471% | +0.2950% | 5,276 | 0 |
| plucky-hollow-walrus | 5,737 | 0.0244% | 0.0782% | 1.1392% | -0.0014% | +0.1292% | 2,633 | 0 |
| lucky-glacial-urchin | 5,737 | 0.0593% | 0.2788% | 0.3584% | -0.0604% | +0.0974% | 283 | 0 |
| witty-tangerine-walrus | 5,737 | 0.0020% | 0.0092% | 0.0582% | -0.0071% | +0.0444% | 1 | 0 |
| lucky-crystalline-narwhal | 5,737 | 0.0276% | 1.1819% | 1.3447% | -0.0582% | +0.0424% | 39 | 0 |
| brisk-umbral-bison | 5,737 | 0.0235% | 0.2909% | 1.1414% | -0.0893% | +0.0059% | 2 | 0 |
| curious-lunar-otter | 5,737 | 0.0041% | 0.0085% | 0.0091% | -0.0109% | -0.0080% | 0 | 0 |
| wry-marbled-puffin | 5,737 | 0.2024% | 0.8680% | 0.9325% | -0.6285% | -0.2691% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **285** opened: 67 closed by a swap, 35 by drift, 182 still open when the budget ran out. Median lifetime **188 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 74 | 200 blocks | 100% | +2.8903% |
| curious-oblique-egret | Opal Quay→Juniper | 35 | 185 blocks | 60% | +0.2489% |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 25 | 200 blocks | 100% | +2.4656% |
| curious-umbral-gecko | Opal Quay→Juniper | 17 | 60 blocks | 24% | +0.1074% |
| curious-oblique-egret | Juniper→Opal Quay | 15 | 193 blocks | 47% | +0.1739% |
| curious-umbral-gecko | Juniper→Rowan Quay | 13 | 121 blocks | 23% | +0.1954% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:50 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 263 | 211 blocks | nothing pays | 0.5 ETH | -0.365648 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 157 | 155 blocks | nothing pays | 0.5 ETH | -0.226409 ETH | — |
| curious-oblique-egret | Opal Quay→Juniper | 133 | 175 blocks | nothing pays | 0.5 ETH | -0.230957 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,024** reads across 8 cycles, 12,118 positive after fees; 743 quoted as a round trip, 0 cleared, best quoted net -0.000011 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Juniper → Juniper → Juniper | 2,919 | 2,212 | +1.1302% |
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Juniper | 2,469 | 2,443 | +1.0644% |
| Lemur→WETH→Lemur→Lemur | Juniper → Juniper → Opal Cross | 2,969 | 982 | +1.0197% |
| WETH→Zebra→Lemur→WETH | Juniper → Juniper → Juniper | 3,287 | 3,248 | +0.7607% |
| Lemur→Lemur→WETH→Lemur | Rowan Cross → Juniper → Rowan Quay | 2,787 | 788 | +0.6301% |

## The census

The wider net: 494 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| steady-lunar-wombat | +0.1969% | $84,322 |
| curious-oblique-egret | +0.1822% | $209,814 |
| curious-umbral-gecko | +0.1385% | $206,333 |
| jolly-glacial-urchin | +0.0729% | $259,692 |
| curious-umbral-gecko | +0.0522% | $2,532,633 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.091% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 8.94% fixed against 6.98% variable (+1.96 pts, $4,052,822 deep); Aave Lemur supplies 3.34%, borrows 4.21%; best basis carry Copper: funding 1.37% − Lemur 3.34% = -1.97 pts.
- **TON.** 58 Heron pools above $50,000 on two DEXes (50,090 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.029% with a $62,370 thin leg. Heron ≈ $1.063.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 5 pools from $1.13284 to $1.1586 (+2.27%), deepest on solana at $1.15304. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:59 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 73 ms | 78 ms | 3 | yes |
| public | arbitrum-one.publicnode.com | 63 ms | 65 ms | 1 | yes |
| public | 1rpc.io | 67 ms | 413 ms | 7 | yes |
| public | arbitrum.drpc.org | 72 ms | 88 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 16, 01:00 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
