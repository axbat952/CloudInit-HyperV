.\New-HyperVCloudImageVM.ps1 -VMProcessorCount 2 -VMMemoryStartupBytes 2GB -VHDSizeBytes 60GB -VMName "ubuntu-10" -ImageVersion "22.04" -VMGeneration 2 -ShowSerialConsoleWindow -VirtualSwitchName "NIC - VM" -VMMachine_StoragePath "H:\hyperv" -ShowVmConnectWindow -GuestAdminUsername "user" -GuestAdminPassword "password"