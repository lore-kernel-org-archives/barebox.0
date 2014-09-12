Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQzn-0003ze-RU
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 13:34:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id EC59CA0065A
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 15:33:56 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 12 Sep 2014 15:33:41 +0200
Message-Id: <1410528827-12722-4-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
References: <1410528827-12722-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 04/10] ARM:imx6:phyflex: Add defaultenv
To: barebox@lists.infradead.org

Add defaultenv_append_directory to phyFLEX-i.MX6.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-phyflex-imx6/Makefile       |    1 +
 arch/arm/boards/phytec-phyflex-imx6/board.c        |    3 +++
 .../defaultenv-phyflex-imx6/boot/nand              |    6 ++++++
 .../defaultenv-phyflex-imx6/boot/sd-ext3           |    6 ++++++
 .../defaultenv-phyflex-imx6/config-board           |    9 +++++++++
 .../defaultenv-phyflex-imx6/init/automount         |   14 ++++++++++++++
 6 files changed, 39 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/nand
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/sd-ext3
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/config-board
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/init/automount

diff --git a/arch/arm/boards/phytec-phyflex-imx6/Makefile b/arch/arm/boards/phytec-phyflex-imx6/Makefile
index 01c7a25..11e1c7d 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/Makefile
+++ b/arch/arm/boards/phytec-phyflex-imx6/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 lwl-y += lowlevel.o
+bbenv-y += defaultenv-phyflex-imx6
diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index 94e3f6f..843edac 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -17,6 +17,7 @@
  *
  */
 
+#include <envfs.h>
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
@@ -102,6 +103,8 @@ static int phytec_pfla02_init(void)
 
 	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
 
+	defaultenv_append_directory(defaultenv_phyflex_imx6);
+
 	return 0;
 }
 device_initcall(phytec_pfla02_init);
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/nand b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/nand
new file mode 100644
index 0000000..79dc03c
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/nand
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nand0.kernel.bb"
+global.bootm.oftree="/dev/nand0.oftree.bb"
+bootargs-ip
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs rw"
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/sd-ext3 b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/sd-ext3
new file mode 100644
index 0000000..fd35fe0
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/sd-ext3
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+global.bootm.image="/mnt/mmc/linuximage"
+global.bootm.oftree="/mnt/mmc/oftree"
+bootargs-ip
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext3 rootwait rw"
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/config-board b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/config-board
new file mode 100644
index 0000000..b40a4de
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/config-board
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.boot.default=nand
+
+global.hostname=phyFLEX-i.MX6
+global.linux.bootargs.base="console=ttymxc3,115200"
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/init/automount b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/init/automount
new file mode 100644
index 0000000..49d99bd
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/init/automount
@@ -0,0 +1,14 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Automountpoints"
+	exit
+fi
+
+# automount tftp server based on $eth0.serverip
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+
+mkdir -p /mnt/mmc
+automount -d /mnt/mmc 'mmc2.probe=1 && [ -e /dev/mmc2.0 ] && mount /dev/mmc2.0 /mnt/mmc'
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
