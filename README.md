# Dotfiles


### To download:
~~~
mkdir -p ~/github
mv ~/github
git clone https://github.com/Envq/dotfiles.git
~~~

---
### To backup Cinnamon settings:
~~~
dconf dump /org/cinnamon/ > backup_cinnamon_settings
~~~

---
### To Restore Cinnamon settings:
~~~
dconf load /org/cinnamon/ < backup_cinnamon_settings
~~~

---
### To Start:
~~~
./start-config.sh
~~~