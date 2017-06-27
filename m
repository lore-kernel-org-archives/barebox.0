Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dPoHz-0004kg-4K
 for barebox@lists.infradead.org; Tue, 27 Jun 2017 11:04:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Jun 2017 13:03:46 +0200
Message-Id: <20170627110346.8208-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: omap: phytec-phycore-omap4460: Fix compiler warning
To: Barebox List <barebox@lists.infradead.org>

Use IS_ENABLED() rather than #ifdef to get rid of unused variable
warning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-omap4460/lowlevel.c | 26 +++++++++++-----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
index 71ab793354..02297adb95 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
@@ -96,19 +96,19 @@ static void noinline pcm049_init_lowlevel(void)
 
 	set_muxconf_regs();
 
-#ifdef CONFIG_1024MB_DDR2RAM
-	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
-	writel(EMIF_SDRAM_CONFIG, OMAP44XX_EMIF1_BASE +
-			EMIF_LPDDR2_MODE_REG_CONFIG);
-	density = (readl(OMAP44XX_EMIF1_BASE + EMIF_LPDDR2_MODE_REG_DATA) &
-			LPDDR2_DENSITY_MASK) >> LPDDR2_DENSITY_SHIFT;
-	if (density == LPDDR2_2G)
-		omap4_ddr_init(&ddr_regs_mt42L128M64_25_400_mhz, &core);
-	else if (density == LPDDR2_4G)
-		omap4_ddr_init(&ddr_regs_mt42L128M64D2LL_25_400_mhz, &core);
-#else
-	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
-#endif
+	if (IS_ENABLED(CONFIG_1024MB_DDR2RAM)) {
+		omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
+		writel(EMIF_SDRAM_CONFIG, OMAP44XX_EMIF1_BASE +
+		       EMIF_LPDDR2_MODE_REG_CONFIG);
+		density = (readl(OMAP44XX_EMIF1_BASE + EMIF_LPDDR2_MODE_REG_DATA) &
+			   LPDDR2_DENSITY_MASK) >> LPDDR2_DENSITY_SHIFT;
+		if (density == LPDDR2_2G)
+			omap4_ddr_init(&ddr_regs_mt42L128M64_25_400_mhz, &core);
+		else if (density == LPDDR2_4G)
+			omap4_ddr_init(&ddr_regs_mt42L128M64D2LL_25_400_mhz, &core);
+	} else {
+		omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
+	}
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
 	if (rev < OMAP4460_ES1_0)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
