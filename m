Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0skh-000896-Tv
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 11:56:24 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id F1D9DFFADAC
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 13:11:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 31 Jan 2013 12:54:57 +0100
Message-Id: <1359633302-19419-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359633302-19419-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130131115046.GA26329@game.jcrosoft.org>
 <1359633302-19419-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/8] at91sam9x5: add lcd support
To: barebox@lists.infradead.org

the sam9x5 have multiple overlay but only register the base one

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9x5.c         |    1 +
 arch/arm/mach-at91/at91sam9x5_devices.c |   55 +++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index e6e3a2f..01eac18 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -216,6 +216,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_DEV_ID("at91sam9x5-gpio2", &pioCD_clk),
 	CLKDEV_DEV_ID("at91sam9x5-gpio3", &pioCD_clk),
 	CLKDEV_DEV_ID("at91-pit", &mck),
+	CLKDEV_CON_DEV_ID("hck1", "atmel_hlcdfb", &lcdc_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 21aead9..9f211e3 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -391,6 +391,61 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
 #endif
 
 /* --------------------------------------------------------------------
+ *  LCD Controller
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL_HLCD)
+void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data)
+{
+	BUG_ON(!data);
+
+	if (cpu_is_at91sam9g25() || cpu_is_at91sam9x25()) {
+		pr_warn("AT91: no lcd on at91sam9g25 or at91sam9x25\n");
+		return;
+	}
+
+	at91_set_A_periph(AT91_PIN_PC26, 0);	/* LCDPWM */
+
+	at91_set_A_periph(AT91_PIN_PC27, 0);	/* LCDVSYNC */
+	at91_set_A_periph(AT91_PIN_PC28, 0);	/* LCDHSYNC */
+
+	at91_set_A_periph(AT91_PIN_PC24, 0);	/* LCDDISP */
+	at91_set_A_periph(AT91_PIN_PC29, 0);	/* LCDDEN */
+	at91_set_A_periph(AT91_PIN_PC30, 0);	/* LCDPCK */
+
+	at91_set_A_periph(AT91_PIN_PC0, 0);	/* LCDD0 */
+	at91_set_A_periph(AT91_PIN_PC1, 0);	/* LCDD1 */
+	at91_set_A_periph(AT91_PIN_PC2, 0);	/* LCDD2 */
+	at91_set_A_periph(AT91_PIN_PC3, 0);	/* LCDD3 */
+	at91_set_A_periph(AT91_PIN_PC4, 0);	/* LCDD4 */
+	at91_set_A_periph(AT91_PIN_PC5, 0);	/* LCDD5 */
+	at91_set_A_periph(AT91_PIN_PC6, 0);	/* LCDD6 */
+	at91_set_A_periph(AT91_PIN_PC7, 0);	/* LCDD7 */
+	at91_set_A_periph(AT91_PIN_PC8, 0);	/* LCDD8 */
+	at91_set_A_periph(AT91_PIN_PC9, 0);	/* LCDD9 */
+	at91_set_A_periph(AT91_PIN_PC10, 0);	/* LCDD10 */
+	at91_set_A_periph(AT91_PIN_PC11, 0);	/* LCDD11 */
+	at91_set_A_periph(AT91_PIN_PC12, 0);	/* LCDD12 */
+	at91_set_A_periph(AT91_PIN_PC13, 0);	/* LCDD13 */
+	at91_set_A_periph(AT91_PIN_PC14, 0);	/* LCDD14 */
+	at91_set_A_periph(AT91_PIN_PC15, 0);	/* LCDD15 */
+	at91_set_A_periph(AT91_PIN_PC16, 0);	/* LCDD16 */
+	at91_set_A_periph(AT91_PIN_PC17, 0);	/* LCDD17 */
+	at91_set_A_periph(AT91_PIN_PC18, 0);	/* LCDD18 */
+	at91_set_A_periph(AT91_PIN_PC19, 0);	/* LCDD19 */
+	at91_set_A_periph(AT91_PIN_PC20, 0);	/* LCDD20 */
+	at91_set_A_periph(AT91_PIN_PC21, 0);	/* LCDD21 */
+	at91_set_A_periph(AT91_PIN_PC22, 0);	/* LCDD22 */
+	at91_set_A_periph(AT91_PIN_PC23, 0);	/* LCDD23 */
+
+	add_generic_device("atmel_hlcdfb", DEVICE_ID_SINGLE, NULL, AT91SAM9X5_BASE_LCDC, SZ_4K,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data) {}
+#endif
+
+/* --------------------------------------------------------------------
  *  UART
  * -------------------------------------------------------------------- */
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
