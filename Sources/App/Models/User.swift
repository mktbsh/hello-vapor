struct User {
    let id: Int
    let name: String
    let age: Int
}

struct UserBusinessRule {
    
    static func isNameLengthValid(_ name: String) -> Bool {
        return name.count > 0
    }
}
