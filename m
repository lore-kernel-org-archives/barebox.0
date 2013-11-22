Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs8P-0008F0-PR
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:29 +0100
Message-Id: <1385132083-7484-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/16] ARM: OMAP: Add SoC prefix to running_in_* functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/lowlevel.c                |  2 +-
 arch/arm/boards/beaglebone/lowlevel.c            |  2 +-
 arch/arm/boards/omap343xdsp/lowlevel.c           |  2 +-
 arch/arm/boards/omap3evm/lowlevel.c              |  2 +-
 arch/arm/boards/pcm051/lowlevel.c                |  2 +-
 arch/arm/boards/phycard-a-l1/lowlevel.c          |  2 +-
 arch/arm/mach-omap/am33xx_generic.c              |  8 ++++----
 arch/arm/mach-omap/include/mach/am33xx-generic.h |  4 ++++
 arch/arm/mach-omap/include/mach/omap3-generic.h  |  5 +++++
 arch/arm/mach-omap/include/mach/sys_info.h       |  4 ----
 arch/arm/mach-omap/omap3_clock.c                 |  9 +++++----
 arch/arm/mach-omap/omap3_generic.c               | 12 ++++++------
 12 files changed, 30 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index ad46386..cdb88ca 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -168,7 +168,7 @@ static void sdrc_init(void)
  */
 static int beagle_board_init(void)
 {
-	int in_sdram = running_in_sdram();
+	int in_sdram = omap3_running_in_sdram();
 
 	if (!in_sdram)
 		omap3_core_init();
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index e993c89..1f2b833 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -121,7 +121,7 @@ static int beaglebone_board_init(void)
 	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
 	while(__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
 
-	if (running_in_sdram())
+	if (am33xx_running_in_sdram())
 		return 0;
 
 	/* Setup the PLLs and the clocks for the peripherals */
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
index fcb9571..816f400 100644
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -536,7 +536,7 @@ static void mux_config(void)
  */
 static int sdp343x_board_init(void)
 {
-	int in_sdram = running_in_sdram();
+	int in_sdram = omap3_running_in_sdram();
 
 	if (!in_sdram)
 		omap3_core_init();
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
index 98f1476..56075c1 100644
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -148,7 +148,7 @@ static void mux_config(void)
  */
 static int omap3_evm_board_init(void)
 {
-	int in_sdram = running_in_sdram();
+	int in_sdram = omap3_running_in_sdram();
 
 	omap3_core_init();
 
diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/lowlevel.c
index 48578cd..0a55ad7 100644
--- a/arch/arm/boards/pcm051/lowlevel.c
+++ b/arch/arm/boards/pcm051/lowlevel.c
@@ -65,7 +65,7 @@ static int pcm051_board_init(void)
 	writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
 	while (readl(AM33XX_WDT_REG(WWPS)) != 0x0);
 
-	if (running_in_sdram())
+	if (am33xx_running_in_sdram())
 		return 0;
 
 	pll_init(MPUPLL_M_600, 25, DDRPLL_M_303);
diff --git a/arch/arm/boards/phycard-a-l1/lowlevel.c b/arch/arm/boards/phycard-a-l1/lowlevel.c
index 353b58f..7a67493 100644
--- a/arch/arm/boards/phycard-a-l1/lowlevel.c
+++ b/arch/arm/boards/phycard-a-l1/lowlevel.c
@@ -239,7 +239,7 @@ static void pcaal1_mux_config(void)
  */
 static int pcaal1_board_init(void)
 {
-	int in_sdram = running_in_sdram();
+	int in_sdram = omap3_running_in_sdram();
 
 	if (!in_sdram)
 		omap3_core_init();
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 3e2b6c4..8a883e3 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -68,7 +68,7 @@ u32 am33xx_get_cpu_rev(void)
  *
  * @return base address
  */
-u32 get_base(void)
+static u32 get_base(void)
 {
 	u32 val;
 	__asm__ __volatile__("mov %0, pc \n":"=r"(val)::"memory");
@@ -84,7 +84,7 @@ u32 get_base(void)
  *
  * @return 1 if we are running in XIP mode, else return 0
  */
-u32 running_in_flash(void)
+u32 am33xx_running_in_flash(void)
 {
 	if (get_base() < 4)
 		return 1;	/* in flash */
@@ -98,7 +98,7 @@ u32 running_in_flash(void)
  *
  * @return  1 if we are running in SRAM, else return 0
  */
-u32 running_in_sram(void)
+u32 am33xx_running_in_sram(void)
 {
 	if (get_base() == 4)
 		return 1;	/* in SRAM */
@@ -113,7 +113,7 @@ u32 running_in_sram(void)
  *
  * @return 1 if we are running from SDRAM, else return 0
  */
-u32 running_in_sdram(void)
+u32 am33xx_running_in_sdram(void)
 {
 	if (get_base() > 4)
 		return 1;	/* in sdram */
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
index ec22ad2..07c72e4 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
@@ -22,4 +22,8 @@ static inline void am33xx_save_bootinfo(uint32_t *info)
 	omap_save_bootinfo(info);
 }
 
+u32 am33xx_running_in_flash(void);
+u32 am33xx_running_in_sram(void);
+u32 am33xx_running_in_sdram(void);
+
 #endif /* __MACH_AM33XX_GENERIC_H */
diff --git a/arch/arm/mach-omap/include/mach/omap3-generic.h b/arch/arm/mach-omap/include/mach/omap3-generic.h
index 7f0da4e..a6af2ff 100644
--- a/arch/arm/mach-omap/include/mach/omap3-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap3-generic.h
@@ -1,6 +1,7 @@
 #ifndef __MACH_OMAP3_GENERIC_H
 #define __MACH_OMAP3_GENERIC_H
 
+#include <sizes.h>
 #include <mach/generic.h>
 #include <mach/omap3-silicon.h>
 
@@ -18,4 +19,8 @@ static inline void omap3_save_bootinfo(uint32_t *info)
 	omap_save_bootinfo(info);
 }
 
+u32 omap3_running_in_flash(void);
+u32 omap3_running_in_sram(void);
+u32 omap3_running_in_sdram(void);
+
 #endif /* __MACH_OMAP3_GENERIC_H */
diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index fce5895..fbac9b5 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -91,10 +91,6 @@ u32 get_cpu_rev(void);
 u32 get_sdr_cs_size(u32 offset);
 u32 get_sdr_cs1_base(void);
 inline u32 get_sysboot_value(void);
-u32 get_base(void);
-u32 running_in_flash(void);
-u32 running_in_sram(void);
-u32 running_in_sdram(void);
 u32 get_boot_type(void);
 u32 get_device_type(void);
 
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 03aca49..6700f56 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -33,6 +33,7 @@
 #include <common.h>
 #include <io.h>
 #include <mach/omap3-silicon.h>
+#include <mach/omap3-generic.h>
 #include <mach/clocks.h>
 #include <mach/omap3-clock.h>
 #include <mach/timers.h>
@@ -170,7 +171,7 @@ static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
 
 	dp += clk_sel;
 
-	if (running_in_sram()) {
+	if (omap3_running_in_sram()) {
 		sr32(OMAP3_CM_REG(CLKEN_PLL), 0, 3, PLL_FAST_RELOCK_BYPASS);
 		wait_on_value((0x1 << 0), 0, OMAP3_CM_REG(IDLEST_CKGEN), LDELAY);
 
@@ -209,7 +210,7 @@ static void init_core_dpll_34x(u32 cpu_rev, u32 clk_sel)
 		/* Lock Mode */
 		sr32(OMAP3_CM_REG(CLKEN_PLL), 0, 3, PLL_LOCK);
 		wait_on_value((0x1 << 0), 1, OMAP3_CM_REG(IDLEST_CKGEN), LDELAY);
-	} else if (running_in_flash()) {
+	} else if (omap3_running_in_flash()) {
 		/***Oopps.. Wrong .config!! *****/
 		hang();
 	}
@@ -403,7 +404,7 @@ static void init_core_dpll_36x(u32 cpu_rev, u32 clk_sel)
 
 	dp += clk_sel;
 
-	if (running_in_sram()) {
+	if (omap3_running_in_sram()) {
 		sr32(OMAP3_CM_REG(CLKEN_PLL), 0, 3, PLL_FAST_RELOCK_BYPASS);
 		wait_on_value((0x1 << 0), 0, OMAP3_CM_REG(IDLEST_CKGEN), LDELAY);
 
@@ -435,7 +436,7 @@ static void init_core_dpll_36x(u32 cpu_rev, u32 clk_sel)
 		/* Lock Mode */
 		sr32(OMAP3_CM_REG(CLKEN_PLL), 0, 3, PLL_LOCK);
 		wait_on_value((0x1 << 0), 1, OMAP3_CM_REG(IDLEST_CKGEN), LDELAY);
-	} else if (running_in_flash()) {
+	} else if (omap3_running_in_flash()) {
 		/***Oopps.. Wrong .config!! *****/
 		hang();
 	}
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 8b661ff..1046417 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -213,7 +213,7 @@ inline u32 get_sysboot_value(void)
  *
  * @return base address
  */
-u32 get_base(void)
+static u32 get_base(void)
 {
 	u32 val;
 	__asm__ __volatile__("mov %0, pc \n":"=r"(val)::"memory");
@@ -229,7 +229,7 @@ u32 get_base(void)
  *
  * @return 1 if we are running in XIP mode, else return 0
  */
-u32 running_in_flash(void)
+u32 omap3_running_in_flash(void)
 {
 	if (get_base() < 4)
 		return 1;	/* in flash */
@@ -243,7 +243,7 @@ u32 running_in_flash(void)
  *
  * @return  1 if we are running in SRAM, else return 0
  */
-u32 running_in_sram(void)
+u32 omap3_running_in_sram(void)
 {
 	if (get_base() == 4)
 		return 1;	/* in SRAM */
@@ -258,13 +258,13 @@ u32 running_in_sram(void)
  *
  * @return 1 if we are running from SDRAM, else return 0
  */
-u32 running_in_sdram(void)
+u32 omap3_running_in_sdram(void)
 {
 	if (get_base() > 4)
 		return 1;	/* in sdram */
 	return 0;		/* running in SRAM or FLASH */
 }
-EXPORT_SYMBOL(running_in_sdram);
+EXPORT_SYMBOL(omap3_running_in_sdram);
 
 /**
  * @brief Is this an XIP type device or a stream one
@@ -408,7 +408,7 @@ void setup_auxcr(void);
 static void try_unlock_memory(void)
 {
 	int mode;
-	int in_sdram = running_in_sdram();
+	int in_sdram = omap3_running_in_sdram();
 
 	/* if GP device unlock device SRAM for general use */
 	/* secure code breaks for Secure/Emulation device - HS/E/T */
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
