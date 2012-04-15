Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJSDz-0001oJ-30
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:22:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 18:22:41 +0200
Message-Id: <1334506961-31245-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334506961-31245-1-git-send-email-s.hauer@pengutronix.de>
References: <1334506961-31245-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM pcm038: switch to new default environment
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/env/config |   98 +++++++++++++++++++++----------------
 arch/arm/mach-imx/Kconfig         |    1 +
 2 files changed, 56 insertions(+), 43 deletions(-)

diff --git a/arch/arm/boards/pcm038/env/config b/arch/arm/boards/pcm038/env/config
index b1a5f42..d60bdea 100644
--- a/arch/arm/boards/pcm038/env/config
+++ b/arch/arm/boards/pcm038/env/config
@@ -1,52 +1,64 @@
 #!/bin/sh
 
-machine=pcm038
-eth0.serverip=
-user=
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp', 'nor' or 'nand'
-kernel_loc=tftp
-# can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=net
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root-$machine.$rootfs_type
-
-kernelimage=zImage-$machine
-#kernelimage=uImage-$machine
-#kernelimage=Image-$machine
-#kernelimage=Image-$machine.lzo
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$eth0.serverip:/path/to/nfs/root"
-fi
+#
+# ----- misc variables -----
+#
 
+user=none
+hostname=pcm038
 autoboot_timeout=3
+tftp_path="/mnt/tftp-dhcp"
 
-bootargs="console=ttymxc0,115200"
+#
+# ----- kernel, oftree and nfsroot -----
+#
 
-nor_parts="512k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
-rootfs_mtdblock_nor=3
+kernel="${tftp_path}/${user}-linux-${hostname}"
+#kernel="/dev/nand0.kernel.bb"
+#kernel="/dev/nor0.kernel"
+#bootm_opt="-o ${tftp_path}/${user}-oftree-${hostname}"
+nfsroot="/home/${user}/nfsroot/${hostname}"
 
-nand_parts="512k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
-rootfs_mtdblock_nand=7
-nand_device="mxc_nand"
+#
+# ----- mountpoints -----
+#
 
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+# FAT on usb disk example
+#automount -d /mnt/fat 'usb; mount /dev/usbdisk0.0 fat $automount_path'
+# static tftp server example
+#automount -d /mnt/tftp 'ifup eth0; mount dude tftp $automount_path'
 
+# initial bootargs
+bootargs="console=ttymxc0,115200 earlyprintk"
+
+#
+# ----- kernel ip settings -----
+#
+
+. bootargs-ip-dhcp
+#. bootargs-ip-static
+#. bootargs-ip-none
+#. bootargs-ip-barebox
+
+#
+# ----- kernel rootfs settings -----
+#
+
+. bootargs-root-nfs -n "$nfsroot"
+#. bootargs-root-ubi -r root -m nand0.root
+#. bootargs-root-jffs2 -m mtd:nand0.root
+
+#
+# ----- partitions -----
+#
+
+mtdparts_nor="512k(nor0.barebox)ro,128k(nor0.bareboxenv),2M(nor0.kernel),-(nor0.root)"
+mtdparts_nand="512k(nand0.barebox)ro,128k(nand0.bareboxenv),2M(nand0.kernel),-(nand0.root)"
+
+. mtdparts-init
+. mtdparts-add -d /dev/nor0 -k physmap-flash.0 -p ${mtdparts_nor}
+. mtdparts-add -d /dev/nand0 -k mxc_nand -b -p ${mtdparts_nand}
+
+bootargs="$bootargs mtdparts=$mtdparts"
+
+PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 2f317c2..5856c2f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -281,6 +281,7 @@ config MACH_PCM038
 	select SPI
 	select DRIVER_SPI_IMX
 	select MFD_MC13XXX
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
 	  with a Freescale i.MX27 Processor
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
