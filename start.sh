if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Muhammedshamil03/Eva-mariya /Eva-mariya
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Eva-mariya
fi
cd /Eva-mariya
pip3 install -U -r requirements.txt
echo "Starting Eva-mariya...."
python3 bot.py
