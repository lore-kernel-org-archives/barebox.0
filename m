Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgg-0007wr-Uk
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:05 +0200
Message-Id: <20180412073017.6750-5-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/16] ARM: i.MX: phytec-som-imx: env: add android boot options
To: Barebox List <barebox@lists.infradead.org>
Cc: Matthias Rabe <matthias.rabe@sigma-chemnitz.de>

From: Matthias Rabe <matthias.rabe@sigma-chemnitz.de>

Set needed bootargs for android in mmc, emmc and nand boot.

Signed-off-by: Matthias Rabe <matthias.rabe@sigma-chemnitz.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc | 5 +++++
 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc  | 5 +++++
 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand | 5 +++++
 3 files changed, 15 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc
index 83924df5d7..4e286dc325 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc
@@ -1,5 +1,10 @@
 #!/bin/sh
 
+if [ -f /mnt/mmc3/android ]; then
+	# configure here the android specific stuff
+	global linux.bootargs.sec="selinux=0 enforcing=0"
+fi
+
 global.bootm.image="/mnt/mmc3/linuximage"
 global.bootm.oftree="/mnt/mmc3/oftree"
 global.linux.bootargs.dyn.root="root=/dev/mmcblk3p2 rootwait rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc
index 332fc26ad0..df874f0a38 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc
@@ -1,5 +1,10 @@
 #!/bin/sh
 
+if [ -f /mnt/mmc/android ]; then
+	# configure here the android specific stuff
+	global linux.bootargs.sec="selinux=0 enforcing=0"
+fi
+
 global.bootm.image="/mnt/mmc/linuximage"
 global.bootm.oftree="/mnt/mmc/oftree"
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
index e4eded530d..0c2b1cbe4c 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
@@ -2,6 +2,11 @@
 
 [ ! -e /dev/nand0.root.ubi ] && ubiattach /dev/nand0.root
 
+if [ -e /dev/nand0.root.ubi.system ]; then
+	# configure here the android specific stuff
+	global linux.bootargs.sec="selinux=0 enforcing=0"
+fi
+
 global.bootm.image="/dev/nand0.root.ubi.kernel"
 global.bootm.oftree="/dev/nand0.root.ubi.oftree"
 global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs rw"
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
