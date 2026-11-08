<div align="center">

# Arbitrage observer — 2026-11-06

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--06-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.00 h observed, 5,749 polls, 4,453 candidates, 0 cleared costs, 0 would have fired; 239 chases; best -0.000006 ETH on plucky-hollow-walrus Rowan Quay→Juniper at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.00 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.00 h |
| Polls · pair samples | 5,749 · 63,239 |
| Pairs watched · pools priced | 11 · 80 |
| Study to date (observed) | **270.58 h** of 168 h (161.1%) |
| Study to date (calendar, to the last poll) | 295.25 h |
| Heartbeat | last poll Nov 6, 23:59 ET, block 521,993,126 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,453 | 4,453 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 20:45 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0387% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 14:58 ET | curious-oblique-egret | Rowan Quay→Juniper | +0.1274% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 17:00 ET | curious-oblique-egret | Opal Cross→Juniper | +0.1116% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 18:00 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0383% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |
| 04:07 ET | curious-oblique-egret | Rowan Quay→Juniper | +0.1127% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 5,749 | 0.0727% | 1.5475% | 1.9927% | -0.0070% | +0.9427% | 2,705 | 674 |
| steady-lunar-wombat | 5,749 | 0.2685% | 1.6129% | 1.9048% | +0.0332% | +0.8548% | 3,528 | 869 |
| curious-oblique-egret | 5,749 | 0.0617% | 0.3032% | 0.4563% | +0.0383% | +0.1861% | 5,281 | 0 |
| lucky-glacial-urchin | 5,749 | 0.0822% | 0.2906% | 0.4566% | -0.0387% | +0.0974% | 953 | 0 |
| plucky-hollow-walrus | 5,749 | 0.0222% | 0.0668% | 0.3091% | -0.0032% | +0.0634% | 2,354 | 0 |
| curious-umbral-gecko | 5,749 | 0.2125% | 0.5766% | 1.1138% | -0.0035% | +0.0538% | 2,075 | 0 |
| lucky-crystalline-narwhal | 5,749 | 0.0521% | 1.1550% | 1.3399% | -0.0563% | +0.0346% | 71 | 0 |
| wry-marbled-puffin | 5,749 | 0.3529% | 0.9582% | 1.1718% | -0.5302% | +0.0210% | 38 | 0 |
| brisk-umbral-bison | 5,749 | 0.0208% | 0.0715% | 1.1649% | -0.0863% | +0.0065% | 4 | 0 |
| witty-tangerine-walrus | 5,749 | 0.0023% | 0.0137% | 0.0234% | -0.0060% | +0.0038% | 70 | 0 |
| curious-lunar-otter | 5,749 | 0.0029% | 0.0075% | 0.0085% | -0.0121% | -0.0065% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **239** opened: 7 closed by a swap, 75 by drift, 157 still open when the budget ran out. Median lifetime **198 blocks** (60.1 s), p90 60.3 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 33 | 202 blocks | 58% | +0.1384% |
| steady-lunar-wombat | Opal Hill→Opal Cross | 31 | 197 blocks | 100% | +0.9077% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 25 | 183 blocks | 48% | +0.1350% |
| curious-oblique-egret | Opal Quay→Juniper | 21 | 200 blocks | 71% | +0.1362% |
| nimble-woolly-zebra | Opal Hill→Juniper | 18 | 208 blocks | 94% | +0.8200% |
| curious-oblique-egret | Juniper→Opal Quay | 17 | 195 blocks | 59% | +0.1427% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 236 | 210 blocks | nothing pays | 0.5 ETH | -0.323332 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 191 | 201 blocks | nothing pays | 0.5 ETH | -0.050061 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 156 | 197 blocks | nothing pays | 0.5 ETH | -0.052715 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,996** reads across 8 cycles, 10,364 positive after fees; 580 quoted as a round trip, 0 cleared, best quoted net -0.000009 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Juniper → Opal Hill → Juniper | 2,709 | 1,544 | +0.9908% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Juniper | 3,040 | 1,908 | +0.8905% |
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Opal Quay | 2,931 | 2,814 | +0.1923% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Rowan Quay | 2,818 | 2,704 | +0.1549% |
| WETH→Lemur→Falcon→WETH | Rowan Quay → Opal Row → Rowan Cross | 2,458 | 106 | +0.1425% |

## The census

The wider net: 498 pools on the chain read from a public listing at 23:16 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| cheeky-cosmic-tapir | +14.1991% | $214,013 |
| candid-tidal-salmon | +8.3058% | $260,364 |
| frisky-nebulous-jackal | +6.4210% | $615,878 |
| jolly-glacial-urchin | +2.9458% | $292,381 |
| steady-peculiar-capybara | +1.5851% | $231,340 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.091% per fill on the five corridors, settling in 2–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-06-24 pays 8.67% fixed against 11.16% variable (-2.50 pts, $25,238 deep); Aave Lemur supplies 2.91%, borrows 3.93%; best basis carry BTC: funding 1.37% − Lemur 2.91% = -1.54 pts.
- **TON.** 59 Heron pools above $50,000 on two DEXes (49,458 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.983% with a $64,739 thin leg. Heron ≈ $1.098.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 8 pools from $0.99379 to $1.15596 (+16.32%), deepest on solana at $0.99379. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 3.96 blocks/s (median block 301 ms); a 15 s poll spans about 50 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 57 ms | 58 ms | 0 | yes |
| public | arb1.arbitrum.io | 76 ms | 65 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 75 ms | 75 ms | 0 | yes |
| public | 1rpc.io | 65 ms | 116 ms | 7 | yes |
| public | arbitrum.drpc.org | 71 ms | 97 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 8, 00:03 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
