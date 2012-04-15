Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJH04-00021F-HX
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 04:23:47 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 29421FF84A1
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 06:24:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Apr 2012 06:05:39 +0200
Message-Id: <1334462739-17265-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1334462739-17265-1-git-send-email-plagnioj@jcrosoft.com>
References: <1334462739-17265-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] config: switch machine to hostname
To: barebox@lists.infradead.org

So we can use it for dhcp request too.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/chumby_falconwing/env/config       |    2 +-
 arch/arm/boards/eukrea_cpuimx25/env/config         |   14 +++++++-------
 .../env/config                                     |   14 +++++++-------
 arch/arm/boards/eukrea_cpuimx51/env/config         |   14 +++++++-------
 arch/arm/boards/freescale-mx28-evk/env/config      |   12 ++++++------
 arch/arm/boards/freescale-mx35-3-stack/env/config  |   14 +++++++-------
 arch/arm/boards/freescale-mx51-pdk/env/config      |   14 +++++++-------
 arch/arm/boards/freescale-mx53-loco/env/config     |   14 +++++++-------
 arch/arm/boards/freescale-mx53-smd/env/config      |   14 +++++++-------
 arch/arm/boards/guf-cupid/env/config               |   14 +++++++-------
 arch/arm/boards/guf-neso/env/config                |   14 +++++++-------
 arch/arm/boards/karo-tx25/env/config               |   14 +++++++-------
 arch/arm/boards/karo-tx28/env/config               |   14 +++++++-------
 arch/arm/boards/mini2440/env/config                |   14 +++++++-------
 arch/arm/boards/panda/env/config                   |   12 ++++++------
 arch/arm/boards/pcm027/env/config                  |   14 +++++++-------
 arch/arm/boards/pcm037/env/config                  |   14 +++++++-------
 arch/arm/boards/pcm038/env/config                  |   14 +++++++-------
 arch/arm/boards/pcm043/env/config                  |   14 +++++++-------
 arch/arm/boards/pcm049/env/config                  |   14 +++++++-------
 arch/arm/boards/phycard-a-l1/env/config            |   18 +++++++++---------
 arch/arm/boards/phycard-a-xl2/env/config           |   14 +++++++-------
 arch/arm/boards/phycard-i.MX27/env/config          |   14 +++++++-------
 arch/arm/boards/scb9328/env/config                 |   14 +++++++-------
 arch/arm/boards/tqma53/env/config                  |    8 ++++----
 defaultenv/config                                  |   18 +++++++++---------
 26 files changed, 175 insertions(+), 175 deletions(-)
 copy arch/arm/boards/{eukrea_cpuimx25 => eukrea_cpuimx35}/env/config (73%)

diff --git a/arch/arm/boards/chumby_falconwing/env/config b/arch/arm/boards/chumby_falconwing/env/config
index 1419161..bf48da6 100644
--- a/arch/arm/boards/chumby_falconwing/env/config
+++ b/arch/arm/boards/chumby_falconwing/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=falconwing
+hostname=falconwing
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
diff --git a/arch/arm/boards/eukrea_cpuimx25/env/config b/arch/arm/boards/eukrea_cpuimx25/env/config
index bc1cfd5..9d9ff9a 100644
--- a/arch/arm/boards/eukrea_cpuimx25/env/config
+++ b/arch/arm/boards/eukrea_cpuimx25/env/config
@@ -3,7 +3,7 @@
 # otg port mode : can be 'host' or 'device'
 otg_mode="device"
 
-machine=eukrea-cpuimx25
+hostname=eukrea-cpuimx25
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
@@ -22,16 +22,16 @@ rootfs_loc=nand
 
 # rootfs
 rootfs_type=ubifs
-rootfsimage=$machine/rootfs.$rootfs_type
+rootfsimage=$hostname/rootfs.$rootfs_type
 
 # kernel
-kernelimage=$machine/uImage-${machine}.bin
+kernelimage=$hostname/uImage-${hostname}.bin
 
 # barebox and it's env
-bareboximage=$machine/barebox-${machine}.bin
-bareboxenvimage=$machine/bareboxenv-${machine}.bin
+bareboximage=$hostname/barebox-${hostname}.bin
+bareboxenvimage=$hostname/bareboxenv-${hostname}.bin
 
