import { useEffect, useState } from "react"
import { fetcher } from "../lib/fetcher";

type Member = {
    id: string;
    name: string;
    birthday: string;
    group: 'K' | 'C' | 'J';
    mbti: string;
    images: string[];
}

export const MemberList: React.VFC = () => {
    const [members, setMembers] = useState<Member[] | undefined>(undefined);

    useEffect(() => {
        fetcher<Member[]>('/api/members')
            .then(data => {
                console.log(data)
                setMembers(data);
            });
    }, []);

    if (!members) {
        return <h2>Now loading...</h2>
    }

    return (
        <table style={{ margin: '0 auto' }}>
            <tbody>
                <tr>
                    <th>name</th>
                    <th>group</th>
                    <th>image</th>
                </tr>
                {members.map(({ id, name, group, images }) => (
                        <tr key={id}>
                        <td>{name}</td>
                        <td>{group}</td>
                        <td><img src={images[0]} alt={id} style={{ maxWidth: '200px' }} /></td>
                    </tr>
                    ))}
            </tbody>
        </table>
    )
}