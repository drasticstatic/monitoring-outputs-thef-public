<div align="center">

# Arbitrage observer — 2026-11-01

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--01-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 22.48 h observed, 5,396 polls, 4,180 candidates, 1 cleared costs, 0 would have fired; 207 chases; best +0.000000 ETH on curious-umbral-gecko Juniper→Opal Hill at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **22.48 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.99 h |
| Polls · pair samples | 5,396 · 59,356 |
| Pairs watched · pools priced | 11 · 78 |
| Study to date (observed) | **150.56 h** of 168 h (89.6%) |
| Study to date (calendar, to the last poll) | 175.25 h |
| Heartbeat | last poll Nov 1, 23:59 ET, block 520,473,985 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,180 | 4,165 | 1 | **0** | 76 | +0.000000 ETH | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 22:24 ET | curious-umbral-gecko | Juniper→Opal Hill | +0.0474% | 0.05 ETH | +0.000000 ETH ($0.00) | yes |
| 21:31 ET | curious-oblique-egret | Opal Cross→Juniper | +0.1031% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |
| 21:29 ET | curious-oblique-egret | Rowan Quay→Juniper | +0.1140% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |
| 21:07 ET | lucky-glacial-urchin | Juniper→Opal Cross | +0.0388% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |
| 13:30 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0351% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,396 | 0.4860% | 1.7348% | 2.1144% | +0.0229% | +1.0644% | 3,461 | 1,276 |
| nimble-woolly-zebra | 5,396 | 0.0537% | 1.2679% | 1.8945% | -0.0072% | +0.8575% | 2,284 | 199 |
| curious-oblique-egret | 5,396 | 0.0635% | 1.0341% | 1.4066% | +0.0398% | +0.3566% | 4,974 | 1 |
| lucky-glacial-urchin | 5,396 | 0.0973% | 0.3508% | 0.4937% | -0.0389% | +0.1041% | 1,384 | 0 |
| curious-umbral-gecko | 5,396 | 0.4101% | 1.5220% | 1.8336% | -0.0020% | +0.0568% | 2,315 | 0 |
| lucky-crystalline-narwhal | 5,396 | 0.0420% | 1.1586% | 1.3134% | -0.0385% | +0.0540% | 156 | 0 |
| plucky-hollow-walrus | 5,396 | 0.0218% | 0.0720% | 1.0402% | -0.0043% | +0.0406% | 1,929 | 0 |
| curious-lunar-otter | 5,396 | 0.0035% | 0.0113% | 0.0251% | -0.0115% | +0.0051% | 67 | 0 |
| witty-tangerine-walrus | 5,396 | 0.0015% | 0.0060% | 0.0100% | -0.0072% | -0.0015% | 0 | 0 |
| brisk-umbral-bison | 5,396 | 0.0195% | 0.3118% | 1.1475% | -0.0885% | -0.0107% | 0 | 0 |
| wry-marbled-puffin | 5,396 | 0.2780% | 0.7732% | 1.0280% | -0.6579% | -0.2720% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **207** opened: 6 closed by a swap, 67 by drift, 134 still open when the budget ran out. Median lifetime **191 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 39 | 205 blocks | 97% | +0.9771% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 24 | 208 blocks | 75% | +0.1390% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 18 | 170 blocks | 56% | +0.2042% |
| curious-oblique-egret | Juniper→Rowan Quay | 13 | 144 blocks | 31% | +0.0874% |
| nimble-woolly-zebra | Juniper→Opal Hill | 12 | 184 blocks | 67% | +0.8569% |
| lucky-glacial-urchin | Rowan Cross→Opal Cross | 10 | 132 blocks | 50% | +0.0870% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (135 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 155 | 205 blocks | nothing pays | 0.5 ETH | -0.051763 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 146 | 195 blocks | nothing pays | 0.5 ETH | -0.053083 ETH | — |
| curious-oblique-egret | Juniper→Opal Quay | 96 | 203 blocks | nothing pays | 0.5 ETH | -0.062010 ETH | — |

## Triangles

Three-pair cycles priced each poll: **21,584** reads across 8 cycles, 10,664 positive after fees; 547 quoted as a round trip, 0 cleared, best quoted net -0.000011 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Opal Quay → Opal Hill → Juniper | 2,802 | 2,241 | +0.8452% |
| WETH→Egret→Lemur→WETH | Opal Cross → Opal Hill → Rowan Quay | 2,594 | 2,108 | +0.7630% |
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Opal Hill | 2,626 | 2,542 | +0.3859% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Rowan Quay | 2,770 | 2,683 | +0.1608% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Rowan Quay | 2,292 | 107 | +0.1545% |

## The census

The wider net: 488 pools on the chain read from a public listing at 23:07 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| lucky-glacial-urchin | +0.2538% | $273,442 |
| curious-lunar-otter | +0.1041% | $115,510 |
| nimble-woolly-zebra | +0.0713% | $98,351 |
| steady-electric-quokka | +0.0493% | $285,661 |
| focused-winsome-zebra | +0.0221% | $402,140 |

## The frontier

Four scouts read public sources only (last run 23:56 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 2–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-06-24 pays 9.01% fixed against 11.43% variable (-2.42 pts, $132,546 deep); Aave Lemur supplies 2.75%, borrows 3.77%; best basis carry BTC: funding 1.37% − Lemur 2.75% = -1.38 pts.
- **TON.** 64 Heron pools above $50,000 on two DEXes (49,229 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.991% with a $71,210 thin leg. Heron ≈ $1.211.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 5 pools from $1.13204 to $1.16373 (+2.80%), deepest on solana at $1.15478. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:56 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 3.28 blocks/s (median block 302 ms); a 15 s poll spans about 50 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 63 ms | 59 ms | 1 | yes |
| public | arb1.arbitrum.io | 77 ms | 73 ms | 3 | yes |
| public | arbitrum-one.publicnode.com | 68 ms | 64 ms | 0 | yes |
| public | 1rpc.io | 119 ms | 4,547 ms | 2 | yes |
| public | arbitrum.drpc.org | 65 ms | 90 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 3, 00:06 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
