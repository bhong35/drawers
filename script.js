import http from "k6/http";
import { check, sleep } from "k6";
import { Rate } from "k6/metrics";

let baseUrl = `http://localhost:3333/pg/`;

export let options = {
    // * stages to simulate realistic user request surges
    // stages: [
    //     { duration: "1m", target: 50 },
    //     { duration: "2m", target: 50 },
    //     { duration: "1m", target: 0 }
    // ],
    vus: 10,
    // batch: 20,
    duration: "10s",
    discardResponseBodies: true
};

// * experimenting with batch requests
// export default () => {
//     let responses = http.batch([
//         ["GET", `${baseUrl}/item`],
//         ["GET", `${baseUrl}/reviews`]
//     ]);
//     check(responses[0], {
//         "status was 200": (r) => r.status === 200
//     });
//     check(responses[1], {
//         "status was 200": (r) => r.status === 200
//     });
//     sleep(1);
// }

export default () => {
    let res = http.get(`${baseUrl}item`);
    check(res, {
        "status was 200": (r) => r.status === 200
    });
    sleep(1);
}