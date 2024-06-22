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
- 𝐠𝐢𝐭 𝐚𝐝𝐝: Stages a file or directory for commit.
- 𝐠𝐢𝐭 𝐜𝐨𝐦𝐦𝐢𝐭: Commits staged changes to the local repository.
- 𝐠𝐢𝐭 𝐥𝐨𝐠: Shows a history of all commits made to the local repository.
- 𝐠𝐢𝐭 𝐜𝐡𝐞𝐜𝐤𝐨𝐮𝐭: Switches to a different branch or commit.
- 𝐠𝐢𝐭 𝐛𝐫𝐚𝐧𝐜𝐡: Creates, lists, and deletes branches.
- 𝐠𝐢𝐭 𝐟𝐞𝐭𝐜𝐡: Downloads all changes from the remote repository.
- 𝐠𝐢𝐭 𝐩𝐮𝐥𝐥: Fetches changes from the remote repository and merges them into the local branch.
- 𝐠𝐢𝐭 𝐩𝐮𝐬𝐡: Uploads committed changes to the remote repository.
- 𝐠𝐢𝐭 𝐦𝐞𝐫𝐠𝐞: Merges two branches together.
- 𝐠𝐢𝐭 𝐫𝐞𝐛𝐚𝐬𝐞: Replays commits from one branch onto another.
- 𝐠𝐢𝐭 𝐫𝐞𝐯𝐞𝐫𝐭: Reverses the changes made in a commit.


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



