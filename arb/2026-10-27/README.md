<div align="center">

# Arbitrage observer — 2026-10-27

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--10--27-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.01 h observed, 5,740 polls, 4,299 candidates, 0 cleared costs, 0 would have fired; 215 chases; best -0.000006 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.01 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.99 h |
| Polls · pair samples | 5,740 · 57,400 |
| Pairs watched · pools priced | 10 · 47 |
| Study to date (observed) | **54.41 h** of 168 h (32.4%) |
| Study to date (calendar, to the last poll) | 54.25 h |
| Heartbeat | last poll Oct 27, 23:59 ET, block 518,940,116 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,299 | 4,299 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 06:16 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0377% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 22:53 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0369% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |
| 22:48 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0339% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |
| 03:28 ET | lucky-glacial-urchin | Rowan Cross→Opal Cross | +0.0836% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |
| 06:13 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0330% | 0.05 ETH | -0.000009 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 5,740 | 0.0590% | 1.2618% | 2.1319% | -0.0053% | +1.1128% | 2,473 | 239 |
| steady-lunar-wombat | 5,740 | 0.1196% | 1.4337% | 1.9116% | -0.0311% | +0.8616% | 2,611 | 290 |
| curious-oblique-egret | 5,740 | 0.0642% | 1.0118% | 1.3053% | +0.0434% | +0.2953% | 5,322 | 0 |
| lucky-glacial-urchin | 5,740 | 0.0615% | 0.1843% | 0.3048% | -0.0478% | +0.0840% | 1,283 | 0 |
| lucky-crystalline-narwhal | 5,740 | 0.0206% | 0.2673% | 1.0678% | -0.0425% | +0.0697% | 181 | 0 |
| curious-umbral-gecko | 5,740 | 0.0152% | 0.0392% | 1.0236% | -0.0053% | +0.0592% | 1,732 | 0 |
| plucky-hollow-walrus | 5,740 | 0.0182% | 0.0687% | 0.0950% | -0.0040% | +0.0377% | 2,187 | 0 |
| witty-tangerine-walrus | 5,740 | 0.0050% | 0.0085% | 0.0183% | -0.0075% | +0.0058% | 9 | 0 |
| wry-marbled-puffin | 5,740 | 0.3176% | 0.8317% | 1.0660% | -0.5707% | +0.0000% | 5 | 0 |
| brisk-umbral-bison | 5,740 | 0.0077% | 0.2654% | 0.3323% | -0.0927% | -0.0177% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **215** opened: 6 closed by a swap, 95 by drift, 114 still open when the budget ran out. Median lifetime **200 blocks** (60.1 s), p90 60.4 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 36 | 192 blocks | 53% | +0.1346% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 33 | 207 blocks | 61% | +0.2125% |
| nimble-woolly-zebra | Opal Cross→Juniper | 18 | 121 blocks | 22% | +0.1006% |
| curious-oblique-egret | Juniper→Opal Quay | 18 | 202 blocks | 56% | +0.2458% |
| nimble-woolly-zebra | Juniper→Opal Cross | 15 | 115 blocks | 33% | +0.0870% |
| curious-oblique-egret | Opal Quay→Juniper | 13 | 217 blocks | 62% | +0.1598% |

## Persistent routes

Ranked from the chase log up to the day's last poll (chases × median lifetime × (1 + share still open)); not yet quoted, because the ten-minute quotes start with the next monitor restart.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 57 | 200 blocks | 61% | +0.1735% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 52 | 203 blocks | 54% | +0.2125% |
| curious-oblique-egret | Juniper→Opal Quay | 24 | 193 blocks | 50% | +0.2458% |
| curious-oblique-egret | Opal Quay→Juniper | 20 | 204 blocks | 65% | +0.1598% |
| nimble-woolly-zebra | Opal Hill→Opal Cross | 9 | 211 blocks | 100% | +0.4590% |

## Triangles

Three-pair cycles priced each poll: **22,960** reads across 8 cycles, 11,103 positive after fees; 640 quoted as a round trip, 0 cleared, best quoted net -0.000012 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Juniper → Opal Hill → Juniper | 2,957 | 2,249 | +1.1392% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Opal Quay | 2,783 | 2,107 | +0.6899% |
| WETH→Lemur→Zebra→WETH | Opal Quay → Juniper → Opal Hill | 2,825 | 2,705 | +0.2910% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Juniper | 2,915 | 2,811 | +0.2065% |
| WETH→Lemur→Falcon→WETH | Juniper → Opal Row → Rowan Cross | 2,743 | 194 | +0.1431% |

## The census

The wider net: 444 pools on the chain read from a public listing at 23:42 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| jolly-glacial-urchin | +23.8731% | $423,424 |
| cheeky-cosmic-tapir | +3.7969% | $335,982 |
| frisky-electric-gecko | +1.0025% | $103,240 |
| steady-lunar-wombat | +0.3334% | $116,590 |
| curious-oblique-egret | +0.1394% | $479,045 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.026% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 9.36% fixed against 6.42% variable (+2.94 pts, $6,300,022 deep); Aave Lemur supplies 2.42%, borrows 3.50%; best basis carry BTC: funding 1.37% − Lemur 2.42% = -1.05 pts.
- **TON.** 64 Heron pools above $50,000 on two DEXes (49,109 Slate and 52,340 Umber listed), 4 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.971% with a $72,983 thin leg. Heron ≈ $1.236.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion USDY: 5 pools from $1.10635 to $1.155 (+4.40%), deepest on solana at $1.10635. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 2.97 blocks/s (median block 301 ms); a 15 s poll spans about 50 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 60 ms | 60 ms | 0 | yes |
| public | arb1.arbitrum.io | 91 ms | 68 ms | 3 | yes |
| public | arbitrum-one.publicnode.com | 70 ms | 69 ms | 0 | yes |
| public | 1rpc.io | 79 ms | 404 ms | 10 | yes |
| public | arbitrum.drpc.org | 69 ms | 93 ms | 1 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Oct 31, 09:38 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
