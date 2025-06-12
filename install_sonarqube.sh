#!/bin/bash

# ─────────────────────────────────────────────────────────────
# 🧠 SonarQube Installation Script for Linux (WSL or Ubuntu)
# 📚 This script is written with explanations for learning.
# ─────────────────────────────────────────────────────────────

# 🔐 Exit the script immediately if any command fails.
set -e

# 🎓 Intro with a friendly message
echo -e "\n🚀 Starting SonarQube installation script..."
echo -e "👋 Hello! Let's learn something cool today.\n⏳ Please wait while we get some more details ready... And we'll learn how to insert emojis in our scripts to make it frienly"
sleep 5  # ⏸️ Pause for 5 seconds so learners can read the message

# 🖨️ Print message to show script has started
echo "🚀 Starting SonarQube installation..."

# ───────────── Step 1: Update System ─────────────
# 🧼 Update the list of available packages
sudo apt update

# 📦 Install required software:
# - openjdk-17-jdk → Java (SonarQube needs Java 17+)
# - unzip → To extract SonarQube archive
# - wget → To download files from the internet
# - gnupg2 → For security (not strictly required for basic setup)
sudo apt install -y openjdk-17-jdk unzip wget gnupg2

# ───────────── Step 2: Set Java Environment ─────────────
# ⚙️ JAVA_HOME tells the system where Java is installed
# 👇 These lines temporarily set Java variables for this session
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# ───────────── Step 3: Create SonarQube User ─────────────
# 👤 Add a new system user called 'sonar' (no password, no login)
# 🔐 This improves security (running services as separate users)
sudo useradd -m -d /opt/sonarqube -r -s /bin/bash sonar

# ───────────── Step 4: Download and Unzip SonarQube ─────────────
# 🌐 Move to /opt (directory for optional software)
cd /opt

# 🔽 Download SonarQube from the official site (v10.4.1)
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.4.1.88267.zip

# 📂 Extract the downloaded zip file
sudo unzip sonarqube-10.4.1.88267.zip

# 🚚 Rename the folder to 'sonarqube' for easier access
sudo mv sonarqube-10.4.1.88267 sonarqube

# 👑 Change ownership of the folder to the 'sonar' user
sudo chown -R sonar:sonar sonarqube

# ───────────── Step 5: (Optional) Create systemd service ─────────────
# ⚠️ This section only works on systems with systemd enabled (not WSL by default)
# 💡 You can comment out this block if using WSL without systemd

sudo bash -c 'cat <<EOF > /etc/systemd/system/sonarqube.service
[Unit]
Description=SonarQube service
After=network.target

[Service]
Type=forking
ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start
ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
User=sonar
Group=sonar
Restart=always

[Install]
WantedBy=multi-user.target
EOF'

# 📡 Reload systemd to detect the new service
sudo systemctl daemon-reexec
sudo systemctl daemon-reload

# 📌 Enable and start SonarQube service (comment these if systemd is not available)
sudo systemctl enable sonarqube
sudo systemctl start sonarqube

# 🎉 Done!
echo "✅ SonarQube installation complete! Visit http://localhost:9000 to access it."

# ─────────────────────────────────────────────────────────────
# 📦 BONUS SECTION – HOW TO USE EMOJIS IN BASH SCRIPTS 🧑‍💻
#
# In Bash, you can use emojis by:
# ✅ Copy-pasting them directly into your script (UTF-8 format required)
# ✅ Using `echo -e` to print them properly
# ✅ Make sure your terminal font supports emojis
#
# Example:
# echo -e "🛠️ Installing tools..."
#
# You can copy emojis from sites like:
# 👉 https://emojipedia.org
#
# 👀 Test your terminal support with:
# echo "😀 🧠 🚀 💡 🖥️ 🔧 ✅ ❌"