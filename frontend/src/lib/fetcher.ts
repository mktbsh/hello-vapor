const wrap = <T>(task: Promise<Response>): Promise<T> => {
    return new Promise((resolve, reject) => {
        task.then(response => {
            if (!response.ok) {
                return reject(response);
            }

            response.json()
                .then(json => resolve(json))
                .catch(err => reject(err));
        }).catch(err => reject(err))
    })
}

export const fetcher = <T = any>(input: RequestInfo, init?: RequestInit): Promise<T> => {
    return wrap<T>(fetch(input, init));
}
