# AWS DevOps CI/CD Pipeline Project

## Project Overview
This project demonstrates a **full end-to-end AWS CI/CD pipeline** built from scratch to automate the build and deployment of a Java web application (WAR file) to an EC2 instance running Apache Tomcat.

The pipeline was rebuilt from a clean AWS environment, proving full reproducibility and real-world DevOps practices.

---

## Architecture
GitHub → AWS CodePipeline → AWS CodeBuild → AWS CodeDeploy → EC2 (Apache Tomcat)

![Architecture Diagram](screenshots/12_codepipeline_setup.png)

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

## CI/CD Pipeline Walkthrough

### 1️⃣ EC2 Setup
- Launched a new EC2 instance
- Attached IAM instance role
- Installed and verified CodeDeploy agent
- Instance starts with no application code

![EC2 Instance](screenshots/01_ec2_instance_created.png)
![CodeDeploy Agent](screenshots/02_codedeploy_agent_running.png)

---

### 2️⃣ Source Control (GitHub)
- Created GitHub repository
- Pushed application source code
- GitHub acts as the single source of truth

![GitHub Repo](screenshots/03_github_repo.png)
![Git Commit](screenshots/04_git_commit_push.png)

---

### 3️⃣ Dependency Management (CodeArtifact)
- Created CodeArtifact domain and repository
- Configured Maven authentication via settings.xml
- Verified dependency retrieval

![CodeArtifact Repo](screenshots/05_codeartifact_repo.png)
![Maven Settings](screenshots/06_maven_settings.png)

---

### 4️⃣ Build Automation (CodeBuild)
- Configured buildspec.yml
- Built WAR file using Maven
- Packaged deployment artifacts

![CodeBuild Project](screenshots/07_codebuild_project.png)
![CodeBuild Success](screenshots/08_codebuild_success.png)

---

### 5️⃣ Deployment Automation (CodeDeploy)
- Created CodeDeploy application and deployment group
- Targeted EC2 using instance tags
- Used appspec lifecycle hooks to stop services, deploy WAR, and restart Tomcat

![CodeDeploy App](screenshots/09_codedeploy_app.png)
![CodeDeploy Success](screenshots/10_codedeploy_success.png)

---

### 6️⃣ Infrastructure as Code (CloudFormation)
- Recreated infrastructure using CloudFormation
- Verified environment reproducibility

![CloudFormation Stack](screenshots/11_cloudformation_stack.png)

---

### 7️⃣ Full CI/CD Orchestration (CodePipeline)
- Integrated GitHub, CodeBuild, and CodeDeploy
- Enabled automatic deployment on every commit
- Verified full pipeline execution

![CodePipeline Setup](screenshots/12_codepipeline_setup.png)
![Pipeline Success](screenshots/13_codepipeline_success.png)

---

## Key Outcomes
- Fully automated CI/CD pipeline
- Repeatable deployments from a clean EC2 instance
- Secure dependency and artifact management
- Real-world AWS DevOps workflow using AWS native services

---

## How It Works
1. Code is pushed to GitHub
2. CodePipeline is triggered
3. CodeBuild builds and packages the application
4. CodeDeploy deploys the WAR to EC2
5. Application is available via EC2 public IP

---

## Author
**Ensizziyo (Ventiyo) Ziraka**  
Cloud / DevOps / Security-focused IT student
