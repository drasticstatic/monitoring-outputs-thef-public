<div align="center">

# Arbitrage observer — 2026-11-14

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--14-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.41 h observed, 5,757 polls, 5,622 candidates, 0 cleared costs, 0 would have fired; 285 chases; best -0.000004 ETH on curious-umbral-gecko Juniper→Rowan Quay at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.41 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.99 h |
| Polls · pair samples | 5,757 · 63,327 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **466.18 h** of 168 h (277.5%) |
| Study to date (calendar, to the last poll) | 487.25 h |
| Heartbeat | last poll Nov 14, 23:59 ET, block 524,368,559 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,622 | 5,621 | 0 | **0** | 5 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 11:12 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.1586% | 0.01 ETH | -0.000004 ETH (-$0.01) | no |
| 21:28 ET | curious-oblique-egret | Juniper→Rowan Quay | +0.1134% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 09:03 ET | lucky-crystalline-narwhal | Juniper→Opal Cross | +0.0371% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 05:28 ET | curious-umbral-gecko | Opal Quay→Juniper | +0.0799% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 01:17 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0610% | 0.01 ETH | -0.000008 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,757 | 2.8646% | 4.5573% | 5.3385% | +1.8146% | +4.2885% | 5,481 | 4,482 |
| nimble-woolly-zebra | 5,757 | 0.0835% | 0.2886% | 1.2127% | +0.0015% | +0.3392% | 2,937 | 8 |
| curious-oblique-egret | 5,757 | 0.0722% | 0.3564% | 1.3728% | +0.0479% | +0.3228% | 5,482 | 1 |
| curious-umbral-gecko | 5,757 | 0.0311% | 0.0831% | 1.0286% | +0.0099% | +0.2980% | 4,130 | 0 |
| plucky-hollow-walrus | 5,757 | 0.0250% | 0.0906% | 1.1444% | +0.0000% | +0.1344% | 2,888 | 0 |
| lucky-glacial-urchin | 5,757 | 0.0794% | 0.3395% | 0.4980% | -0.0467% | +0.1157% | 879 | 0 |
| lucky-crystalline-narwhal | 5,757 | 0.0293% | 1.1640% | 1.4592% | -0.0555% | +0.0837% | 60 | 0 |
| brisk-umbral-bison | 5,757 | 0.0283% | 0.2890% | 1.1630% | -0.0849% | +0.0477% | 14 | 0 |
| curious-lunar-otter | 5,757 | 0.0039% | 0.0063% | 0.0173% | -0.0111% | +0.0023% | 4 | 0 |
| witty-tangerine-walrus | 5,757 | 0.0015% | 0.0083% | 0.0172% | -0.0063% | -0.0009% | 0 | 0 |
| wry-marbled-puffin | 5,757 | 0.2528% | 0.9234% | 1.1270% | -0.6047% | -0.1222% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **285** opened: 124 closed by a swap, 12 by drift, 149 still open when the budget ran out. Median lifetime **187 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 78 | 211 blocks | 97% | +4.2416% |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 23 | 225 blocks | 96% | +3.7677% |
| curious-oblique-egret | Juniper→Opal Quay | 21 | 96 blocks | 19% | +0.2045% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 18 | 110 blocks | 28% | +0.1437% |
| curious-oblique-egret | Opal Quay→Juniper | 16 | 171 blocks | 50% | +0.2877% |
| curious-oblique-egret | Rowan Quay→Juniper | 13 | 82 blocks | 31% | +0.1355% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:50 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 208 | 216 blocks | nothing pays | 0.5 ETH | -0.368023 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 168 | 181 blocks | nothing pays | 0.5 ETH | -0.225097 ETH | — |
| nimble-woolly-zebra | Opal Hill→Juniper | 93 | 196 blocks | nothing pays | 0.5 ETH | -0.043196 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,028** reads across 8 cycles, 12,374 positive after fees; 811 quoted as a round trip, 0 cleared, best quoted net -0.000011 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Cross → Opal Quay | 3,063 | 2,254 | +0.5109% |
| WETH→Lemur→Egret→WETH | Opal Cross → Opal Cross → Juniper | 2,694 | 1,967 | +0.4310% |
| WETH→Zebra→Lemur→WETH | Opal Hill → Juniper → Opal Cross | 2,905 | 2,874 | +0.3241% |
| WETH→Lemur→Zebra→WETH | Opal Cross → Juniper → Opal Quay | 2,852 | 2,837 | +0.2769% |
| Lemur→Lemur→WETH→Lemur | Opal Cross → Juniper → Rowan Quay | 2,747 | 955 | +0.2606% |

## The census

The wider net: 497 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| witty-glacial-pangolin | +0.0468% | $98,558 |
| merry-electric-gecko | +0.0196% | $160,785 |
| lucky-crystalline-narwhal | +0.0003% | $109,448 |
| frisky-electric-gecko | -0.0471% | $82,731 |
| steady-lunar-wombat | -0.0711% | $82,646 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.091% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 8.99% fixed against 6.98% variable (+2.01 pts, $4,106,703 deep); Aave Lemur supplies 2.90%, borrows 3.92%; best basis carry BTC: funding 1.37% − Lemur 2.90% = -1.53 pts.
- **TON.** 57 Heron pools above $50,000 on two DEXes (50,008 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.027% with a $61,547 thin leg. Heron ≈ $1.047.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 4 pools from $1.12932 to $1.15423 (+2.21%), deepest on solana at $1.14761. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:57 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 64 ms | 69 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 57 ms | 62 ms | 0 | yes |
| public | 1rpc.io | 56 ms | 104 ms | 11 | yes |
| public | arbitrum.drpc.org | 88 ms | 142 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 16, 01:00 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
