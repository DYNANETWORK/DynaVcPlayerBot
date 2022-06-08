echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning master branch...."
  git clone https://github.com/DYNANETWORK/DynavcPlayerBot /DynavcPlayerBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/DYNANETWORK/DynavcPlayerBot -b $BRANCH /DynavcPlayerBot
fi
cd /VCPlayerBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
