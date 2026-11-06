<div align="center">

# Arbitrage observer — 2026-11-04

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--04-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.00 h observed, 5,758 polls, 4,740 candidates, 3 cleared costs, 2 would have fired; 261 chases; best +0.000305 ETH on brisk-umbral-bison Rowan Cross→Opal Cross at 0.5 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.00 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.00 h |
| Polls · pair samples | 5,758 · 63,338 |
| Pairs watched · pools priced | 11 · 75 |
| Study to date (observed) | **222.57 h** of 168 h (132.5%) |
| Study to date (calendar, to the last poll) | 247.25 h |
| Heartbeat | last poll Nov 4, 23:59 ET, block 521,382,305 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,740 | 4,736 | 3 | **2** | 21 | +0.000574 ETH | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 10:08 ET | brisk-umbral-bison | Rowan Cross→Opal Cross | +0.1017% | 0.5 ETH | +0.000305 ETH ($0.74) | yes |
| 10:08 ET | plucky-hollow-walrus | Rowan Quay→Rowan Cross | +0.3398% | 0.1 ETH | +0.000227 ETH ($0.55) | yes |
| 10:08 ET | wry-marbled-puffin | Juniper→Opal Row | +0.7282% | 0.05 ETH | +0.000042 ETH ($0.10) | yes |
| 05:30 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0396% | 0.05 ETH | +0.000000 ETH ($0.00) | no |
| 10:47 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0240% | 0.05 ETH | -0.000006 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| curious-oblique-egret | 5,758 | 0.0718% | 0.3226% | 1.9626% | +0.0469% | +1.5364% | 5,409 | 1 |
| steady-lunar-wombat | 5,758 | 0.4038% | 1.8277% | 2.6702% | +0.0340% | +1.5154% | 3,777 | 1,212 |
| curious-umbral-gecko | 5,758 | 3.0647% | 3.9828% | 5.0420% | -0.0053% | +1.1542% | 1,587 | 1 |
| lucky-crystalline-narwhal | 5,758 | 0.0471% | 1.0891% | 1.4250% | -0.0500% | +1.1431% | 117 | 1 |
| nimble-woolly-zebra | 5,758 | 0.0835% | 1.5343% | 2.0118% | +0.0046% | +0.9868% | 3,013 | 740 |
| wry-marbled-puffin | 5,758 | 0.4263% | 0.7991% | 1.6533% | -0.6326% | +0.7282% | 1 | 1 |
| lucky-glacial-urchin | 5,758 | 0.0637% | 0.3181% | 0.9536% | -0.0576% | +0.6280% | 995 | 1 |
| plucky-hollow-walrus | 5,758 | 0.0247% | 0.0755% | 1.0680% | -0.0019% | +0.3398% | 2,501 | 1 |
| brisk-umbral-bison | 5,758 | 0.0173% | 0.2851% | 1.1516% | -0.0920% | +0.1017% | 4 | 0 |
| witty-tangerine-walrus | 5,758 | 0.0015% | 0.0124% | 0.0961% | -0.0070% | +0.0836% | 26 | 0 |
| curious-lunar-otter | 5,758 | 0.0040% | 0.0074% | 0.0216% | -0.0110% | +0.0066% | 13 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **261** opened: 6 closed by a swap, 82 by drift, 173 still open when the budget ran out. Median lifetime **204 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 41 | 192 blocks | 51% | +3.0096% |
| steady-lunar-wombat | Opal Hill→Opal Cross | 39 | 216 blocks | 95% | +1.1211% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 27 | 202 blocks | 63% | +0.2101% |
| nimble-woolly-zebra | Juniper→Opal Hill | 21 | 213 blocks | 91% | +0.7763% |
| curious-oblique-egret | Opal Quay→Juniper | 20 | 197 blocks | 60% | +0.1489% |
| nimble-woolly-zebra | Opal Hill→Juniper | 16 | 218 blocks | 75% | +0.6361% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 186 | 213 blocks | nothing pays | 0.5 ETH | -0.323977 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 149 | 203 blocks | nothing pays | 0.5 ETH | -0.053563 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 123 | 197 blocks | nothing pays | 0.5 ETH | -0.054417 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,032** reads across 8 cycles, 10,990 positive after fees; 626 quoted as a round trip, 0 cleared, best quoted net -0.000010 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Opal Quay | 2,941 | 2,872 | +1.5990% |
| Lemur→Lemur→WETH→Lemur | Rowan Cross → Opal Quay → Rowan Cross | 2,924 | 453 | +1.5645% |
| WETH→Egret→Lemur→WETH | Opal Cross → Juniper → Opal Quay | 2,738 | 1,825 | +1.3250% |
| WETH→Lemur→Egret→WETH | Juniper → Opal Hill → Juniper | 3,020 | 2,050 | +0.9673% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Opal Quay | 2,102 | 100 | +0.8517% |

## The census

The wider net: 495 pools on the chain read from a public listing at 23:06 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| frisky-electric-gecko | +0.7775% | $236,904 |
| focused-winsome-zebra | +0.2931% | $396,393 |
| curious-lunar-otter | +0.1618% | $115,222 |
| witty-glacial-pangolin | +0.0698% | $77,698 |
| merry-electric-gecko | -0.0043% | $382,762 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-06-24 pays 8.72% fixed against 11.64% variable (-2.92 pts, $138,220 deep); Aave Lemur supplies 3.04%, borrows 3.97%; best basis carry Copper: funding 2.16% − Lemur 3.04% = -0.89 pts.
- **TON.** 62 Heron pools above $50,000 on two DEXes (49,373 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.976% with a $68,861 thin leg. Heron ≈ $1.163.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 8 pools from $1.00401 to $1.14908 (+14.45%), deepest on solana at $1.00566. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 3.15 blocks/s (median block 302 ms); a 15 s poll spans about 50 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 62 ms | 59 ms | 0 | yes |
| public | arb1.arbitrum.io | 74 ms | 90 ms | 1 | yes |
| public | arbitrum-one.publicnode.com | 69 ms | 85 ms | 0 | yes |
| public | 1rpc.io | 101 ms | 318 ms | 4 | yes |
| public | arbitrum.drpc.org | 77 ms | 102 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 6, 00:06 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
