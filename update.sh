rm *asc.ots
ots stamp policy*
git add -A
git commit -a
git push
echo "Everything timestamped, committed and pushed!"
gpg --verify policy.md.master.asc
gpg --verify policy.md.regular.asc
