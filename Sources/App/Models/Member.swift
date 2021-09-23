import Vapor

struct Member: Content {
    let id: String
    let name: String
    let birthday: String
    let group: String
    let mbti: String
    let images: [String]
}

struct MemberBusinessRule {
    
    static func isNameLengthValid(_ name: String) -> Bool {
        return name.count > 0
    }
    
    static func isGroupNameValid(_ group: String) -> Bool {
        return group == "K" || group == "C" || group == "J"
    }
}
