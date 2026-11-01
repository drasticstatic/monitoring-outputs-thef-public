# Perps lane — the listener's heartbeat, and its dated reports when they come

**The heartbeat page:** <https://drasticstatic.github.io/monitoring-outputs-thef-public/perps/> (this folder's
`index.html`). It answers one question, *is the Perps listener awake?*, from the heartbeat the listener rewrites every
tick: the time of the last tick, the cadence, ticks and events this run, which sources are silent, and the *kind* of the
last event. It never shows which markets are watched or their prices. It reads a trimmed `heartbeat.json` beside it when
one is published here, and otherwise the terminal's published heartbeat on the trading-assistant public preview. With
no heartbeat it says so; nothing on it is invented.

**Dated reports** (`perps/YYYY-MM-DD/README.md`) arrive here from the Perps session once they are marked public. None yet.

The listener is read-only: it never places, changes or cancels an order.
