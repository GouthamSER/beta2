if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/GouthamSER/Auto2.git /Auto2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto2
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting Auto2...."
python3 bot.py
