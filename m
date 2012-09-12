Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBoLS-0001xK-Lj
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 14:55:17 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 2A2D3FF9F0D
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 16:56:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 16:48:24 +0200
Message-Id: <1347461308-24208-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120912142743.GR31207@game.jcrosoft.org>
 <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/7] defaultenv: switch hostname to global.hostname
To: barebox@lists.infradead.org

Udpate dhcp with it too.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/eukrea_cpuimx25/env/config        |   12 ++++++------
 arch/arm/boards/eukrea_cpuimx35/env/config        |   12 ++++++------
 arch/arm/boards/eukrea_cpuimx51/env/config        |   12 ++++++------
 arch/arm/boards/freescale-mx28-evk/env/config     |   10 +++++-----
 arch/arm/boards/freescale-mx35-3-stack/env/config |   12 ++++++------
 arch/arm/boards/freescale-mx53-loco/env/config    |   12 ++++++------
 arch/arm/boards/freescale-mx53-smd/env/config     |   12 ++++++------
 arch/arm/boards/friendlyarm-mini2440/env/config   |   12 ++++++------
 arch/arm/boards/guf-cupid/env/config              |   12 ++++++------
 arch/arm/boards/guf-neso/env/config               |   12 ++++++------
 arch/arm/boards/karo-tx25/env/config              |   12 ++++++------
 arch/arm/boards/karo-tx28/env/config              |   12 ++++++------
 arch/arm/boards/panda/env/config                  |   10 +++++-----
 arch/arm/boards/pcm027/env/config                 |   12 ++++++------
 arch/arm/boards/pcm037/env/config                 |   12 ++++++------
 arch/arm/boards/pcm043/env/config                 |   12 ++++++------
 arch/arm/boards/pcm049/env/config                 |   12 ++++++------
 arch/arm/boards/phycard-a-l1/env/config           |   16 ++++++++--------
 arch/arm/boards/phycard-a-xl2/env/config          |   12 ++++++------
 arch/arm/boards/phycard-i.MX27/env/config         |   12 ++++++------
 arch/arm/boards/scb9328/env/config                |   12 ++++++------
 defaultenv/config                                 |   16 ++++++++--------
 net/dhcp.c                                        |    4 ++--
 23 files changed, 136 insertions(+), 136 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/env/config b/arch/arm/boards/eukrea_cpuimx25/env/config
index b6bf93f..9c70988 100644
--- a/arch/arm/boards/eukrea_cpuimx25/env/config
+++ b/arch/arm/boards/eukrea_cpuimx25/env/config
@@ -24,16 +24,16 @@ rootfs_loc=nand
 
 # rootfs
 rootfs_type=ubifs
-rootfsimage=$hostname/rootfs.$rootfs_type
+rootfsimage=${global.hostname}/rootfs.$rootfs_type
 
 # kernel
-kernelimage=$hostname/uImage-${hostname}.bin
+kernelimage=${global.hostname}/uImage-${global.hostname}.bin
 
 # barebox and it's env
-bareboximage=$hostname/barebox-${hostname}.bin
-bareboxenvimage=$hostname/bareboxenv-${hostname}.bin
+bareboximage=${global.hostname}/barebox-${global.hostname}.bin
+bareboxenvimage=${global.hostname}/bareboxenv-${global.hostname}.bin
 
-nfsroot="$eth0.serverip:/srv/nfs/$hostname"
+nfsroot="$eth0.serverip:/srv/nfs/${global.hostname}"
 
 autoboot_timeout=1
 
@@ -42,7 +42,7 @@ bootargs="console=ttymxc0,115200 otg_mode=$otg_mode video=imxfb:$video"
 nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
 rootfs_mtdblock_nand=3
 nand_device="mxc_nand"
-ubiroot="$hostname-rootfs"
+ubiroot="${global.hostname}-rootfs"
 device_type="nand"
 
 # set a fancy prompt (if support is compiled in)
diff --git a/arch/arm/boards/eukrea_cpuimx35/env/config b/arch/arm/boards/eukrea_cpuimx35/env/config
index 01cbfe9..beb5916 100644
--- a/arch/arm/boards/eukrea_cpuimx35/env/config
+++ b/arch/arm/boards/eukrea_cpuimx35/env/config
@@ -24,16 +24,16 @@ rootfs_loc=nand
 
 # rootfs
 rootfs_type=ubifs
-rootfsimage=$hostname/rootfs.$rootfs_type
+rootfsimage=${global.hostname}/rootfs.$rootfs_type
 
 # kernel
