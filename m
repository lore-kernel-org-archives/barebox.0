Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wm2Mj-00079g-Cu
 for barebox@lists.infradead.org; Sun, 18 May 2014 14:47:07 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Sun, 18 May 2014 16:46:27 +0200
Message-Id: <1400424390-24736-2-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1400424390-24736-1-git-send-email-m.olbrich@pengutronix.de>
References: <1400424390-24736-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: mini2440: switch to env2
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/arm/boards/friendlyarm-mini2440/env/boot/nand |  9 ++++
 arch/arm/boards/friendlyarm-mini2440/env/config    | 54 ----------------------
 .../boards/friendlyarm-mini2440/env/config-board   | 16 +++++++
 .../friendlyarm-mini2440/env/init/mtdparts-nand    | 11 +++++
 arch/arm/mach-samsung/Kconfig                      |  1 +
 5 files changed, 37 insertions(+), 54 deletions(-)
 create mode 100644 arch/arm/boards/friendlyarm-mini2440/env/boot/nand
 delete mode 100644 arch/arm/boards/friendlyarm-mini2440/env/config
 create mode 100644 arch/arm/boards/friendlyarm-mini2440/env/config-board
 create mode 100644 arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand

diff --git a/arch/arm/boards/friendlyarm-mini2440/env/boot/nand b/arch/arm/boards/friendlyarm-mini2440/env/boot/nand
new file mode 100644
index 0000000..3037fd4
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-mini2440/env/boot/nand
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nand (UBI)"
+	exit
+fi
+
+global.bootm.image="/dev/nand0.kernel.bb"
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/friendlyarm-mini2440/env/config b/arch/arm/boards/friendlyarm-mini2440/env/config
deleted file mode 100644
index f060aae..0000000
--- a/arch/arm/boards/friendlyarm-mini2440/env/config
+++ /dev/null
@@ -1,54 +0,0 @@
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
-# can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=tftp
-# can be either 'net', 'nand' or 'initrd'
-rootfs_loc=net
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root-${global.hostname}.${rootfs_type}
-
-kernelimage=zImage-${global.hostname}
-#kernelimage=uImage-${global.hostname}
-#kernelimage=Image-${global.hostname}
-#kernelimage=Image-${global.hostname}.lzo
-
-if [ -n $user ]; then
-	kernelimage="${user}"-"${kernelimage}"
-	nfsroot="${eth0.serverip}:/home/${user}/nfsroot/${global.hostname}"
-	rootfsimage="${user}"-"${rootfsimage}"
-else
-	nfsroot="${eth0.serverip}:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-#
-# "mini2440" kernel parameter
-# 0 .. 9 = screen type
-# b = backlight enabled
-# t = touch enabled
-# c = camera enabled
-# Note: can be "minit2440= " if nothing of these components are connected
-#
-bootargs="console=ttySAC0,115200 mini2440=0tbc"
-
-# TODO NOR support
-
-nand_device="nand"
-nand_parts="256k(barebox),128k(bareboxenv),1536k(kernel),-(root)"
-rootfs_mtdblock_nand=3
diff --git a/arch/arm/boards/friendlyarm-mini2440/env/config-board b/arch/arm/boards/friendlyarm-mini2440/env/config-board
new file mode 100644
index 0000000..3e07a01
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-mini2440/env/config-board
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.linux.bootargs.console="console=ttySAC0,115200"
+
+#
+# "mini2440" kernel parameter
+# 0 .. 9 = screen type
+# b = backlight enabled
+# t = touch enabled
+# c = camera enabled
+# Note: can be "minit2440= " if nothing of these components are connected
+#
+global.linux.bootargs.base="mini2440=6tb"
diff --git a/arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand b/arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand
new file mode 100644
index 0000000..7271341
--- /dev/null
+++ b/arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NAND partitions"
+	exit
+fi
+
+mtdparts="256k(nand0.barebox),128k(nand0.bareboxenv),1536k(nand0.kernel),-(nand0.root)"
+kernelname="nand"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 562b392..13dac29 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -52,6 +52,7 @@ config MACH_MINI2440
 	select S3C_PLL_INIT
 	select S3C_SDRAM_INIT
 	select HAS_DM9000
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using Mini 2440 dev board equipped
 	  with a Samsung S3C2440 Processor
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
