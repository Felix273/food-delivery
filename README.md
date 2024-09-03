# food_delivery

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# food-delivery


A STEP BY STEP PROCEDURE FOR UPLOADING A PROJECT ON GITHUB AND CONFIGURING THE SSH KEY PROBLEM ON WINDOWS

Here's a step-by-step guide to configuring SSH for GitHub on Windows and pushing changes using Git.

### Step 1: **Install Git for Windows**
If you haven't installed Git yet, download and install it from [here](https://git-scm.com/).

During installation, select the option to use **Git from the command line and 3rd-party software**, and use the **OpenSSH** option for SSH.

### Step 2: **Generate an SSH Key**
1. Open **Git Bash** (installed with Git for Windows).
2. Generate a new SSH key:
   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```
   Replace `"your_email@example.com"` with the email associated with your GitHub account.
   
   When prompted to save the key, press **Enter** to accept the default location (usually `C:/Users/your_username/.ssh/id_rsa`).

3. When asked for a passphrase, you can either leave it empty (press Enter) or set a password for extra security.

### Step 3: **Add the SSH Key to the SSH Agent**
1. Start the SSH agent by running the following in **Git Bash**:
   ```bash
   eval "$(ssh-agent -s)"
   ```
   This command starts the SSH agent, which helps manage your keys.

2. Add your SSH key to the agent:
   ```bash
   ssh-add ~/.ssh/id_rsa
   ```

### Step 4: **Add the SSH Key to Your GitHub Account**
1. Copy the public key to your clipboard:
   ```bash
   clip < ~/.ssh/id_rsa.pub
   ```
   This copies the contents of `id_rsa.pub` to your clipboard.

2. Go to [GitHub SSH settings](https://github.com/settings/keys).
3. Click **New SSH key**.
4. Paste your public key in the "Key" field and give it a recognizable title (e.g., "Windows Machine").
5. Click **Add SSH key**.

### Step 5: **Test the SSH Connection**
1. Test if your connection to GitHub is set up correctly by running the following command in **Git Bash**:
   ```bash
   ssh -T git@github.com
   ```
   If successful, you'll see:
   ```
   Hi your_username! You've successfully authenticated, but GitHub does not provide shell access.
   ```

### Step 6: **Configure Git with Your GitHub Information**
Make sure Git knows who you are:
```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```

### Step 7: **Clone or Push a Repository**
- To **clone** a repository using SSH, use:
   ```bash
   git clone git@github.com:your_username/repository_name.git
   ```

- To **push** changes to a remote repository:
   ```bash
   git add .
   git commit -m "Your commit message"
   git push -u origin main
   ```

### Troubleshooting:
- If you encounter the "Permission denied (publickey)" error, ensure:
  - Your SSH key is added to the agent (`ssh-add ~/.ssh/id_rsa`).
  - The correct key is added to GitHub.
