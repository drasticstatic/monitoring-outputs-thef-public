<div align="center">

# Arbitrage observer — 2026-11-25

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--25-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.69 h observed, 5,707 polls, 5,349 candidates, 0 cleared costs, 0 would have fired; 282 chases; best -0.000004 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.69 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.99 h |
| Polls · pair samples | 5,707 · 62,777 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **737.59 h** of 168 h (439.0%) |
| Study to date (calendar, to the last poll) | 751.25 h |
| Heartbeat | last poll Nov 25, 23:59 ET, block 527,636,346 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,349 | 5,349 | 0 | **0** | 2 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 09:44 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0285% | 0.05 ETH | -0.000004 ETH (-$0.01) | no |
| 12:06 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0432% | 0.05 ETH | -0.000005 ETH (-$0.01) | no |
| 05:48 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0410% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 13:16 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0389% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 21:45 ET | plucky-hollow-walrus | Rowan Quay→Juniper | +0.0393% | 0.05 ETH | -0.000007 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,707 | 1.1004% | 2.0604% | 2.5281% | +0.0535% | +1.4781% | 3,952 | 2,163 |
| nimble-woolly-zebra | 5,707 | 0.1560% | 1.8467% | 2.4294% | +0.0682% | +1.4044% | 4,405 | 1,213 |
| curious-oblique-egret | 5,707 | 0.1016% | 0.3745% | 1.4866% | +0.0687% | +0.8233% | 5,370 | 259 |
| curious-umbral-gecko | 5,707 | 0.0322% | 0.0657% | 1.0420% | +0.0113% | +0.1623% | 4,356 | 0 |
| lucky-glacial-urchin | 5,707 | 0.0750% | 0.2108% | 0.4004% | -0.0542% | +0.1063% | 558 | 0 |
| plucky-hollow-walrus | 5,707 | 0.0234% | 0.0787% | 1.0901% | -0.0013% | +0.0811% | 2,679 | 0 |
| lucky-crystalline-narwhal | 5,707 | 0.0259% | 1.1604% | 1.3321% | -0.0453% | +0.0650% | 134 | 0 |
| brisk-umbral-bison | 5,707 | 0.0212% | 1.1129% | 1.3567% | -0.0881% | +0.0317% | 1 | 0 |
| witty-tangerine-walrus | 5,707 | 0.0014% | 0.0105% | 0.0376% | -0.0070% | -0.0006% | 0 | 0 |
| curious-lunar-otter | 5,707 | 0.0025% | 0.0118% | 0.0149% | -0.0125% | -0.0051% | 0 | 0 |
| wry-marbled-puffin | 5,707 | 0.3404% | 0.9810% | 1.1516% | -0.5322% | -0.1484% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **282** opened: 68 closed by a swap, 30 by drift, 184 still open when the budget ran out. Median lifetime **212 blocks** (60.2 s), p90 61.2 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Opal Quay→Rowan Quay | 27 | 204 blocks | 59% | +0.3879% |
| curious-oblique-egret | Juniper→Opal Quay | 26 | 210 blocks | 69% | +0.3876% |
| steady-lunar-wombat | Opal Cross→Opal Hill | 26 | 220 blocks | 100% | +1.0589% |
| steady-lunar-wombat | Opal Hill→Opal Cross | 25 | 232 blocks | 92% | +1.3909% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 24 | 223 blocks | 67% | +0.5639% |
| curious-oblique-egret | Opal Quay→Juniper | 19 | 194 blocks | 53% | +0.2676% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:51 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 187 | 222 blocks | nothing pays | 0.5 ETH | -0.334449 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 166 | 191 blocks | nothing pays | 0.5 ETH | -0.313806 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 151 | 201 blocks | nothing pays | 0.5 ETH | -0.057014 ETH | — |

## Triangles

Three-pair cycles priced each poll: **22,832** reads across 8 cycles, 12,974 positive after fees; 610 quoted as a round trip, 0 cleared, best quoted net -0.000014 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Egret→WETH | Opal Cross → Opal Hill → Juniper | 2,797 | 2,556 | +1.6202% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Opal Quay | 2,911 | 2,663 | +1.1085% |
| WETH→Lemur→Zebra→WETH | Opal Quay → Rowan Quay → Opal Quay | 2,792 | 2,777 | +0.8210% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Juniper | 2,916 | 2,898 | +0.6384% |
| WETH→Lemur→Falcon→WETH | Opal Cross → Opal Row → Rowan Cross | 2,803 | 430 | +0.2399% |

## The census

The wider net: 500 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| focused-winsome-zebra | +0.0215% | $368,294 |
| merry-electric-gecko | -0.0032% | $469,182 |
| witty-glacial-pangolin | -0.1000% | $88,846 |
| curious-umbral-gecko | -0.1155% | $133,775 |
| witty-tangerine-walrus | -0.1508% | $97,036 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-06-24 pays 8.70% fixed against 6.95% variable (+1.75 pts, $72,738 deep); Aave Lemur supplies 6.33%, borrows 7.21%; best basis carry BTC: funding 1.37% − Lemur 6.33% = -4.96 pts.
- **TON.** 54 Heron pools above $50,000 on two DEXes (50,868 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.445% with a $57,406 thin leg. Heron ≈ $0.976.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Falcon: 6 pools from $0.99485 to $1.00148 (+0.67%), deepest on eth at $0.99655. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 01:05 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 71 ms | 71 ms | 4 | yes |
| public | arbitrum-one.publicnode.com | 60 ms | 66 ms | 0 | yes |
| public | 1rpc.io | 84 ms | 657 ms | 0 | yes |
| public | arbitrum.drpc.org | 72 ms | 91 ms | 1 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 27, 01:12 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
