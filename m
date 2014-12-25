Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4Bux-0006Tv-My
 for barebox@lists.infradead.org; Thu, 25 Dec 2014 17:09:46 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 25 Dec 2014 18:08:58 +0100
Message-Id: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 1/8] fixup! ARM: MXS: Add multiimage support
To: barebox@lists.infradead.org

The MX23 needs a different image config, so use separate files for
MX23/MX28.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-mxs/mxs23img.cfg | 6 ++++++
 arch/arm/mach-mxs/mxs28img.cfg | 8 ++++++++
 arch/arm/mach-mxs/mxsimg.cfg   | 8 --------
 images/Makefile.mxs            | 5 +++--
 4 files changed, 17 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm/mach-mxs/mxs23img.cfg
 create mode 100644 arch/arm/mach-mxs/mxs28img.cfg
 delete mode 100644 arch/arm/mach-mxs/mxsimg.cfg

diff --git a/arch/arm/mach-mxs/mxs23img.cfg b/arch/arm/mach-mxs/mxs23img.cfg
new file mode 100644
index 0000000..34e8848
--- /dev/null
+++ b/arch/arm/mach-mxs/mxs23img.cfg
@@ -0,0 +1,6 @@
+SECTION 0x0 BOOTABLE
+ TAG LAST
+ LOAD     0x1000     @PREP@
+ CALL     0x1000     0x0
+ LOAD     0x40002000 @BOOTLOADER@
+ CALL     0x40002000 0x0
diff --git a/arch/arm/mach-mxs/mxs28img.cfg b/arch/arm/mach-mxs/mxs28img.cfg
new file mode 100644
index 0000000..0ff2c35
--- /dev/null
+++ b/arch/arm/mach-mxs/mxs28img.cfg
@@ -0,0 +1,8 @@
+SECTION 0x0 BOOTABLE
+ TAG LAST
+ LOAD     0x1000     @PREP@
+ LOAD IVT 0x8000     0x1000
+ CALL HAB 0x8000     0x0
+ LOAD     0x40002000 @BOOTLOADER@
+ LOAD IVT 0x8000     0x40002000
+ CALL HAB 0x8000     0x0
diff --git a/arch/arm/mach-mxs/mxsimg.cfg b/arch/arm/mach-mxs/mxsimg.cfg
deleted file mode 100644
index 0ff2c35..0000000
--- a/arch/arm/mach-mxs/mxsimg.cfg
+++ /dev/null
@@ -1,8 +0,0 @@
-SECTION 0x0 BOOTABLE
- TAG LAST
- LOAD     0x1000     @PREP@
- LOAD IVT 0x8000     0x1000
- CALL HAB 0x8000     0x0
- LOAD     0x40002000 @BOOTLOADER@
- LOAD IVT 0x8000     0x40002000
- CALL HAB 0x8000     0x0
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index 41db9c4..811345c 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -19,11 +19,12 @@ $(obj)/%.mxssd: $(obj)/%
 	$(call if_changed,mxs_sd)
 
 board = $(srctree)/arch/$(ARCH)/boards
-mxscfg = $(srctree)/arch/arm/mach-mxs/mxsimg.cfg
+mxs23cfg = $(srctree)/arch/arm/mach-mxs/mxs23img.cfg
+mxs28cfg = $(srctree)/arch/arm/mach-mxs/mxs28img.cfg
 
 pblx-$(CONFIG_MACH_TX28) += start_barebox_karo_tx28 prep_start_barebox_karo_tx28
 PREP_start_barebox_karo_tx28.pblx.mxsbs = start_barebox_karo_tx28_prep
-CFG_start_barebox_karo_tx28.mxsbs = $(mxscfg)
+CFG_start_barebox_karo_tx28.mxsbs = $(mxs28cfg)
 FILE_barebox-karo-tx28-bootstream.img = start_barebox_karo_tx28.mxsbs
 image-$(CONFIG_MACH_TX28) += barebox-karo-tx28-bootstream.img
 FILE_barebox-karo-tx28-sd.img = start_barebox_karo_tx28.mxsbs.mxssd
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