-nfsroot="$eth0.serverip:/srv/nfs/$machine"
+nfsroot="$eth0.serverip:/srv/nfs/$hostname"
 
 autoboot_timeout=1
 
@@ -40,7 +40,7 @@ bootargs="console=ttymxc0,115200 otg_mode=$otg_mode"
 nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
 rootfs_mtdblock_nand=3
 nand_device="mxc_nand"
-ubiroot="$machine-rootfs"
+ubiroot="$hostname-rootfs"
 device_type="nand"
 
 # set a fancy prompt (if support is compiled in)
diff --git a/arch/arm/boards/eukrea_cpuimx25/env/config b/arch/arm/boards/eukrea_cpuimx35/env/config
similarity index 73%
copy from arch/arm/boards/eukrea_cpuimx25/env/config
copy to arch/arm/boards/eukrea_cpuimx35/env/config
index bc1cfd5..1b19bd2 100644
--- a/arch/arm/boards/eukrea_cpuimx25/env/config
+++ b/arch/arm/boards/eukrea_cpuimx35/env/config
@@ -3,7 +3,7 @@
 # otg port mode : can be 'host' or 'device'
 otg_mode="device"
 
-machine=eukrea-cpuimx25
+hostname=eukrea-cpuimx35
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
@@ -22,16 +22,16 @@ rootfs_loc=nand
 
 # rootfs
 rootfs_type=ubifs
-rootfsimage=$machine/rootfs.$rootfs_type
+rootfsimage=$hostname/rootfs.$rootfs_type
 
 # kernel
-kernelimage=$machine/uImage-${machine}.bin
+kernelimage=$hostname/uImage-${hostname}.bin
 
 # barebox and it's env
-bareboximage=$machine/barebox-${machine}.bin
-bareboxenvimage=$machine/bareboxenv-${machine}.bin
+bareboximage=$hostname/barebox-${hostname}.bin
+bareboxenvimage=$hostname/bareboxenv-${hostname}.bin
 
-nfsroot="$eth0.serverip:/srv/nfs/$machine"
+nfsroot="$eth0.serverip:/srv/nfs/$hostname"
 
 autoboot_timeout=1
 
@@ -40,7 +40,7 @@ bootargs="console=ttymxc0,115200 otg_mode=$otg_mode"
 nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
 rootfs_mtdblock_nand=3
 nand_device="mxc_nand"
-ubiroot="$machine-rootfs"
+ubiroot="$hostname-rootfs"
 device_type="nand"
 
 # set a fancy prompt (if support is compiled in)
diff --git a/arch/arm/boards/eukrea_cpuimx51/env/config b/arch/arm/boards/eukrea_cpuimx51/env/config
index 1b57b29..531fa43 100644
--- a/arch/arm/boards/eukrea_cpuimx51/env/config
+++ b/arch/arm/boards/eukrea_cpuimx51/env/config
@@ -6,7 +6,7 @@ otg_mode="device"
 # ex : 640x480M-16@60 800x600M-24@60 1024x768M-16@60
 video="CMO-QVGA"
 
-machine=eukrea-cpuimx51
+hostname=eukrea-cpuimx51
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
@@ -25,16 +25,16 @@ rootfs_loc=nand
 
 # rootfs
 rootfs_type=ubifs
-rootfsimage=$machine/rootfs.$rootfs_type
+rootfsimage=$hostname/rootfs.$rootfs_type
 
 # kernel
-kernelimage=$machine/uImage-${machine}.bin
+kernelimage=$hostname/uImage-${hostname}.bin
 
 # barebox and it's env
-bareboximage=$machine/barebox-${machine}.bin
-bareboxenvimage=$machine/bareboxenv-${machine}.bin
+bareboximage=$hostname/barebox-${hostname}.bin
+bareboxenvimage=$hostname/bareboxenv-${hostname}.bin
 
-nfsroot="$eth0.serverip:/srv/nfs/$machine"
+nfsroot="$eth0.serverip:/srv/nfs/$hostname"
 
 autoboot_timeout=1
 
