protocol IMemberRepository {
    func findAll() -> [Member]
    func find(id: String) -> Member?
    func create(member: Member)
    func update(member: Member)
    func delete(id: String)
}
