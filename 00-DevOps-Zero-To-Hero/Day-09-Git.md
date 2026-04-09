# ■ Day 09 — Git & GitHub Basics

## ■ Date

[D9-04-2026]

---

## ■ Video Covered

DevOps Zero To Hero — Day 09  
Git and GitHub Basics

---

## ■ Topics Learned

- What is Version Control System
- Why Version Control is required
- Centralized Version Control System
- Distributed Version Control System
- Git vs GitHub
- Git basic commands
- Local vs Remote Repository
- Creating GitHub Repository

---

## ■ What is Version Control System

Version Control System helps in:

1. Sharing Code  
2. Versioning Code  

Version control helps developers:

- Track changes
- Collaborate with team
- Restore previous versions
- Manage project efficiently

---

## ■ Types of Version Control System

### Centralized Version Control System

Examples:

- CVS  
- SVN  

Architecture:

- Single Central Server
- Multiple Developers connected to one server

Problems:

- If server goes down → Developers cannot communicate
- No offline work
- Single point of failure

Example:

Dev A → Central Server ← Dev B

If central server goes down:

Dev A ❌ Dev B cannot communicate

---

## ■ Distributed Version Control System

Example:

- Git

Architecture:

- Multiple copies of code
- Every developer has full copy

Advantages:

- No single point of failure
- Developers can work offline
- Easy collaboration
- Full history available

Example:

Dev A ↔ Dev B ↔ Dev C

Each developer has complete code copy

---

## ■ Fork Concept

In Distributed Version Control:

- We create multiple copies
- Each developer works independently

This is called:

Fork

Fork means:

Creating a complete copy of original source code

Benefits:

- Independent development
- Safe collaboration
- No impact on original code

---

## ■ Git vs GitHub

### Git

- Open source
- Distributed Version Control System
- Installed locally
- Used for versioning

Workflow:

Download → Install Git → Use locally

Developers:

Dev1  
Dev2  
Dev3  

All can push code using Git

---

### GitHub

GitHub is:

- Cloud platform
- Remote repository
- Code hosting platform

Examples:

- GitHub
- GitLab
- Bitbucket

GitHub provides:

- Sharing code
- Collaboration
- Issue tracking
- Code review
- Project management
- Visibility

---

## ■ Git Commands Learned

Initialize repository

```
git init
```

Add files

```
git add .
```

Commit changes

```
git commit -m "message"
```

Push changes

```
git push
```

Check difference

```
git diff
```

Check logs

```
git log
```

Reset to previous version

```
git reset --hard <commit-id>
```

---

## ■ How Versioning Works in Git

Git maintains:

- Commit history
- Changes tracking
- Rollback capability

Example:

Commit 1  
Commit 2  
Commit 3  

If issue occurs:

Rollback to commit 1

Using:

```
git reset --hard <commit-id>
```

---

## ■ Local Repository

All Git commands:

```
git init
git add
git commit
git diff
git log
git reset
```

These work in:

Local Machine

Code saved locally

---

## ■ Remote Repository

To share code:

We use GitHub

Steps:

1. Create GitHub Account
2. Create Repository
3. Push Code to GitHub

Now code is available:

- Online
- Team collaboration
- Remote backup

---

## ■ Git Workflow

Developer writes code

↓

git init

↓

git add

↓

git commit

↓

git push

↓

GitHub Repository

---

## ■ Use Case

Multiple Developers working on same project

Dev A modifies code  
Dev B modifies code  

Git manages:

- Versioning
- Collaboration
- Conflict handling

---

## ■ What I Learned

- Git is Distributed Version Control System
- GitHub is remote repository
- Centralized vs Distributed systems
- Fork concept
- Git basic commands
- Local vs Remote repository
- Versioning using Git

---

## ■ Summary

Git:

- Version Control
- Local
- Distributed

GitHub:

- Remote repository
- Collaboration
- Code hosting

---

## ■ Day 09 Completed

Git and GitHub Basics  
Version Control System  
Distributed Architecture  
Git Commands Basics

Day 09 Learning Completed
