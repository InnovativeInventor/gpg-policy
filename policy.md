# GPG Key Policy
This is a comprehensive document regarding how I treat my keys and the precautions that I take.

## Regular key
The regular key is intended to be used for day to day use and could be compromised. While I try to reduce that possibility, cloning and testing out code daily will greatly reduce my potential attack surface area. To counteract this increased danger, the regular key and my developer enviroment will be switched out periodically (I'm aiming for every year). The OS that contains my developer enviroment (either bare metal or a qubes vm) will be destroyed and only necessary code will be transitioned to a fresh developer enviroment.

## Master key
In addition to a regular key, I have a master key that will sign each regular key. The master key will be produced in the GPG vm and they private key will never leave. Therefore, any signing will have to take place within the GPG vm, meaning anything that the master key signs will have to be produced within the GPG vm. The master key will only sign documents like this (see master documents) and other GPG keys generated within the GPG vm.

The current master key fingerprint is: `9668 99E2 B92F 9DC6 FC2C  F99F C9F9 3C8D 6D63 5D2D` Only trust master documents signed by that key.

## One direction
The keys will be generated in a specially made qubes gpg vm where the data will only travel in one direction. Essentially, no data or code will ever enter the vm, not even for updates. In addition, even split-gpg will not be used because it will violate the one direction rule.

## Master Documents
Master documents are documents signed by the master key and describe my key policies. This document is an example of a master document. Because master documents must follow the one direction rule, they are written using vim, signed, copied and pasted (one way using Qubes), and uploaded to my GitHub account. Master documents will be signed by both my regular key and my master key using the format `file.regular.asc` and `file.master.asc`.

## Keybase
Because Keybase requires both the private and public key, only my regular keys will be uploaded to Keybase. If this does change, I plan to copy and paste the public part of my master key and import it into Keybase.

## Lost keys
If I ever lose my regular key, I will simply revoke it (if possible) and generate a new signed key from my master key. If my master key is ever lost, I will create a new key and sign + release the 10000 character string that produced this SHA512 hash:

```
94246dde79a3bd30e5b12a9ac33ae7559f71c1c34beaf3bc72f2861c463867c3b5a82d5ffa09afd257e3f523cdf1fa672bf6a8f8306e1008ee3d0b21fdedcdb2
```

That hash was created by running the following commands:
```
openssl rand -base64 500 | tr -d '\n' > hash.txt
openssl dgst -SHA512 hash.txt
```

You will be able to tell that I was the first one to do so because it will be timestamped using the opentimestamp protocol. I plan to withhold the file until it has entered the blockchain through opentimestamps servers, then release the file to the public. The proof will be that I will be the first person to release that secret 10000 character string. If that doesn't work, I'll post on all my accounts connected to Keybase, although you should be suspicious if something like that happens.
