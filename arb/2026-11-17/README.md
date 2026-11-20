<div align="center">

# Arbitrage observer — 2026-11-17

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--17-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.41 h observed, 5,751 polls, 5,489 candidates, 1 cleared costs, 0 would have fired; 282 chases; best +0.000005 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.41 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.99 h |
| Polls · pair samples | 5,751 · 63,261 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **539.38 h** of 168 h (321.1%) |
| Study to date (calendar, to the last poll) | 559.25 h |
| Heartbeat | last poll Nov 17, 23:59 ET, block 525,233,029 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,489 | 5,489 | 1 | **0** | 10 | +0.000005 ETH | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 00:20 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0297% | 0.05 ETH | +0.000005 ETH ($0.01) | yes |
| 00:20 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.1184% | 0.01 ETH | -0.000003 ETH (-$0.01) | no |
| 10:44 ET | curious-umbral-gecko | Opal Quay→Rowan Quay | +0.0898% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 21:08 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0645% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 01:13 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0624% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,751 | 3.2552% | 4.1667% | 4.5573% | +2.1552% | +3.5073% | 5,751 | 5,751 |
| curious-oblique-egret | 5,751 | 0.0715% | 0.3656% | 1.2928% | +0.0465% | +0.3644% | 5,492 | 1 |
| nimble-woolly-zebra | 5,751 | 0.1095% | 0.9828% | 1.1991% | +0.0377% | +0.3076% | 4,214 | 4 |
| curious-umbral-gecko | 5,751 | 0.0275% | 0.0600% | 1.0944% | +0.0064% | +0.1184% | 3,828 | 0 |
| plucky-hollow-walrus | 5,751 | 0.0253% | 0.0810% | 1.1231% | -0.0006% | +0.1131% | 2,745 | 0 |
| lucky-glacial-urchin | 5,751 | 0.0591% | 0.2751% | 0.4730% | -0.0533% | +0.0873% | 305 | 0 |
| lucky-crystalline-narwhal | 5,751 | 0.0217% | 1.0397% | 1.3208% | -0.0507% | +0.0352% | 67 | 0 |
| wry-marbled-puffin | 5,751 | 0.1484% | 0.7681% | 1.0934% | -0.2820% | +0.0335% | 6 | 0 |
| witty-tangerine-walrus | 5,751 | 0.0019% | 0.0103% | 0.0220% | -0.0063% | +0.0035% | 10 | 0 |
| brisk-umbral-bison | 5,751 | 0.0217% | 0.3120% | 1.1530% | -0.0905% | -0.0036% | 0 | 0 |
| curious-lunar-otter | 5,751 | 0.0052% | 0.0103% | 0.0112% | -0.0099% | -0.0071% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **282** opened: 65 closed by a swap, 12 by drift, 205 still open when the budget ran out. Median lifetime **197 blocks** (60.2 s), p90 61.0 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 73 | 210 blocks | 100% | +3.4898% |
| nimble-woolly-zebra | Juniper→Opal Cross | 26 | 184 blocks | 54% | +0.2301% |
| nimble-woolly-zebra | Opal Cross→Juniper | 25 | 196 blocks | 68% | +0.2367% |
| curious-oblique-egret | Opal Quay→Juniper | 22 | 189 blocks | 73% | +0.2939% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 21 | 110 blocks | 33% | +0.2419% |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 20 | 207 blocks | 100% | +2.5958% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:50 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 376 | 208 blocks | nothing pays | 0.5 ETH | -0.367005 ETH | — |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 110 | 207 blocks | nothing pays | 0.5 ETH | -0.366838 ETH | — |
| curious-oblique-egret | Opal Quay→Juniper | 142 | 182 blocks | nothing pays | 0.5 ETH | -0.253994 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,004** reads across 8 cycles, 12,710 positive after fees; 720 quoted as a round trip, 0 cleared, best quoted net -0.000009 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Rowan Quay | 3,059 | 3,019 | +0.3544% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Cross → Rowan Quay | 3,341 | 2,956 | +0.3231% |
| WETH→Lemur→Egret→WETH | Juniper → Opal Cross → Juniper | 2,410 | 2,078 | +0.2268% |
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Opal Quay | 2,692 | 2,663 | +0.2052% |
| Lemur→WETH→Lemur→Lemur | Juniper → Rowan Quay → Rowan Cross | 2,719 | 727 | +0.1647% |

## The census

The wider net: 500 pools on the chain read from a public listing at 23:52 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| jolly-glacial-urchin | +2.8509% | $257,083 |
| cheeky-cosmic-tapir | +0.6761% | $197,430 |
| lucky-glacial-urchin | +0.4041% | $93,340 |
| brisk-umbral-bison | +0.1196% | $168,350 |
| plucky-hollow-walrus | +0.0396% | $894,343 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 9.10% fixed against 6.97% variable (+2.12 pts, $4,055,632 deep); Aave Lemur supplies 5.38%, borrows 6.48%; best basis carry BTC: funding 1.37% − Lemur 5.38% = -4.01 pts.
- **TON.** 57 Heron pools above $50,000 on two DEXes (50,238 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.029% with a $63,311 thin leg. Heron ≈ $1.080.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 7 pools from $1.00174 to $1.15692 (+15.49%), deepest on solana at $1.00184. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:53 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 86 ms | 80 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 76 ms | 59 ms | 0 | yes |
| public | 1rpc.io | 79 ms | 361 ms | 1 | yes |
| public | arbitrum.drpc.org | 62 ms | 86 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 19, 00:59 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
