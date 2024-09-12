# cubeSQL Web Admin
A web based administration for [cubeSQL Server](https://sqlabs.com/cubesql) (&copy; [sqlabs](https://sqlabs.com/))

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Description

*[cubeSQL Server](https://sqlabs.com/cubesql) is a fully featured and high performance relational database management system built on top of the sqlite database engine.*

cubeSQL Web Admin is a web based administration tool for [cubeSQL Server](https://sqlabs.com/cubesql).

![ScreenShot: Login](screenshots/login.png?raw=true)

![ScreenShot: Databases](screenshots/databases.png?raw=true)

## Build from Source Code

In order to build cubeSQL Web Admin application, [Xojo](https://xojo.com/) and the latest [cubeSQL Xojo Plugin](https://github.com/cubesql/cubeSQLAdmin) are required.

- Xojo can be obtained from: https://xojo.com/
- Latest [cubeSQL Xojo Plugin](https://github.com/cubesql/cubeSQLAdmin) can be found inside the Plugins folder

## Ready to use executables and Docker Images

1. Executables are provided with the [Releases](https://github.com/cubesql/webadmin/releases).
   - A Shell Script is provided to choose a Port and launch the Web Application
   - It is up to you to install the Web Application as a service.  
     See [Xojo Documentation: Deployment Overview](https://documentation.xojo.com/topics/application_deployment/web/deployment_overview.html)

2. Docker Images provided by jo-tools can be found here:  
   [Docker Hub: jotools/cubesql-webadmin](https://hub.docker.com/r/jotools/cubesql-webadmin)

3. Docker Compose setups provided by jo-tools can be found here:  
   [GitHub: jo-tools/docker](https://github.com/jo-tools/docker)
   - These setups contain both cubeSQL Server and cubeSQL Web Admin

## Configuration

cubeSQL Web Admin supports the following launch arguments and corresponding environment variables.

*Example:*  
*Launch cubeSQLWebAdmin on Port 8080 and prefill login data to connect to a cubeSQL Server running on localhost Port 4440:*  
 `/path/to/launch/cubeSQLWebAdmin --Port=8080 --CubeSQLHostname=localhost --CubeSQLPort=4440 --CubeSQLUsername=admin --CubeSQLPassword=admin`

### Web Application
- `--Port` | `CUBESQL_WEBADMIN_PORT`

### Default New Connection

- `--CubeSQLHostname` | `CUBESQL_HOSTNAME`
- `--CubeSQLPort` | `CUBESQL_PORT`
- `--CubeSQLEncryption` | `CUBESQL_ENCRYPTION` with values: `NONE`, `AES128`, `AES128`, `SSL`  
  For Encryption type `SSL`:
  - `--CubeSQLSSLCertificate` | `CUBESQL_SSL_CERTIFICATE`  
    *with value:* `/path/to/file`
  - `--CubeSQLSSLCertificatePassword` | `CUBESQL_SSL_CERTIFICATEPASSWORD`  
    *with value:* plain text | `/path/to/file.txt` | `` `/output/of/a/shell/cmd` ``
  - `--CubeSQLSSLRootCertificate` | `CUBESQL_SSL_ROOTCERTIFICATE`  
    *with value:* `/path/to/file`
  - `--CubeSQLSSLCipherList` | `CUBESQL_SSL_CIPHERLIST`  
    *with value:* plain text | `/path/to/file.txt`
- `--CubeSQLUsername` | `CUBESQL_USERNAME`  
  Only if Username is prefilled:
  - `--CubeSQLPassword` | `CUBESQL_PASSWORD`  
    *with value:* plain text | `/path/to/file.txt` | `` `/output/of/a/shell/cmd` ``

### Connection Choice

To offer a list of connection choices they can be specified in a JSON file which contains an array of [`ConnectionItems`](./webapp/ConnectionItem.xojo_code).

*Example:* [`connection-choice.json`](./resources/connection-choice.json)

- `--CubeSQLConnectionChoice` | `CUBESQL_CONNECTIONCHOICE`  
  *with value:* `/path/to/connection-choice.json`


## About
cubeSQL Web Admin has been written by Jürg Otter, who is a long term user of Xojo and working for [CM Informatik AG](https://cmiag.ch/). Their Application [CMI LehrerOffice](https://cmi-bildung.ch/) is a Xojo Design Award Winner 2018. In his leisure time Jürg provides some [bits and pieces for Xojo Developers](https://www.jo-tools.ch/).