@@ -49,7 +49,7 @@ bootargs="console=ttymxc0,115200 otg_mode=$otg_mode video=$video screen_type=$sc
 nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
 rootfs_mtdblock_nand=3
 nand_device="mxc_nand"
-ubiroot="$machine-rootfs"
+ubiroot="$hostname-rootfs"
 device_type="nand"
 
 # set a fancy prompt (if support is compiled in)
diff --git a/arch/arm/boards/freescale-mx28-evk/env/config b/arch/arm/boards/freescale-mx28-evk/env/config
index 5095633..3951c5b 100644
--- a/arch/arm/boards/freescale-mx28-evk/env/config
+++ b/arch/arm/boards/freescale-mx28-evk/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=mx28-evk
+hostname=mx28-evk
 #user=
 
 # use 'dhcp' to do dhcp in barebox and in kernel
@@ -24,21 +24,21 @@ rootfs_loc=net
 rootfs_type=ext2
 # where is the rootfs in case of 'rootfs_loc=disk' (linux name)
 rootfs_part_linux_dev=mmcblk0p4
-rootfsimage=rootfs-${machine}.$rootfs_type
+rootfsimage=rootfs-${hostname}.$rootfs_type
 
 # where is the kernel image in case of 'kernel_loc=disk'
 kernel_part=disk0.2
 
-kernelimage=zImage-$machine
-bareboximage=barebox-${machine}.bin
-bareboxenvimage=barebox-${machine}.bin
+kernelimage=zImage-$hostname
+bareboximage=barebox-${hostname}.bin
+bareboxenvimage=barebox-${hostname}.bin
 
 if [ -n $user ]; then
 	bareboximage="$user"-"$bareboximage"
 	bareboxenvimage="$user"-"$bareboxenvimage"
 	kernelimage="$user"-"$kernelimage"
 	rootfsimage="$user"-"$rootfsimage"
-	nfsroot="/home/$user/nfsroot/$machine"
+	nfsroot="/home/$user/nfsroot/$hostname"
 else
 	nfsroot="/path/to/nfs/root"
 fi
diff --git a/arch/arm/boards/freescale-mx35-3-stack/env/config b/arch/arm/boards/freescale-mx35-3-stack/env/config
index 9f37348..171ae8c 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/env/config
+++ b/arch/arm/boards/freescale-mx35-3-stack/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=mx35-3stack
+hostname=mx35-3stack
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/config b/arch/arm/boards/freescale-mx51-pdk/env/config
index 10690c9..7a2841e 100644
--- a/arch/arm/boards/freescale-mx51-pdk/env/config
+++ b/arch/arm/boards/freescale-mx51-pdk/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=babbage
+hostname=babbage
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/freescale-mx53-loco/env/config b/arch/arm/boards/freescale-mx53-loco/env/config
index 98f5eaf..dbcbb35 100644
--- a/arch/arm/boards/freescale-mx53-loco/env/config
+++ b/arch/arm/boards/freescale-mx53-loco/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=loco
+hostname=loco
 eth0.serverip=
 user=
 
@@ -24,16 +24,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/freescale-mx53-smd/env/config b/arch/arm/boards/freescale-mx53-smd/env/config
index fd238a6..d2afb29 100644
--- a/arch/arm/boards/freescale-mx53-smd/env/config
+++ b/arch/arm/boards/freescale-mx53-smd/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=loco
+hostname=loco
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/guf-cupid/env/config b/arch/arm/boards/guf-cupid/env/config
index 930a97d..1be875d 100644
--- a/arch/arm/boards/guf-cupid/env/config
+++ b/arch/arm/boards/guf-cupid/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=cupid
+hostname=cupid
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/guf-neso/env/config b/arch/arm/boards/guf-neso/env/config
index 9b675b5..3013728 100644
--- a/arch/arm/boards/guf-neso/env/config
+++ b/arch/arm/boards/guf-neso/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=guf-neso
+hostname=guf-neso
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/karo-tx25/env/config b/arch/arm/boards/karo-tx25/env/config
index 69f2c26..28a5e7f 100644
--- a/arch/arm/boards/karo-tx25/env/config
+++ b/arch/arm/boards/karo-tx25/env/config
@@ -1,5 +1,5 @@
 
