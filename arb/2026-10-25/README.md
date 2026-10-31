<div align="center">

# Arbitrage observer — 2026-10-25

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--10--25-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 6.24 h observed, 1,481 polls, 432 candidates, 0 cleared costs, 0 would have fired; 0 chases; best -0.000008 ETH on curious-umbral-gecko Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **6.24 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 6.24 h |
| Polls · pair samples | 1,481 · 7,789 |
| Pairs watched · pools priced | 6 · 29 |
| Study to date (observed) | **6.24 h** of 168 h (3.7%) |
| Study to date (calendar, to the last poll) | 6.25 h |
| Heartbeat | last poll Oct 25, 23:59 ET, block 518,332,250 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 432 | 432 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 20:06 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0265% | 0.05 ETH | -0.000008 ETH (-$0.02) | no |
| 19:49 ET | curious-umbral-gecko | Opal Quay→Juniper | +0.0345% | 0.01 ETH | -0.000009 ETH (-$0.02) | no |
| 21:20 ET | curious-umbral-gecko | Opal Quay→Rowan Quay | +0.0317% | 0.01 ETH | -0.000010 ETH (-$0.02) | no |
| 23:58 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0296% | 0.01 ETH | -0.000010 ETH (-$0.02) | no |
| 23:17 ET | plucky-hollow-walrus | Juniper→Rowan Cross | +0.0341% | 0.01 ETH | -0.000010 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 1,481 | 0.1192% | 0.2384% | 0.3576% | -0.0311% | +0.0889% | 471 | 0 |
| plucky-hollow-walrus | 384 | 0.0198% | 0.0772% | 0.0997% | -0.0019% | +0.0807% | 185 | 0 |
| curious-umbral-gecko | 1,481 | 0.0157% | 0.0365% | 1.0256% | -0.0048% | +0.0645% | 470 | 0 |
| lucky-glacial-urchin | 1,481 | 0.0611% | 0.2456% | 0.3059% | -0.0685% | +0.0433% | 122 | 0 |
| lucky-crystalline-narwhal | 1,481 | 0.0190% | 0.0567% | 1.0179% | -0.0464% | +0.0258% | 11 | 0 |
| wry-marbled-puffin | 1,481 | 0.3685% | 0.8257% | 0.8542% | -0.5815% | -0.4458% | 0 | 0 |

## Chases and lifetimes

No dislocation was chased this day.

## Persistent routes

No route has been chased often enough to rank yet.

## Triangles

No three-pair cycle was read this day.

## The frontier

The four scouts did not run this day.

## The wire

No wire probe ran this day (it runs nightly at 23:55 ET).

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Oct 31, 09:38 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
