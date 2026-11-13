<div align="center">

# Arbitrage observer — 2026-11-11

*The monitor-only DEX edge study on Arbitrum, one day read from its own logs, in costume.*

![Lane](https://img.shields.io/badge/Lane-arbitrage-d9a441?style=flat-square) ![Date](https://img.shields.io/badge/Date-2026--11--11-8a6a2a?style=flat-square) ![Mode](https://img.shields.io/badge/Mode-monitor%20only-334155?style=flat-square) ![Copy](https://img.shields.io/badge/Copy-public%2C%20costumed-64748b?style=flat-square)

</div>

> **The day in one line.** 24.43 h observed, 4,252 polls, 3,754 candidates, 0 cleared costs, 0 would have fired; 234 chases; best -0.000006 ETH on plucky-hollow-walrus Juniper→Rowan Quay at 0.05 ETH.

The study is monitor-only: it prices venues, quotes round trips with static calls and writes down what it saw. It holds no wallet and sends no transaction. Funding is decided by Christopher after the observed week, not by this page.

## Coverage and heartbeat

| Reading | Value |
|---|---|
| Observed today | **24.43 h** (distinct poll stamps; a gap over 2 h is not observed time) |
| First to last poll | 23.91 h |
| Polls · pair samples | 4,252 · 46,759 |
| Pairs watched · pools priced | 11 · 73 |
| Study to date (observed) | **391.55 h** of 168 h (233.1%) |
| Study to date (calendar, to the last poll) | 415.25 h |
| Heartbeat | last poll Nov 11, 23:59 ET, block 523,474,456 |

## Candidates

A candidate is a poll whose executable spread after pool fees reached the floor (0%); each is quoted as a round trip across the size ladder with gas at the live price. "Cleared" means a rung paid after gas; "would fire" means it also met the bot's threshold (0.3%).

| Candidates | Simulated | Cleared costs | Would have fired | Quote errors | Cleared net total | Gas, median |
|---:|---:|---:|---:|---:|---:|---:|
| 3,754 | 3,648 | 0 | **0** | 1,065 | — | 0.00001201 ETH |

**Best routes of the day** (the five highest net results):

| Time | Pair | Route | Net spread | Size | Net | Cleared |
|---|---|---|---:|---:|---:|:---:|
| 07:11 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0382% | 0.05 ETH | -0.000006 ETH (-$0.01) | no |
| 13:15 ET | lucky-glacial-urchin | Juniper→Rowan Cross | +0.1094% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 12:57 ET | lucky-glacial-urchin | Juniper→Rowan Cross | +0.0892% | 0.01 ETH | -0.000007 ETH (-$0.02) | no |
| 03:23 ET | curious-umbral-gecko | Juniper→Rowan Quay | +0.0600% | 0.01 ETH | -0.000007 ETH (-$0.01) | no |
| 01:55 ET | plucky-hollow-walrus | Juniper→Rowan Quay | +0.0368% | 0.05 ETH | -0.000007 ETH (-$0.02) | no |

## Pairs

Spreads are gross between the cheapest and dearest venue each poll; "net" subtracts both pools' fees. Sorted by the widest net spread.

| Pair | Samples | Median | p95 | Max | Median net | Max net | ≥ floor | ≥ threshold |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| curious-oblique-egret | 4,252 | 0.0915% | 1.1382% | 1.3692% | +0.0580% | +1.1092% | 4,059 | 853 |
| nimble-woolly-zebra | 4,251 | 0.0826% | 1.6326% | 2.0576% | +0.0008% | +1.0325% | 2,171 | 657 |
| steady-lunar-wombat | 4,250 | 0.1348% | 1.4686% | 1.7544% | -0.0714% | +0.7044% | 2,064 | 224 |
| curious-umbral-gecko | 4,252 | 0.0301% | 0.2703% | 1.0391% | -0.0003% | +0.5793% | 2,099 | 1 |
| lucky-glacial-urchin | 4,251 | 0.0798% | 0.2786% | 0.4256% | -0.0402% | +0.1132% | 998 | 0 |
| plucky-hollow-walrus | 4,252 | 0.0225% | 0.0746% | 0.3073% | -0.0025% | +0.0570% | 1,851 | 0 |
| lucky-crystalline-narwhal | 4,252 | 0.0337% | 1.1900% | 1.3868% | -0.0546% | +0.0470% | 59 | 0 |
| wry-marbled-puffin | 4,250 | 0.1623% | 0.7069% | 1.0929% | -0.6514% | +0.0000% | 1 | 0 |
| witty-tangerine-walrus | 4,249 | 0.0018% | 0.0096% | 0.0140% | -0.0061% | -0.0011% | 0 | 0 |
| curious-lunar-otter | 4,251 | 0.0049% | 0.0056% | 0.0090% | -0.0110% | -0.0086% | 0 | 0 |
| brisk-umbral-bison | 4,249 | 0.0233% | 0.2675% | 1.1277% | -0.0864% | -0.0168% | 0 | 0 |

## Chases and lifetimes

A chase follows a dislocation block by block until a swap closes it, the prices drift back, or the 60-second budget runs out. **234** opened: 57 closed by a swap, 19 by drift, 158 still open when the budget ran out. Median lifetime **176 blocks** (60.2 s), p90 79.7 s; a lifetime that hits the budget is a lower bound.

| Pair | Route | Chases | Median life | Still open | Max net |
|---|---|---:|---:|---:|---:|
| curious-oblique-egret | Rowan Quay→Opal Quay | 23 | 181 blocks | 65% | +0.1316% |
| nimble-woolly-zebra | Opal Hill→Juniper | 19 | 50 blocks | 95% | +0.8042% |
| curious-oblique-egret | Opal Quay→Rowan Quay | 18 | 128 blocks | 56% | +0.1219% |
| steady-lunar-wombat | Opal Hill→Opal Cross | 17 | 196 blocks | 100% | +0.5831% |
| curious-oblique-egret | Juniper→Opal Quay | 12 | 46 blocks | 50% | +0.1209% |
| curious-oblique-egret | Opal Quay→Rowan Gate | 11 | 192 blocks | 91% | +0.9357% |

## Persistent routes

The routes that stay open longest, quoted at 0.5 to 10 ETH every ten minutes (144 runs this day; the last at 23:55 ET).

| Pair | Route | Chases | Median life | Pays to | Best size | Net at best | Zero crossing |
|---|---|---:|---:|---:|---:|---:|---:|
| steady-lunar-wombat | Opal Hill→Opal Cross | 153 | 199 blocks | nothing pays | 0.5 ETH | -0.324351 ETH | — |
| curious-oblique-egret | Opal Quay→Rowan Quay | 179 | 197 blocks | nothing pays | 0.5 ETH | -0.045086 ETH | — |
| curious-oblique-egret | Rowan Quay→Opal Quay | 148 | 190 blocks | nothing pays | 0.5 ETH | -0.052205 ETH | — |

## Triangles

Three-pair cycles priced each poll: **17,044** reads across 8 cycles, 8,468 positive after fees; 484 quoted as a round trip, 0 cleared, best quoted net -0.000012 ETH.

| Cycle | Venues at its best read | Reads | Positive | Best net |
|---|---|---:|---:|---:|
| WETH→Lemur→Zebra→WETH | Juniper → Juniper → Rowan Gate | 2,636 | 2,604 | +1.0896% |
| WETH→Egret→Lemur→WETH | Juniper → Opal Hill → Juniper | 2,394 | 1,616 | +0.9819% |
| WETH→Lemur→Egret→WETH | Juniper → Opal Hill → Juniper | 1,867 | 1,285 | +0.9614% |
| WETH→Zebra→Lemur→WETH | Rowan Quay → Juniper → Opal Quay | 1,625 | 1,589 | +0.5948% |
| Lemur→Lemur→WETH→Lemur | Opal Cross → Opal Quay → Juniper | 2,236 | 606 | +0.4704% |

## The census

The wider net: 499 pools on the chain read from a public listing at 14:57 ET; the pairs priced on two or more venues, best after fees first. Depth is the thinner leg.

| Pair | Net after fees | Thinner leg |
|---|---:|---:|
| lucky-crystalline-narwhal | +0.2240% | $115,247 |
| curious-umbral-gecko | +0.0403% | $501,269 |
| steady-lunar-wombat | +0.0449% | $93,375 |
| candid-luminous-walrus | +0.0315% | $68,287 |
| merry-electric-gecko | -0.0016% | $315,546 |

## The frontier

Four scouts read public sources only (last run 23:20 ET):

- **Intents.** No corridor answered.
- **Rates.** no reading (the scout returned nothing this run).
- **TON.** 0 Heron pools above $50,000 on two DEXes (0 Slate and 0 Umber listed), 0 pairs priced on two or more venues, 0 apart after fees. Heron ≈ $—.
- **Tokenised treasuries.** No tokenised-treasury pool above the floor was found.

## The wire

Round trips from this machine at 00:54 ET; head lag in blocks against the freshest head seen. Hostnames only.

| Endpoint | Host | Round trip | Call | Head lag | OK |
|---|---|---:|---:|---:|:---:|
| configured | arb-mainnet.g.alchemy.com | — ms | — ms | — | no (exceeded maximum retry limit) |
| public | arb1.arbitrum.io | 77 ms | 79 ms | 2 | yes |
| public | arbitrum-one.publicnode.com | 68 ms | 72 ms | 0 | yes |
| public | 1rpc.io | 69 ms | 182 ms | 3 | yes |
| public | arbitrum.drpc.org | 76 ms | 96 ms | 0 | yes |

---

<sub>Costume: pairs and venues wear stage names (a house per exchange, a ward per fee tier); depths are scaled by a secret factor per pair. Counts, spreads, gas, hours and outcomes are the real study. Written Nov 12, 01:13 ET by the arbitrage lane's nightly report; the PDF beside it is rendered by this repository's workflow. Index: [https://drasticstatic.github.io/monitoring-outputs-thef-public/](https://drasticstatic.github.io/monitoring-outputs-thef-public/) · live dashboard: [https://drasticstatic.github.io/trading-bot-arbitrage-public/](https://drasticstatic.github.io/trading-bot-arbitrage-public/).</sub>
