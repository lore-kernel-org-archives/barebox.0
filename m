Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqj3-0006bo-Mr
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:47 +0200
Message-Id: <1377500163-28962-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/22] ARM: omap: fix omap_save_bootinfo
To: barebox@lists.infradead.org

omap_save_bootinfo derefences the argument passed to barebox without
checking it for validity. This breaks 2nd stage booting where r0
is undefined. The best we can do is to check whether the pointer is
somewhere in SRAM and is word aligned. This at least makes sure that
we do not oops. This introduces SoC specific xxx_save_bootinfo variants
since the SRAM addresses/sizes differ between SoCs.

Additionally fix the prototype for omap_save_bootinfo. It uses r0, so
it must be passed this variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/archosg9/lowlevel.c              |  3 ++-
 arch/arm/boards/beagle/lowlevel.c                |  3 ++-
 arch/arm/boards/beaglebone/lowlevel.c            |  3 ++-
 arch/arm/boards/omap343xdsp/lowlevel.c           |  3 ++-
 arch/arm/boards/omap3evm/lowlevel.c              |  3 ++-
 arch/arm/boards/panda/lowlevel.c                 |  3 ++-
 arch/arm/boards/pcm049/lowlevel.c                |  3 ++-
 arch/arm/boards/pcm051/lowlevel.c                |  2 +-
 arch/arm/boards/phycard-a-l1/lowlevel.c          |  3 ++-
 arch/arm/boards/phycard-a-xl2/lowlevel.c         |  3 ++-
 arch/arm/mach-omap/include/mach/am33xx-generic.h | 17 +++++++++++++++++
 arch/arm/mach-omap/include/mach/am33xx-silicon.h |  7 ++++---
 arch/arm/mach-omap/include/mach/generic.h        |  2 +-
 arch/arm/mach-omap/include/mach/omap3-generic.h  | 21 +++++++++++++++++++++
 arch/arm/mach-omap/include/mach/omap4-generic.h  | 21 +++++++++++++++++++++
 15 files changed, 83 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm/mach-omap/include/mach/omap3-generic.h
 create mode 100644 arch/arm/mach-omap/include/mach/omap4-generic.h

diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index 8be345b..6c93992 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -17,6 +17,7 @@
 #include <mach/generic.h>
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
+#include <mach/omap4-generic.h>
 #include <mach/omap4-clock.h>
 #include <mach/syslib.h>
 #include <asm/barebox-arm.h>
