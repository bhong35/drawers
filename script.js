import http from "k6/http";
import { check, sleep } from "k6";
import { Rate } from "k6/metrics";

// let baseUrl = `https://httpbin.test.loadimpact.com`;
let baseUrl = `http://localhost:3333/pg/item/1`;

export let options = {
    stages: [
        { duration: "1m", target: 50 },
        { duration: "10m", target: 50 },
        { duration: "1m", target: 0 }
    ],
    vus: 100,
    // duration: "10s",
    discardResponseBodies: true
};

export default () => {
    let res = http.get(`${baseUrl}`);
    check(res, {
        "status was 200": (r) => r.status === 200
    });
    sleep(1);
}