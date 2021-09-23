final public class InMemoryDatabase {
    
    public static let shared = InMemoryDatabase()
    
    private let members: [Member] = MemberGenerator.generate()
    
    private init() {}
    
    func getMembers() -> [Member] {
        return self.members;
    }
    
}
