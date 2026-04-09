# End-to-End-Medical-Chatbot

# Project Description
This project involves building a reliable, domain-specific AI assistant designed for the healthcare industry. To prevent the hallucinations common in general-purpose Large Language Models (LLMs), the system utilizes a Retrieval-Augmented Generation (RAG) architecture. This ensures the AI's answers are strictly grounded in a verified knowledge base derived from medical PDF documents.

# Key Features and Workflow
## Data Processing: Complex medical texts are processed and converted into vector embeddings.
## Semantic Retrieval: Embeddings are stored in Pinecone, a serverless vector database, to enable ultra-fast semantic retrieval.
## Reasoning Engine: LangChain is used to orchestrate the AI's reasoning logic.
## Backend and UI: The AI logic is wrapped in a Flask backend and includes a user interface.
## DevOps and Deployment: The entire application is containerized using Docker and deployed to AWS (EC2).
## CI/CD Pipeline: Continuous integration and deployment are automated using GitHub Actions.

# Tech Stack
AI Framework: LangChain
Vector Database: Pinecone
Backend: Flask (Python)
Containerization: Docker
CI/CD: GitHub Actions
Cloud Platform: Amazon Web Services (AWS EC2)


# How to Run ?
### Steps:

clone the repository 

```bash
https://github.com/san1309/End-to-End-Medical-Chatbot
```

### Step 01- Create a conda environment after opening the repository

```bash
conda create -n medibot python=3.10 -y
```

```bash
conda activate medibot
```

### Step 02- install the requirements
```bash
pip install -r requirements.txt
```

# End-to-End-Medical-Chatbot

# How to run?
### STEPS:

Clone the repository

```bash
https://github.com/entbappy/End-to-End-Medical-Chatbot
```


### Create a `.env` file in the root directory and add your Pinecone & openai credentials as follows:

```ini
PINECONE_API_KEY = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
OPENAI_API_KEY = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
```


```bash
# run the following command to store embeddings to pinecone
python store_index.py
```

```bash
# Finally run the following command
python app.py
```

Now,
```bash
open up localhost:
```



# AWS-CICD-Deployment-with-Github-Actions

## 1. Login to AWS console.

## 2. Create IAM user for deployment

	#with specific access

	1. EC2 access : It is virtual machine

	2. ECR: Elastic Container registry to save your docker image in aws


	#Description: About the deployment

	1. Build docker image of the source code

	2. Push your docker image to ECR

	3. Launch Your EC2 

	4. Pull Your image from ECR in EC2

	5. Lauch your docker image in EC2

	#Policy:

	1. AmazonEC2ContainerRegistryFullAccess

	2. AmazonEC2FullAccess

	
## 3. Create ECR repo to store/save docker image
    - Save the URI: 038424591632.dkr.ecr.us-east-1.amazonaws.com/medicalchatbot

	
## 4. Create EC2 machine (Ubuntu) 

## 5. Open EC2 and Install docker in EC2 Machine:
	
	
	#optinal

	sudo apt-get update -y

	sudo apt-get upgrade
	
	#required

	curl -fsSL https://get.docker.com -o get-docker.sh

	sudo sh get-docker.sh

	sudo usermod -aG docker ubuntu

	newgrp docker
	
# 6. Configure EC2 as self-hosted runner:
    setting>actions>runner>new self hosted runner> choose os> then run command one by one


# 7. Setup github secrets:

   - AWS_ACCESS_KEY_ID
   - AWS_SECRET_ACCESS_KEY
   - AWS_DEFAULT_REGION
   - ECR_REPO
   - PINECONE_API_KEY
   - OPENAI_API_KEY
