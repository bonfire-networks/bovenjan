let ExtensionHooks = {};

// NOTE: any extensions included here need to also be added to ./deps.js.sh
// NOTE: during development you may want to change 'deps' in the path to 'forks', but remember to change it back before committing!

// import { GeolocateHooks } from "./../../deps/bonfire_geolocate/assets/js/extension"
import { NotifyHooks } from "./../../deps/bonfire_notify/assets/js/extension"
import LiveSelect from "./../../deps/live_select/priv/static/live_select.min.js"
// thin shim only; the heavy xterm bundle is fetched on demand from /assets/console_terminal.js
import { TerminalHooks } from "./../../deps/bonfire_ui_console/assets/js/terminal.js"


Object.assign(ExtensionHooks, LiveSelect, NotifyHooks, TerminalHooks)

export { ExtensionHooks }
