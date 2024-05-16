#!/usr/bin/env bash

#!/bin/bash

# function to print colored messages
print_colored() {
  local color_code=$1
  local message=$2
  if [[ $SHELL == *"zsh"* ]]; then
    echo -e "\033[${color_code}m${message}\033[0m"
  else
    echo "${message}"
  fi
}

# function to print section headers
print_header() {
  print_colored "34" "========================================="
  print_colored "34" "✨ $1 ✨"
  print_colored "34" "========================================="
}

print_colored "36" "🌟 welcome to the gcp org setup script 🌟"
print_colored "36" "coded with ❤️ by christopher trauco 🌈🦄"
print_colored "36" "handcrafted in the historic old fourth ward neighborhood of atlanta, georgia 🏖️📍"
print_colored "36" "linkedin: https://www.linkedin.com/in/christophertrauco/ 👨‍💻"
print_colored "36" "github: https://github.com/iTrauco"
print_colored "36" "twitter: https://twitter.com/iTrauco 🐦"

# prompt user for github username and email
read -p "enter your github username (leave blank for 'iTrauco'): " github_user
read -p "enter your email (leave blank for 'hello@trau.co'): " user_email

# use default values if input is empty
github_user=${github_user:-iTrauco}
user_email=${user_email:-hello@trau.co}

# create main project directory
mkdir gcp-org-setup

# navigate into project directory
cd gcp-org-setup

print_header "🚧 creating project files and directories 🚧"

# create main python file
touch cli_script.py
print_colored "32" "✅ created cli_script.py"

# create tests directory and test files
mkdir tests
touch tests/test_cli.py
touch tests/test_setup.py
print_colored "32" "✅ created tests directory and test files"

# create scripts directory
mkdir scripts
print_colored "32" "✅ created scripts directory"

# create requirements.txt file
touch requirements.txt
print_colored "32" "✅ created requirements.txt"

# create the readme.md file and add the purpose of the script
cat <<EOL > README.md

#  GCP Org Setup

![GitHub last commit](https://img.shields.io/github/last-commit/$github_user/gcp-org-setup)
![GitHub issues](https://img.shields.io/github/issues/$github_user/gcp-org-setup)
![GitHub forks](https://img.shields.io/github/forks/$github_user/gcp-org-setup)
![GitHub stars](https://img.shields.io/github/stars/$github_user/gcp-org-setup)
![GitHub license](https://img.shields.io/github/license/$github_user/gcp-org-setup)

This project is a CLI tool for managing GCP organization resources, including projects and users. It also allows for setup of required packages on macOS and Debian-based systems.

## Purpose

- Create, read, update, and delete client admin projects and users.
- Manage IAM permissions and Terraform state.
- Set up the development environment with required tools and packages.

## Setup

1. Run the setup script to create the directory structure and necessary files.
2. Use 'pyenv' to create a virtual environment.
3. Use 'pydie' to deactivate the virtual environment.

---

### Developed by Christopher Trauco

Handcoded in the historic Old Fourth Ward neighborhood of Atlanta, Georgia 🍑📍

**Data Engineer at [Botcopy 🤖](https://www.botcopy.com) - The UI of AI** and **[OGX Consulting 🧑🏻‍💻🧑🏼‍💻🧑🏽‍💻🧑🏾‍💻🧑🏿‍💻](https://www.weareogx.com)**

- LinkedIn: [Christopher Trauco](https://www.linkedin.com/in/christophertrauco/) 👨‍💻
- GitHub: [$github_user](https://github.com/$github_user)
- Twitter: [iTrauco](https://twitter.com/iTrauco) 🐦
- Email: [hello@trau.co](mailto:hello@trau.co) 📧

##### [NASA](https://www.nasa.gov) ❤️🤓🪐🚀🌌

##### "Extraordinary claims require extraordinary evidence." - [Carl Sagan](https://saganinstitute.com)


EOL
print_colored "32" "✅ created readme.md with project description, badges, professional status, geeky passion for space, and carl sagan quote"

# create .gitignore file
cat <<EOL > .gitignore
# byte-compiled / optimized / dll files
__pycache__/
*.py[cod]
*$py.class

# c extensions
*.so

# distribution / packaging
.python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.egg-info/
.installed.cfg
*.egg
manifest

# installer logs
pip-log.txt
pip-delete-this-directory.txt

# unit test / coverage reports
htmlcov/
.tox/
.nox/
.coverage
.coverage.*
.cache
nosetests.xml
coverage.xml
*.cover
.hypothesis/
.pytest_cache/
cover/

# jupyter notebook
.ipynb_checkpoints

# pyenv
.python-version
venv/
env/
.venv/

# editor directories and files
.vscode/
.idea/
*.sublime-project
*.sublime-workspace

# macos
.ds_store

# terraform
*.tfstate
*.tfstate.*
.terraform/
crash.log
override.tf
override.tf.json
terraform.tfvars
terraform.tfvars.json
*.tfvars
EOL
print_colored "32" "✅ created .gitignore"

# create setup.py file
touch setup.py
print_colored "32" "✅ created setup.py"

print_header "🐍 setting up python virtual environment 🐍"

# create a python virtual environment using pyenv
python3 -m venv venv
print_colored "32" "✅ created python virtual environment"

# activate the virtual environment
source venv/bin/activate
print_colored "32" "✅ activated python virtual environment"

# create aliases for pyenv, pydie, and terraform commands
alias pyenv="python3 -m venv venv"
alias pydie="deactivate"
alias tfa="terraform apply"
alias tfi="terraform init"
alias tfp="terraform plan"

print_colored "32" "🛠️ aliases created: pyenv, pydie, tfa, tfi, tfp"

print_header "🗂️ initializing git repository 🗂️"

# initialize a new empty git repo
git init
print_colored "32" "✅ initialized git repo"

# print instructions to use the aliases
print_colored "32" "🛠️ use 'pyenv' to create a virtual environment. 🐍"
print_colored "32" "💀 use 'pydie' to deactivate the virtual environment."
print_colored "32" "🔭 use 'tfa' to run 'terraform apply'."
print_colored "32" "🚀 use 'tfi' to run 'terraform init'."
print_colored "32" "🛰️ use 'tfp' to run 'terraform plan'."
print_colored "32" "🎉 git repo has been initialized."

# ask the user if they want to create a github setup script
read -p "do you want to create and run a github setup script? (y/n): " create_github_script

if [ "$create_github_script" == "y" ]; then
  print_header "📦 creating and running github setup script 📦"
  cat <<EOL > scripts/github_setup.sh
#!/bin/bash

# replace the following variables with your github repo info
github_user="$github_user"
repo_name="gcp-org-setup"
private="false" # set to "true" for private repo

# create new repo on github
curl -u \$github_user https://api.github.com/user/repos -d "{\"name\":\"\$repo_name\",\"private\":\$private}"

# add remote origin and push initial commit
git remote add origin https://github.com/\$github_user/\$repo_name.git
git add .
git commit -m "initial commit"
git push -u origin master
EOL

  # make the script executable
  chmod +x scripts/github_setup.sh
  print_colored "32" "✅ created github setup script"

  # run the github setup script
  scripts/github_setup.sh
  print_colored "32" "✅ ran github setup script"
fi

print_header "✨ setup complete ✨"

