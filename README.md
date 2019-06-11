# app-protect-moneyx
Sample Java Spring application for App Protect demos
## Detailed Description
This is a sample, vulnerable-on-purpose, Java Spring application that can be used to demo Deep Security App Protect.

## Pre-Requisites for Usage
* Git
* Docker
* A Deep Security App Protect account

### Usage Instructions

1. Clone the repository
```
git clone https://gitlab.com/howiehowerton/app-protect-moneyx.git
```
2. Change into the app-protect-moneyx directory
```
cd app-protect-moneyx
```
3. Build the docker image
```
docker build -t moneyx .
```
4. Run the image
```
docker run -d -p 8080:8080 -e IMMUNIO_KEY='your-key-goes-here' -e IMMUNIO_SECRET='your-secret-goes-here'  moneyx
```
Note: To obtain your Key and Secret, you'll need to:
* Log into your App Protect account
* Add a new group
* Copy your Key and Secret

The App Protect (immunio) library (which is ADDed via the Dockerfile) uses the Key and Secret to identify the App Protect group to which the application belongs.
