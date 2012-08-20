Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3Sqb-0006QR-UR
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:20:58 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 20 Aug 2012 16:20:22 +0200
Message-Id: <1345472428-17417-8-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 07/13] omap3: allow enabling clocks for UART3, MMC1 and SPI
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig       |    4 ++++
 arch/arm/mach-omap/omap3_clock.c |   15 +++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index aa9ab8c..574e924 100644
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
index 646235e..1b0c65c 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -679,11 +679,26 @@ static void per_clocks_enable(void)
 	sr32(CM_REG(FCLKEN1_CORE), 13, 1, 0x1);
 	sr32(CM_REG(ICLKEN1_CORE), 13, 1, 0x1);
 #endif
+#ifdef CONFIG_OMAP_CLOCK_UART3
+	/* Enable UART3 clocks */
+	sr32(CM_REG(FCLKEN_PER), 11, 1, 0x1);
+	sr32(CM_REG(ICLKEN_PER), 11, 1, 0x1);
+#endif
 #ifdef CONFIG_OMAP_CLOCK_I2C
 	/* Turn on all 3 I2C clocks */
 	sr32(CM_REG(FCLKEN1_CORE), 15, 3, 0x7);
 	sr32(CM_REG(ICLKEN1_CORE), 15, 3, 0x7);	/* I2C1,2,3 = on */
 #endif
+#ifdef CONFIG_OMAP_CLOCK_MMC1
+	/* Enable MMC1 clocks */
+	sr32(CM_REG(FCLKEN1_CORE), 24, 1, 0x1);
+	sr32(CM_REG(ICLKEN1_CORE), 24, 1, 0x1);
+#endif
+#ifdef CONFIG_OMAP_CLOCK_SPI
+	/* Enable SPI clocks */
+	sr32(CM_REG(FCLKEN1_CORE), 18, 4, 0xf);
+	sr32(CM_REG(ICLKEN1_CORE), 18, 4, 0xf);
+#endif
 
 #ifdef CONFIG_OMAP_CLOCK_ALL
 #define FCK_IVA2_ON	0x00000001
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
