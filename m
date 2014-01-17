Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axf-0003Il-Jw
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:14 +0100
Message-Id: <1389971012-22977-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/22] ARM: phyCARD-i.MX27: switch to new environment
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phycard-i.MX27/env/config          | 48 ----------------------
 .../boards/phycard-i.MX27/env/init/mtdparts-nand   | 11 +++++
 arch/arm/mach-imx/Kconfig                          |  1 +
 3 files changed, 12 insertions(+), 48 deletions(-)
 delete mode 100644 arch/arm/boards/phycard-i.MX27/env/config
 create mode 100644 arch/arm/boards/phycard-i.MX27/env/init/mtdparts-nand

diff --git a/arch/arm/boards/phycard-i.MX27/env/config b/arch/arm/boards/phycard-i.MX27/env/config
deleted file mode 100644
index 9f10e7d..0000000
--- a/arch/arm/boards/phycard-i.MX27/env/config
+++ /dev/null
@@ -1,48 +0,0 @@
-#!/bin/sh
-
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
-rootfsimage=root-${global.hostname}.$rootfs_type
-
-kernelimage=zImage-${global.hostname}
-#kernelimage=uImage-${global.hostname}
-#kernelimage=Image-${global.hostname}
-#kernelimage=Image-${global.hostname}.lzo
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$eth0.serverip:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttymxc0,115200"
-
-nand_parts="512k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
-rootfs_mtdblock_nand=7
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
-
diff --git a/arch/arm/boards/phycard-i.MX27/env/init/mtdparts-nand b/arch/arm/boards/phycard-i.MX27/env/init/mtdparts-nand
new file mode 100644
index 0000000..e2dcfab
--- /dev/null
+++ b/arch/arm/boards/phycard-i.MX27/env/init/mtdparts-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NAND partitions"
+	exit
+fi
+
+mtdparts="512k(nand0.barebox),512k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
+kernelname="mxc_nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3a1089f..1b34127 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -310,6 +310,7 @@ config MACH_IMX27ADS
 config MACH_PCA100
 	bool "phyCard-i.MX27"
 	select ARCH_IMX27
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using Phytec's phyCard-i.MX27 (pca100) equipped
 	  with a Freescale i.MX27 Processor
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