@@ -67,7 +68,7 @@ static noinline void archosg9_init_lowlevel(void)
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
 {
-	omap_save_bootinfo();
+	omap4_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index ef7e3c0..ad46386 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -6,6 +6,7 @@
 #include <mach/control.h>
 #include <mach/generic.h>
 #include <mach/omap3-silicon.h>
+#include <mach/omap3-generic.h>
 #include <mach/omap3-mux.h>
 #include <mach/sdrc.h>
 #include <mach/syslib.h>
@@ -182,7 +183,7 @@ static int beagle_board_init(void)
 
 void __naked  __bare_init barebox_arm_reset_vector(uint32_t *data)
 {
-	omap_save_bootinfo();
+	omap3_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 2f3b3df..be775a8 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -10,6 +10,7 @@
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
 #include <mach/am33xx-mux.h>
+#include <mach/am33xx-generic.h>
 #include <mach/wdt.h>
 
 /* UART Defines */
@@ -251,7 +252,7 @@ static int beaglebone_board_init(void)
 
 void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
 {
-	omap_save_bootinfo();
+	am33xx_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
index 61b7f99..fcb9571 100644
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -10,6 +10,7 @@
 #include <mach/control.h>
 #include <mach/syslib.h>
 #include <mach/omap3-silicon.h>
+#include <mach/omap3-generic.h>
 #include <mach/sys_info.h>
 
 /**
@@ -549,7 +550,7 @@ static int sdp343x_board_init(void)
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
 {
-	omap_save_bootinfo();
+	omap3_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
index ea92835..98f1476 100644
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -9,6 +9,7 @@
 #include <mach/control.h>
 #include <mach/syslib.h>
 #include <mach/omap3-silicon.h>
+#include <mach/omap3-generic.h>
 #include <mach/sys_info.h>
 
 
@@ -162,7 +163,7 @@ static int omap3_evm_board_init(void)
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
 {
-	omap_save_bootinfo();
+	omap3_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index a21d559..205aaaf 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -23,6 +23,7 @@
 #include <mach/generic.h>
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
+#include <mach/omap4-generic.h>
 #include <mach/omap4-clock.h>
 #include <mach/syslib.h>
 #include <asm/barebox-arm.h>
@@ -80,7 +81,7 @@ static void noinline panda_init_lowlevel(void)
 
 void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
 {
-	omap_save_bootinfo();
+	omap4_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index 07cc1d7..4f39600 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -23,6 +23,7 @@
 #include <mach/generic.h>
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
+#include <mach/omap4-generic.h>
 #include <mach/omap4-clock.h>
 #include <mach/syslib.h>
 #include <asm/barebox-arm.h>
@@ -110,7 +111,7 @@ static void noinline pcm049_init_lowlevel(void)
 
 void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
 {
-	omap_save_bootinfo();
+	omap4_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/lowlevel.c
index dd06c6a..3a637cf 100644
--- a/arch/arm/boards/pcm051/lowlevel.c
+++ b/arch/arm/boards/pcm051/lowlevel.c
@@ -210,7 +210,7 @@ static int pcm051_board_init(void)
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t *data)
 {
-	omap_save_bootinfo();
+	am33xx_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/phycard-a-l1/lowlevel.c b/arch/arm/boards/phycard-a-l1/lowlevel.c
index 7855040..353b58f 100644
--- a/arch/arm/boards/phycard-a-l1/lowlevel.c
+++ b/arch/arm/boards/phycard-a-l1/lowlevel.c
@@ -10,6 +10,7 @@
 #include <mach/control.h>
 #include <mach/syslib.h>
 #include <mach/omap3-silicon.h>
+#include <mach/omap3-generic.h>
 #include <mach/sys_info.h>
 
 /* Slower full frequency range default timings for x32 operation */
@@ -253,7 +254,7 @@ static int pcaal1_board_init(void)
 
 void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
 {
-	omap_save_bootinfo();
+	omap3_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
index 9a794b7..1ddf8a0 100644
--- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -23,6 +23,7 @@
 #include <mach/generic.h>
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
+#include <mach/omap4-generic.h>
 #include <mach/omap4-clock.h>
 #include <mach/syslib.h>
 #include <asm/barebox-arm.h>
@@ -90,7 +91,7 @@ static noinline void pcaaxl2_init_lowlevel(void)
 
 void __bare_init __naked barebox_arm_reset_vector(uint32_t *data)
 {
-	omap_save_bootinfo();
+	omap4_save_bootinfo(data);
 
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
index ba69caf..d9d2efb 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
@@ -1,6 +1,23 @@
 #ifndef __MACH_AM33XX_GENERIC_H
 #define __MACH_AM33XX_GENERIC_H
 
+#include <mach/generic.h>
+#include <mach/am33xx-silicon.h>
+
 int am33xx_register_ethaddr(int eth_id, int mac_id);
 
+static inline void am33xx_save_bootinfo(uint32_t *info)
+{
+	unsigned long i = (unsigned long)info;
+
+	if (i & 0x3)
+		return;
+	if (i < AM33XX_SRAM0_START)
+		return;
+	if (i > AM33XX_SRAM0_START + AM33XX_SRAM0_SIZE)
+		return;
+
+	omap_save_bootinfo(info);
+}
+
 #endif /* __MACH_AM33XX_GENERIC_H */
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index bd55da4..e8ecd1e 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -17,6 +17,8 @@
 #ifndef __ASM_ARCH_AM33XX_H
 #define __ASM_ARCH_AM33XX_H
 
+#include <sizes.h>
+
 /** AM335x Internal Bus Base addresses */
 #define AM33XX_L4_WKUP_BASE		0x44C00000
 #define AM33XX_L4_PER_BASE		0x48000000
@@ -115,11 +117,10 @@
 #define AM33XX_VTP1_CTRL_REG		0x48140E10
 
 /* OCMC */
-#define AM33XX_SRAM0_SIZE			(0x1B400) /* 109 KB */
+#define AM33XX_SRAM0_START			0x402f0400
+#define AM33XX_SRAM0_SIZE			(SZ_128K - SZ_1K)
 #define AM33XX_SRAM_GPMC_STACK_SIZE		(0x40)
 
-#define AM33XX_LOW_LEVEL_SRAM_STACK		(AM33XX_SRAM0_START + AM33XX_SRAM0_SIZE - 4)
-
 /* DDR offsets */
 #define	AM33XX_DDR_PHY_BASE_ADDR		0x44E12000
 #define	AM33XX_DDR_IO_CTRL			0x44E10E04
diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
index ee711ee..ece8c2b 100644
--- a/arch/arm/mach-omap/include/mach/generic.h
+++ b/arch/arm/mach-omap/include/mach/generic.h
@@ -55,7 +55,7 @@ static inline int omap_set_mmc_dev(const char *mmcdev)
 #endif
 
 extern uint32_t omap_bootinfo[3];
-void omap_save_bootinfo(void);
+void omap_save_bootinfo(void *data);
 
 void omap_set_bootmmc_devname(const char *devname);
 const char *omap_get_bootmmc_devname(void);
diff --git a/arch/arm/mach-omap/include/mach/omap3-generic.h b/arch/arm/mach-omap/include/mach/omap3-generic.h
new file mode 100644
index 0000000..7f0da4e
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap3-generic.h
@@ -0,0 +1,21 @@
+#ifndef __MACH_OMAP3_GENERIC_H
+#define __MACH_OMAP3_GENERIC_H
+
+#include <mach/generic.h>
+#include <mach/omap3-silicon.h>
+
+static inline void omap3_save_bootinfo(uint32_t *info)
+{
+	unsigned long i = (unsigned long)info;
+
+	if (i & 0x3)
+		return;
+	if (i < OMAP3_SRAM_BASE)
+		return;
+	if (i > OMAP3_SRAM_BASE + SZ_64K)
+		return;
+
+	omap_save_bootinfo(info);
+}
+
+#endif /* __MACH_OMAP3_GENERIC_H */
diff --git a/arch/arm/mach-omap/include/mach/omap4-generic.h b/arch/arm/mach-omap/include/mach/omap4-generic.h
new file mode 100644
index 0000000..44f5a12
--- /dev/null
+++ b/arch/arm/mach-omap/include/mach/omap4-generic.h
@@ -0,0 +1,21 @@
+#ifndef __MACH_OMAP4_GENERIC_H
+#define __MACH_OMAP4_GENERIC_H
+
+#include <mach/generic.h>
+#include <mach/omap4-silicon.h>
+
+static inline void omap4_save_bootinfo(uint32_t *info)
+{
+	unsigned long i = (unsigned long)info;
+
+	if (i & 0x3)
+		return;
+	if (i < OMAP44XX_SRAM_BASE)
+		return;
+	if (i > OMAP44XX_SRAM_BASE + SZ_64K)
+		return;
+
+	omap_save_bootinfo(info);
+}
+
+#endif /* __MACH_OMAP4_GENERIC_H */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
