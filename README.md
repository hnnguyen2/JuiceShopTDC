# app-protect-moneyx
Sample Java Spring application for Deep Security App Protect demos
## Detailed Description
This is a sample, vulnerable-on-purpose, Java Spring application that can be used to demo Deep Security App Protect.

MoneyX was created by the fine folks over at nVisium.

See:  https://github.com/nVisium/MoneyX

## Pre-Requisites for Usage

* Docker
* A Deep Security App Protect account

### Usage Instructions

1. Download and run the container:
```
docker run --rm -d -p 8080:8080 --name moneyx-app-protect -e IMMUNIO_KEY=<KEY> -e IMMUNIO_SECRET=<SECRET> howiehowerton/moneyx-app-protect
```
Note: To obtain your Key and Secret, you'll need to:
* Log into your App Protect account
* Add a new group
* Copy your Key and Secret

The App Protect (immunio) library (which is ADDed via the Dockerfile) uses the Key and Secret to identify the App Protect group to which the application belongs.

2. Follow the instructions in [exploits.md](exploits.md) to exploit the application.  Demonstrate that the exploits work against the vulnerable app.

3. Switch App Protect rules from "Report" to "Mitigate".

4. Follow the instructions in [exploits.md](exploits.md) again. Demonstrate that the exploits **no longer** work.