<div align="center">

# Arbitrage observer — 2026-11-16

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--16-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.39 h observed, 5,755 polls, 5,309 candidates, 0 cleared costs, 0 would have fired; 286 chases; best -0.000007 ETH on curious-oblique-egret Rowan Quay→Rowan Cross at 0.01 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.39 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 24.00 h |
| Polls · pair samples | 5,755 · 63,305 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **514.97 h** of 168 h (306.5%) |
| Study to date (calendar, to the last poll) | 535.25 h |
| Heartbeat | last poll Nov 16, 23:59 ET, block 524,945,654 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 5,309 | 5,309 | 0 | **0** | 0 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 21:29 ET | curious-oblique-egret | Rowan Quay→Rowan Cross | +0.0911% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 09:33 ET | lucky-glacial-urchin | Juniper→Rowan Cross | +0.1097% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 13:35 ET | curious-umbral-gecko | Juniper→Opal Quay | +0.1056% | 0.01 ETH | -0.000008 ETH (-$0.01) | no |
| 09:16 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0818% | 0.01 ETH | -0.000008 ETH (-$0.01) | no |
| 17:09 ET | curious-umbral-gecko | Rowan Quay→Juniper | +0.0589% | 0.01 ETH | -0.000008 ETH (-$0.01) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | 5,755 | 2.9948% | 3.7760% | 3.9062% | +1.8146% | +2.8562% | 5,755 | 5,755 |
| nimble-woolly-zebra | 5,755 | 0.0964% | 0.2613% | 1.2507% | +0.0143% | +0.2708% | 3,311 | 0 |
| curious-oblique-egret | 5,755 | 0.0695% | 0.3463% | 1.1883% | +0.0447% | +0.2503% | 5,397 | 0 |
| curious-umbral-gecko | 5,755 | 0.0336% | 0.0835% | 1.0796% | +0.0120% | +0.1793% | 4,476 | 0 |
| plucky-hollow-walrus | 5,755 | 0.0262% | 0.0827% | 1.1382% | -0.0010% | +0.1282% | 2,703 | 0 |
| lucky-glacial-urchin | 5,755 | 0.0597% | 0.2789% | 0.3998% | -0.0601% | +0.1097% | 175 | 0 |
| lucky-crystalline-narwhal | 5,755 | 0.0262% | 1.1938% | 1.3290% | -0.0527% | +0.0619% | 91 | 0 |
| brisk-umbral-bison | 5,755 | 0.0242% | 0.2948% | 1.1331% | -0.0891% | +0.0074% | 1 | 0 |
| witty-tangerine-walrus | 5,755 | 0.0019% | 0.0094% | 0.0491% | -0.0074% | +0.0005% | 1 | 0 |
| curious-lunar-otter | 5,755 | 0.0040% | 0.0080% | 0.0115% | -0.0110% | -0.0035% | 0 | 0 |
| wry-marbled-puffin | 5,755 | 0.2714% | 0.9273% | 1.0915% | -0.6134% | -0.2085% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **286** opened: 50 closed by a swap, 35 by drift, 201 still open when the budget ran out. Median lifetime **195 blocks** (60.2 s), p90 60.4 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 79 | 207 blocks | 100% | +2.7528% |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 25 | 207 blocks | 100% | +2.8563% |
| nimble-woolly-zebra | Opal Cross→Juniper | 23 | 202 blocks | 65% | +0.2712% |
| curious-oblique-egret | Opal Quay→Juniper | 20 | 198 blocks | 70% | +0.2795% |
| curious-oblique-egret | Juniper→Opal Quay | 18 | 177 blocks | 56% | +0.1132% |
| curious-oblique-egret | Rowan Quay→Opal Quay | 18 | 147 blocks | 44% | +0.1461% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:50 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Cross→Opal Hill | 323 | 208 blocks | nothing pays | 0.5 ETH | -0.365308 ETH | — |
| steady-lunar-wombat | Rowan Cross→Opal Hill | 96 | 207 blocks | nothing pays | 0.5 ETH | -0.365142 ETH | — |
| curious-oblique-egret | Opal Quay→Juniper | 128 | 178 blocks | nothing pays | 0.5 ETH | -0.208292 ETH | — |

## Triangles

Three-pair cycles priced each poll: **23,020** reads across 8 cycles, 12,433 positive after fees; 691 quoted as a round trip, 0 cleared, best quoted net -0.000010 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Egret→Lemur→WETH | Juniper → Opal Cross → Juniper | 2,891 | 2,378 | +0.3344% |
| WETH→Zebra→Lemur→WETH | Opal Quay → Juniper → Juniper | 3,179 | 3,162 | +0.2692% |
| WETH→Lemur→Egret→WETH | Rowan Quay → Opal Cross → Juniper | 2,864 | 2,355 | +0.2600% |
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Opal Quay | 2,576 | 2,561 | +0.2152% |
| Lemur→WETH→Lemur→Lemur | Juniper → Juniper → Rowan Cross | 2,916 | 914 | +0.1989% |

## The census

The wider net: 498 pools on the chain read from a public listing at 23:51 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| frisky-electric-gecko | +1.2481% | $83,160 |
| lucky-glacial-urchin | +0.2444% | $93,538 |
| merry-electric-gecko | +0.0093% | $186,452 |
| witty-glacial-pangolin | -0.0203% | $99,104 |
| nimble-woolly-zebra | -0.0863% | $149,190 |

## The frontier

Four scouts read public sources only (last run 23:15 ET):

- **Intents.** Across pays a filler +0.010% to +0.092% per fill on the five corridors, settling in 1–900 s; OpalX has 0 open orders on Arbitrum right now. A filler's edge is capital turned over quickly at a thin fee, not a spread.
- **Rates.** Pendle sUSDai 2027-02-25 pays 8.94% fixed against 6.98% variable (+1.96 pts, $4,056,216 deep).
- **TON.** 56 Heron pools above $50,000 on two DEXes (50,147 Slate and 52,340 Umber listed), 3 pairs priced on two or more venues, 3 apart after fees — best vivid-cobalt-tapir +2.029% with a $60,958 thin leg. Heron ≈ $1.039.
- **Tokenised treasuries.** 3 of 8 tokenised treasuries have pools above $25,000; widest dispersion Manatee: 8 pools from $0.99668 to $1.15474 (+15.86%), deepest on solana at $0.99857. Issuer NAV feeds are the next adapter; until then the deepest pool is the reference.

## The wire

Round trips from this machine at 00:52 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 69 ms | 79 ms | 3 | yes |
| public | arbitrum-one.publicnode.com | 65 ms | 66 ms | 0 | yes |
| public | 1rpc.io | 156 ms | 5,408 ms | 2 | yes |
| public | arbitrum.drpc.org | 70 ms | 67 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 18, 01:08 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
