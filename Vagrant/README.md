user@user-VirtualBox:~/Desktop/Kernel$ vagrant up
Bringing machine 'kernel-update' up with 'virtualbox' provider...
==> kernel-update: Importing base box 'generic/centos8s'...
==> kernel-update: Matching MAC address for NAT networking...
==> kernel-update: Checking if box 'generic/centos8s' version '4.3.4' is up to date...
==> kernel-update: Setting the name of the VM: Kernel_kernel-update_1717348197784_35641
==> kernel-update: Clearing any previously set network interfaces...
==> kernel-update: Preparing network interfaces based on configuration...
    kernel-update: Adapter 1: nat
==> kernel-update: Forwarding ports...
    kernel-update: 22 (guest) => 2222 (host) (adapter 1)
==> kernel-update: Running 'pre-boot' VM customizations...
==> kernel-update: Booting VM...
==> kernel-update: Waiting for machine to boot. This may take a few minutes...
    kernel-update: SSH address: 127.0.0.1:2222
    kernel-update: SSH username: vagrant
    kernel-update: SSH auth method: private key
    kernel-update: 
    kernel-update: Vagrant insecure key detected. Vagrant will automatically replace
    kernel-update: this with a newly generated keypair for better security.
    kernel-update: 
    kernel-update: Inserting generated public key within guest...
    kernel-update: Removing insecure key from the guest if it's present...
    kernel-update: Key inserted! Disconnecting and reconnecting using new SSH key...
==> kernel-update: Machine booted and ready!
==> kernel-update: Checking for guest additions in VM...
==> kernel-update: Setting hostname...
user@user-VirtualBox:~/Desktop/Kernel$ vagrant ssh
[vagrant@kernel-update ~]$ sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
[vagrant@kernel-update ~]$ sudo yum install -y https://www.elrepo.org/elrepo-release-8.e18.elrepo.noarch.rpm
Failed to set locale, defaulting to C.UTF-8
Last metadata expiration check: 0:00:37 ago on Sun Jun  2 17:22:46 2024.
[MIRROR] elrepo-release-8.e18.elrepo.noarch.rpm: Status code: 404 for https://www.elrepo.org/elrepo-release-8.e18.elrepo.noarch.rpm (IP: 69.195.83.87)
[MIRROR] elrepo-release-8.e18.elrepo.noarch.rpm: Status code: 404 for https://www.elrepo.org/elrepo-release-8.e18.elrepo.noarch.rpm (IP: 69.195.83.87)
[MIRROR] elrepo-release-8.e18.elrepo.noarch.rpm: Status code: 404 for https://www.elrepo.org/elrepo-release-8.e18.elrepo.noarch.rpm (IP: 69.195.83.87)
[MIRROR] elrepo-release-8.e18.elrepo.noarch.rpm: Status code: 404 for https://www.elrepo.org/elrepo-release-8.e18.elrepo.noarch.rpm (IP: 69.195.83.87)
[FAILED] elrepo-release-8.e18.elrepo.noarch.rpm: Status code: 404 for https://www.elrepo.org/elrepo-release-8.e18.elrepo.noarch.rpm (IP: 69.195.83.87)
Status code: 404 for https://www.elrepo.org/elrepo-release-8.e18.elrepo.noarch.rpm (IP: 69.195.83.87)
[vagrant@kernel-update ~]$ sudo yum install -y https://www.elrepo.org/elrepo-release-8.el8.elrepo.noarch.rpm
Failed to set locale, defaulting to C.UTF-8
CentOS Stream 8 - AppStream                                                                         547  B/s | 4.4 kB     00:08    
CentOS Stream 8 - BaseOS                                                                            1.5 kB/s | 3.9 kB     00:02    
CentOS Stream 8 - Extras                                                                            2.2 kB/s | 2.9 kB     00:01    
CentOS Stream 8 - Extras common packages                                                            1.1 kB/s | 3.0 kB     00:02    
elrepo-release-8.el8.elrepo.noarch.rpm                                                               14 kB/s |  13 kB     00:00    
Dependencies resolved.
====================================================================================================================================
 Package                          Architecture             Version                             Repository                      Size
====================================================================================================================================
Installing:
 elrepo-release                   noarch                   8.3-1.el8.elrepo                    @commandline                    13 k

Transaction Summary
====================================================================================================================================
Install  1 Package

