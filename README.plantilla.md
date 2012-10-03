Munin plugin to monitoring PeerTracker
---------------------------------------
_[in English]_

![](https://github.com/FoRTu/PeerTracker-Munin/raw/master/screenshot.png)


This is a **plugin for [Munin][1]** with which we can monitor the bittorrent tracker **[PeerTracker][2]**.

**PeerTracker** is written in **PHP** and database can be hosted on **MySQL** or **SQLite**. This plugin is written for those configurations with the **MySQL** database. I used the command line to extract the required information from the database. You could say that this plugin is written in **bash-scripting**.

After **[downloading the plugin][3]**, the **installation** is simple You have to **copy** the file **PeerTracker.sh** to the  Munin plugins folder. This folder is **/etc/munin/plugins**:

    # cp  PeerTrackr.sh  /etc/munin/plugins/
    
Now edit the copied file to fill the necessary configuration data:

    # Mysql Database host
    HOST="localhost"
    
    # MySQL Database name
    DATABASE="MySQL_peertrackerDB"
    
    # MySQL user PeerTrackr used to connect to the database
    USER="MySQL_user_peertracker"
    
    # MySQL user password
    PASSWD="MySQL_user_password"

Once copied and edited, you have to **restart the Munin daemon**. According to the operating system you have, you can restart the daemon differently. For example in **Debian** and **Ubuntu** you can do this in two ways:

    # service munin-node restart

    # /etc/init.d/munin-node restart

After restarting the daemon, you only have to wait for **Munin** to generate the **graph**.

_All the commands that run on the `command` line should be run as root. Or using the sudo command._

<br>
<br>
****
<br>
<br>

Plugin de Munin para monitorizar PeerTracker
--------------------------------------------
_[en Castellano]_

![](https://github.com/FoRTu/PeerTracker-Munin/raw/master/screenshot.png)


Esto es un **plugin para [Munin][1]** con el cual podremos monitorizar el tracker bittorrent **[PeerTracker][2]**.

**PeerTracker** esta escrito en **PHP** y su base de datos puede estar alojada en **MySQL** o **SQLite**. Este plugin esta escrito para aquellas configuraciones que tengan la base de datos alojada en **MySQL**. He utilizado la línea de comandos para extraer la información necesaria desde la base de datos. Podría decirse que este plugin esta escrito en **bash-Scripting**.


Despues de **[descargar el plugin][3]**, la instalación es simple. Solamente tenéis que **copiar** el archivo **PeerTracker.sh** a la carpeta de plugins de Munin. Normalmente la carpeta es esta, **/etc/munin/plugins**:

    # cp  PeerTrackr.sh  /etc/munin/plugins/

Una vez copiado ahora editamos el archivo y en la seccion de configuracion rellenamos los datos necesarios:

    # Equipo en el que esta MySQL.
    HOST="localhost"

    # Nombre de la base de datos en MySQL.
    DATABASE="MySQL_peertrackerDB"

    # Usuario de MySQL que utiliza PeerTracker para conectar a MySQL.
    USER="MySQL_user_peertracker"

    # Contraseña del usuario de MySQL que utiliza PeerTracker.
    PASSWD="MySQL_user_password"

Una vez copiado y editado el archivo, solo hace falta **reiniciar el demonio de Munin**. El reinicio puedes hacerlo de distinta manera según el sistema operativo que tengas. Por ejemplo en **Debian** como en **Ubuntu** puedes hacerlo de dos maneras:

    # service munin-node restart

    # /etc/init.d/munin-node restart

Una vez reiniciado el demonio solamente habrá que esperar a que **Munin** genere el grafico.

_Todos los `comandos` que se ejecuten en la línea de comandos se deberán ejecutar como root. O en su defecto utilizando el comando sudo._


[1]: http://munin-monitoring.org/
[2]: http://code.google.com/p/peertracker/
[3]: https://github.com/FoRTu/PeerTracker-Munin/zipball/master