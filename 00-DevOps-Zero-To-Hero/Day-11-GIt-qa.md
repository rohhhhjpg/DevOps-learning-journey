# ■ Day 11 — Git Deep Dive (Git Workflow, Clone, Fork, Branching, Merge vs Rebase)

## ■ Date

[DD-MM-2026]

---

## ■ Video Covered

DevOps Zero To Hero — Day 11  
Git Deep Dive & Git Workflow

---

## ■ Topics Learned

- Git Initialization
- Git Lifecycle
- Git Clone vs Fork
- Git Remote
- Git Branching Commands
- Git Merge vs Rebase
- Git Cherry Pick
- SSH Authentication
- Merge Conflicts
- Git Workflow in Organization

---

## ■ Creating Git Repository

Created a directory:

```
git-demo
```

Inside directory created:

```
calculator.sh
```

Added addition functionality in calculator.

---

## ■ Initialize Git Repository

Command:

```
git init
```

Interview Question:

How to initialize a Git repository?

Answer:

```
git init
```

---

## ■ What Happens When git init is Used

- A hidden folder called `.git` is created
- Git starts tracking files
- Stores commits and logs

To verify:

```
ls -a
```

or

```
ls -lrta
```

You can see:

```
.git
```

---

## ■ Git Status

To check file tracking:

```
git status
```

Shows:

- Untracked files
- Modified files
- Staged files

---

## ■ Adding Files

To track file:

```
git add calculator.sh
```

or

```
git add .
```

Git starts tracking changes.

---

## ■ Git Diff

To see changes:

```
git diff
```

Shows:

- Modified code
- Changes made

---

## ■ Git Commit

After changes:

```
git commit -m "This is my first commit"
```

Commit saves version.

---

## ■ Git Log

To see commit history:

```
git log
```

Better view:

```
git log --oneline
```

---

## ■ Git Push

To push code:

```
git push
```

Purpose:

Push local code to remote repository.

---

## ■ Git Workflow

Typical Git workflow:

```
git add .
git commit -m "message"
git push
```

Interview Question:

What Git workflow do you use?

Answer:

```
git add → git commit → git push
```

---

## ■ Git Clone

Git clone used to:

- Download repository
- Copy code
- Start working

Command:

```
git clone <repo-url>
```

Example:

```
git clone https://github.com/user/repo.git
```

---

## ■ Git Clone vs Git Fork

### Git Clone

- Download repository
- Work locally
- No copy created in GitHub account

Example:

```
git clone repo-url
```

---

### Git Fork

Fork creates:

- Copy of repository
- Under your GitHub account

You can:

- Work independently
- Push changes
- Create pull request

Fork is used for:

Open source contributions

---

## ■ Git Remote

After cloning:

Check remote:

```
git remote -v
```

Add remote:

```
git remote add origin <repo-url>
```

Push code:

```
git push origin main
```

---

## ■ Git Clone Authentication

Two Methods:

1. HTTPS
2. SSH

---

## ■ HTTPS Authentication

Clone:

```
git clone https://github.com/user/repo.git
```

Requires:

- GitHub username
- GitHub password / token

---

## ■ SSH Authentication

Generate SSH key:

```
ssh-keygen -t rsa
```

Key stored in:

```
/home/ubuntu/.ssh
```

File:

```
id_rsa.pub
```

View key:

```
cat ~/.ssh/id_rsa.pub
```

Copy key.

---

## ■ Add SSH Key to GitHub

Go to:

GitHub → Settings → SSH and GPG Keys

Add:

New SSH key

Paste copied key.

Now clone using SSH:

```
git clone git@github.com:user/repo.git
```

No password required.

---

## ■ Git Branch

List branches:

```
git branch
```

Create branch:

```
git checkout -b division
```

Switch branch:

```
git checkout master
```

---

## ■ Feature Branch Example

Create branch:

```
git checkout -b division
```

Add changes:

```
git add calculator.sh
```

Commit:

```
git commit -m "added division"
```

Check logs:

```
git log
```

---

## ■ Merge Branch

Switch to main:

```
git checkout master
```

Merge:

```
git merge division
```

---

## ■ Git Cherry Pick

Cherry pick specific commit:

```
git cherry-pick <commit-id>
```

Used when:

- Only specific commit needed
- Not entire branch

---

## ■ Git Merge vs Git Rebase

Two ways to merge:

- Git Merge
- Git Rebase

---

## ■ Git Merge Example

Create branch:

```
git checkout -b mergeExample
```

Make changes

Commit

Switch main:

```
git checkout master
```

Merge:

```
git merge mergeExample
```

---

## ■ Git Rebase Example

Create branch:

```
git checkout -b rebaseExample
```

Make changes

Commit

Switch main

Rebase:

```
git rebase rebaseExample
```

---

## ■ Merge Conflict

When multiple developers change same file:

Merge conflict occurs.

Git shows:

```
<<<<<<< HEAD
=======
>>>>>>> branch
```

Fix manually:

- Edit file
- Remove conflict markers
- Save

Then:

```
git add .
git commit
```

or

```
git rebase --continue
```

---

## ■ Git Merge vs Git Rebase Difference

Git Merge:

- Non linear history
- Multiple commit paths

Git Rebase:

- Linear history
- Clean commit structure

Merge:

```
main → feature → merge
```

Rebase:

```
main → feature → linear commits
```

---

## ■ Git Log Simplified

Use:

```
git log --oneline
```

Shows simple commit history.

---

## ■ Git Lifecycle

Git Lifecycle:

Working Directory

↓

Staging Area

↓

Repository

Commands:

```
git add
git commit
git push
```

---

## ■ Interview Questions Covered

1. How to create Git repository  
2. Git clone vs Git fork  
3. Git lifecycle  
4. Git merge vs rebase  

---

## ■ Commands Learned

```
git init
git status
git add
git commit
git push
git clone
git remote
git remote -v
git branch
git checkout
git checkout -b
git merge
git rebase
git cherry-pick
git log
git log --oneline
ssh-keygen
```

---

## ■ What I Learned

- Git repository creation
- Git lifecycle
- Git clone vs fork
- Git branching
- Git merge vs rebase
- Merge conflicts
- SSH authentication

---

## ■ Day 11 Completed

Git Deep Dive  
Git Workflow  
Git Branching  
Git Merge vs Rebase  

Day 11 Learning Completed
