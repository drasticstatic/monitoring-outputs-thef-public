<div align="center">

# Arbitrage observer — 2026-11-23

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--23-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 26.52 h observed, 5,732 polls, 5,577 candidates, 2 cleared costs, 0 would have fired; 281 chases; best +0.000005 ETH on curious-umbral-gecko Rowan Quay→Juniper at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **26.52 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.00 h |
| Polls · pair samples | 5,732 · 63,027 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **688.22 h** of 168 h (409.7%) |
| Study to date (calendar, to the last poll) | 703.25 h |
| Heartbeat | last poll Nov 23, 23:59 ET, block 527,021,740 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,577 | 5,513 | 2 | **0** | 336 | +0.000007 ETH | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 09:16 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.2886% | 0.01 ETH | +0.000005 ETH ($0.01) | yes |
| 09:16 ET | plucky-hollow-walrus | Opal Hill→Rowan Quay | +0.1752% | 0.01 ETH | +0.000002 ETH ($0.00) | yes |
| 02:43 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0416% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 02:44 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0410% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 19:03 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0397% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 5,730 | 0.1315% | 1.8234% | 2.8089% | +0.0409% | +1.7840% | 4,020 | 940 |
| steady-lunar-wombat | 5,730 | 1.0499% | 2.1192% | 2.6490% | +0.0337% | +1.5990% | 3,969 | 2,212 |
| curious-oblique-egret | 5,731 | 0.0804% | 0.3375% | 1.3506% | +0.0531% | +0.3055% | 5,446 | 2 |
| curious-umbral-gecko | 5,731 | 0.0376% | 0.0801% | 1.1623% | +0.0167% | +0.2886% | 4,752 | 0 |
| plucky-hollow-walrus | 5,730 | 0.0258% | 0.0800% | 1.1852% | -0.0004% | +0.1752% | 2,786 | 0 |
| wry-marbled-puffin | 5,726 | 0.3167% | 1.1869% | 1.2459% | -0.3077% | +0.1459% | 602 | 0 |
| lucky-glacial-urchin | 5,729 | 0.0581% | 0.2896% | 0.4407% | -0.0612% | +0.0898% | 445 | 0 |
| lucky-crystalline-narwhal | 5,730 | 0.0296% | 1.1882% | 1.3757% | -0.0451% | +0.0709% | 168 | 0 |
| curious-lunar-otter | 5,731 | 0.0067% | 0.0162% | 0.0832% | -0.0099% | +0.0202% | 268 | 0 |
| brisk-umbral-bison | 5,729 | 0.0208% | 1.1116% | 1.3747% | -0.0906% | +0.0168% | 3 | 0 |
| witty-tangerine-walrus | 5,730 | 0.0020% | 0.0124% | 0.0207% | -0.0066% | +0.0016% | 11 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **281** opened: 98 closed by a swap, 27 by drift, 156 still open when the budget ran out. Median lifetime **203 blocks** (60.1 s), p90 60.5 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 35 | 217 blocks | 97% | +1.4666% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 27 | 200 blocks | 52% | +0.2165% |
| curious-oblique-egret | Juniper→Opal Quay | 25 | 190 blocks | 44% | +0.1822% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 18 | 204 blocks | 50% | +0.1539% |
| nimble-woolly-zebra | Opal Cross→Juniper | 17 | 104 blocks | 29% | +0.2184% |
| curious-oblique-egret | Opal Quay→Juniper | 15 | 203 blocks | 60% | +0.2190% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:51 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 162 | 210 blocks | nothing pays | 0.5 ETH | -0.369020 ETH | — |
| steady-lunar-wombat | Opal Hill→Opal Cross | 124 | 221 blocks | nothing pays | 0.5 ETH | -0.337994 ETH | — |
| curious-oblique-egret | Opal Quay→Juniper | 141 | 198 blocks | nothing pays | 0.5 ETH | -0.313333 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,928** reads across 8 cycles, 12,854 positive after fees; 675 quoted as a round trip, 0 cleared, best quoted net -0.000011 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Rowan Quay → Opal Hill → Juniper | 2,940 | 2,637 | +1.8547% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Opal Quay | 2,792 | 2,455 | +1.6623% |
| WETH→Lemur→Zebra→WETH | Rowan Quay → Juniper → Opal Quay | 2,816 | 2,790 | +0.3375% |
| WETH→Zebra→Lemur→WETH | Rowan Gate → Juniper → Juniper | 2,916 | 2,908 | +0.3339% |
| Lemur→WETH→Lemur→Lemur | Opal Hill → Rowan Quay → Opal Row | 2,985 | 901 | +0.2420% |

## The census

The wider net: 498 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| steady-lunar-wombat | +0.2514% | $77,332 |
| merry-electric-gecko | +0.0051% | $174,795 |
| curious-oblique-egret | -0.0363% | $262,823 |
| witty-glacial-pangolin | -0.0434% | $88,656 |
| lucky-crystalline-narwhal | -0.0734% | $85,813 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 12.14% fixed against 8.37% variable (+3.78 pts, $4,091,525 deep); Aave Lemur supplies 4.62%, borrows 5.52%; best basis carry SOL: funding 1.37% − Lemur 4.62% = -3.25 pts.
- **TON.** 54 Heron pools above $50,000 on two DEXes (50,726 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.414% with a $57,908 thin leg. Heron ≈ $0.984.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 8 pools from $0.98184 to $1.15476 (+17.61%), deepest on solana at $0.98184. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:57 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 79 ms | 85 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 60 ms | 60 ms | 0 | yes |
| public | 1rpc.io | 75 ms | 348 ms | 0 | yes |
| public | arbitrum.drpc.org | 73 ms | 86 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 25, 01:13 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
