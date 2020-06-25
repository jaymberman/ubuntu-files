cd ~/Downloads

mkdir p4merge-install-sandbox

cd p4merge-install-sandbox

wget https://cdist2.perforce.com/perforce/r20.1/bin.linux26x86_64/p4v.tgz

tar zxvf p4v.tgz

sudo cp -r p4v-* /usr/local/p4v

sudo ln -s /usr/local/p4v/bin/p4merge /usr/local/bin/p4merge

rm -rf p4v.tgz
rm -rf p4v-*

git config --global merge.tool p4merge
git config --global diff.tool p4merge
git config --global mergetool.p4merge.path /usr/local/bin/p4merge
git config --global difftool.p4merge.path /usr/local/bin/p4merge
git config --global mergetool.prompt false
git config --global difftool.prompt false
git config --global mergetool.keepBackup false

