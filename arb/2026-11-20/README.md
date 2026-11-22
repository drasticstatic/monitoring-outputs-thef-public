<div align="center">

# Arbitrage observer — 2026-11-20

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--20-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.34 h observed, 5,695 polls, 5,536 candidates, 2 cleared costs, 0 would have fired; 284 chases; best +0.000007 ETH on plucky-hollow-walrus Rowan Quay→Juniper at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.34 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.91 h |
| Polls · pair samples | 5,695 · 62,645 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **613.00 h** of 168 h (364.9%) |
| Study to date (calendar, to the last poll) | 631.25 h |
| Heartbeat | last poll Nov 20, 23:59 ET, block 526,142,696 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,536 | 5,530 | 2 | **0** | 30 | +0.000010 ETH | 0.00001202 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 13:48 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0199% | 0.05 ETH | +0.000007 ETH ($0.01) | yes |
| 22:44 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0360% | 0.05 ETH | +0.000003 ETH ($0.00) | yes |
| 14:14 ET | curious-oblique-egret | Rowan Quay→Opal Cross | +0.2579% | 0.01 ETH | -0.000002 ETH ($0.00) | no |
| 13:27 ET | curious-oblique-egret | Rowan Quay→Opal Cross | +0.1551% | 0.01 ETH | -0.000004 ETH (-$0.01) | no |
| 13:05 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0434% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,695 | 1.1524% | 2.8986% | 4.5515% | +0.1024% | +3.5015% | 4,179 | 2,313 |
| curious-umbral-gecko | 5,695 | 0.0418% | 0.1313% | 1.8985% | +0.0199% | +1.8385% | 4,610 | 1 |
| nimble-woolly-zebra | 5,695 | 0.1472% | 1.5537% | 2.5896% | +0.0581% | +1.5645% | 4,310 | 688 |
| curious-oblique-egret | 5,695 | 0.1400% | 0.5859% | 1.3779% | +0.1039% | +1.2664% | 5,518 | 770 |
| lucky-crystalline-narwhal | 5,695 | 0.0280% | 1.1740% | 1.7937% | -0.0560% | +0.4356% | 98 | 1 |
| lucky-glacial-urchin | 5,695 | 0.0593% | 0.2767% | 0.5655% | -0.0603% | +0.1416% | 510 | 0 |
| plucky-hollow-walrus | 5,695 | 0.0279% | 0.0871% | 1.1775% | -0.0007% | +0.1366% | 2,744 | 0 |
| brisk-umbral-bison | 5,695 | 0.0247% | 0.3201% | 1.5954% | -0.0858% | +0.0992% | 16 | 0 |
| witty-tangerine-walrus | 5,695 | 0.0030% | 0.0209% | 0.0644% | -0.0063% | +0.0269% | 358 | 0 |
| wry-marbled-puffin | 5,695 | 0.3960% | 0.8870% | 1.2942% | -0.6472% | +0.0067% | 1 | 0 |
| curious-lunar-otter | 5,695 | 0.0060% | 0.0139% | 0.0207% | -0.0095% | +0.0038% | 20 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **284** opened: 99 closed by a swap, 15 by drift, 170 still open when the budget ran out. Median lifetime **210 blocks** (60.1 s), p90 60.4 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 46 | 229 blocks | 96% | +3.3007% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 21 | 227 blocks | 67% | +0.5043% |
| curious-oblique-egret | Juniper→Opal Quay | 19 | 221 blocks | 90% | +0.7074% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 16 | 214 blocks | 75% | +0.5870% |
| curious-oblique-egret | Opal Quay→Juniper | 16 | 218 blocks | 81% | +0.3029% |
| curious-umbral-gecko | Opal Quay→Juniper | 16 | 40 blocks | 0% | +0.1346% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:50 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 357 | 207 blocks | nothing pays | 0.5 ETH | -0.366013 ETH | — |
| curious-oblique-egret | Opal Quay→Juniper | 158 | 194 blocks | nothing pays | 0.5 ETH | -0.364286 ETH | — |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 118 | 209 blocks | nothing pays | 0.5 ETH | -0.366016 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,860** reads across 8 cycles, 13,822 positive after fees; 617 quoted as a round trip, 0 cleared, best quoted net -0.000006 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Zebra→Lemur→WETH | Rowan Gate → Opal Cross → Opal Cross | 3,015 | 3,007 | +1.9976% |
| WETH→Lemur→Egret→WETH | Rowan Quay → Juniper → Opal Row | 2,755 | 2,518 | +1.9417% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Opal Cross | 2,699 | 208 | +1.9257% |
| Lemur→Lemur→WETH→Lemur | Rowan Cross → Opal Cross → Juniper | 2,556 | 946 | +1.7496% |
| WETH→Egret→Lemur→WETH | Opal Cross → Opal Hill → Opal Quay | 2,960 | 2,699 | +1.5981% |

## The census

The wider net: 498 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| jolly-glacial-urchin | +49.5787% | $213,223 |
| wry-verdant-unicorn | +0.1329% | $160,735 |
| vivid-cobalt-marmot | +0.0955% | $70,849 |
| merry-electric-gecko | +0.0483% | $161,098 |
| witty-glacial-pangolin | -0.0396% | $85,676 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.172% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 10.63% fixed against 8.37% variable (+2.25 pts, $4,031,936 deep); Aave Lemur supplies 11.37%, borrows 12.80%; best basis carry Copper: funding 1.37% − Lemur 11.37% = -10.00 pts.
- **TON.** 52 Heron pools above $50,000 on two DEXes (50,519 Slate and 52,340 Umber listed), 4 pairs priced on two or more venues, 4 apart after fees — best vivid-cobalt-tapir +2.323% with a $53,409 thin leg. Heron ≈ $0.913.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 9 pools from $0.97589 to $1.16481 (+19.36%), deepest on solana at $1.00061. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:56 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 76 ms | 68 ms | 4 | yes |
| public | arbitrum-one.publicnode.com | 59 ms | 65 ms | 0 | yes |
| public | 1rpc.io | 92 ms | 315 ms | 2 | yes |
| public | arbitrum.drpc.org | 74 ms | 100 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 21, 01:05 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
