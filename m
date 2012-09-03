Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8V6i-0001IZ-AC
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 11:46:24 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon,  3 Sep 2012 13:46:04 +0200
Message-Id: <1346672765-16162-10-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 09/10] omap3: allow enabling clocks for UART3, MMC1 and SPI
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig       |    4 ++++
 arch/arm/mach-omap/omap3_clock.c |   35 +++++++++++++++++++++++++----------
 2 files changed, 29 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index a781287..82fa46b 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -61,6 +61,10 @@ config OMAP_CLOCK_UART3
 	bool
 config OMAP_CLOCK_I2C
 	bool
+config OMAP_CLOCK_MMC1
+	bool
+config OMAP_CLOCK_SPI
+	bool
 
 # Blind enable all possible clocks.. think twice before you do this.
 config OMAP_CLOCK_ALL
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 646235e..bfaa1cf 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -674,16 +674,31 @@ static void per_clocks_enable(void)
 	/* Enable the ICLK for 32K Sync Timer as its used in udelay */
 	sr32(CM_REG(ICLKEN_WKUP), 2, 1, 0x1);
 
-#ifdef CONFIG_OMAP_CLOCK_UART
-	/* Enable UART1 clocks */
-	sr32(CM_REG(FCLKEN1_CORE), 13, 1, 0x1);
-	sr32(CM_REG(ICLKEN1_CORE), 13, 1, 0x1);
-#endif
-#ifdef CONFIG_OMAP_CLOCK_I2C
-	/* Turn on all 3 I2C clocks */
-	sr32(CM_REG(FCLKEN1_CORE), 15, 3, 0x7);
-	sr32(CM_REG(ICLKEN1_CORE), 15, 3, 0x7);	/* I2C1,2,3 = on */
-#endif
+	if (IS_ENABLED(CONFIG_OMAP_CLOCK_UART)) {
+		/* Enable UART1 clocks */
+		sr32(CM_REG(FCLKEN1_CORE), 13, 1, 0x1);
+		sr32(CM_REG(ICLKEN1_CORE), 13, 1, 0x1);
+	}
+	if (IS_ENABLED(CONFIG_OMAP_CLOCK_UART3)) {
+		/* Enable UART3 clocks */
+		sr32(CM_REG(FCLKEN_PER), 11, 1, 0x1);
+		sr32(CM_REG(ICLKEN_PER), 11, 1, 0x1);
+	}
+	if (IS_ENABLED(CONFIG_OMAP_CLOCK_I2C)) {
+		/* Turn on all 3 I2C clocks */
+		sr32(CM_REG(FCLKEN1_CORE), 15, 3, 0x7);
+		sr32(CM_REG(ICLKEN1_CORE), 15, 3, 0x7);	/* I2C1,2,3 = on */
+	}
+	if (IS_ENABLED(CONFIG_OMAP_CLOCK_MMC1)) {
+		/* Enable MMC1 clocks */
+		sr32(CM_REG(FCLKEN1_CORE), 24, 1, 0x1);
+		sr32(CM_REG(ICLKEN1_CORE), 24, 1, 0x1);
+	}
+	if (IS_ENABLED(CONFIG_OMAP_CLOCK_SPI)) {
+		/* Enable SPI clocks */
+		sr32(CM_REG(FCLKEN1_CORE), 18, 4, 0xf);
+		sr32(CM_REG(ICLKEN1_CORE), 18, 4, 0xf);
+	}
 
 #ifdef CONFIG_OMAP_CLOCK_ALL
 #define FCK_IVA2_ON	0x00000001
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
