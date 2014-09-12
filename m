Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSQzS-0003uD-7s
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 13:34:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BF178A005C7
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 15:33:56 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 12 Sep 2014 15:33:40 +0200
Message-Id: <1410528827-12722-3-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 03/10] ARM:imx6:phycard: Switch env to
 defaultenv_append_directory
To: barebox@lists.infradead.org

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-phycard-imx6/Makefile       |    1 +
 arch/arm/boards/phytec-phycard-imx6/board.c        |    3 +++
 .../defaultenv-phycard-imx6/boot/nand              |    7 +++++++
 .../defaultenv-phycard-imx6/boot/sd-ext3           |    6 ++++++
 .../defaultenv-phycard-imx6/config-board           |    9 +++++++++
 .../defaultenv-phycard-imx6/init/automount         |   14 ++++++++++++++
 arch/arm/boards/phytec-phycard-imx6/env/boot/nand  |    7 -------
 .../boards/phytec-phycard-imx6/env/boot/sd-ext3    |    6 ------
 .../boards/phytec-phycard-imx6/env/config-board    |    7 -------
 9 files changed, 40 insertions(+), 20 deletions(-)
 create mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/nand
 create mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/sd-ext3
 create mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/config-board
 create mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/init/automount
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/env/boot/nand
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/env/config-board

diff --git a/arch/arm/boards/phytec-phycard-imx6/Makefile b/arch/arm/boards/phytec-phycard-imx6/Makefile
index 01c7a25..de67f04 100644
--- a/arch/arm/boards/phytec-phycard-imx6/Makefile
+++ b/arch/arm/boards/phytec-phycard-imx6/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 lwl-y += lowlevel.o
+bbenv-y += defaultenv-phycard-imx6
diff --git a/arch/arm/boards/phytec-phycard-imx6/board.c b/arch/arm/boards/phytec-phycard-imx6/board.c
index d425b48..27b84aa 100644
--- a/arch/arm/boards/phytec-phycard-imx6/board.c
+++ b/arch/arm/boards/phytec-phycard-imx6/board.c
@@ -17,6 +17,7 @@
  *
  */
 
+#include <envfs.h>
 #include <environment.h>
 #include <bootsource.h>
 #include <common.h>
@@ -44,6 +45,8 @@ static int phytec_pcaaxl3_init(void)
 
 	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
 
+	defaultenv_append_directory(defaultenv_phycard_imx6);
+
 	return 0;
 }
 device_initcall(phytec_pcaaxl3_init);
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/nand b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/nand
new file mode 100644
index 0000000..3f3a9aa
--- /dev/null
+++ b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/nand
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+global.bootm.image="/dev/nand0.kernel.bb"
+global.bootm.oftree="/dev/nand0.oftree.bb"
+bootargs-ip
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs rw"
+
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/sd-ext3 b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/sd-ext3
new file mode 100644
index 0000000..fd35fe0
--- /dev/null
+++ b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/sd-ext3
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+global.bootm.image="/mnt/mmc/linuximage"
+global.bootm.oftree="/mnt/mmc/oftree"
+bootargs-ip
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext3 rootwait rw"
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/config-board b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/config-board
new file mode 100644
index 0000000..4d7b37c
--- /dev/null
+++ b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/config-board
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.boot.default=nand
+
+global.hostname=phyCARD-i.MX6
+global.linux.bootargs.base="console=ttymxc2,115200"
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/init/automount b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/init/automount
new file mode 100644
index 0000000..49d99bd
--- /dev/null
+++ b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/init/automount
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
diff --git a/arch/arm/boards/phytec-phycard-imx6/env/boot/nand b/arch/arm/boards/phytec-phycard-imx6/env/boot/nand
deleted file mode 100644
index cf3b25c..0000000
--- a/arch/arm/boards/phytec-phycard-imx6/env/boot/nand
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nand0.kernel.bb"
-#global.bootm.oftree="/env/oftree"
-bootargs-ip
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
-
diff --git a/arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3 b/arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3
deleted file mode 100644
index 4435633..0000000
--- a/arch/arm/boards/phytec-phycard-imx6/env/boot/sd-ext3
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/mnt/kernel/linuximage"
-#global.bootm.oftree="/boot/oftree"
-bootargs-ip
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/phytec-phycard-imx6/env/config-board b/arch/arm/boards/phytec-phycard-imx6/env/config-board
deleted file mode 100644
index 44008aa..0000000
--- a/arch/arm/boards/phytec-phycard-imx6/env/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=phyCARD-i.MX6
-global.linux.bootargs.base="console=ttymxc2,115200"
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