-kernelimage=$hostname/uImage-${hostname}.bin
+kernelimage=${global.hostname}/uImage-${global.hostname}.bin
 
 # barebox and it's env
-bareboximage=$hostname/barebox-${hostname}.bin
-bareboxenvimage=$hostname/bareboxenv-${hostname}.bin
+bareboximage=${global.hostname}/barebox-${global.hostname}.bin
+bareboxenvimage=${global.hostname}/bareboxenv-${global.hostname}.bin
 
-nfsroot="$eth0.serverip:/srv/nfs/$hostname"
+nfsroot="$eth0.serverip:/srv/nfs/${global.hostname}"
 
 autoboot_timeout=1
 
@@ -42,7 +42,7 @@ bootargs="console=ttymxc0,115200 otg_mode=$otg_mode video=mx3fb:$video"
 nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
 rootfs_mtdblock_nand=3
 nand_device="mxc_nand"
-ubiroot="$hostname-rootfs"
+ubiroot="${global.hostname}-rootfs"
 device_type="nand"
 
 # set a fancy prompt (if support is compiled in)
diff --git a/arch/arm/boards/eukrea_cpuimx51/env/config b/arch/arm/boards/eukrea_cpuimx51/env/config
index 163d026..f30c94f 100644
--- a/arch/arm/boards/eukrea_cpuimx51/env/config
+++ b/arch/arm/boards/eukrea_cpuimx51/env/config
@@ -27,16 +27,16 @@ rootfs_loc=nand
 
 # rootfs
 rootfs_type=ubifs
-rootfsimage=$hostname/rootfs.$rootfs_type
+rootfsimage=${global.hostname}/rootfs.$rootfs_type
 
 # kernel
-kernelimage=$hostname/uImage-${hostname}.bin
+kernelimage=${global.hostname}/uImage-${global.hostname}.bin
 
 # barebox and it's env
-bareboximage=$hostname/barebox-${hostname}.bin
-bareboxenvimage=$hostname/bareboxenv-${hostname}.bin
+bareboximage=${global.hostname}/barebox-${global.hostname}.bin
+bareboxenvimage=${global.hostname}/bareboxenv-${global.hostname}.bin
 
-nfsroot="$eth0.serverip:/srv/nfs/$hostname"
+nfsroot="$eth0.serverip:/srv/nfs/${global.hostname}"
 
 autoboot_timeout=1
 
@@ -45,7 +45,7 @@ bootargs="console=ttymxc0,115200 otg_mode=$otg_mode video=$video screen_type=$sc
 nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
 rootfs_mtdblock_nand=3
 nand_device="mxc_nand"
-ubiroot="$hostname-rootfs"
+ubiroot="${global.hostname}-rootfs"
 device_type="nand"
 
 # set a fancy prompt (if support is compiled in)
diff --git a/arch/arm/boards/freescale-mx28-evk/env/config b/arch/arm/boards/freescale-mx28-evk/env/config
index 3951c5b..6628bf0 100644
--- a/arch/arm/boards/freescale-mx28-evk/env/config
+++ b/arch/arm/boards/freescale-mx28-evk/env/config
@@ -24,21 +24,21 @@ rootfs_loc=net
 rootfs_type=ext2
 # where is the rootfs in case of 'rootfs_loc=disk' (linux name)
 rootfs_part_linux_dev=mmcblk0p4
-rootfsimage=rootfs-${hostname}.$rootfs_type
+rootfsimage=rootfs-${global.hostname}.$rootfs_type
 
 # where is the kernel image in case of 'kernel_loc=disk'
 kernel_part=disk0.2
 
-kernelimage=zImage-$hostname
-bareboximage=barebox-${hostname}.bin
-bareboxenvimage=barebox-${hostname}.bin
+kernelimage=zImage-${global.hostname}
+bareboximage=barebox-${global.hostname}.bin
+bareboxenvimage=barebox-${global.hostname}.bin
 
 if [ -n $user ]; then
 	bareboximage="$user"-"$bareboximage"
 	bareboxenvimage="$user"-"$bareboxenvimage"
 	kernelimage="$user"-"$kernelimage"
 	rootfsimage="$user"-"$rootfsimage"
-	nfsroot="/home/$user/nfsroot/$hostname"
+	nfsroot="/home/$user/nfsroot/${global.hostname}"
 else
 	nfsroot="/path/to/nfs/root"
 fi