Total size: 13 k
Installed size: 5.0 k
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                            1/1 
  Installing       : elrepo-release-8.3-1.el8.elrepo.noarch                                                                     1/1 
  Verifying        : elrepo-release-8.3-1.el8.elrepo.noarch                                                                     1/1 

Installed:
  elrepo-release-8.3-1.el8.elrepo.noarch                                                                                            

Complete!
[vagrant@kernel-update ~]$ uname -r
4.18.0-516.el8.x86_64
[vagrant@kernel-update ~]$ sudo yum --enablerepo elrepo-kernel install kernel-ml -y
Failed to set locale, defaulting to C.UTF-8
ELRepo.org Community Enterprise Linux Repository - el8                                               48 kB/s | 271 kB     00:05    
ELRepo.org Community Enterprise Linux Kernel Repository - el8                                       169 kB/s | 2.2 MB     00:13    
Extra Packages for Enterprise Linux 8 - x86_64                                                      6.1 kB/s | 5.3 kB     00:00    
Dependencies resolved.
====================================================================================================================================
 Package                           Architecture           Version                               Repository                     Size
====================================================================================================================================
Installing:
 kernel-ml                         x86_64                 6.9.3-1.el8.elrepo                    elrepo-kernel                 128 k
Installing dependencies:
 kernel-ml-core                    x86_64                 6.9.3-1.el8.elrepo                    elrepo-kernel                  40 M
 kernel-ml-modules                 x86_64                 6.9.3-1.el8.elrepo                    elrepo-kernel                  35 M

Transaction Summary
====================================================================================================================================
Install  3 Packages

Total download size: 75 M
Installed size: 117 M
Downloading Packages:
(1/3): kernel-ml-6.9.3-1.el8.elrepo.x86_64.rpm                                                       67 kB/s | 128 kB     00:01    
(2/3): kernel-ml-modules-6.9.3-1.el8.elrepo.x86_64.rpm                                               93 kB/s |  35 MB     06:22    
(3/3): kernel-ml-core-6.9.3-1.el8.elrepo.x86_64.rpm                                                  94 kB/s |  40 MB     07:15    
------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                               176 kB/s |  75 MB     07:15     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Preparing        :                                                                                                            1/1 
  Installing       : kernel-ml-core-6.9.3-1.el8.elrepo.x86_64                                                                   1/3 
  Running scriptlet: kernel-ml-core-6.9.3-1.el8.elrepo.x86_64                                                                   1/3 
  Installing       : kernel-ml-modules-6.9.3-1.el8.elrepo.x86_64                                                                2/3 
  Running scriptlet: kernel-ml-modules-6.9.3-1.el8.elrepo.x86_64                                                                2/3 
  Installing       : kernel-ml-6.9.3-1.el8.elrepo.x86_64                                                                        3/3 
  Running scriptlet: kernel-ml-core-6.9.3-1.el8.elrepo.x86_64                                                                   3/3 
dracut: Disabling early microcode, because kernel does not support it. CONFIG_MICROCODE_[AMD|INTEL]!=y
dracut: Disabling early microcode, because kernel does not support it. CONFIG_MICROCODE_[AMD|INTEL]!=y

  Running scriptlet: kernel-ml-6.9.3-1.el8.elrepo.x86_64                                                                        3/3 
  Verifying        : kernel-ml-6.9.3-1.el8.elrepo.x86_64                                                                        1/3 
  Verifying        : kernel-ml-core-6.9.3-1.el8.elrepo.x86_64                                                                   2/3 
  Verifying        : kernel-ml-modules-6.9.3-1.el8.elrepo.x86_64                                                                3/3 

Installed:
  kernel-ml-6.9.3-1.el8.elrepo.x86_64    kernel-ml-core-6.9.3-1.el8.elrepo.x86_64    kernel-ml-modules-6.9.3-1.el8.elrepo.x86_64   

Complete!
[vagrant@kernel-update ~]$ sudo reboot
Connection to 127.0.0.1 closed by remote host.
user@user-VirtualBox:~/Desktop/Kernel$ vagrant ssh
user@user-VirtualBox:~/Desktop/Kernel$ vagrant ssh
Last login: Sun Jun  2 17:13:45 2024 from 10.0.2.2
[vagrant@kernel-update ~]$ uname -r
6.9.3-1.el8.elrepo.x86_64
[vagrant@kernel-update ~]$ 
