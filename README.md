Script d'installation

Avant de commencer il faut activer certains paramètres dans la raspberry pi

en local :

```
sudo raspi-config
```

![alt text](https://i.imgur.com/XaB0BJw.png)

on va dans la partie interface.
Ici on active la camera et le SSH si cela n'est pas déjà fait

![alt text](https://i.imgur.com/Kb0QLCh.png)

on quitte ensuite ensuite raspi-config en redemarant la pi.

on installe ensuite git
```
sudo apt-get install git
```

on recupere le projet

```
git clone https://github.com/space192/CameraECECUP.git
```
on accede au projet
```
cd CameraECECUP
```
on transforme les scripts pourqu'il soit executables
```
chmod +x install_motioneye.sh
chmod +x remove_motioneye.sh
```

et Finalement on execut le script avec SUDO:
```
sudo ./install_motioneye.sh
```



Suppresion:

On retourne dans le dossier CameraECECUP:
```
cd CameraECECUP
```
on execute le srcipt avec SUDO:
```
sudo ./remove_motioneye.sh
```
on revient a la racine:
```
cd
```
On supprime finalement le dossier
```
sudo rm -rf CameraECECUP
```


Optionnel Changement du hostname pour fonctionnement sans adresse IP:

on repart dans les configurations du raspberry pi avec:
```
sudo raspi-config
```
![alt text](https://i.imgur.com/XaB0BJw.png)

on va dans la partie system:

![alt text](https://i.imgur.com/32mBbfc.png)

on accede au hostname:

![alt text](https://i.imgur.com/AdEnco5.png)

ici on rentre le nom de la table et on appuie sur entrer
puis on redémarrer
