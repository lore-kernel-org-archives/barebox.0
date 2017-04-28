Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d45IZ-0008DF-69
 for barebox@lists.infradead.org; Fri, 28 Apr 2017 12:47:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 90F5CA004EC
 for <barebox@lists.infradead.org>; Fri, 28 Apr 2017 14:46:54 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 28 Apr 2017 14:46:07 +0200
Message-Id: <1493383568-27798-6-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
References: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 6/7] arm: boards: beaglebone: Update boot scripts
To: barebox@lists.infradead.org

Remove the current SD boot script and add support for MMC, EMMC and
network bootsources.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc  |  9 +++++++++
 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc   |  9 +++++++++
 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd    |  6 ------
 .../boards/beaglebone/defaultenv-beaglebone/init/bootsource | 13 +++++++++++++
 4 files changed, 31 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc
 delete mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/bootsource

diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
new file mode 100644
index 0000000..5734e3b
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+if [ -e /mnt/emmc/linuximage ]
+	global.bootm.image=/mnt/emmc/linuximage
+else
+	global.bootm.image=/mnt/emmc/uImage
+fi
+global.bootm.oftree=/mnt/emmc/oftree
+global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rootflags='data=journal'"
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc
new file mode 100644
index 0000000..e8bd769
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+if [ -e /mnt/mmc/linuximage ]
+	global.bootm.image=/mnt/mmc/linuximage
+else
+	global.bootm.image=/mnt/mmc/uImage
+fi
+global.bootm.oftree=/mnt/mmc/oftree
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootflags='data=journal'"
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
deleted file mode 100644
index aa94b2f..0000000
--- a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-global.bootm.image=/boot/uImage
-global.bootm.oftree=/boot/oftree
-#global.bootm.initrd=<path to initrd>
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/bootsource b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/bootsource
new file mode 100644
index 0000000..6301d1d
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/bootsource
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+    exit
+fi
+
+if [ $bootsource = mmc -a $bootsource_instance = 1 ]; then
+    global.boot.default="emmc mmc net"
+elif [ $bootsource = mmc -a $bootsource_instance = 0 ]; then
+    global.boot.default="mmc emmc net"
+elif [ $bootsource = net ]; then
+    global.boot.default="net emmc mmc"
+fi
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
