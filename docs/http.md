# http

## `builtin_http`

Built-in HTTP client (used curl)
Header keys on the response are lowercased.

**Examples:**
```awkward
import http;
let r = http.get("https://example.com");
print(r.status);
print(r.body);
http.post(url, body, {"Content-Type": "application/json"});
```

