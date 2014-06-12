Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wuyti-0005bv-Ei
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 06:54:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Jun 2014 08:53:40 +0200
Message-Id: <1402556023-1811-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
References: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] ARM: Phytec-phyCORE-imx27: Register board env during
 runtime
To: barebox@lists.infradead.org

Register the board specific environment during runtime using
defaultenv_append_directory() to make it available for multi
image support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-imx27/Makefile                  |  1 +
 .../phytec-phycore-imx27/defaultenv-pcm038/boot/nand-ubi       | 10 ++++++++++
 .../arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nor |  9 +++++++++
 arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi         | 10 ----------
 arch/arm/boards/phytec-phycore-imx27/env/boot/nor              |  9 ---------
 arch/arm/boards/phytec-phycore-imx27/pcm038.c                  |  3 +++
 arch/arm/configs/phytec-phycore-imx27_defconfig                |  2 +-
 7 files changed, 24 insertions(+), 20 deletions(-)
 create mode 100644 arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nand-ubi
 create mode 100644 arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nor
 delete mode 100644 arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/phytec-phycore-imx27/env/boot/nor

diff --git a/arch/arm/boards/phytec-phycore-imx27/Makefile b/arch/arm/boards/phytec-phycore-imx27/Makefile
index eb82f0d..4723c77 100644
--- a/arch/arm/boards/phytec-phycore-imx27/Makefile
+++ b/arch/arm/boards/phytec-phycore-imx27/Makefile
@@ -1,2 +1,3 @@
 obj-y	+= pcm038.o pcm970.o
 lwl-y	+= lowlevel.o
+bbenv-y += defaultenv-pcm038
diff --git a/arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nand-ubi b/arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nand-ubi
new file mode 100644
index 0000000..67b0cb4
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nand-ubi
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nand (UBI)"
+	exit
+fi
+
+global.bootm.image="/dev/nand0.kernel.bb"
+#global.bootm.oftree="/env/oftree"
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nor b/arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nor
new file mode 100644
index 0000000..0d10584
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx27/defaultenv-pcm038/boot/nor
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nor"
+	exit
+fi
+
+global.bootm.image="/dev/nor0.kernel"
+global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
diff --git a/arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi b/arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi
deleted file mode 100644
index 67b0cb4..0000000
--- a/arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi
+++ /dev/null
@@ -1,10 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
-	exit
-fi
-
-global.bootm.image="/dev/nand0.kernel.bb"
-#global.bootm.oftree="/env/oftree"
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-imx27/env/boot/nor b/arch/arm/boards/phytec-phycore-imx27/env/boot/nor
deleted file mode 100644
index 0d10584..0000000
--- a/arch/arm/boards/phytec-phycore-imx27/env/boot/nor
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nor"
-	exit
-fi
-
-global.bootm.image="/dev/nor0.kernel"
-global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
index 07982fa..294f4ec 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm038.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
@@ -21,6 +21,7 @@
 #include <io.h>
 #include <notifier.h>
 #include <sizes.h>
+#include <envfs.h>
 #include <mach/devices-imx27.h>
 #include <mach/imx-pll.h>
 #include <mach/imx27-regs.h>
@@ -174,6 +175,8 @@ static int pcm038_init(void)
 	/* Clock gating enable */
 	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR);
 
+	defaultenv_append_directory(defaultenv_pcm038);
+
 	return 0;
 }
 device_initcall(pcm038_init);
diff --git a/arch/arm/configs/phytec-phycore-imx27_defconfig b/arch/arm/configs/phytec-phycore-imx27_defconfig
index 277d21c..b3cd0bc 100644
--- a/arch/arm/configs/phytec-phycore-imx27_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx27_defconfig
@@ -17,7 +17,7 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-imx27/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH=""
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
