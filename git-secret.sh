gpg --version # Check GPG installation
git --version # Check Git installation
git-secret --version # Check git-secret installation
gpg --list-keys # Make sure that your GPG key is listed here

#git init # Initialize the repository if you have not done it already
#git secret init # Initialize the repository using git-secret
#git secret tell email@example.com # Add a user
git secret whoknows # Get a list of which users are attached on the repo
#git secret add secret.properties # Add a file on the encryption list - Use -i flag to add to gitignore
#git secret hide # Encrypt files of the list

# To decrypt the file
# Make sure you have the secret key
git secret reveal # Decrypts the file