diff --git a/arch/arm/boards/freescale-mx35-3-stack/env/config b/arch/arm/boards/freescale-mx35-3-stack/env/config
index 171ae8c..787c3df 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/env/config
+++ b/arch/arm/boards/freescale-mx35-3-stack/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/freescale-mx53-loco/env/config b/arch/arm/boards/freescale-mx53-loco/env/config
index bceddaf..7226364 100644
--- a/arch/arm/boards/freescale-mx53-loco/env/config
+++ b/arch/arm/boards/freescale-mx53-loco/env/config
@@ -22,16 +22,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/freescale-mx53-smd/env/config b/arch/arm/boards/freescale-mx53-smd/env/config
index d2afb29..3f9b0ca 100644
--- a/arch/arm/boards/freescale-mx53-smd/env/config
+++ b/arch/arm/boards/freescale-mx53-smd/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/friendlyarm-mini2440/env/config b/arch/arm/boards/friendlyarm-mini2440/env/config
index 77cc34f..b32d1a6 100644
--- a/arch/arm/boards/friendlyarm-mini2440/env/config
+++ b/arch/arm/boards/friendlyarm-mini2440/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-${hostname}.${rootfs_type}
+rootfsimage=root-${global.hostname}.${rootfs_type}
 
-kernelimage=zImage-${hostname}
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="${user}"-"${kernelimage}"
-	nfsroot="${eth0.serverip}:/home/${user}/nfsroot/${hostname}"
+	nfsroot="${eth0.serverip}:/home/${user}/nfsroot/${global.hostname}"
 	rootfsimage="${user}"-"${rootfsimage}"
 else
 	nfsroot="${eth0.serverip}:/path/to/nfs/root"
diff --git a/arch/arm/boards/guf-cupid/env/config b/arch/arm/boards/guf-cupid/env/config
index 1be875d..505369a 100644
--- a/arch/arm/boards/guf-cupid/env/config
+++ b/arch/arm/boards/guf-cupid/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/guf-neso/env/config b/arch/arm/boards/guf-neso/env/config
index 3013728..b39afda 100644
--- a/arch/arm/boards/guf-neso/env/config
+++ b/arch/arm/boards/guf-neso/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/karo-tx25/env/config b/arch/arm/boards/karo-tx25/env/config
index 28a5e7f..e592ce3 100644
--- a/arch/arm/boards/karo-tx25/env/config
+++ b/arch/arm/boards/karo-tx25/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/karo-tx28/env/config b/arch/arm/boards/karo-tx28/env/config
index b5222e9..fd9b282 100644
--- a/arch/arm/boards/karo-tx28/env/config
+++ b/arch/arm/boards/karo-tx28/env/config
@@ -22,16 +22,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/panda/env/config b/arch/arm/boards/panda/env/config
index 29a63f3..af433c8 100644
--- a/arch/arm/boards/panda/env/config
+++ b/arch/arm/boards/panda/env/config
@@ -18,14 +18,14 @@ kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-${hostname}.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/pcm027/env/config b/arch/arm/boards/pcm027/env/config
index 3ed963c..5be7871 100644
--- a/arch/arm/boards/pcm027/env/config
+++ b/arch/arm/boards/pcm027/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/pcm037/env/config b/arch/arm/boards/pcm037/env/config
index fcdb777..852b83c 100644
--- a/arch/arm/boards/pcm037/env/config
+++ b/arch/arm/boards/pcm037/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/pcm043/env/config b/arch/arm/boards/pcm043/env/config
index 644c7fb..c2d31a4 100644
--- a/arch/arm/boards/pcm043/env/config
+++ b/arch/arm/boards/pcm043/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/pcm049/env/config b/arch/arm/boards/pcm049/env/config
index efbe9ea..f5b78e5 100644
--- a/arch/arm/boards/pcm049/env/config
+++ b/arch/arm/boards/pcm049/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-${hostname}.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-${hostname}.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/phycard-a-l1/env/config b/arch/arm/boards/phycard-a-l1/env/config
index e0f4dcc..6add45c 100644
--- a/arch/arm/boards/phycard-a-l1/env/config
+++ b/arch/arm/boards/phycard-a-l1/env/config
@@ -26,26 +26,26 @@ rootfs_loc=nand
 rootfs_type=jffs2
 # where is the rootfs in case of 'rootfs_loc=disk' (linux name)
 rootfs_part_linux_dev=mmcblk0p4
-rootfsimage=rootfs-${hostname}.$rootfs_type
+rootfsimage=rootfs-${global.hostname}.$rootfs_type
 
 # where is the kernel image in case of 'kernel_loc=disk'
 kernel_part=disk0.2
 
 # The image type of the kernel. Can be uimage, zimage, raw or raw_lzo
