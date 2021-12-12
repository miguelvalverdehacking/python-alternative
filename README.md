<center>
<img src="https://www.python.org/static/community_logos/python-powered-w.svg"/>
<h1>Update  Python 3.10.1</h1>
</center>
<h2>Descripción</h2>
<p>Instala una alternativa de <strong>Python</strong> en su última versión <strong>3.10.1</strong> en distribuciones basadas en Debian</p>
<h2>Modo de uso</h2>
<p>Se recomienda darle los permisos necesarios y ejecutarlo como superusuario</p>
<code>sudo bash setup.sh</code>
<h2>Compatibilidad</h2>
<table>
	<tr>
		<th>Distribuciones</th>
	</tr>
	<tr>
		<td>Ubuntu</td>
	</tr>
	<tr>
		<td>Linux Mint</td>
	</tr>
	<tr>
		<td>Deepin</td>
	</tr>
	<tr>
		<td>SteamOS</td>
	</tr>
	<tr>
		<td>MX Linux</td>
	</tr>
	<tr>
		<td>PureOS</td>
	</tr>
	<tr>
		<td>Kali Linux</td>
	</tr>
	<tr>
		<td>Parrot</td>
	</tr>
	<tr>
		<td>Devuan</td>
	</tr>
	<tr>
		<td>Knoppix</td>
	</tr>
	<tr>
		<td>AntiX</td>
	</tr>
	<tr>
		<td>AV Linux</td>
	</tr>	
</table>

## Código
```bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install wget build-essential libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
wget -c https://www.python.org/ftp/python/3.10.1/Python-3.10.1.tar.xz
tar -Jxvf Python-3.10.1.tar.xz
cd Python-3.10.1
./configure --enable-optimizations
sudo make altinstall
read -p "¿Quieres remplazar el enlace simbólico? (s/n): " LINK
LINK=$(echo $LINK | tr '[:upper:]' '[:lower:]')
if [[ "$LINK" == "s" ]] || [[  "$LINK" == "y" ]]
then
  sudo rm /usr/bin/python3
  sudo ln -s /usr/local/bin/python3.10 /usr/bin/python3
  sudo ln -s /usr/local/bin/pip3.10 /usr/bin/pip3
else
  echo "Ok."
fi
```
