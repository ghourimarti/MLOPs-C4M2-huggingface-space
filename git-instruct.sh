✅ Step 1: Initialize Git in Your Project Folder
# If you haven’t already initialized Git:

cd MLOPs-C4M2-huggingface-model
git init





✅ Step 2: Create a .gitignore File
# Create a .gitignore file to avoid pushing unnecessary files:
touch .gitignore
Add common entries like:

# Python
__pycache__/
*.py[cod]
*.egg-info/

# Environments
.env
.venv/
venv/
*.env

# Logs
*.log

# Jupyter
.ipynb_checkpoints/

# MLflow Artifacts
mlruns/
*.db

# Hugging Face cache
git remote add origin https://github.com/your-username/MLOPs-C4M2-huggingface-model.git





✅ Step 3: Add Files to Git
# Add all files to the staging area:
git pull origin main --allow-unrelated-histories






✅ Step 4: Commit Changes
# Commit the changes:
git add .
git commit -m "Merge remote main with local main"
git push -u origin main
