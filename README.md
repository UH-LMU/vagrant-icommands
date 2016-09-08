# vagrant-icommands

This project installs a virtual machine you can use to connect to
- CSC ida
- LMU Netapp

Prerequisites (contact Helpdesk)
- VirtualBox
- Vagrant

To install, download or clone this repository. Then run the following commands.
```
# Start VM.
vagrant up

# The VM will shut down after the previous command because
# restart is needed. So start again.
vagrant up

# SSH to the VM.
vagrant ssh
```

In the VM, run the following commands.
```
# Mount LMU Netapp.
/vagrant/lmu_mount.sh

# Edit Ida configuration.
/vagrant/ida_username.sh

# Log in to Ida.
iinit

# Change working directory to LMU Netapp.
cd ~/biotek-groups2/lmu/users

# Change working directory to your own directory.
cd h/hajaalin # this is an example

# Find and download your data.
ils
iget
...
```
