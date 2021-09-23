import Vapor

// configures your application
public func configure(_ app: Application) throws {
    
    let fileDir = FileMiddleware(publicDirectory: app.directory.publicDirectory)
    app.middleware.use(fileDir)
    
    app.http.server.configuration.responseCompression = .enabled
    try routes(app)
}
