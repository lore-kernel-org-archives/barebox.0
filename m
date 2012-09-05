Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Htw-0007FP-5m
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 15:52:28 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  5 Sep 2012 17:52:15 +0200
Message-Id: <1346860337-777-8-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
References: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 7/8] omap3: remove unused coded for clock configuration
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig       |   17 -----------------
 arch/arm/mach-omap/omap3_clock.c |   14 +-------------
 2 files changed, 1 insertion(+), 30 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index a781287..98750c4 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -52,20 +52,7 @@ config ARCH_OMAP4
 
 endchoice
 
-### Generic Clock configurations to be enabled by Mach - invisible to enable.
-config OMAP_CLOCK_UART
-	bool
-config OMAP_CLOCK_UART2
-	bool
-config OMAP_CLOCK_UART3
-	bool
-config OMAP_CLOCK_I2C
-	bool
-
 # Blind enable all possible clocks.. think twice before you do this.
-config OMAP_CLOCK_ALL
-	bool
-
 config OMAP_CLOCK_SOURCE_S32K
 	bool
 
@@ -117,14 +104,12 @@ choice
 
 config MACH_OMAP343xSDP
 	bool "Texas Instrument's SDP343x"
-	select OMAP_CLOCK_ALL
 	depends on ARCH_OMAP3
 	help
 	  Say Y here if you are using SDP343x platform
 
 config MACH_BEAGLE
 	bool "Texas Instrument's Beagle Board"
-	select OMAP_CLOCK_ALL
 	select HAVE_NOSHELL
 	depends on ARCH_OMAP3
 	  help
@@ -132,7 +117,6 @@ config MACH_BEAGLE
 
 config MACH_OMAP3EVM
 	bool "Texas Instrument's OMAP3 EVM"
-	select OMAP_CLOCK_ALL
 	select HAVE_NOSHELL
 	depends on ARCH_OMAP3
 	  help
@@ -157,7 +141,6 @@ config MACH_PCM049
 
 config MACH_PCAAL1
 	bool "Phytec phyCARD-A-L1"
-	select OMAP_CLOCK_ALL
 	select HAVE_NOSHELL
 	depends on ARCH_OMAP3
 	  help
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index 646235e..463633a 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -674,18 +674,6 @@ static void per_clocks_enable(void)
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
-
-#ifdef CONFIG_OMAP_CLOCK_ALL
 #define FCK_IVA2_ON	0x00000001
 #define FCK_CORE1_ON	0x03fffe29
 #define ICK_CORE1_ON	0x3ffffffb
@@ -710,7 +698,7 @@ static void per_clocks_enable(void)
 	sr32(CM_REG(ICLKEN_CAM), 0, 32, ICK_CAM_ON);
 	sr32(CM_REG(FCLKEN_PER), 0, 32, FCK_PER_ON);
 	sr32(CM_REG(ICLKEN_PER), 0, 32, ICK_PER_ON);
-#endif
+
 	/* Settle down my friend */
 	sdelay(1000);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
