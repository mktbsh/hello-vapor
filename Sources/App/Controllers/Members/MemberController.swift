import Vapor

struct MembersController {
    let memberList = [
        "An jeongmin",
        "Su Ruiqi"
    ]
    
    func register(_ api: Vapor.RoutesBuilder) {
        let members = api.grouped("members")
        
        members.get { req in
            return memberList
        }
        
        members.get(":name") { req -> String in
            let params = try req.query.decode(MemberNameQuery.self)
            return "Hello, \(params.name ?? "Ezaki Hikaru")"
        }
    }
}

struct MemberNameQuery: Content {
    var name: String?
}
