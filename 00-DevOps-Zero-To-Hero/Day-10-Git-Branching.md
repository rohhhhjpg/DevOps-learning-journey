# ■ Day 10 — Git Branching Strategy

## ■ Date

[09-04-2026]

---

## ■ Video Covered

DevOps Zero To Hero — Day 10  
Git Branching Strategy

---

## ■ Topics Learned

- What is Git Branching
- Why Branching Strategy is important
- Feature Branch
- Release Branch
- Hotfix Branch
- Master/Main Branch
- Real world branching strategy
- How organizations deliver frequent releases

---

## ■ Why Branching Strategy is Important

Customers want:

- Frequent releases
- New features
- Bug fixes
- Stable application

To manage all these efficiently, organizations follow **Branching Strategy**

Branching helps in:

- Working on multiple features
- Safe development
- Testing before release
- Faster delivery

---

## ■ What is Branch

Branch means:

Separation of code

Example:

Calculator Project

Version 1:

- Add
- Sub
- Multiply
- Divide

Now Version 2:

- Advanced features

Instead of modifying directly in main branch:

Create new branch

Example:

```
v2-branch
```

Develop new features in:

```
v2-branch
```

Test code

Merge to:

```
main/master branch
```

Delete branch

---

## ■ Real World Example — Uber

Uber initially has:

Uber → Cab Feature

Now Uber wants:

Uber → Bike Feature

Instead of modifying main branch:

Create branch:

```
feature-bikes
```

Develop feature

Test code

Merge into:

```
main/master branch
```

Delete feature branch

---

## ■ Multiple Feature Branch Example

Uber Features:

- Cab
- Bike
- Intercity

Workflow:

Create:

```
feature-bikes
```

Merge to main

Delete branch

Create:

```
feature-intercity
```

Merge to main

Delete branch

---

## ■ Types of Branches

Organizations use multiple branches:

1. Master Branch
2. Feature Branch
3. Release Branch
4. Hotfix Branch

---

## ■ Master Branch

Master branch:

- Production ready code
- Always stable
- Always updated

Main branch should:

- Contain latest working code
- Be production ready

---

## ■ Feature Branch

Feature branch used for:

- New feature development
- Safe development
- Testing

Example:

```
feature-bikes
feature-intercity
feature-payment
```

Workflow:

Create feature branch

Develop feature

Test feature

Merge to master branch

Delete feature branch

---

## ■ Release Branch

Release branch used for:

Delivering application to customer

Example:

```
release_v1
release_v2
release_v3
```

Workflow:

Master branch → Create release branch

Testing done in:

```
release branch
```

After testing:

Release to customers

---

## ■ Hotfix Branch

Hotfix branch used for:

- Emergency fixes
- Critical bug fixes

Example:

Customer reports bug

Create:

```
hotfix branch
```

Fix bug

Merge to:

- Master branch
- Release branch

Deliver to customer

---

## ■ Example Workflow

Uber Application

Main branch:

```
Uber - Cab
```

Create feature branch:

```
feature-bikes
```

Develop bike feature

Meanwhile main branch continues development

After development:

Merge feature branch to main

Delete feature branch

---

Next Feature:

```
feature-intercity
```

Develop

Merge

Delete branch

---

Create Release Branch

```
release_v3
```

Testing

Release to customer

---

Customer Reports Bug

Create:

```
hotfix branch
```

Fix issue

Merge to:

- Master branch
- Release branch

Deliver hotfix

---

## ■ Branching Flow

Master Branch

↓

Feature Branch

↓

Merge to Master

↓

Create Release Branch

↓

Release to Customer

↓

Hotfix Branch

↓

Merge to Master and Release

---

## ■ Question

Which branch is used to release application to customer?

Answer:

Release Branch

---

## ■ Use Case

Organizations:

- Kubernetes
- Uber
- Amazon
- Netflix

Follow branching strategy to:

- Deliver frequent releases
- Maintain stable code
- Fix bugs quickly

---

## ■ What I Learned

- Git branching strategy
- Feature branch usage
- Release branch usage
- Hotfix branch usage
- Master branch importance
- Real world branching strategy

---

## ■ Summary

Branching helps in:

- Parallel development
- Safe deployment
- Faster releases
- Better collaboration

Branches:

- Master Branch
- Feature Branch
- Release Branch
- Hotfix Branch

---

## ■ Day 10 Completed

Git Branching Strategy  
Feature Branch  
Release Branch  
Hotfix Branch  
Master Branch  

Day 10 Learning Completed
