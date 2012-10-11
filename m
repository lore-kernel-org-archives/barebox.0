Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxm-0008Pw-JX
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:13:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:29 +0200
Message-Id: <1349939621-17793-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
References: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/13] ARM i.MX: Use SoC specific base to access sdram
 controller registers
To: barebox@lists.infradead.org

This redefines the sdram controller registers as offsets to the base
rather than as absolute addresses. All users are fixed to use the
SoC specific base address.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c      |   14 +++++-----
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S |   24 +++++++++++------
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c      |   14 +++++-----
 arch/arm/boards/guf-cupid/lowlevel.c            |   33 +++++++++++++----------
 arch/arm/boards/guf-neso/lowlevel.c             |   21 ++++++++++-----
 arch/arm/boards/karo-tx25/lowlevel.c            |    8 +++---
 arch/arm/boards/pcm037/lowlevel_init.S          |   26 +++++++++---------
 arch/arm/boards/pcm038/lowlevel.c               |   21 ++++++++++-----
 arch/arm/boards/pcm043/lowlevel.c               |   21 ++++++++-------
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S  |   22 ++++++++++-----
 arch/arm/mach-imx/include/mach/esdctl.h         |   10 +++----
 arch/arm/mach-imx/include/mach/imx27-regs.h     |    2 +-
 12 files changed, 126 insertions(+), 90 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index cd80b25..fe4e70c 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -129,22 +129,22 @@ void __bare_init __naked reset(void)
 		board_init_lowlevel_return();
 
 	/* Init Mobile DDR */
