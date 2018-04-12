Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgh-0007x3-67
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:17 +0200
Message-Id: <20180412073017.6750-17-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/16] ARM: i.MX: phytec-som-imx6: Change kernel boot image to
 zImage
To: Barebox List <barebox@lists.infradead.org>
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>

From: Stefan Riedmueller <s.riedmueller@phytec.de>

Use zImage instead of linuximage as kernel boot image name for mmc and
emmc.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc | 2 +-
 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc
index 4e286dc325..f0d019c3ee 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc
@@ -5,6 +5,6 @@ if [ -f /mnt/mmc3/android ]; then
 	global linux.bootargs.sec="selinux=0 enforcing=0"
 fi
 
-global.bootm.image="/mnt/mmc3/linuximage"
+global.bootm.image="/mnt/mmc3/zImage"
 global.bootm.oftree="/mnt/mmc3/oftree"
 global.linux.bootargs.dyn.root="root=/dev/mmcblk3p2 rootwait rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc
index df874f0a38..3e175122dd 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/mmc
@@ -5,6 +5,6 @@ if [ -f /mnt/mmc/android ]; then
 	global linux.bootargs.sec="selinux=0 enforcing=0"
 fi
 
-global.bootm.image="/mnt/mmc/linuximage"
+global.bootm.image="/mnt/mmc/zImage"
 global.bootm.oftree="/mnt/mmc/oftree"
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait rw"
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
