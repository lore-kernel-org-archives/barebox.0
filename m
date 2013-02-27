Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UAdqw-0000ER-SA
 for barebox@lists.infradead.org; Wed, 27 Feb 2013 10:03:11 +0000
Received: from localhost (col31-4-88-188-83-94.fbx.proxad.net [88.188.83.94])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 4824B736
 for <barebox@lists.infradead.org>; Wed, 27 Feb 2013 11:03:10 +0100 (CET)
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Wed, 27 Feb 2013 11:03:07 +0100
Message-Id: <1361959387-6909-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH] ARM: cfa10036: Remove the boot partition and boot from ext
To: barebox@lists.infradead.org

Support for ext filesystems has been introduced recently. We can now
boot directly from our rootfs, loading the kernel and device tree
images from /boot.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    6 +++---
 arch/arm/configs/cfa10036_defconfig                     |    1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
index 439d174..4d830ed 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
@@ -5,6 +5,6 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-global.bootm.image="/mnt/disk0.2/zImage-${global.hostname}"
-global.bootm.oftree="/mnt/disk0.2/oftree-${global.board.variant}"
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p4 rootfstype=ext3 rootwait"
+global.bootm.image="/mnt/disk0.2/boot/zImage-${global.hostname}"
+global.bootm.oftree="/mnt/disk0.2/boot/oftree-${global.board.variant}"
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p3 rootfstype=ext3 rootwait"
diff --git a/arch/arm/configs/cfa10036_defconfig b/arch/arm/configs/cfa10036_defconfig
index c55d50d..277a3ec 100644
--- a/arch/arm/configs/cfa10036_defconfig
+++ b/arch/arm/configs/cfa10036_defconfig
@@ -39,5 +39,6 @@ CONFIG_I2C=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MXS=y
+CONFIG_FS_EXT4=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_LFN=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
