import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        req.redirect(to: "/index.html")
    }
    
    let api = app.grouped("api")
    MembersController().register(api)
}
