# Git Secret Demo

[git-secret](https://github.com/sobolevn/git-secret) is a tool to persist secret files in a Git repo

https://medium.com/@GeorgiosGoniotakis/how-to-keep-your-repositorys-sensitive-data-secure-using-git-secret-c1ddc28cb985

## GPG

You need to ensure that GPG is installed to generate a GPG key.

To generate a keypair, use `gpg --gen-key`.

## Encrypting Files

Ensure that `git-secret` is installed.

Navigate to your directory and type `git init`.

Once your git repo has been initialized, type `git-secret init`. This will generate a `.gitsecret` file.

NOTE: Do not git ignore this file. Ensure it's checked into your codebase.

To use the default user, you can use `git secret tell -m`.

To specify a user, use can use `git secret tell key.owner@user.com`.

To remove a user, use `git secret killperson their@email.com`.

`git secret whoknows` checks to see if the user was added successfully.

`git secret add PATH` is either the absolute or relative path to the file you'd like to encrypt.

To finally encrypt, use `git secret hide`.

NOTE: You need to add the encrypted files to your `.gitignore`. If not, `git-secret` won't encrypt the files.

## Decrypting Files

`git secret reveal` decrypts the files you specified.

NOTE: For anyone to decrypt, you need to share the private key + passcode key pair with you. Then, import the GPG key.
