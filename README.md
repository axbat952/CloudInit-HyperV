# Powershell scripts for fast Ubuntu 22.04 VM provisioning

## Source

https://github.com/schtritoff/hyperv-vm-provisioning

## Description

C'est le projet entier ici, mais pour créer une VM il suffit de lancer le script start-session.ps1 puis effectuer le reste des commandes dans le serveur à distance.

## Remote Usage (Exécution à distance via son poste)

- Start Connexion (Entrez les infos de connexion au serveur Hyper-V)
```powershell
./start-session.ps1
```

- Go to the directory
```powershell
cd .\hyperv-vm-provisioning\
```
#### Create VM 

- Via la ligne de commande que l'on peut modifier 
```powershell
.\New-HyperVCloudImageVM.ps1 -VMProcessorCount 2 -VMMemoryStartupBytes 2GB -VHDSizeBytes 60GB -VMName "ubuntu-100" -ImageVersion "22.04" -VMGeneration 2 -VirtualSwitchName "NIC 2 - VM" -VMMachine_StoragePath "H:\hyperv" -GuestAdminUsername "axel" -GuestAdminPassword "axel"
```

- Via le script (Modifier les paramètres, comme login ou password, disque, ram, etc dans le fichier create-vm.ps1)
```powershell
.\create-vm.ps1
```
---
Le processus de création de la VM prends ensuite environ 5 minutes (à cause du cloudinit qui travail, ensuite la vm est reboot et c'est finit).

- Ensuite on peut récupérer l'adresse IP de la VM avec la commande suivante:
```powershell
.\get-ip.ps1 -Name VMname
```

## Usage Local (Exécution sur le serveur directement)

- Create VM
```powershell
.\local_create-vm.ps1
```

## Delete VM

- Delete VM and Files
```powershell
.\Cleanup-VM.ps1 VMname
```


---

## Demo d'une exécution en local où on assiste à la création de la VM et à son démarrage avec CloudInit

![](intro.gif)

