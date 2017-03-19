Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cpeEc-0001GO-F4
 for barebox@lists.infradead.org; Sun, 19 Mar 2017 17:03:16 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 19 Mar 2017 18:02:21 +0100
Message-Id: <1489942941-16270-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM: i.MX WaRP7: Add defaultenv and boot pre-installed kernel
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The WaRP7 board is shipped with a pre-installed system.
Boot the zImage and dtb from the first partition by default.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/element14-warp7/Makefile                         | 1 +
 arch/arm/boards/element14-warp7/board.c                          | 3 +++
 arch/arm/boards/element14-warp7/defaultenv-warp7/boot/mmc_kernel | 7 +++++++
 arch/arm/boards/element14-warp7/defaultenv-warp7/nv/boot.default | 1 +
 4 files changed, 12 insertions(+)
 create mode 100644 arch/arm/boards/element14-warp7/defaultenv-warp7/boot/mmc_kernel
 create mode 100644 arch/arm/boards/element14-warp7/defaultenv-warp7/nv/boot.default

diff --git a/arch/arm/boards/element14-warp7/Makefile b/arch/arm/boards/element14-warp7/Makefile
index 01c7a25..847f452 100644
--- a/arch/arm/boards/element14-warp7/Makefile
+++ b/arch/arm/boards/element14-warp7/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 lwl-y += lowlevel.o
+bbenv-y += defaultenv-warp7
diff --git a/arch/arm/boards/element14-warp7/board.c b/arch/arm/boards/element14-warp7/board.c
index 84fc885..b1fe202 100644
--- a/arch/arm/boards/element14-warp7/board.c
+++ b/arch/arm/boards/element14-warp7/board.c
@@ -21,6 +21,7 @@
 #include <partition.h>
 #include <mach/generic.h>
 #include <linux/sizes.h>
+#include <envfs.h>
 
 static int warp7_devices_init(void)
 {
@@ -30,6 +31,8 @@ static int warp7_devices_init(void)
 	imx6_bbu_internal_mmc_register_handler("mmc", "/dev/mmc2.boot0.barebox",
 					       BBU_HANDLER_FLAG_DEFAULT);
 
+	defaultenv_append_directory(defaultenv_warp7);
+
 	return 0;
 }
 device_initcall(warp7_devices_init);
diff --git a/arch/arm/boards/element14-warp7/defaultenv-warp7/boot/mmc_kernel b/arch/arm/boards/element14-warp7/defaultenv-warp7/boot/mmc_kernel
new file mode 100644
index 0000000..dd0a31b
--- /dev/null
+++ b/arch/arm/boards/element14-warp7/defaultenv-warp7/boot/mmc_kernel
@@ -0,0 +1,7 @@
+#!/bin/sh
+[ -d /mnt/mmc2.0 ] || mkdir /mnt/mmc2.0
+mount -t fat /dev/mmc2.0 /mnt/mmc2.0/
+
+global linux.bootargs.dyn.root="console=ttymxc0,115200 root=/dev/mmcblk2p2 rootwait rw"
+
+bootm -v -o /mnt/mmc2.0/imx7s-warp.dtb /mnt/mmc2.0/zImage
diff --git a/arch/arm/boards/element14-warp7/defaultenv-warp7/nv/boot.default b/arch/arm/boards/element14-warp7/defaultenv-warp7/nv/boot.default
new file mode 100644
index 0000000..3118b7a
--- /dev/null
+++ b/arch/arm/boards/element14-warp7/defaultenv-warp7/nv/boot.default
@@ -0,0 +1 @@
+mmc_kernel
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
