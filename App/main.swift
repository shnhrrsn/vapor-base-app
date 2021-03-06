import Vapor
import VaporConsole
import VaporStencil
import VaporAssets

let app = Application()

// Add providers
app.providers.append(LoggingProvider())
app.providers.append(VaporAssets.Provider)
app.providers.append(BourbonProvider)
app.providers.append(StencilProvider)

// Add middleware
app.middleware.append(SampleMiddleware())

// Register routes
Routes.register(app)

// Start up console
let console = Console(app)

// Register app commands
Commands.register(console)

// Run
console.run()