-machine=tx25
+hostname=tx25
 baseboard=tx28stk5
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/karo-tx28/env/config b/arch/arm/boards/karo-tx28/env/config
index ed361eb..b5222e9 100644
--- a/arch/arm/boards/karo-tx28/env/config
+++ b/arch/arm/boards/karo-tx28/env/config
@@ -1,7 +1,7 @@
 #
 #
 
-machine=tx28
+hostname=tx28
 baseboard=tx28stk5
 
 # use 'dhcp' to do dhcp in barebox and in kernel
@@ -22,16 +22,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/mini2440/env/config b/arch/arm/boards/mini2440/env/config
index ac8c32a..77cc34f 100644
--- a/arch/arm/boards/mini2440/env/config
+++ b/arch/arm/boards/mini2440/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=mini2440
+hostname=mini2440
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-${machine}.${rootfs_type}
+rootfsimage=root-${hostname}.${rootfs_type}
 
-kernelimage=zImage-${machine}
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-${hostname}
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="${user}"-"${kernelimage}"
-	nfsroot="${eth0.serverip}:/home/${user}/nfsroot/${machine}"
+	nfsroot="${eth0.serverip}:/home/${user}/nfsroot/${hostname}"
 	rootfsimage="${user}"-"${rootfsimage}"
 else
 	nfsroot="${eth0.serverip}:/path/to/nfs/root"
diff --git a/arch/arm/boards/panda/env/config b/arch/arm/boards/panda/env/config
index 29672be..29a63f3 100644
--- a/arch/arm/boards/panda/env/config
+++ b/arch/arm/boards/panda/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=panda
+hostname=panda
 user=
 
 # use 'dhcp' to do dhcp in barebox and in kernel
