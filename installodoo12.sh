sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y

sudo apt install git python3-pip build-essential wget python3-dev python3-venv python3-wheel libxslt-dev libzip-dev libldap2-dev libsasl2-dev python3-setuptools node-less

sudo useradd -m -d /opt/odoo12 -U -r -s /bin/bash odoo12

sudo apt install postgresql

sudo su - postgres -c "createuser -s odoo12"

wget https://builds.wkhtmltopdf.org/0.12.1.4/wkhtmltox_0.12.1.4-1.bionic_amd64.deb

sudo apt install ./wkhtmltox_0.12.1.4-1.bionic_amd64.deb

sudo su - odoo12

git clone https://www.github.com/odoo/odoo --depth 1 --branch 12.0 /opt/odoo12/odoo

cd /opt/odoo12

python3 -m venv odoo-venv

source odoo-venv/bin/activate

pip3 install wheel

pip3 install -r odoo/requirements.txt

deactivate

mkdir /opt/odoo12/odoo-custom-addons

exit

sudo cp /opt/odoo12/odoo/debian/odoo.conf /etc/odoo12.conf

sudo nano /etc/odoo12.conf
