# **Common Tools**
- PEP8 Git Commit Hook

This is a pre-commit hook for Git that checks the code to be committed
for Python PEP8 style compliance.  The hook will prevent the commit in
case style violations are detected.

Installation:

1. Install the pep8 program: ```pip install pep8```
2. Save pre-commit as your_project/.git/hooks/pre-commit
3. Mark pre-commit executable: ```chmod +x your_project/.git/hooks/pre-commit```

------------


- Autoenv

You can put the **activate.sh** anywhere if you like. Then put
`source your/path/activate.sh` into .zshrc

