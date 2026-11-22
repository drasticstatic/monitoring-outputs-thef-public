<div align="center">

# Arbitrage observer — 2026-11-19

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--19-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.86 h observed, 5,680 polls, 5,102 candidates, 0 cleared costs, 0 would have fired; 276 chases; best -0.000006 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.86 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.00 h |
| Polls · pair samples | 5,680 · 62,480 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **588.66 h** of 168 h (350.4%) |
| Study to date (calendar, to the last poll) | 607.25 h |
| Heartbeat | last poll Nov 19, 23:59 ET, block 525,827,180 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,102 | 5,102 | 0 | **0** | 12 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 09:28 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0386% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 21:27 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0204% | 0.01 ETH | -0.000008 ETH (-$0.01) | no |
| 06:17 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0520% | 0.01 ETH | -0.000008 ETH (-$0.01) | no |
| 07:25 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0203% | 0.01 ETH | -0.000008 ETH (-$0.02) | no |
| 16:32 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0546% | 0.01 ETH | -0.000009 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,680 | 1.8750% | 4.0868% | 4.8906% | +0.6978% | +3.8406% | 4,398 | 3,024 |
| nimble-woolly-zebra | 5,680 | 0.1071% | 0.2603% | 1.2467% | +0.0255% | +0.3588% | 3,580 | 10 |
| curious-oblique-egret | 5,680 | 0.0765% | 0.3405% | 1.2325% | +0.0513% | +0.2823% | 5,446 | 0 |
| curious-umbral-gecko | 5,680 | 0.0283% | 0.0603% | 1.0480% | +0.0069% | +0.2208% | 3,837 | 0 |
| wry-marbled-puffin | 5,680 | 0.1745% | 1.0697% | 1.2425% | -0.3799% | +0.1425% | 61 | 0 |
| lucky-glacial-urchin | 5,680 | 0.0395% | 0.2162% | 0.3942% | -0.0607% | +0.0866% | 168 | 0 |
| plucky-hollow-walrus | 5,680 | 0.0247% | 0.0779% | 1.0528% | -0.0004% | +0.0766% | 2,727 | 0 |
| lucky-crystalline-narwhal | 5,680 | 0.0277% | 1.1728% | 1.3417% | -0.0545% | +0.0481% | 73 | 0 |
| brisk-umbral-bison | 5,680 | 0.0222% | 0.3036% | 1.1573% | -0.0893% | +0.0124% | 2 | 0 |
| curious-lunar-otter | 5,680 | 0.0080% | 0.0154% | 0.0168% | -0.0070% | -0.0004% | 0 | 0 |
| witty-tangerine-walrus | 5,680 | 0.0018% | 0.0115% | 0.0247% | -0.0067% | -0.0005% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **276** opened: 90 closed by a swap, 31 by drift, 155 still open when the budget ran out. Median lifetime **205 blocks** (60.1 s), p90 60.4 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 46 | 218 blocks | 96% | +3.7384% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 25 | 186 blocks | 48% | +0.2842% |
| nimble-woolly-zebra | Opal Cross→Juniper | 25 | 188 blocks | 60% | +0.3787% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 25 | 175 blocks | 44% | +0.1867% |
| nimble-woolly-zebra | Juniper→Opal Cross | 23 | 192 blocks | 48% | +0.2329% |
| curious-oblique-egret | Opal Quay→Juniper | 19 | 197 blocks | 53% | +0.2227% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:50 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 417 | 208 blocks | nothing pays | 0.5 ETH | -0.368388 ETH | — |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 134 | 209 blocks | nothing pays | 0.5 ETH | -0.368221 ETH | — |
| curious-oblique-egret | Opal Quay→Juniper | 163 | 193 blocks | nothing pays | 0.5 ETH | -0.302198 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,720** reads across 8 cycles, 12,625 positive after fees; 733 quoted as a round trip, 0 cleared, best quoted net -0.000009 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Cross → Juniper | 3,268 | 2,769 | +0.3960% |
| WETH→Lemur→Egret→WETH | Rowan Quay → Opal Cross → Juniper | 2,412 | 2,049 | +0.3024% |
| WETH→Zebra→Lemur→WETH | Opal Hill → Juniper → Juniper | 3,143 | 3,122 | +0.2770% |
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Opal Quay | 2,537 | 2,511 | +0.2647% |
| Lemur→WETH→Lemur→Lemur | Juniper → Juniper → Rowan Cross | 2,690 | 851 | +0.1531% |

## The census

The wider net: 496 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| frisky-electric-gecko | +3.2004% | $78,955 |
| candid-tidal-salmon | +2.3901% | $213,128 |
| curious-umbral-gecko | +0.1658% | $96,325 |
| focused-winsome-zebra | +0.1051% | $364,613 |
| curious-oblique-egret | +0.1022% | $283,046 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 8.88% fixed against 8.38% variable (+0.50 pts, $4,049,941 deep); Aave Lemur supplies 3.58%, borrows 4.36%; best basis carry BTC: funding 1.37% − Lemur 3.58% = -2.21 pts.
- **TON.** 57 Heron pools above $50,000 on two DEXes (50,438 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.045% with a $59,953 thin leg. Heron ≈ $1.022.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion wUSDM: 2 pools from $1.05333 to $1.08223 (+2.74%), deepest on eth at $1.08223. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:51 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 87 ms | 94 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 103 ms | 104 ms | 0 | yes |
| public | 1rpc.io | 130 ms | 449 ms | 0 | yes |
| public | arbitrum.drpc.org | 82 ms | 107 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 21, 01:05 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
