# AWS DevOps CI/CD Pipeline Project

## Project Overview
This project demonstrates a full end-to-end AWS CI/CD pipeline built from scratch to automate the build and deployment of a Java web application (WAR file) to an EC2 instance running Apache Tomcat.

The pipeline follows real-world DevOps practices and was rebuilt from a clean AWS environment after resource deletion, proving full reproducibility.

---

## Architecture
GitHub → AWS CodePipeline → AWS CodeBuild → AWS CodeDeploy → EC2 (Apache Tomcat)

- GitHub: Source control
- CodeBuild: Build automation
- CodeDeploy: Application deployment
- CodePipeline: CI/CD orchestration
- EC2: Application runtime
- S3: Artifact storage
- CodeArtifact: Dependency management

---

## Technologies Used
- AWS EC2 (Amazon Linux)
- AWS CodePipeline
- AWS CodeBuild
- AWS CodeDeploy
- AWS CodeArtifact
- AWS CloudFormation
- GitHub
- Apache Tomcat
- Apache Maven
- Java (Amazon Corretto 8)
- Bash scripting

---

## Project Structure
```
├── scripts/
│   ├── install_dependencies.sh
│   ├── start_server.sh
│   └── stop_server.sh
├── src/main/webapp/
│   ├── WEB-INF/
│   └── index.jsp
├── appspec.yml
├── buildspec.yml
├── pom.xml
├── settings.xml
└── README.md
```

---

## CI/CD Pipeline Breakdown

### 1. EC2 Setup
- Launched a new EC2 instance
- Attached IAM instance role
- Installed CodeDeploy agent
- Instance starts with no application code

### 2. Source Control (GitHub)
- Created GitHub repository
- Pushed application source code
- GitHub serves as the single source of truth

### 3. Dependency Management (CodeArtifact)
- Created CodeArtifact domain and repository
- Configured Maven authentication using settings.xml
- Verified dependency retrieval

### 4. Build Automation (CodeBuild)
- Configured buildspec.yml
- Built WAR file using Maven
- Packaged deployment artifacts

### 5. Deployment Automation (CodeDeploy)
- Created CodeDeploy application and deployment group
- Targeted EC2 via instance tags
- Used appspec lifecycle hooks to stop services, deploy WAR, and restart Tomcat

### 6. Infrastructure as Code (CloudFormation)
- Recreated infrastructure from templates
- Verified environment reproducibility

### 7. CI/CD Orchestration (CodePipeline)
- Integrated GitHub, CodeBuild, and CodeDeploy
- Enabled automatic deployment on every commit

---

## Key Outcomes
- Fully automated CI/CD pipeline
- Repeatable deployments from a clean EC2 instance
- Secure dependency and artifact management
- Real-world AWS DevOps workflow

---

## How It Works
1. Code is pushed to GitHub
2. CodePipeline is triggered
3. CodeBuild builds and packages the application
4. CodeDeploy deploys the WAR to EC2
5. Application becomes available via EC2 public IP

---

## Author
Ensizziyo (Ventiyo) Ziraka