-	writel(0x0000000E, ESDMISC);
-	writel(0x00000004, ESDMISC);
+	writel(0x0000000E, MX25_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+	writel(0x00000004, MX25_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 	__asm__ volatile ("1:\n"
 			"subs %0, %1, #1\n"
 			"bne 1b":"=r" (loops):"0" (loops));
 
-	writel(0x0029572B, ESDCFG0);
-	writel(0x92210000, ESDCTL0);
+	writel(0x0029572B, MX25_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
+	writel(0x92210000, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x400);
-	writel(0xA2210000, ESDCTL0);
+	writel(0xA2210000, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writeb(0xda, MX25_CSD0_BASE_ADDR);
 	writeb(0xda, MX25_CSD0_BASE_ADDR);
-	writel(0xB2210000, ESDCTL0);
+	writel(0xB2210000, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x33);
 	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x1000000);
-	writel(0x82216080, ESDCTL0);
+	writel(0x82216080, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* skip NAND boot if not running from NFC space */
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index 1983d48..eac9ecc 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -22,7 +22,8 @@
 	/*
 	 * DDR on CSD0
 	 */
-	writel(0x0000000C, ESDMISC) /* Enable DDR SDRAM operation */
+	/* Enable DDR SDRAM operation */
+	writel(0x0000000C, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
 
 	writel(0x55555555, DSCR(3)) /* Set the driving strength   */
 	writel(0x55555555, DSCR(5))
@@ -30,12 +31,16 @@
 	writel(0x00005005, DSCR(7))
 	writel(0x15555555, DSCR(8))
 
-	writel(0x00000004, ESDMISC) /* Initial reset */
-	writel(CFG0, ESDCFG0)
-	
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE, ESDCTL0) /* precharge CSD0 all banks */
+	/* Initial reset */
+	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
+	writel(CFG0, MX27_ESDCTL_BASE_ADDR + IMX_ESDCFG0)
+
+	/* precharge CSD0 all banks */
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 	writel(0x00000000, 0xA0000F00)	/* CSD0 precharge address (A10 = 1) */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH, ESDCTL0)
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 
 	ldr	r0, =0xa0000f00
 	mov	r1, #0
@@ -45,7 +50,8 @@
 	subs	r2, #1
 	bne	1b
 
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE, ESDCTL0)
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 	ldr		r0, =0xA0000033
 	mov		r1, #0xda
 	strb		r1, [r0]
@@ -56,7 +62,9 @@
 #endif
 	mov		r1, #0xff
 	strb		r1, [r0]
-	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 | ESDCTL0_BL | ESDCTL0_SMODE_NORMAL, ESDCTL0)
+	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
+			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 .endm
 
 	.section ".text_bare_init","ax"
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index ea932f7..7f9395e 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -138,22 +138,22 @@ void __bare_init __naked reset(void)
 		board_init_lowlevel_return();
 
 	/* Init Mobile DDR */
-	writel(0x0000000E, ESDMISC);
-	writel(0x00000004, ESDMISC);
+	writel(0x0000000E, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+	writel(0x00000004, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 	__asm__ volatile ("1:\n"
 			"subs %0, %1, #1\n"
 			"bne 1b":"=r" (loops):"0" (loops));
 
-	writel(0x0009572B, ESDCFG0);
-	writel(0x92220000, ESDCTL0);
+	writel(0x0009572B, MX35_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
+	writel(0x92220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x400);
-	writel(0xA2220000, ESDCTL0);
+	writel(0xA2220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writeb(0xda, MX35_CSD0_BASE_ADDR);
 	writeb(0xda, MX35_CSD0_BASE_ADDR);
-	writel(0xB2220000, ESDCTL0);
+	writel(0xB2220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x33);
 	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x2000000);
-	writel(0x82228080, ESDCTL0);
+	writel(0x82228080, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* skip NAND boot if not running from NFC space */
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index d451fd9..aa42697 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -71,15 +71,15 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 	u32 r1, r0;
 
 	/* disable second SDRAM region to save power */
-	r1 = readl(ESDCTL1);
+	r1 = readl(MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
 	r1 &= ~ESDCTL0_SDE;
-	writel(r1, ESDCTL1);
+	writel(r1, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
 
 	mode |= ESDMISC_RST | ESDMISC_MDDR_DL_RST;
-	writel(mode, ESDMISC);
+	writel(mode, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 
 	mode &= ~(ESDMISC_RST | ESDMISC_MDDR_DL_RST);
-	writel(mode, ESDMISC);
+	writel(mode, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 
 	/* wait for esdctl reset */
 	for (loop = 0; loop < 0x20000; loop++);
@@ -90,16 +90,18 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 		ESDCFGx_tRRD_2 | ESDCFGx_tCAS_3 |
 		ESDCFGx_tRCD_3 | ESDCFGx_tRC_20;
 
-	writel(r1, ESDCFG0);
+	writel(r1, MX35_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
 
 	/* enable SDRAM controller */
-	writel(memsize | ESDCTL0_SMODE_NORMAL, ESDCTL0);
+	writel(memsize | ESDCTL0_SMODE_NORMAL,
+			MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 	/* Micron Datasheet Initialization Step 3: Wait 200us before first command */
 	for (loop = 0; loop < 1000; loop++);
 
 	/* Micron Datasheet Initialization Step 4: PRE CHARGE ALL */
-	writel(memsize | ESDCTL0_SMODE_PRECHARGE, ESDCTL0);
+	writel(memsize | ESDCTL0_SMODE_PRECHARGE,
+			MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writeb(r11, sdram_addr);
 
 	/* Micron Datasheet Initialization Step 5: NOP for tRP (at least 22.5ns)
@@ -109,7 +111,8 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 	/* Micron Datasheet Initialization Step 6: 2 AUTO REFRESH and tRFC NOP
 	 * (at least 140ns)
 	 */
-	writel(memsize | ESDCTL0_SMODE_AUTO_REFRESH, ESDCTL0);
+	writel(memsize | ESDCTL0_SMODE_AUTO_REFRESH,
+			MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writeb(r11, r9); /* AUTO REFRESH #1 */
 
 	for (loop = 0; loop < 3; loop++); /* ~140ns delay at 532MHz */
@@ -119,7 +122,8 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 	for (loop = 0; loop < 3; loop++); /* ~140ns delay at 532MHz */
 
 	/* Micron Datasheet Initialization Step 7: LOAD MODE REGISTER */
-	writel(memsize | ESDCTL0_SMODE_LOAD_MODE, ESDCTL0);
+	writel(memsize | ESDCTL0_SMODE_LOAD_MODE,
+			MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writeb(r11, r9 + (SDRAM_MODE_BL_8 | SDRAM_MODE_BSEQ | SDRAM_MODE_CL_3));
 
 	/* Micron Datasheet Initialization Step 8: tMRD = 2 tCK NOP
@@ -134,7 +138,8 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 	 */
 
 	/* Now configure SDRAM-Controller and check that it works */
-	writel(memsize | ESDCTL0_BL | ESDCTL0_REF4, ESDCTL0);
+	writel(memsize | ESDCTL0_BL | ESDCTL0_REF4,
+			MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 	/* Freescale asks for first access to be a write to properly
 	 * initialize DQS pin-state and keepers
@@ -156,10 +161,10 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 
 	/* if both value are identical, we don't have 14 rows. assume 13 instead */
 	if (readl(r9) == readl(r9 + (1 << 25))) {
-		r0 = readl(ESDCTL0);
+		r0 = readl(MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 		r0 &= ~ESDCTL0_ROW_MASK;
 		r0 |= ESDCTL0_ROW13;
-		writel(r0, ESDCTL0);
+		writel(r0, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	}
 
 	/* So far we asssumed that we have 10 columns, verify this */
@@ -168,10 +173,10 @@ static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_ad
 
 	/* if both value are identical, we don't have 10 cols. assume 9 instead */
 	if (readl(r9) == readl(r9 + (1 << 11))) {
-		r0 = readl(ESDCTL0);
+		r0 = readl(MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 		r0 &= ~ESDCTL0_COL_MASK;
 		r0 |= ESDCTL0_COL9;
-		writel(r0, ESDCTL0);
+		writel(r0, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	}
 }
 
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index e2e3c78..eff1f8d 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -71,7 +71,8 @@ void __bare_init __naked reset(void)
 	/*
 	 * DDR on CSD0
 	 */
-	writel(0x00000008, ESDMISC); /* Enable DDR SDRAM operation */
+	/* Enable DDR SDRAM operation */
+	writel(0x00000008, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 
 	DSCR(3) = 0x55555555; /* Set the driving strength   */
 	DSCR(5) = 0x55555555;
@@ -79,22 +80,28 @@ void __bare_init __naked reset(void)
 	DSCR(7) = 0x00005005;
 	DSCR(8) = 0x15555555;
 
-	writel(0x00000004, ESDMISC); /* Initial reset */
-	writel(0x006ac73a, ESDCFG0);
+	/* Initial reset */
+	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+	writel(0x006ac73a, MX27_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
 
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE, ESDCTL0); /* precharge CSD0 all banks */
+	/* precharge CSD0 all banks */
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writel(0x00000000, 0xA0000F00);	/* CSD0 precharge address (A10 = 1) */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH, ESDCTL0);
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 	for (i = 0; i < 8; i++)
 		writel(0, 0xa0000f00);
 
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE, ESDCTL0);
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 	writeb(0xda, 0xa0000033);
 	writeb(0xff, 0xa1000000);
 	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
-			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL, ESDCTL0);
+			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* skip NAND boot if not running from NFC space */
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 3192abd..6a324ce 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -46,8 +46,8 @@ static void __bare_init __naked insdram(void)
 static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl,
 		uint32_t esdcfg)
 {
-	uint32_t esdctlreg = ESDCTL0;
-	uint32_t esdcfgreg = ESDCFG0;
+	uint32_t esdctlreg = MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0;
+	uint32_t esdcfgreg = MX25_ESDCTL_BASE_ADDR + IMX_ESDCFG0;
 
 	if (base == 0x90000000) {
 		esdctlreg += 8;
@@ -137,9 +137,9 @@ void __bare_init __naked reset(void)
 	/* set to 3.3v SDRAM */
 	writel(0x800, MX25_IOMUXC_BASE_ADDR + 0x454);
 
-	writel(ESDMISC_RST, ESDMISC);
+	writel(ESDMISC_RST, MX25_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 
-	while (!(readl(ESDMISC) & (1 << 31)));
+	while (!(readl(MX25_ESDCTL_BASE_ADDR + IMX_ESDMISC) & (1 << 31)));
 
 #define ESDCTLVAL	(ESDCTL0_ROW13 | ESDCTL0_COL9 |	ESDCTL0_DSIZ_15_0 | \
 			 ESDCTL0_REF4 | ESDCTL0_PWDT_PRECHARGE_PWDN | ESDCTL0_BL)
diff --git a/arch/arm/boards/pcm037/lowlevel_init.S b/arch/arm/boards/pcm037/lowlevel_init.S
index a6747c2..49e9b36 100644
--- a/arch/arm/boards/pcm037/lowlevel_init.S
+++ b/arch/arm/boards/pcm037/lowlevel_init.S
@@ -96,19 +96,19 @@ clear_iomux:
 #elif defined CONFIG_PCM037_SDRAM_BANK0_256MB
 #define ROWS0	ESDCTL0_ROW14
 #endif
-	writel(0x00000004, ESDMISC)
-	writel(0x006ac73a, ESDCFG0)
-	writel(0x90100000 | ROWS0, ESDCTL0)
+	writel(0x00000004, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC)
+	writel(0x006ac73a, MX31_ESDCTL_BASE_ADDR + IMX_ESDCFG0)
+	writel(0x90100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 	writel(0x12344321, MX31_CSD0_BASE_ADDR + 0xf00)
-	writel(0xa0100000 | ROWS0, ESDCTL0)
+	writel(0xa0100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 	writel(0x12344321, MX31_CSD0_BASE_ADDR)
 	writel(0x12344321, MX31_CSD0_BASE_ADDR)
-	writel(0xb0100000 | ROWS0, ESDCTL0)
+	writel(0xb0100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 	writeb(0xda, MX31_CSD0_BASE_ADDR + 0x33)
 	writeb(0xff, MX31_CSD0_BASE_ADDR + 0x01000000)
-	writel(0x80226080 | ROWS0, ESDCTL0)
+	writel(0x80226080 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 	writel(0xDEADBEEF, MX31_CSD0_BASE_ADDR)
-	writel(0x0000000c, ESDMISC)
+	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC)
 
 #ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
 #if defined CONFIG_PCM037_SDRAM_BANK1_128MB
@@ -116,18 +116,18 @@ clear_iomux:
 #elif defined CONFIG_PCM037_SDRAM_BANK1_256MB
 #define ROWS1	ESDCTL0_ROW14
 #endif
-	writel(0x006ac73a, ESDCFG1)
-	writel(0x90100000 | ROWS1, ESDCTL1)
+	writel(0x006ac73a, MX31_ESDCTL_BASE_ADDR + IMX_ESDCFG1)
+	writel(0x90100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1)
 	writel(0x12344321, MX31_CSD1_BASE_ADDR + 0xf00)
-	writel(0xa0100000 | ROWS1, ESDCTL1)
+	writel(0xa0100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1)
 	writel(0x12344321, MX31_CSD1_BASE_ADDR)
 	writel(0x12344321, MX31_CSD1_BASE_ADDR)
-	writel(0xb0100000 | ROWS1, ESDCTL1)
+	writel(0xb0100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1)
 	writeb(0xda, MX31_CSD1_BASE_ADDR + 0x33)
 	writeb(0xff, MX31_CSD1_BASE_ADDR + 0x01000000)
-	writel(0x80226080 | ROWS1, ESDCTL1)
+	writel(0x80226080 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1)
 	writel(0xDEADBEEF, MX31_CSD1_BASE_ADDR)
-	writel(0x0000000c, ESDMISC)
+	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC)
 #endif
 
 #ifdef CONFIG_NAND_IMX_BOOT
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index bed1c3f..2211e42 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -76,7 +76,8 @@ void __bare_init __naked reset(void)
 	/*
 	 * DDR on CSD0
 	 */
-	writel(0x00000008, ESDMISC); /* Enable DDR SDRAM operation */
+	/* Enable DDR SDRAM operation */
+	writel(0x00000008, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
 
 	DSCR(3) = 0x55555555; /* Set the driving strength   */
 	DSCR(5) = 0x55555555;
@@ -84,22 +85,28 @@ void __bare_init __naked reset(void)
 	DSCR(7) = 0x00005005;
 	DSCR(8) = 0x15555555;
 
-	writel(0x00000004, ESDMISC); /* Initial reset */
-	writel(0x006ac73a, ESDCFG0);
+	/* Initial reset */
+	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
+	writel(0x006ac73a, MX27_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
 
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE, ESDCTL0); /* precharge CSD0 all banks */
+	/* precharge CSD0 all banks */
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 	writel(0x00000000, 0xA0000F00);	/* CSD0 precharge address (A10 = 1) */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH, ESDCTL0);
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 	for (i = 0; i < 8; i++)
 		writel(0, 0xa0000f00);
 
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE, ESDCTL0);
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 	writeb(0xda, 0xa0000033);
 	writeb(0xff, 0xa1000000);
 	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
-			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL, ESDCTL0);
+			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* skip NAND boot if not running from NFC space */
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index 4516e9f..a3c1a09 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -66,6 +66,7 @@ void __bare_init __naked reset(void)
 	uint32_t r, s;
 	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
 	unsigned long iomuxc_base = MX35_IOMUXC_BASE_ADDR;
+	unsigned long esdctl_base = MX35_ESDCTL_BASE_ADDR;
 #ifdef CONFIG_NAND_IMX_BOOT
 	unsigned int *trg, *src;
 	int i;
@@ -154,17 +155,17 @@ void __bare_init __naked reset(void)
 	writel(r, iomuxc_base + 0x7a4);
 
 	/* MDDR init, enable mDDR*/
-	writel(0x00000304, ESDMISC); /* was 0x00000004 */
+	writel(0x00000304, esdctl_base + IMX_ESDMISC); /* was 0x00000004 */
 
 	/* set timing paramters */
-	writel(0x0025541F, ESDCFG0);
+	writel(0x0025541F, esdctl_base + IMX_ESDCFG0);
 	/* select Precharge-All mode */
-	writel(0x92220000, ESDCTL0);
+	writel(0x92220000, esdctl_base + IMX_ESDCTL0);
 	/* Precharge-All */
 	writel(0x12345678, MX35_CSD0_BASE_ADDR + 0x400);
 
 	/* select Load-Mode-Register mode */
-	writel(0xB8001000, ESDCTL0);
+	writel(0xB8001000, esdctl_base + IMX_ESDCTL0);
 	/* Load reg EMR2 */
 	writeb(0xda, 0x84000000);
 	/* Load reg EMR3 */
@@ -175,18 +176,18 @@ void __bare_init __naked reset(void)
 	writeb(0xda, 0x80000333);
 
 	/* select Precharge-All mode */
-	writel(0x92220000, ESDCTL0);
+	writel(0x92220000, esdctl_base + IMX_ESDCTL0);
 	/* Precharge-All */
 	writel(0x12345678, MX35_CSD0_BASE_ADDR + 0x400);
 
 	/* select Manual-Refresh mode */
-	writel(0xA2220000, ESDCTL0);
+	writel(0xA2220000, esdctl_base + IMX_ESDCTL0);
 	/* Manual-Refresh 2 times */
 	writel(0x87654321, MX35_CSD0_BASE_ADDR);
 	writel(0x87654321, MX35_CSD0_BASE_ADDR);
 
 	/* select Load-Mode-Register mode */
-	writel(0xB2220000, ESDCTL0);
+	writel(0xB2220000, esdctl_base + IMX_ESDCTL0);
 	/* Load reg MR -- CL3, BL8, end DLL reset */
 	writeb(0xda, 0x80000233);
 	/* Load reg EMR1 -- OCD default */
@@ -198,12 +199,12 @@ void __bare_init __naked reset(void)
 	 * DSIZ32-bit, BL8, COL10-bit, ROW13-bit
 	 * disable PWT & PRCT
 	 * disable Auto-Refresh */
-	writel(0x82220080, ESDCTL0);
+	writel(0x82220080, esdctl_base + IMX_ESDCTL0);
 
 	/* enable Auto-Refresh */
-	writel(0x82228080, ESDCTL0);
+	writel(0x82228080, esdctl_base + IMX_ESDCTL0);
 	/* enable Auto-Refresh */
-	writel(0x00002000, ESDCTL1);
+	writel(0x00002000, esdctl_base + IMX_ESDCTL1);
 
 #ifdef CONFIG_NAND_IMX_BOOT
 	/* skip NAND boot if not running from NFC space */
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index 3c36889..4b9add9 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -21,7 +21,8 @@
 	/*
 	 * DDR on CSD0
 	 */
-	writel(0x00000008, ESDMISC) /* Enable DDR SDRAM operation */
+	/* Enable DDR SDRAM operation */
+	writel(0x00000008, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
 
 	writel(0x55555555, DSCR(3)) /* Set the driving strength   */
 	writel(0x55555555, DSCR(5))
@@ -29,12 +30,16 @@
 	writel(0x00005005, DSCR(7))
 	writel(0x15555555, DSCR(8))
 
-	writel(0x00000004, ESDMISC) /* Initial reset */
-	writel(0x006ac73a, ESDCFG0)
+	/* Initial reset */
+	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
+	writel(0x006ac73a, MX27_ESDCTL_BASE_ADDR + IMX_ESDCFG0)
 
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE, ESDCTL0) /* precharge CSD0 all banks */
+	/* precharge CSD0 all banks */
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 	writel(0x00000000, 0xA0000F00)	/* CSD0 precharge address (A10 = 1) */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH, ESDCTL0)
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 
 	ldr	r0, =0xa0000f00
 	mov	r1, #0
@@ -44,14 +49,17 @@
 	subs	r2, #1
 	bne	1b
 
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE, ESDCTL0)
+	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 	ldr		r0, =0xA0000033
 	mov		r1, #0xda
 	strb		r1, [r0]
 	ldr		r0, =0xA1000000
 	mov		r1, #0xff
 	strb		r1, [r0]
-	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 | ESDCTL0_BL | ESDCTL0_SMODE_NORMAL, ESDCTL0)
+	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
+			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
+			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
 .endm
 
 	.section ".text_bare_init","ax"
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 10c8b9b..8124c87 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -1,10 +1,10 @@
 
 /* SDRAM Controller registers */
-#define ESDCTL0 (IMX_ESD_BASE + 0x00) /* Enhanced SDRAM Control Register 0       */
-#define ESDCFG0 (IMX_ESD_BASE + 0x04) /* Enhanced SDRAM Configuration Register 0 */
-#define ESDCTL1 (IMX_ESD_BASE + 0x08) /* Enhanced SDRAM Control Register 1       */
-#define ESDCFG1 (IMX_ESD_BASE + 0x0C) /* Enhanced SDRAM Configuration Register 1 */
-#define ESDMISC (IMX_ESD_BASE + 0x10) /* Enhanced SDRAM Miscellanious Register   */
+#define IMX_ESDCTL0 0x00 /* Enhanced SDRAM Control Register 0       */
+#define IMX_ESDCFG0 0x04 /* Enhanced SDRAM Configuration Register 0 */
+#define IMX_ESDCTL1 0x08 /* Enhanced SDRAM Control Register 1       */
+#define IMX_ESDCFG1 0x0C /* Enhanced SDRAM Configuration Register 1 */
+#define IMX_ESDMISC 0x10 /* Enhanced SDRAM Miscellanious Register   */
 
 #define ESDCTL0_SDE				(1 << 31)
 #define ESDCTL0_SMODE_NORMAL			(0 << 28)
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index e7372e4..afc7a39 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -86,7 +86,7 @@
 #define MX27_X_MEMC_BASE_ADDR		0xd8000000
 #define MX27_X_MEMC_SIZE		SZ_1M
 #define MX27_NFC_BASE_ADDR		(MX27_X_MEMC_BASE_ADDR)
-#define MX27_SDRAMC_BASE_ADDR		(MX27_X_MEMC_BASE_ADDR + 0x1000)
+#define MX27_ESDCTL_BASE_ADDR		(MX27_X_MEMC_BASE_ADDR + 0x1000)
 #define MX27_WEIM_BASE_ADDR		(MX27_X_MEMC_BASE_ADDR + 0x2000)
 #define MX27_M3IF_BASE_ADDR		(MX27_X_MEMC_BASE_ADDR + 0x3000)
 #define MX27_PCMCIA_CTL_BASE_ADDR	(MX27_X_MEMC_BASE_ADDR + 0x4000)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
