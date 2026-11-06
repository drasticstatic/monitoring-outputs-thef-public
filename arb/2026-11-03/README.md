<div align="center">

# Arbitrage observer — 2026-11-03

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--03-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.00 h observed, 5,745 polls, 4,846 candidates, 1 cleared costs, 0 would have fired; 257 chases; best +0.000016 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.00 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.99 h |
| Polls · pair samples | 5,745 · 63,195 |
| Pairs watched · pools priced | 11 · 75 |
| Study to date (observed) | **198.57 h** of 168 h (118.2%) |
| Study to date (calendar, to the last poll) | 223.25 h |
| Heartbeat | last poll Nov 3, 23:59 ET, block 521,079,990 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,846 | 4,846 | 1 | **0** | 2 | +0.000016 ETH | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 08:32 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0637% | 0.05 ETH | +0.000016 ETH ($0.04) | yes |
| 21:41 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0257% | 0.05 ETH | -0.000004 ETH (-$0.01) | no |
| 01:07 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1247% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 21:58 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1029% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |
| 00:08 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0314% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,745 | 0.9223% | 1.8277% | 2.1108% | +0.0396% | +1.0608% | 3,897 | 1,165 |
| nimble-woolly-zebra | 5,745 | 0.0937% | 1.7054% | 1.9619% | +0.0131% | +0.9373% | 3,390 | 896 |
| curious-oblique-egret | 5,745 | 0.0807% | 0.3623% | 1.2935% | +0.0520% | +0.3349% | 5,448 | 1 |
| curious-umbral-gecko | 5,745 | 0.3599% | 1.1806% | 2.3704% | -0.0037% | +0.2405% | 2,051 | 0 |
| lucky-glacial-urchin | 5,745 | 0.0627% | 0.3087% | 0.4302% | -0.0536% | +0.1045% | 1,215 | 0 |
| plucky-hollow-walrus | 5,745 | 0.0252% | 0.0751% | 1.0478% | -0.0015% | +0.0637% | 2,687 | 0 |
| lucky-crystalline-narwhal | 5,745 | 0.0497% | 1.1890% | 1.3354% | -0.0572% | +0.0454% | 73 | 0 |
| witty-tangerine-walrus | 5,745 | 0.0019% | 0.0167% | 0.0318% | -0.0060% | +0.0088% | 28 | 0 |
| curious-lunar-otter | 5,745 | 0.0045% | 0.0080% | 0.0083% | -0.0105% | -0.0093% | 0 | 0 |
| brisk-umbral-bison | 5,745 | 0.0206% | 0.3152% | 1.1226% | -0.0889% | -0.0134% | 0 | 0 |
| wry-marbled-puffin | 5,745 | 0.2652% | 0.8009% | 0.9751% | -0.6700% | -0.3116% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **257** opened: 7 closed by a swap, 67 by drift, 183 still open when the budget ran out. Median lifetime **207 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 38 | 215 blocks | 100% | +1.0608% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 22 | 195 blocks | 50% | +0.1864% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 22 | 195 blocks | 59% | +0.1872% |
| nimble-woolly-zebra | Opal Hill→Juniper | 22 | 217 blocks | 91% | +0.8992% |
| curious-oblique-egret | Opal Quay→Juniper | 18 | 204 blocks | 89% | +0.1252% |
| steady-lunar-wombat | Opal Hill→Rowan Cross | 17 | 218 blocks | 100% | +0.9396% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 151 | 212 blocks | nothing pays | 0.5 ETH | -0.320848 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 139 | 206 blocks | nothing pays | 0.5 ETH | -0.050776 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 128 | 191 blocks | nothing pays | 0.5 ETH | -0.053583 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,984** reads across 8 cycles, 11,332 positive after fees; 550 quoted as a round trip, 0 cleared, best quoted net -0.000008 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Rowan Quay → Opal Hill → Opal Cross | 2,932 | 2,174 | +0.8878% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Juniper | 2,814 | 2,038 | +0.8700% |
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Opal Quay | 2,941 | 2,875 | +0.4202% |
| Lemur→WETH→Lemur→Lemur | Juniper → Juniper → Opal Row | 2,840 | 516 | +0.2039% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Juniper | 2,987 | 391 | +0.1903% |

## The census

The wider net: 491 pools on the chain read from a public listing at 23:06 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| frisky-electric-gecko | +0.6756% | $98,505 |
| brisk-umbral-bison | +0.2890% | $167,736 |
| curious-lunar-otter | +0.1920% | $115,768 |
| nimble-woolly-zebra | +0.1883% | $89,785 |
| witty-glacial-pangolin | +0.1129% | $128,322 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-06-24 pays 9.07% fixed against 11.64% variable (-2.57 pts, $138,036 deep); Aave Lemur supplies 2.71%, borrows 3.75%; best basis carry BTC: funding 1.37% − Lemur 2.71% = -1.34 pts.
- **TON.** 62 Heron pools above $50,000 on two DEXes (49,315 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.976% with a $68,273 thin leg. Heron ≈ $1.160.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 8 pools from $0.9622 to $1.17248 (+21.85%), deepest on solana at $0.99286. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 3.64 blocks/s (median block 302 ms); a 15 s poll spans about 50 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 57 ms | 58 ms | 0 | yes |
| public | arb1.arbitrum.io | 75 ms | 74 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 67 ms | 64 ms | 0 | yes |
| public | 1rpc.io | 68 ms | 491 ms | 6 | yes |
| public | arbitrum.drpc.org | 70 ms | 95 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 5, 00:06 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
