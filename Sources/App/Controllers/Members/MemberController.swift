import Vapor

struct MembersController {
    func register(_ api: Vapor.RoutesBuilder) {
        let members = api.grouped("members")
        
        members.get { _ -> [Member] in
            let useCase = FindMemberUseCase(memberRepository: InMemoryMemberRepository())
            return useCase.getAllMembers()
        }
                
        members.get(":id") { req -> Member in
            guard let id = req.parameters.get("id") else {
                throw Abort(.badRequest)
            }
            
            let useCase = FindMemberUseCase(memberRepository: InMemoryMemberRepository())
            guard let member = useCase.getMember(id: id) else {
                throw Abort(.notFound)
            }
            return member
        }
    }
}
