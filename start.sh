if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jegaa1/url-auto-delete-shortener-bot4.git /url-auto-delete-shortener-bot4
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /url-auto-delete-shortener-bot4
fi
cd /url-auto-delete-shortener-bot4
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
