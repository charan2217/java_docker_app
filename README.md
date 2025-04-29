# 🚀 CI/CD Java App with Jenkins, Maven, and Docker

This project demonstrates a simple **Java application** built using **Maven**, containerized with **Docker**, and deployed through a **Jenkins CI/CD pipeline**. It uses GitHub for version control and Docker Hub for image publishing.

---

## 📁 Project Structure


---

## 💡 What It Does

- Builds a Java `.jar` file using Maven
- Runs unit tests (placeholder)
- Builds a Docker image from the `.jar`
- Pushes the Docker image to Docker Hub
- Deploys the app in a container via shell script

---

## 🛠️ Tools Used

| Tool         | Purpose                                 |
|--------------|------------------------------------------|
| Java 11      | Programming language                    |
| Maven        | Project build system                    |
| Git & GitHub | Version control and source repository   |
| Jenkins      | CI/CD automation                        |
| Docker       | Containerization                        |
| Docker Hub   | Remote image storage                    |

---

## 🔁 Jenkins CI/CD Pipeline

The pipeline defined in the `Jenkinsfile` includes:

1. **Checkout** – Pull code from GitHub
2. **Build** – Compile code and generate `.jar`
3. **Test** – Run Maven tests
4. **Docker Build & Push** – Create image and push to Docker Hub
5. **Deploy to Staging** – Run the app inside a container

---

## ⚙️ Setup Instructions

### ✅ Clone the Repo

```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
mvn clean package
docker build -t your_dockerhub_username/myapp:latest .
docker run -p 8080:8080 your_dockerhub_username/myapp:latest
Hello from CI/CD Java App!

---

✅ You're now ready to push this to GitHub along with your code.  
Let me know if you want help pushing your local project to GitHub with terminal commands!
