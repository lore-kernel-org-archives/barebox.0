Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STRVX-0007K2-6D
 for barebox@lists.infradead.org; Sun, 13 May 2012 05:38:15 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 13 May 2012 09:38:03 +0400
Message-Id: <1336887485-11941-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1336887485-11941-1-git-send-email-shc_work@mail.ru>
References: <1336887485-11941-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/4] PCM038: Call power_init() after initializing SPI.
To: barebox@lists.infradead.org

Power and frequency should be setup before initialize other devices.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c |  140 +++++++++++++++++---------------------
 1 files changed, 63 insertions(+), 77 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index d481bdc..7814244 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -131,6 +131,67 @@ static void pcm038_usbh_init(void)
 }
 #endif
 
+/**
+ * The spctl0 register is a beast: Seems you can read it
+ * only one times without writing it again.
+ */
+static inline uint32_t get_pll_spctl10(void)
+{
+	uint32_t reg;
+
+	reg = SPCTL0;
+	SPCTL0 = reg;
+
+	return reg;
+}
+
+/**
+ * If the PLL settings are in place switch the CPU core frequency to the max. value
+ */
+static int pcm038_power_init(void)
+{
+#ifdef CONFIG_MFD_MC13XXX
+	uint32_t spctl0 = get_pll_spctl10();
+	struct mc13xxx *mc13xxx = mc13xxx_get();
+
+	/* PLL registers already set to their final values? */
+	if (spctl0 == SPCTL0_VAL && MPCTL0 == MPCTL0_VAL) {
+		console_flush();
+		if (mc13xxx) {
+			mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(0),
+				MC13783_SWX_VOLTAGE(MC13783_SWX_VOLTAGE_1_450) |
+				MC13783_SWX_VOLTAGE_DVS(MC13783_SWX_VOLTAGE_1_450) |
+				MC13783_SWX_VOLTAGE_STANDBY(MC13783_SWX_VOLTAGE_1_450));
+
+			mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(4),
+				MC13783_SW1A_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1A_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1A_SOFTSTART |
+				MC13783_SW1B_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1B_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
+				MC13783_SW1B_SOFTSTART |
+				MC13783_SW_PLL_FACTOR(32));
+
+			/* wait for required power level to run the CPU at 400 MHz */
+			udelay(100000);
+			CSCR = CSCR_VAL_FINAL;
+			PCDR0 = 0x130410c3;
+			PCDR1 = 0x09030911;
+
+			/* Clocks have changed. Notify clients */
+			clock_notifier_call_chain();
+		} else {
+			printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
+		}
+	}
+#endif
+
+	/* clock gating enable */
+	GPCR = 0x00050f08;
+
+	return 0;
+}
+
 static int pcm038_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
@@ -245,6 +306,8 @@ static int pcm038_devices_init(void)
 	spi_register_board_info(pcm038_spi_board_info, ARRAY_SIZE(pcm038_spi_board_info));
 	imx27_add_spi0(&pcm038_spi_0_data);
 
+	pcm038_power_init();
+
 	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
 	imx27_add_nand(&nand_info);
 	imx27_add_fb(&pcm038_fb_data);
@@ -305,80 +368,3 @@ static int pcm038_console_init(void)
 }
 
 console_initcall(pcm038_console_init);
-
-#ifdef CONFIG_MFD_MC13XXX
-static int pmic_power(void)
-{
-	struct mc13xxx *mc13xxx;
-
-	mc13xxx = mc13xxx_get();
-	if (!mc13xxx)
-		return -ENODEV;
-
-	mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(0),
-		MC13783_SWX_VOLTAGE(MC13783_SWX_VOLTAGE_1_450) |
-		MC13783_SWX_VOLTAGE_DVS(MC13783_SWX_VOLTAGE_1_450) |
-		MC13783_SWX_VOLTAGE_STANDBY(MC13783_SWX_VOLTAGE_1_450));
-
-	mc13xxx_reg_write(mc13xxx, MC13783_REG_SWITCHERS(4),
-		MC13783_SW1A_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-		MC13783_SW1A_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-		MC13783_SW1A_SOFTSTART |
-		MC13783_SW1B_MODE(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-		MC13783_SW1B_MODE_STANDBY(MC13783_SWX_MODE_NO_PULSE_SKIP) |
-		MC13783_SW1B_SOFTSTART |
-		MC13783_SW_PLL_FACTOR(32));
-
-	return 0;
-}
-#else
-# define pmic_power()	(1)
-#endif
-
-/**
- * The spctl0 register is a beast: Seems you can read it
- * only one times without writing it again.
- */
-static inline uint32_t get_pll_spctl10(void)
-{
-	uint32_t reg;
-
-	reg = SPCTL0;
-	SPCTL0 = reg;
-
-	return reg;
-}
-
-/**
- * If the PLL settings are in place switch the CPU core frequency to the max. value
- */
-static int pcm038_power_init(void)
-{
-	uint32_t spctl0;
-
-	spctl0 = get_pll_spctl10();
-
-	/* PLL registers already set to their final values? */
-	if (spctl0 == SPCTL0_VAL && MPCTL0 == MPCTL0_VAL) {
-		console_flush();
-		if (!pmic_power()) {
-			/* wait for required power level to run the CPU at 400 MHz */
-			udelay(100000);
-			CSCR = CSCR_VAL_FINAL;
-			PCDR0 = 0x130410c3;
-			PCDR1 = 0x09030911;
-			/* Clocks have changed. Notify clients */
-			clock_notifier_call_chain();
-		} else {
-			printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
-		}
-	}
-
-	/* clock gating enable */
-	GPCR = 0x00050f08;
-
-	return 0;
-}
-
-late_initcall(pcm038_power_init);
-
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
