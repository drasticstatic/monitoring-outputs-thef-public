<div align="center">

# Arbitrage observer — 2026-11-26

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--26-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.46 h observed, 5,732 polls, 4,856 candidates, 1 cleared costs, 0 would have fired; 267 chases; best +0.000007 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.46 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.92 h |
| Polls · pair samples | 5,732 · 63,052 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **762.06 h** of 168 h (453.6%) |
| Study to date (calendar, to the last poll) | 775.25 h |
| Heartbeat | last poll Nov 26, 23:59 ET, block 527,917,545 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 4,856 | 4,856 | 1 | **0** | 1 | +0.000007 ETH | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 21:07 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0320% | 0.05 ETH | +0.000007 ETH ($0.01) | yes |
| 19:46 ET | plucky-hollow-walrus | Rowan Cross→Rowan Quay | +0.0202% | 0.05 ETH | -0.000003 ETH (-$0.01) | no |
| 17:53 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0423% | 0.05 ETH | -0.000005 ETH (-$0.01) | no |
| 14:59 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0396% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 23:42 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0394% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| nimble-woolly-zebra | 5,732 | 0.1378% | 1.5264% | 2.7047% | +0.0537% | +1.6797% | 4,204 | 647 |
| steady-lunar-wombat | 5,732 | 0.2789% | 1.5515% | 2.1038% | +0.0366% | +1.0538% | 2,943 | 691 |
| curious-oblique-egret | 5,732 | 0.0737% | 0.3839% | 1.2769% | +0.0489% | +0.2669% | 5,374 | 0 |
| curious-umbral-gecko | 5,732 | 0.0323% | 0.0602% | 0.1606% | +0.0121% | +0.1406% | 4,590 | 0 |
| lucky-glacial-urchin | 5,732 | 0.0548% | 0.2780% | 0.3649% | -0.0631% | +0.0830% | 320 | 0 |
| lucky-crystalline-narwhal | 5,732 | 0.0253% | 1.1614% | 1.3553% | -0.0583% | +0.0722% | 32 | 0 |
| wry-marbled-puffin | 5,732 | 0.2310% | 0.9366% | 1.2081% | -0.4609% | +0.0710% | 10 | 0 |
| plucky-hollow-walrus | 5,732 | 0.0209% | 0.0767% | 0.3110% | -0.0019% | +0.0453% | 2,611 | 0 |
| witty-tangerine-walrus | 5,732 | 0.0016% | 0.0110% | 0.0126% | -0.0088% | -0.0011% | 0 | 0 |
| curious-lunar-otter | 5,732 | 0.0038% | 0.0056% | 0.0064% | -0.0112% | -0.0086% | 0 | 0 |
| brisk-umbral-bison | 5,732 | 0.0187% | 0.3208% | 1.3361% | -0.0894% | -0.0345% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **267** opened: 58 closed by a swap, 41 by drift, 168 still open when the budget ran out. Median lifetime **185 blocks** (60.2 s), p90 60.4 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 26 | 190 blocks | 69% | +0.1825% |
| nimble-woolly-zebra | Juniper→Opal Cross | 26 | 184 blocks | 62% | +0.2001% |
| steady-lunar-wombat | Opal Hill→Opal Cross | 26 | 180 blocks | 65% | +1.0538% |
| nimble-woolly-zebra | Opal Cross→Juniper | 22 | 193 blocks | 77% | +0.2075% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 20 | 191 blocks | 65% | +0.2562% |
| curious-oblique-egret | Opal Quay→Juniper | 19 | 193 blocks | 58% | +0.1716% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:51 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 167 | 220 blocks | nothing pays | 0.5 ETH | -0.330533 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 168 | 191 blocks | nothing pays | 0.5 ETH | -0.293450 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 146 | 199 blocks | nothing pays | 0.5 ETH | -0.052761 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,000** reads across 8 cycles, 12,009 positive after fees; 574 quoted as a round trip, 0 cleared, best quoted net -0.000015 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Opal Cross → Opal Hill → Juniper | 2,646 | 2,261 | +1.6802% |
| WETH→Lemur→Egret→WETH | Rowan Quay → Opal Hill → Juniper | 3,104 | 2,676 | +1.0849% |
| WETH→Zebra→Lemur→WETH | Opal Hill → Juniper → Opal Quay | 2,942 | 2,901 | +0.2769% |
| WETH→Lemur→Zebra→WETH | Opal Quay → Juniper → Opal Quay | 2,808 | 2,781 | +0.2471% |
| WETH→Lemur→Falcon→WETH | Juniper → Opal Row → Rowan Cross | 3,931 | 332 | +0.1581% |

## The census

The wider net: 496 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| cheeky-cosmic-tapir | +6.8381% | $189,393 |
| jolly-glacial-urchin | +1.7526% | $271,922 |
| steady-peculiar-capybara | +0.9150% | $241,070 |
| frisky-electric-gecko | +0.4003% | $186,672 |
| brisk-umbral-bison | +0.0591% | $321,829 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.091% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-06-24 pays 8.64% fixed against 6.96% variable (+1.69 pts, $72,761 deep); Aave Lemur supplies 4.04%, borrows 4.86%; best basis carry BTC: funding 1.37% − Lemur 4.04% = -2.67 pts.
- **TON.** 54 Heron pools above $50,000 on two DEXes (50,927 Slate and 52,340 Umber listed), 4 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.445% with a $56,680 thin leg. Heron ≈ $0.966.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Falcon: 6 pools from $0.99341 to $1.00865 (+1.53%), deepest on eth at $0.99341. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:56 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 92 ms | 79 ms | 4 | yes |
| public | arbitrum-one.publicnode.com | 61 ms | 89 ms | 2 | yes |
| public | 1rpc.io | 113 ms | 372 ms | 0 | yes |
| public | arbitrum.drpc.org | 82 ms | 88 ms | 2 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 27, 01:12 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
