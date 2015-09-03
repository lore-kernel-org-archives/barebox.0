Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXOmU-0004wY-4V
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 07:17:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 17E97A00388
 for <barebox@lists.infradead.org>; Thu,  3 Sep 2015 09:19:32 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Thu, 3 Sep 2015 09:17:29 +0200
Message-Id: <1441264649-44064-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH] ARM: boards: Fix beaglebone enviroment
To: barebox@lists.infradead.org

This patch adds missing enviroment files to boot from different sources.
Also adds the handling of default bootsources.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 .../arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc |  6 ++++++
 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc |  6 ++++++
 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/net | 15 +++++++++++++++
 .../beaglebone/defaultenv-beaglebone/init/bootsource      | 13 +++++++++++++
 4 files changed, 40 insertions(+)
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/net
 create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/bootsource

diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
new file mode 100644
index 0000000..cc2bea2
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+mount /dev/mmc1.0 /mnt/
+global.bootm.image=/mnt/linuximage
+global.bootm.oftree=/mnt/oftree
+global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rootwait rw"
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc
new file mode 100644
index 0000000..96255d5
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+mount /dev/mmc0.0 /mnt/
+global.bootm.image=/mnt/linuximage
+global.bootm.oftree=/mnt/oftree
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait rw"
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/net b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/net
new file mode 100644
index 0000000..5ca4bad
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/net
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+path="/mnt/tftp"
+
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+
+oftree="${path}/${global.user}-oftree-${global.hostname}"
+if [ -f "${oftree}" ]; then
+        global.bootm.oftree="$oftree"
+fi
+
+nfsroot="/nfsroot/${global.hostname}"
+bootargs-ip
+/env/config-expansions
+global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,vers=3,udp rw"
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/bootsource b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/bootsource
new file mode 100644
index 0000000..c36d723
--- /dev/null
+++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/bootsource
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+if [ $bootsource = mmc -a $bootsource_instance = 1 ]; then
+	global.boot.default="emmc mmc net"
+elif [ $bootsource = mmc -a $bootsource_instance = 0 ]; then
+	global.boot.default="mmc emmc net"
+elif [ $bootsource = net ]; then
+	global.boot.default="net emmc mmc"
+fi
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
