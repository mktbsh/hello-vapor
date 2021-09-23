struct FindMemberUseCase {
    let memberRepository: IMemberRepository
    
    func getMember(id: String) -> Member? {
        return self.memberRepository.find(id: id)
    }
    
    func getAllMembers() -> [Member] {
        return self.memberRepository.findAll()
    }
}
