<div align="center">

# Arbitrage observer — 2026-10-28

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--10--28-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.00 h observed, 5,698 polls, 4,470 candidates, 0 cleared costs, 0 would have fired; 230 chases; best -0.000005 ETH on lucky-glacial-urchin Juniper→Rowan Cross at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.00 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.99 h |
| Polls · pair samples | 5,698 · 56,980 |
| Pairs watched · pools priced | 10 · 47 |
| Study to date (observed) | **78.41 h** of 168 h (46.7%) |
| Study to date (calendar, to the last poll) | 78.25 h |
| Heartbeat | last poll Oct 28, 23:59 ET, block 519,252,907 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,470 | 4,466 | 0 | **0** | 20 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 16:03 ET | lucky-glacial-urchin | Juniper→Rowan Cross | +0.1280% | 0.01 ETH | -0.000005 ETH (-$0.01) | no |
| 16:02 ET | lucky-glacial-urchin | Juniper→Rowan Cross | +0.1280% | 0.01 ETH | -0.000006 ETH (-$0.01) | no |
| 13:32 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0364% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |
| 13:31 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0364% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |
| 16:20 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0363% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 5,698 | 0.0807% | 1.5370% | 1.9947% | +0.0088% | +0.9727% | 3,204 | 712 |
| steady-lunar-wombat | 5,698 | 0.1188% | 1.2092% | 1.9324% | -0.0314% | +0.8824% | 2,700 | 229 |
| curious-oblique-egret | 5,698 | 0.0615% | 0.1431% | 1.2807% | +0.0413% | +0.2707% | 5,221 | 0 |
| lucky-glacial-urchin | 5,698 | 0.0804% | 0.2409% | 0.4044% | -0.0397% | +0.1280% | 1,412 | 0 |
| curious-umbral-gecko | 5,698 | 0.0149% | 0.0419% | 1.0663% | -0.0057% | +0.0745% | 1,612 | 0 |
| lucky-crystalline-narwhal | 5,698 | 0.0225% | 0.2987% | 1.0553% | -0.0434% | +0.0503% | 139 | 0 |
| plucky-hollow-walrus | 5,698 | 0.0187% | 0.0707% | 1.0508% | -0.0031% | +0.0440% | 2,170 | 0 |
| witty-tangerine-walrus | 5,698 | 0.0061% | 0.0081% | 0.0149% | -0.0064% | +0.0024% | 4 | 0 |
| brisk-umbral-bison | 5,698 | 0.0082% | 0.2576% | 0.3500% | -0.0931% | +0.0000% | 0 | 0 |
| wry-marbled-puffin | 5,698 | 0.4870% | 0.8309% | 0.9994% | -0.6514% | -0.2200% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **230** opened: 7 closed by a swap, 92 by drift, 131 still open when the budget ran out. Median lifetime **206 blocks** (60.1 s), p90 60.4 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 34 | 205 blocks | 62% | +0.1827% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 30 | 192 blocks | 57% | +0.1976% |
| nimble-woolly-zebra | Opal Hill→Juniper | 25 | 227 blocks | 88% | +0.9087% |
| curious-oblique-egret | Opal Quay→Juniper | 22 | 220 blocks | 64% | +0.1601% |
| curious-oblique-egret | Juniper→Opal Quay | 17 | 204 blocks | 47% | +0.2146% |
| nimble-woolly-zebra | Opal Cross→Juniper | 13 | 49 blocks | 15% | +0.1149% |

## Persistent routes

Ranked from the chase log up to the day's last poll (chases × median lifetime × (1 + share still open)); not yet quoted, because the ten-minute quotes start with the next monitor restart.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 91 | 201 blocks | 62% | +0.1827% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 82 | 199 blocks | 55% | +0.2125% |
| curious-oblique-egret | Opal Quay→Juniper | 42 | 212 blocks | 64% | +0.1601% |
| nimble-woolly-zebra | Opal Hill→Juniper | 33 | 226 blocks | 91% | +0.9087% |
| curious-oblique-egret | Juniper→Opal Quay | 41 | 194 blocks | 49% | +0.2458% |

## Triangles

Three-pair cycles priced each poll: **22,792** reads across 8 cycles, 11,180 positive after fees; 623 quoted as a round trip, 0 cleared, best quoted net -0.000011 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Opal Quay → Opal Hill → Juniper | 2,134 | 1,550 | +0.9389% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Rowan Quay | 3,564 | 2,949 | +0.8581% |
| WETH→Lemur→Zebra→WETH | Rowan Quay → Juniper → Opal Hill | 2,504 | 2,372 | +0.2759% |
| WETH→Zebra→Lemur→WETH | Opal Hill → Juniper → Opal Quay | 3,194 | 3,052 | +0.2096% |
| WETH→Falcon→Lemur→WETH | Rowan Cross → Opal Row → Juniper | 3,067 | 158 | +0.1633% |

## The census

The wider net: 451 pools on the chain read from a public listing at 23:42 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| jolly-glacial-urchin | +22.6701% | $418,290 |
| cheeky-cosmic-tapir | +2.9610% | $330,619 |
| candid-tidal-salmon | +2.7250% | $375,658 |
| frisky-electric-gecko | +0.7553% | $100,912 |
| nimble-woolly-zebra | +0.0873% | $230,244 |

## The frontier

Four scouts read public sources only (last run 23:55 ET):

- **Intents.** Across pays a filler +0.010% to +0.026% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 9.35% fixed against 6.56% variable (+2.79 pts, $6,300,888 deep); Aave Lemur supplies 2.41%, borrows 3.49%; best basis carry BTC: funding 1.37% − Lemur 2.41% = -1.04 pts.
- **TON.** 64 Heron pools above $50,000 on two DEXes (49,129 Slate and 52,340 Umber listed), 4 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +1.971% with a $71,217 thin leg. Heron ≈ $1.213.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion USDY: 5 pools from $1.11284 to $1.14917 (+3.26%), deepest on solana at $1.11284. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 23:55 ET; head lag in blocks against the freshest head seen. Hostnames only. Chain cadence 2.8 blocks/s (median block 304 ms); a 15 s poll spans about 49 blocks.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | 57 ms | 58 ms | 0 | yes |
| public | arb1.arbitrum.io | 87 ms | 76 ms | 1 | yes |
| public | arbitrum-one.publicnode.com | 76 ms | 62 ms | 0 | yes |
| public | 1rpc.io | 128 ms | 761 ms | 3 | yes |
| public | arbitrum.drpc.org | 65 ms | 89 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Oct 31, 09:38 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
