<div align="center">

# Arbitrage observer — 2026-11-22

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--22-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.35 h observed, 5,755 polls, 4,771 candidates, 0 cleared costs, 0 would have fired; 273 chases; best -0.000004 ETH on plucky-hollow-walrus Rowan Cross→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.35 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.99 h |
| Polls · pair samples | 5,755 · 63,305 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **661.69 h** of 168 h (393.9%) |
| Study to date (calendar, to the last poll) | 679.25 h |
| Heartbeat | last poll Nov 22, 23:59 ET, block 526,710,873 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,771 | 4,694 | 0 | **0** | 385 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 22:42 ET | plucky-hollow-walrus | Rowan Cross→Rowan Quay | +0.0320% | 0.05 ETH | -0.000004 ETH (-$0.01) | no |
| 23:21 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.1237% | 0.01 ETH | -0.000005 ETH (-$0.01) | no |
| 07:16 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0196% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 21:42 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0225% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 23:24 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.1041% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 5,755 | 0.1399% | 1.5547% | 2.1934% | +0.0493% | +1.1684% | 3,964 | 851 |
| curious-oblique-egret | 5,755 | 0.0782% | 0.3244% | 1.2286% | +0.0514% | +0.2674% | 5,374 | 0 |
| curious-umbral-gecko | 5,755 | 0.0373% | 0.0782% | 1.0507% | +0.0162% | +0.2000% | 4,731 | 0 |
| steady-lunar-wombat | 5,755 | 0.1330% | 0.3995% | 0.6684% | -0.0540% | +0.1677% | 1,966 | 0 |
| lucky-glacial-urchin | 5,755 | 0.0585% | 0.2548% | 0.4497% | -0.0609% | +0.1237% | 527 | 0 |
| lucky-crystalline-narwhal | 5,755 | 0.0230% | 1.1085% | 1.3256% | -0.0467% | +0.0545% | 108 | 0 |
| plucky-hollow-walrus | 5,755 | 0.0244% | 0.0807% | 0.3012% | -0.0020% | +0.0487% | 2,570 | 0 |
| brisk-umbral-bison | 5,755 | 0.0189% | 0.3355% | 1.3575% | -0.0911% | +0.0264% | 2 | 0 |
| curious-lunar-otter | 5,755 | 0.0054% | 0.0234% | 0.0377% | -0.0101% | +0.0089% | 349 | 0 |
| witty-tangerine-walrus | 5,755 | 0.0046% | 0.0162% | 0.0368% | -0.0072% | +0.0088% | 14 | 0 |
| wry-marbled-puffin | 5,755 | 0.1170% | 0.8665% | 1.1241% | -0.4246% | +0.0000% | 4 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **273** opened: 125 closed by a swap, 12 by drift, 136 still open when the budget ran out. Median lifetime **167 blocks** (59.5 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Juniper→Opal Quay | 28 | 186 blocks | 54% | +0.3022% |
| nimble-woolly-zebra | Juniper→Opal Cross | 24 | 171 blocks | 58% | +0.2428% |
| curious-umbral-gecko | Juniper→Opal Quay | 24 | 48 blocks | 13% | +0.1202% |
| curious-oblique-egret | Opal Quay→Juniper | 23 | 188 blocks | 65% | +0.2035% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 22 | 162 blocks | 50% | +0.1791% |
| nimble-woolly-zebra | Opal Cross→Juniper | 20 | 195 blocks | 70% | +0.2477% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:51 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 207 | 207 blocks | nothing pays | 0.5 ETH | -0.371363 ETH | — |
| steady-lunar-wombat | Opal Hill→Opal Cross | 124 | 221 blocks | nothing pays | 0.5 ETH | -0.335500 ETH | — |
| curious-oblique-egret | Opal Quay→Juniper | 146 | 198 blocks | nothing pays | 0.5 ETH | -0.299769 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,020** reads across 8 cycles, 13,004 positive after fees; 602 quoted as a round trip, 0 cleared, best quoted net -0.000013 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Opal Quay → Opal Hill → Juniper | 3,194 | 2,965 | +1.1712% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Opal Quay | 2,561 | 2,283 | +0.6809% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Rowan Quay → Rowan Quay | 3,011 | 2,994 | +0.2849% |
| WETH→Lemur→Zebra→WETH | Rowan Quay → Juniper → Opal Quay | 2,744 | 2,713 | +0.2747% |
| WETH→Lemur→Falcon→WETH | Rowan Quay → Opal Row → Juniper | 2,971 | 297 | +0.1969% |

## The census

The wider net: 494 pools on the chain read from a public listing at 23:52 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| merry-electric-gecko | +0.0422% | $177,061 |
| witty-glacial-pangolin | -0.0034% | $90,006 |
| focused-winsome-zebra | -0.0548% | $357,847 |
| curious-umbral-gecko | -0.1354% | $2,234,358 |
| curious-oblique-egret | -0.1660% | $277,918 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 12.00% fixed against 8.37% variable (+3.63 pts, $4,058,861 deep); Aave Lemur supplies 5.57%, borrows 6.60%; best basis carry BTC: funding 1.37% − Lemur 5.57% = -4.20 pts.
- **TON.** 55 Heron pools above $50,000 on two DEXes (50,668 Slate and 52,340 Umber listed), 5 pairs priced on two or more venues, 4 apart after fees — best rustic-peculiar-koala +7.577% with a $27,234 thin leg. Heron ≈ $0.985.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 9 pools from $0.99682 to $1.15598 (+15.97%), deepest on solana at $0.99854. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 01:08 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 69 ms | 73 ms | 3 | yes |
| public | arbitrum-one.publicnode.com | 77 ms | 70 ms | 0 | yes |
| public | 1rpc.io | 77 ms | 530 ms | 2 | yes |
| public | arbitrum.drpc.org | 69 ms | 91 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 24, 01:05 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
