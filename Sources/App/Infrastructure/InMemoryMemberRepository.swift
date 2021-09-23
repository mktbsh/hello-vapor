class InMemoryMemberRepository : IMemberRepository {
    private let members: [Member] = InMemoryDatabase.shared.getMembers()
    
    func find(id: String) -> Member? {
        return members.first(where: { $0.id == id })
    }
    
    func findAll() -> [Member] {
        return members
    }
    
    func create(member: Member) {
        print("create")
    }
    
    func update(member: Member) {
        print("upd")
    }
    
    func delete(id: String) {
        print("delete")
    }
}
