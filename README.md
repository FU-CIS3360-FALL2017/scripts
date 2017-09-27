# get-gh-repo.sh

	This script will clone a simgle repository from GitHub and
	  checkout the branch mentioned in the second parameter.
	Please provide 2 parameters in this order:
	1. URL of the repository to be cloned
	2. The name of the branch to be checked out
	
# restore-gh-repo.sh

    This script will add, commit and push all repositories in the
    sibling directory of the one containing this script called *work*.
    Please provide 2 parameters in this order:
    1. The name of the branch to be checked out
    2. A commit message
    
# Usage
## Cloning the scripts repository
1. Find a convenient folder on your local Windows machine, perhaps the *Documents* folders.
1. Create a folder there entitled something like *My3360*: does not matter too much as long as its not entitled *work*.
1. Browse the class organization in GitHub and copy the URL for the repository *scripts*
1. Right click on that folder from the above step and open *BASH Git*.
1. Type the git command *Clone* and paste after it the URL for the *scripts* repository
1. Press the *enter* key and check to see that the reposotory has been cloned to your local machine.
## Clonging your Website Case Study repository from GitHub
1. Browse to the class organization in GitHub and copy the URL for your Website Case Study repository.
1. Right click the [scripts]() folder on your local machine and open *BASH Git*.
1. Type *./get-gh-repo.sh*, paste in the URL for your Website Case Study repository, and type the name of the branch that your have 
created there in which to do development work, probably something like *chapter4*.
1. Press *enter* and check that your Website Case Study repository has been cloned into a folder at the same level as 
your *scripts* folder.
1. Close your open *BASH* dialog by typing *exit* there.
1. You may now work on your case study found in the **work** folder using any tools on your local machine you need.
## Restoring your Website Case Study repository to GitHub
1. Right click the *scripts* folder on your local machine and open *BASH Git*.
1. Type *./restore-gh-repo.sh* followed by the name of the branch to be restored to your case study in GitHub.
1. Press *enter* and check comments from *git* for errors
1. Browse to your case study on GitHub to assure that the changes to your development brach have been recorded there.

