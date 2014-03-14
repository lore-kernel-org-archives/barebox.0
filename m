Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOSCC-0003Ht-H3
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 13:30:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 14:30:17 +0100
Message-Id: <1394803820-29277-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
References: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: pfla02: add 4GB version
To: barebox@lists.infradead.org

From: Christian Hemp <c.hemp@phytec.de>

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 .../flash-header-phytec-pfla02-1gib.imxcfg                |  2 +-
 .../flash-header-phytec-pfla02-2gib.imxcfg                |  2 +-
 .../flash-header-phytec-pfla02-4gib.imxcfg                |  6 ++++++
 .../phytec-phyflex-imx6/flash-header-phytec-pfla02.h      |  2 +-
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c            | 15 +++++++++++++++
 images/Makefile.imx                                       |  6 ++++++
 6 files changed, 30 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg

diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
index 524ebca..d73207c 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
@@ -1,5 +1,5 @@
 
-#define SETUP_1GIB_2GIB			\
+#define SETUP_1GIB_2GIB_4GIB		\
 	wm 32 0x021b0040 0x00000017;	\
 	wm 32 0x021b0000 0xc21a0000
 
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
index bf6e0ab..2291b71 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
@@ -1,5 +1,5 @@
 
-#define SETUP_1GIB_2GIB			\
+#define SETUP_1GIB_2GIB_4GIB		\
 	wm 32 0x021b0040 0x00000027;	\
 	wm 32 0x021b0000 0xC31A0000
 
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
new file mode 100644
index 0000000..c6dc775
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
@@ -0,0 +1,6 @@
+
+#define SETUP_1GIB_2GIB_4GIB             \
+        wm 32 0x021b0040 0x00000047;    \
+        wm 32 0x021b0000 0xC41A0000
+
+#include "flash-header-phytec-pfla02.h"
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
index b90f7cb..138ae36 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
@@ -60,7 +60,7 @@ wm 32 0x021b0030 0x005b0e21
 wm 32 0x021b0008 0x09444040
 wm 32 0x021b0004 0x00025576
 
-SETUP_1GIB_2GIB
+SETUP_1GIB_2GIB_4GIB
 
 wm 32 0x021b001c 0x04088032
 wm 32 0x021b001c 0x0408803a
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index 6422bc4..c0b0c87 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -86,3 +86,18 @@ ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
 
 	barebox_arm_entry(0x10000000, SZ_2G, fdt);
 }
+
+ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	fdt = (uint32_t)__dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, 0xEFFFFFF8, fdt);
+}
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5b650de..29cec43 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -82,6 +82,12 @@ CFG_start_imx6q_mba6x.pblx.imximg = $(board)/tqma6x/flash-header-tqma6q.imxcfg
 FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblx.imximg
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x.img
 
+pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_4gib
+CFG_start_phytec_pbab01_4gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
+imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_4gib.pblx.imximg
+FILE_barebox-phytec-pbab01-4gib.img = start_phytec_pbab01_4gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-4gib.img
+
 pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_2gib
 CFG_start_phytec_pbab01_2gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
 FILE_barebox-phytec-pbab01-2gib.img = start_phytec_pbab01_2gib.pblx.imximg
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
