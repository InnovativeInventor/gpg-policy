# gpg-policy
This contains my GPG key policy and how I deal with certain events. Feel free to clone this repository and verify my signatures.

My current regular key fingerprint is: `33E8 62AE 8952 6EF2 0AF6  E0B9 6642 BA0E D79F D349`

My current master key fingerprint is: `9668 99E2 B92F 9DC6 FC2C  F99F C9F9 3C8D 6D63 5D2D`

My policy file is located at `policy.md`.

This repo will be updated with:
- `policy.md.master.asc` containing the clear signature of my master key.
- `policy.md.regular.asc` containing the detached signature of my regular key
- `*.ots` containing the opentimestamps proof.

Then, when I feel my policy has reached a publishable stage, I will "release" it through signed Git tags. My Git tags will be signed by my regular key because of the one direction rule.

This README file is intended for policy not important enough to put into `policy.md` and is likely to change from time to time as I decide what is more secure. Nothing in this file will ever contain anything vital to the security of my key policy and this will mostly consist of logistical notes to anyone who wishes to verify my GPG keys.

## TL;DR
Basically I use my master key to sign all my regular keys, which are used in day to day operations. The master key is kept secure in an unnetworked Qubes VM. Read `policy.md` to learn about the details.

## Questions and Contributions
If you like gpg-policy and would like to duplicate it, please be aware that this requires either a few airgapped computers or QubesOS. Feel free to open up an issue if you have any questions or would like to discuss GPG key policies with me. I'll consider pull requests too if they have sufficient reasoning.
