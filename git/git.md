Remote Repository
      (origin)
        │
        │ git push
        │ git pull
        │ git fetch
        ▼
   Local Repository
        │
        │ git commit
        │ git push
        │ git pull
        │ git fetch
        │ git merge
        ▼
    Staging Area
        │
        │ git add
        │ git reset
        ▼
   Working Directory
        │
        │ git add
        │ git status
        ▼



Repository Basics:
Cloning a repository: git clone <repository_url>
Initializing a new repository: git init

Working with Branches:
Creating a new branch: git branch <branch_name>
Switching to a branch: git checkout <branch_name>
Creating and switching to a new branch: git checkout -b <new_branch_name>
Listing branches: git branch

Committing Changes:
Staging changes: git add <file_name> or git add .
Committing changes: git commit -m "Commit message"

Pulling and Pushing:
Pulling changes from the remote repository: git pull origin <branch_name>
Pushing changes to the remote repository: git push origin <branch_name>

Merging Changes:
Merging a branch into the current branch: git merge <branch_name>

Working with Remotes:
Adding a remote repository: git remote add <remote_name> <repository_url>
Listing remote repositories: git remote -v

Handling Conflicts:
Checking for conflicts: git diff
Resolving conflicts and continuing the merge: git add <file_name> and git merge --continue

GitHub Actions:
Workflow syntax checking: git pull origin <branch_name> and git push origin <branch_name>

Miscellaneous:
Checking Git status: git status
Viewing commit history: git log
Ignoring files (adding to .gitignore): echo "<file_name>" >> .gitignore



