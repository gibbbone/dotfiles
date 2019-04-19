alias lanciami_nel_tunnel='ssh -f -N notebook_tunnel'
alias ungit='rm -rf .git/'
alias grist='history | grep'
alias lancia_notebook='source activate env_2.7; nohup jupyter notebook --no-browser --port=8887 &'
alias to_my_gcp_instance='gcloud compute ssh --zone="us-west2-b" jupyter@"my-fastai-instance" -- -L 8080:localhost:8080'
alias wrdiary='TODAY=$(date +%Y-%m-%d); micro $TODAY/things.md'
alias diary_init='cd /c/Users/Giovanni/Desktop/everyday; TODAY=$(date +%Y-%m-%d); mkdir $TODAY;  printf "# TODO\n### PHD\n\n### The rest\n\n# DONE\n### PHD\n\n### The rest\n\n" > $TODAY/things.md'
alias tidy_here="stat -c %n,%z,%F * | python tidy_folder.py"
alias open="cmd.exe /C start"
alias xdg-open2="cmd.exe /C start"
# https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'