@@ -18,14 +18,14 @@ kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-${machine}.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-${hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/pcm027/env/config b/arch/arm/boards/pcm027/env/config
index 433f259..3ed963c 100644
--- a/arch/arm/boards/pcm027/env/config
+++ b/arch/arm/boards/pcm027/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=pcm027
+hostname=pcm027
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/pcm037/env/config b/arch/arm/boards/pcm037/env/config
index d67d319..fcdb777 100644
--- a/arch/arm/boards/pcm037/env/config
+++ b/arch/arm/boards/pcm037/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=pcm037
+hostname=pcm037
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/pcm038/env/config b/arch/arm/boards/pcm038/env/config
index b1a5f42..32be5ec 100644
--- a/arch/arm/boards/pcm038/env/config
+++ b/arch/arm/boards/pcm038/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=pcm038
+hostname=pcm038
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/pcm043/env/config b/arch/arm/boards/pcm043/env/config
index 2a355e6..644c7fb 100644
--- a/arch/arm/boards/pcm043/env/config
+++ b/arch/arm/boards/pcm043/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=pcm043
+hostname=pcm043
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/pcm049/env/config b/arch/arm/boards/pcm049/env/config
index f348714..efbe9ea 100644
--- a/arch/arm/boards/pcm049/env/config
+++ b/arch/arm/boards/pcm049/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=pcm049
+hostname=pcm049
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-${machine}.$rootfs_type
+rootfsimage=root-${hostname}.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-${machine}.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-${hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/phycard-a-l1/env/config b/arch/arm/boards/phycard-a-l1/env/config
index 4a648b9..e0f4dcc 100644
--- a/arch/arm/boards/phycard-a-l1/env/config
+++ b/arch/arm/boards/phycard-a-l1/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=pcaal1
+hostname=pcaal1
 #user=
 
 # Enter MAC address here if not retrieved automatically
@@ -26,26 +26,26 @@ rootfs_loc=nand
 rootfs_type=jffs2
 # where is the rootfs in case of 'rootfs_loc=disk' (linux name)
 rootfs_part_linux_dev=mmcblk0p4
-rootfsimage=rootfs-${machine}.$rootfs_type
+rootfsimage=rootfs-${hostname}.$rootfs_type
 
 # where is the kernel image in case of 'kernel_loc=disk'
 kernel_part=disk0.2
 
 # The image type of the kernel. Can be uimage, zimage, raw or raw_lzo
-#kernelimage=zImage-$machine
-kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+#kernelimage=zImage-$hostname
+kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
-bareboximage=barebox-${machine}.bin
-bareboxenvimage=barebox-${machine}.bin
+bareboximage=barebox-${hostname}.bin
+bareboxenvimage=barebox-${hostname}.bin
 
 if [ -n $user ]; then
 	bareboximage="$user"-"$bareboximage"
 	bareboxenvimage="$user"-"$bareboxenvimage"
 	kernelimage="$user"-"$kernelimage"
 	rootfsimage="$user"-"$rootfsimage"
-	nfsroot="/home/$user/nfsroot/$machine"
+	nfsroot="/home/$user/nfsroot/$hostname"
 else
 	nfsroot="/path/to/nfs/root"
 fi
diff --git a/arch/arm/boards/phycard-a-xl2/env/config b/arch/arm/boards/phycard-a-xl2/env/config
index 0cbfb16..59e8eb3 100644
--- a/arch/arm/boards/phycard-a-xl2/env/config
+++ b/arch/arm/boards/phycard-a-xl2/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=pcaaxl2
+hostname=pcaaxl2
 user=
 
 # use 'dhcp' to do dhcp in barebox and in kernel
@@ -20,16 +20,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-${machine}.$rootfs_type
+rootfsimage=root-${hostname}.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-${machine}.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-${hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/phycard-i.MX27/env/config b/arch/arm/boards/phycard-i.MX27/env/config
index 5db33d0..367029b 100644
--- a/arch/arm/boards/phycard-i.MX27/env/config
+++ b/arch/arm/boards/phycard-i.MX27/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=pca100
+hostname=pca100
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/scb9328/env/config b/arch/arm/boards/scb9328/env/config
index e1c5807..a8eace7 100644
--- a/arch/arm/boards/scb9328/env/config
+++ b/arch/arm/boards/scb9328/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=scb9328
+hostname=scb9328
 eth0.serverip=
 user=
 
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/tqma53/env/config b/arch/arm/boards/tqma53/env/config
index 97b009c..723b094 100644
--- a/arch/arm/boards/tqma53/env/config
+++ b/arch/arm/boards/tqma53/env/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=tqma53
+hostname=tqma53
 serverip=
 user=
 
@@ -21,13 +21,13 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
+rootfsimage=root-$hostname.$rootfs_type
 
-kernelimage=zImage-$machine
+kernelimage=zImage-$hostname
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$serverip:/home/$user/nfsroot/$machine"
+	nfsroot="$serverip:/home/$user/nfsroot/$hostname"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$serverip:/path/to/nfs/root"
diff --git a/defaultenv/config b/defaultenv/config
index 39a9c99..3e4c2ee 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-machine=FIXME
+hostname=FIXME
 #user=
 
 # Enter MAC address here if not retrieved automatically
@@ -29,25 +29,25 @@ oftree_loc=tftp
 rootfs_type=ubifs
 # where is the rootfs in case of 'rootfs_loc=disk' (linux name)
 rootfs_part_linux_dev=mmcblk0p4
-rootfsimage=rootfs-${machine}.$rootfs_type
+rootfsimage=rootfs-${hostname}.$rootfs_type
 
 # where is the kernel image in case of 'kernel_loc=disk'
 kernel_part=disk0.2
 
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
+kernelimage=zImage-$hostname
+#kernelimage=uImage-$hostname
+#kernelimage=Image-$hostname
+#kernelimage=Image-$hostname.lzo
 
-bareboximage=barebox-${machine}.bin
-bareboxenvimage=barebox-${machine}.bin
+bareboximage=barebox-${hostname}.bin
+bareboxenvimage=barebox-${hostname}.bin
 
 if [ -n $user ]; then
 	bareboximage="$user"-"$bareboximage"
 	bareboxenvimage="$user"-"$bareboxenvimage"
 	kernelimage="$user"-"$kernelimage"
 	rootfsimage="$user"-"$rootfsimage"
-	nfsroot="/home/$user/nfsroot/$machine"
+	nfsroot="/home/$user/nfsroot/$hostname"
 else
 	nfsroot="/path/to/nfs/root"
 fi
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
