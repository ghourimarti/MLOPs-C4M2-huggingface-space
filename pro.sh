
py -m venv .gradio
source .gradio/Scripts/activate

# Install the required packages
pip install huggingface_hub

# To log in to your Hugging Face account, you can use the following command:
huggingface-cli login

# To log in to your Hugging Face account, you can use the following command:
enter token
huggingface-cli whoami




# To create a new model repository on Hugging Face Hub, you can use the following command:
https://huggingface.co/welcome




# Create a new model repository
# huggingface-cli repo create <repo_name> --type <repo_type>
# Example: Create a new model repository named "hug1" of type "model"
git lfs install
# Create a new model repository named "hug1" of type "model"
huggingface-cli repo create hug1 --type model

# Your repo now lives at:
#   https://huggingface.co/ghourimartin/hug1

# You can clone it locally with the command below, and commit/push as usual.     

#   git clone https://huggingface.co/ghourimartin/hug1


mkdir repo
cd repo
git clone https://huggingface.co/ghourimartin/hug1
cd hug1
ls
ls -alh