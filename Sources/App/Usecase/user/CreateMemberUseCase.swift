struct CreateMemberUseCase {
    private let memberRepository: IMemberRepository
    
    func createMember(member: Member) -> Member {
        return member
    }
}
