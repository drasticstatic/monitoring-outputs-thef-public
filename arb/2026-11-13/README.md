<div align="center">

# Arbitrage observer — 2026-11-13

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--13-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 25.55 h observed, 5,690 polls, 5,032 candidates, 1 cleared costs, 0 would have fired; 268 chases; best +0.000003 ETH on plucky-hollow-walrus Rowan Quay→Juniper at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **25.55 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.91 h |
| Polls · pair samples | 5,690 · 62,590 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **441.77 h** of 168 h (263.0%) |
| Study to date (calendar, to the last poll) | 463.25 h |
| Heartbeat | last poll Nov 13, 23:59 ET, block 524,066,872 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,032 | 5,032 | 1 | **0** | 5 | +0.000003 ETH | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 22:59 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0023% | 0.05 ETH | +0.000003 ETH ($0.01) | yes |
| 00:55 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.1136% | 0.1 ETH | -0.000002 ETH ($0.00) | no |
| 01:31 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0793% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 15:20 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0738% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 12:52 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0377% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,690 | 3.5156% | 4.5692% | 4.8303% | +2.3354% | +3.7803% | 4,905 | 3,825 |
| nimble-woolly-zebra | 5,690 | 0.0767% | 1.5107% | 1.9174% | -0.0038% | +0.8924% | 2,686 | 505 |
| curious-oblique-egret | 5,690 | 0.0618% | 0.4047% | 1.3249% | +0.0372% | +0.2807% | 5,118 | 0 |
| curious-umbral-gecko | 5,690 | 0.0252% | 0.0589% | 1.1378% | +0.0043% | +0.1278% | 3,500 | 0 |
| lucky-glacial-urchin | 5,690 | 0.0592% | 0.3150% | 0.4750% | -0.0605% | +0.0956% | 532 | 0 |
| plucky-hollow-walrus | 5,690 | 0.0221% | 0.0743% | 1.0414% | -0.0013% | +0.0468% | 2,641 | 0 |
| lucky-crystalline-narwhal | 5,690 | 0.0261% | 1.1260% | 1.6541% | -0.0565% | +0.0279% | 25 | 0 |
| brisk-umbral-bison | 5,690 | 0.0275% | 0.2933% | 1.1523% | -0.0847% | +0.0275% | 3 | 0 |
| witty-tangerine-walrus | 5,690 | 0.0019% | 0.0112% | 0.0149% | -0.0079% | +0.0009% | 7 | 0 |
| curious-lunar-otter | 5,690 | 0.0035% | 0.0051% | 0.0060% | -0.0115% | -0.0090% | 0 | 0 |
| wry-marbled-puffin | 5,690 | 0.3822% | 0.8607% | 1.1142% | -0.6942% | -0.0880% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **268** opened: 91 closed by a swap, 21 by drift, 156 still open when the budget ran out. Median lifetime **196 blocks** (60.1 s), p90 60.4 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 61 | 212 blocks | 100% | +3.8244% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 31 | 155 blocks | 42% | +0.1645% |
| curious-oblique-egret | Opal Quay→Juniper | 22 | 181 blocks | 50% | +0.2028% |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 18 | 205 blocks | 94% | +3.3892% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 16 | 103 blocks | 25% | +0.1156% |
| nimble-woolly-zebra | Juniper→Opal Hill | 9 | 218 blocks | 78% | +0.7141% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:50 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 130 | 219 blocks | nothing pays | 0.5 ETH | -0.364969 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 170 | 190 blocks | nothing pays | 0.5 ETH | -0.104360 ETH | — |
| steady-lunar-wombat | Opal Hill→Opal Cross | 108 | 197 blocks | nothing pays | 0.5 ETH | -0.342565 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,840** reads across 8 cycles, 11,423 positive after fees; 736 quoted as a round trip, 0 cleared, best quoted net -0.000012 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Rowan Quay | 3,012 | 2,068 | +0.8363% |
| WETH→Lemur→Egret→WETH | Juniper → Opal Hill → Juniper | 2,698 | 1,840 | +0.8322% |
| WETH→Lemur→Zebra→WETH | Rowan Quay → Juniper → Opal Quay | 2,763 | 2,684 | +0.4299% |
| WETH→Zebra→Lemur→WETH | Opal Hill → Juniper → Rowan Quay | 2,947 | 2,867 | +0.3234% |
| WETH→Lemur→Falcon→WETH | Opal Quay → Opal Row → Rowan Cross | 2,787 | 212 | +0.1170% |

## The census

The wider net: 492 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| frisky-electric-gecko | +1.0725% | $87,957 |
| steady-lunar-wombat | +0.2267% | $90,313 |
| vivid-cobalt-marmot | +0.2111% | $56,693 |
| witty-tangerine-walrus | +0.1451% | $899,396 |
| merry-electric-gecko | +0.0293% | $286,713 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.091% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 8.92% fixed against 6.99% variable (+1.93 pts, $4,272,625 deep); Aave Lemur supplies 3.04%, borrows 4.02%; best basis carry Egret: funding 1.37% − Lemur 3.04% = -1.68 pts.
- **TON.** 56 Heron pools above $50,000 on two DEXes (49,949 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.027% with a $62,137 thin leg. Heron ≈ $1.058.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 5 pools from $1.13735 to $1.20121 (+5.61%), deepest on solana at $1.15135. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:59 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 92 ms | 90 ms | 3 | yes |
| public | arbitrum-one.publicnode.com | 65 ms | 80 ms | 0 | yes |
| public | 1rpc.io | — ms | — ms | — | no (missing response for request) |
| public | arbitrum.drpc.org | 84 ms | 107 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 14, 01:05 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
