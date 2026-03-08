 Project Overview

This project demonstrates how to **create and run a Jenkins CI/CD server using Docker**.
Jenkins is used for **automation, building, and deploying applications**, while Docker helps run Jenkins in an isolated container environment.

Using Docker makes Jenkins **easy to install, portable, and quick to start** without complex manual setup.


Objectives

* Install Docker on the system
* Pull Jenkins Docker image
* Run Jenkins container
* Access Jenkins dashboard in browser
* Unlock Jenkins and complete initial setup
* Install required plugins
* Create a sample Jenkins job

 Technologies Used

* **Docker**
* **Jenkins**
* **Linux / Ubuntu**
* **GitHub**

Project Architecture

```
Host Machine
      │
      │
   Docker Engine
      │
      │
 Jenkins Container
      │
      │
 Jenkins Web Dashboard


 Step-by-Step Implementation

 1️⃣ Install Docker

Update the system and install Docker.

```bash
sudo apt update
sudo apt install docker.io
```

Start Docker service:

```bash
sudo systemctl start docker
sudo systemctl enable docker
```

Check Docker installation:

```bash
docker --version
```

---

Pull Jenkins Docker Image

Download the official Jenkins image from Docker Hub.

```bash
docker pull jenkins/jenkins:lts
```

Check downloaded images:

```bash
docker images
```

---

Run Jenkins Container

Run Jenkins container and expose port **8080**.

```bash
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins-container jenkins/jenkins:lts
```

Check running containers:

```bash
docker ps
```

---

 Access Jenkins

Open browser and enter:

```
http://localhost:8080
```

or

```
http://<your-server-ip>:8080
```

---

 Get Jenkins Initial Password

Run the following command to get the password.

```bash
docker exec jenkins-container cat /var/jenkins_home/secrets/initialAdminPassword
```

Copy the password and paste it in Jenkins unlock page.

---

Install Suggested Plugins

After unlocking Jenkins:

1. Click **Install Suggested Plugins**
2. Wait for installation
3. Create **Admin Username and Password**

---
jenkin-docker.png
 Create First Jenkins Job

Steps:

1. Click **New Item**
2. Enter job name
3. Select **Freestyle Project**
4. Configure build steps
5. Save and run build

---

Output

* Jenkins successfully running inside Docker container
* Jenkins dashboard accessible in browser
* Sample job executed successfully

---

Advantages of Using Jenkins with Docker

* Easy setup
* Portable environment
* Faster deployment
* Isolated container
* No dependency issues

---

Future Improvements

* Integrate Jenkins with **GitHub**
* Implement **CI/CD pipelines**
* Automate build and deployment
* Use **Docker Compose**

---

 Conclusion

This project shows how Jenkins can be quickly deployed using Docker containers.
Containerization simplifies installation and makes the CI/CD setup more efficient and scalable.
* commands in cleaner format

That will make your **GitHub project look more professional for interviews.**
