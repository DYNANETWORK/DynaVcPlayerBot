echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning master branch...."
  git clone https://github.com/DYNANETWORK/DynaVcPlayerBot /DynaVcPlayerBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/DYNANETWORK/DynaVcPlayerBot -b $BRANCH /DynaVcPlayerBot
fi
cd /VcPlayerBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
