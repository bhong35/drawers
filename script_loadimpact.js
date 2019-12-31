import http from "k6/http";
import { check, sleep } from "k6";
import { Rate } from "k6/metrics";
// let baseUrl = `https://httpbin.test.loadimpact.com`;
let baseUrl = `http://localhost:3333`;

// * k6 getting started docs
export let options = {
    // * options.stages configures ramping behavior
    stages: [
        // * ramp to 50 VUs over a minute
        // { duration: "1m", target: 50 },
        // * maintain concurrent users for 10 mins
        // { duration: "10m", target: 50 },
        // * then ramp down to 0 over a minute
        // { duration: "1m", target: 0 }
        // * simulate rampup of traffix from 1 to 200 users over 5 minutes
        { duration: "5m", target: 200 }
    ],
    vus: 10,
    duration: "30s",
    // Don't save the bodies of HTTP responses by default, for improved performance
    // Can be overwritten by setting the `responseType` option to `text` or `binary` for individual requests
    discardResponseBodies: true,

    ext: {
        loadimpact: {
            // Specify the distribution across load zones
            //
            // See https://docs.k6.io/docs/cloud-execution#section-cloud-execution-options
            //
            distribution: {
                loadZoneLabel1: { loadZone: "amazon:us:ashburn", percent: 100 },

                // Uncomment this and make sure percentage distribution adds up to 100 to use two load zones.
                // loadZoneLabel2: { loadZone: "amazon:ie:dublin", percent: 50 }
            }
        }
    }
};

export default () => {
    let res = http.get("https://httpbin.test.loadimpact.com/");
    // * using check() to verify transactions work and are fast enough
    check(res, {
        "status was 200": (r) => r.status === 200,
        "transaction time was OK": (r) => r.timings.duration < 200
    });
    sleep(1);
};



// * loadimpact API TESTING tutorial
// * collect all errors in one metric
// let errorRate = new Rate("API errors");

/*
let authenticate = (user, password) => {
    let authUserRes = http.post(`${baseUrl}/anything`, JSON.stringify({ user: user, password: password }));
    if (!check(authUserRes), { "login successful": (r) => r.status === 200}) {
        errorRate.add(1);
    }
    return authUserRes.json().token;
}

let getUser = (user_id, token) => {
    let userRes = http.get(`${baseUrl}/anything/${user_id}`, {}, {
        headers: {
            Authorization: `Token ${token}`
        }
    });

    if (!check(userRes, { "user retrieval successful": (r) => r.status === 200 })) {
        errorRate.add(1);
    }
    return userRes.json();
}

export default () => {
    let authToken = authenticate("user@example.com", "password");
    let user = getUser(2, authToken);

    sleep(1); // user waits 1 second after this flow
}
*/