-#kernelimage=zImage-$hostname
-kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+#kernelimage=zImage-${global.hostname}
+kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
-bareboximage=barebox-${hostname}.bin
-bareboxenvimage=barebox-${hostname}.bin
+bareboximage=barebox-${global.hostname}.bin
+bareboxenvimage=barebox-${global.hostname}.bin
 
 if [ -n $user ]; then
 	bareboximage="$user"-"$bareboximage"
 	bareboxenvimage="$user"-"$bareboxenvimage"
 	kernelimage="$user"-"$kernelimage"
 	rootfsimage="$user"-"$rootfsimage"
-	nfsroot="/home/$user/nfsroot/$hostname"
+	nfsroot="/home/$user/nfsroot/${global.hostname}"
 else
 	nfsroot="/path/to/nfs/root"
 fi
diff --git a/arch/arm/boards/phycard-a-xl2/env/config b/arch/arm/boards/phycard-a-xl2/env/config
index 59e8eb3..6bc4a59 100644
--- a/arch/arm/boards/phycard-a-xl2/env/config
+++ b/arch/arm/boards/phycard-a-xl2/env/config
@@ -20,16 +20,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-${hostname}.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-${hostname}.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/phycard-i.MX27/env/config b/arch/arm/boards/phycard-i.MX27/env/config
index 367029b..e7a77fe 100644
--- a/arch/arm/boards/phycard-i.MX27/env/config
+++ b/arch/arm/boards/phycard-i.MX27/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/arch/arm/boards/scb9328/env/config b/arch/arm/boards/scb9328/env/config
index a8eace7..77dbf03 100644
--- a/arch/arm/boards/scb9328/env/config
+++ b/arch/arm/boards/scb9328/env/config
@@ -21,16 +21,16 @@ rootfs_loc=net
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-rootfsimage=root-$hostname.$rootfs_type
+rootfsimage=root-${global.hostname}.$rootfs_type
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
 if [ -n $user ]; then
 	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$hostname"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
 	rootfsimage="$user"-"$rootfsimage"
 else
 	nfsroot="$eth0.serverip:/path/to/nfs/root"
diff --git a/defaultenv/config b/defaultenv/config
index 7b61d29..81d6f95 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -31,25 +31,25 @@ oftree_loc=tftp
 rootfs_type=ubifs
 # where is the rootfs in case of 'rootfs_loc=disk' (linux name)
 rootfs_part_linux_dev=mmcblk0p4
-rootfsimage=rootfs-${hostname}.$rootfs_type
+rootfsimage=rootfs-${global.hostname}.$rootfs_type
 
 # where is the kernel image in case of 'kernel_loc=disk'
 kernel_part=disk0.2
 
-kernelimage=zImage-$hostname
-#kernelimage=uImage-$hostname
-#kernelimage=Image-$hostname
-#kernelimage=Image-$hostname.lzo
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
 
-bareboximage=barebox-${hostname}.bin
-bareboxenvimage=barebox-${hostname}.bin
+bareboximage=barebox-${global.hostname}.bin
+bareboxenvimage=barebox-${global.hostname}.bin
 
 if [ -n $user ]; then
 	bareboximage="$user"-"$bareboximage"
 	bareboxenvimage="$user"-"$bareboxenvimage"
 	kernelimage="$user"-"$kernelimage"
 	rootfsimage="$user"-"$rootfsimage"
-	nfsroot="/home/$user/nfsroot/$hostname"
+	nfsroot="/home/$user/nfsroot/${global.hostname}"
 else
 	nfsroot="/path/to/nfs/root"
 fi
diff --git a/net/dhcp.c b/net/dhcp.c
index 79efa3e..e73cc70 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -175,7 +175,7 @@ struct dhcp_opt dhcp_options[] = {
 	}, {
 		.option = 12,
 		.handle = env_str_handle,
-		.barebox_var_name = "hostname",
+		.barebox_var_name = "global.hostname",
 	}, {
 		.option = 15,
 		.handle = env_str_handle,
@@ -248,7 +248,7 @@ struct dhcp_param dhcp_params[] = {
 	{
 		.option = DHCP_HOSTNAME,
 		.handle = dhcp_set_string_options,
-		.barebox_var_name = "hostname",
+		.barebox_var_name = "global.hostname",
 	}, {
 		.option = DHCP_VENDOR_ID,
 		.handle = dhcp_set_string_options,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
