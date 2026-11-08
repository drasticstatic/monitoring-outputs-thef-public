<div align="center">

# Arbitrage observer — 2026-11-07

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--07-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.00 h observed, 5,739 polls, 4,031 candidates, 0 cleared costs, 0 would have fired; 188 chases; best -0.000006 ETH on curious-umbral-gecko Rowan Quay→Juniper at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.00 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.91 h |
| Polls · pair samples | 5,739 · 63,129 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **294.58 h** of 168 h (175.3%) |
| Study to date (calendar, to the last poll) | 319.25 h |
| Heartbeat | last poll Nov 7, 23:59 ET, block 522,283,100 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,031 | 4,031 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 13:46 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0304% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 18:23 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0289% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 12:52 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.0972% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |
| 12:54 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.0972% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |
| 12:59 ET | lucky-glacial-urchin | Rowan Cross→Juniper | +0.0972% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,739 | 1.0959% | 1.6529% | 1.9204% | +0.0459% | +0.8704% | 4,017 | 1,634 |
| nimble-woolly-zebra | 5,739 | 0.0465% | 0.2888% | 1.7526% | -0.0214% | +0.7425% | 1,417 | 37 |
| curious-oblique-egret | 5,739 | 0.0603% | 0.2788% | 0.4081% | +0.0368% | +0.1851% | 5,262 | 0 |
| lucky-glacial-urchin | 5,739 | 0.0623% | 0.3526% | 0.4373% | -0.0379% | +0.1178% | 1,293 | 0 |
| curious-umbral-gecko | 5,739 | 0.2390% | 0.4723% | 0.6330% | -0.0034% | +0.0524% | 2,239 | 0 |
| plucky-hollow-walrus | 5,739 | 0.0214% | 0.0689% | 0.0915% | -0.0035% | +0.0456% | 2,127 | 0 |
| lucky-crystalline-narwhal | 5,739 | 0.0458% | 1.0308% | 1.3267% | -0.0566% | +0.0398% | 13 | 0 |
| witty-tangerine-walrus | 5,739 | 0.0019% | 0.0092% | 0.0130% | -0.0064% | -0.0010% | 0 | 0 |
| curious-lunar-otter | 5,739 | 0.0043% | 0.0092% | 0.0126% | -0.0107% | -0.0024% | 0 | 0 |
| wry-marbled-puffin | 5,739 | 0.2805% | 0.9820% | 1.1788% | -0.6443% | -0.0142% | 0 | 0 |
| brisk-umbral-bison | 5,739 | 0.0195% | 0.0382% | 0.3457% | -0.0872% | -0.0208% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **188** opened: 5 closed by a swap, 38 by drift, 145 still open when the budget ran out. Median lifetime **199 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 46 | 200 blocks | 100% | +0.8704% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 21 | 205 blocks | 91% | +0.1524% |
| curious-oblique-egret | Juniper→Opal Quay | 20 | 206 blocks | 80% | +0.1741% |
| curious-oblique-egret | Juniper→Rowan Quay | 18 | 184 blocks | 67% | +0.1288% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 14 | 109 blocks | 36% | +0.1338% |
| steady-lunar-wombat | Opal Hill→Rowan Cross | 14 | 205 blocks | 93% | +0.6029% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 279 | 208 blocks | nothing pays | 0.5 ETH | -0.323087 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 200 | 201 blocks | nothing pays | 0.5 ETH | -0.049453 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 146 | 193 blocks | nothing pays | 0.5 ETH | -0.052937 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,036** reads across 8 cycles, 9,105 positive after fees; 526 quoted as a round trip, 0 cleared, best quoted net -0.000013 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Rowan Quay → Opal Hill → Juniper | 3,010 | 1,501 | +0.7229% |
| WETH→Lemur→Zebra→WETH | Rowan Quay → Juniper → Opal Quay | 2,390 | 2,321 | +0.1869% |
| WETH→Zebra→Lemur→WETH | Rowan Gate → Juniper → Opal Quay | 3,369 | 3,287 | +0.1616% |
| WETH→Egret→Lemur→WETH | Juniper → Juniper → Rowan Quay | 2,749 | 1,135 | +0.1171% |
| WETH→Lemur→Falcon→WETH | Opal Quay → Opal Row → Rowan Cross | 2,635 | 104 | +0.0769% |

## The census

The wider net: 488 pools on the chain read from a public listing at 23:16 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| curious-lunar-otter | +0.2311% | $116,089 |
| witty-glacial-pangolin | +0.0398% | $123,186 |
| brisk-umbral-bison | +0.0201% | $401,663 |
| lucky-crystalline-narwhal | -0.0067% | $128,316 |
| merry-electric-gecko | -0.0101% | $323,911 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.091% per fill on the five corridors, settling in 2–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-06-24 pays 8.83% fixed against 11.25% variable (-2.42 pts, $25,233 deep); Aave Lemur supplies 2.86%, borrows 3.90%; best basis carry BTC: funding 1.37% − Lemur 2.86% = -1.49 pts.
- **TON.** 56 Heron pools above $50,000 on two DEXes (49,508 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.983% with a $61,973 thin leg. Heron ≈ $1.056.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 7 pools from $0.99637 to $1.1534 (+15.76%), deepest on solana at $0.99637. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 2.93 blocks/s (median block 304 ms); a 15 s poll spans about 49 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 67 ms | 62 ms | 0 | yes |
| public | arb1.arbitrum.io | 80 ms | 80 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 68 ms | 65 ms | 0 | yes |
| public | 1rpc.io | 65 ms | 174 ms | 4 | yes |
| public | arbitrum.drpc.org | 81 ms | 104 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 8, 00:03 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
