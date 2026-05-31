# I created the remote repository on Codeberg with the name:
# UNIX-02-SIN-A-Mar-Jul-2026

# I checked the current Git remotes.
git remote -v

# I removed the previous incorrect Codeberg remote.
git remote remove codeberg

# I added the correct Codeberg repository URL.
git remote add codeberg https://codeberg.org/paulagbb/UNIX-02-SIN-A-Mar-Jul-2026.git

# I verified that the Codeberg remote was added correctly.
git remote -v

# I tried to push the branch to Codeberg.
git push -u codeberg linux_cisco_2

# I pulled the Codeberg branch because the remote repository already had an initial README commit.
git pull codeberg linux_cisco_2 --allow-unrelated-histories --no-rebase

# I checked the repository status after resolving the README conflict.
git status

# I pushed the local branch to Codeberg successfully.
git push -u codeberg linux_cisco_2

# Module 12
# Creating a CSV file for the move command example.
touch people.csv

# Creating the Work directory.
mkdir Work

# Moving the CSV file to the Work directory.
mv people.csv Work

# Verifying the moved file.
ls Work

# Creating text files for the multiple file move example.
touch numbers.txt letters.txt alpha.txt

# Creating the School directory.
mkdir School

# Moving multiple files to the School directory.
mv numbers.txt letters.txt alpha.txt School

# Verifying the moved files.
ls School
