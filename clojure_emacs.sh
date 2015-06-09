sudo apt-get update
sudo apt-get install openjdk-7-jre openjdk-7-jdk emacs24 git -y
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo cp lein /usr/local/bin/lein
sudo chmod a+x /usr/local/bin/lein
set LEIN_ROOT
lein
git clone https://github.com/flyingmachine/emacs-for-clojure.git ~/.emacs.d
rm -fr ~/.emacs.d/.git
echo '{:user {:plugins [[cider/cider-nrepl "0.8.1"]]}}' >> ~/.lein/profiles.clj