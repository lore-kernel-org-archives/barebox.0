Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFUS9-00081Q-VI
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 18:29:25 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 83754FF9FB2
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 20:35:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 22 Sep 2012 20:26:46 +0200
Message-Id: <1348338408-26737-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348338408-26737-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120922175346.GX26553@game.jcrosoft.org>
 <1348338408-26737-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] at91sam9261: add atmel lcdc frambuffer support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
---
 arch/arm/mach-at91/at91sam9261.c         |    1 +
 arch/arm/mach-at91/at91sam9261_devices.c |   51 ++++++++++++++++++++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index d20b250..41e4d84 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -136,6 +136,7 @@ static struct clk *periph_clocks[] = {
 static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+	CLKDEV_CON_DEV_ID("hck1", "atmel_lcdfb0", &lcdc_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 0091e2d..a32b4df 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -168,6 +168,57 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
 #endif
 
+/* --------------------------------------------------------------------
+ *  LCD Controller
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL)
+void __init at91_add_device_lcdc(struct atmel_lcdfb_info *data)
+{
+	BUG_ON(!data);
+
+#if defined(CONFIG_FB_ATMEL_STN)
+	at91_set_A_periph(AT91_PIN_PB0, 0);	/* LCDVSYNC */
+	at91_set_A_periph(AT91_PIN_PB1, 0);	/* LCDHSYNC */
+	at91_set_A_periph(AT91_PIN_PB2, 0);	/* LCDDOTCK */
+	at91_set_A_periph(AT91_PIN_PB3, 0);	/* LCDDEN */
+	at91_set_A_periph(AT91_PIN_PB4, 0);	/* LCDCC */
+	at91_set_A_periph(AT91_PIN_PB5, 0);	/* LCDD0 */
+	at91_set_A_periph(AT91_PIN_PB6, 0);	/* LCDD1 */
+	at91_set_A_periph(AT91_PIN_PB7, 0);	/* LCDD2 */
+	at91_set_A_periph(AT91_PIN_PB8, 0);	/* LCDD3 */
+#else
+	at91_set_A_periph(AT91_PIN_PB1, 0);	/* LCDHSYNC */
+	at91_set_A_periph(AT91_PIN_PB2, 0);	/* LCDDOTCK */
+	at91_set_A_periph(AT91_PIN_PB3, 0);	/* LCDDEN */
+	at91_set_A_periph(AT91_PIN_PB4, 0);	/* LCDCC */
+	at91_set_A_periph(AT91_PIN_PB7, 0);	/* LCDD2 */
+	at91_set_A_periph(AT91_PIN_PB8, 0);	/* LCDD3 */
+	at91_set_A_periph(AT91_PIN_PB9, 0);	/* LCDD4 */
+	at91_set_A_periph(AT91_PIN_PB10, 0);	/* LCDD5 */
+	at91_set_A_periph(AT91_PIN_PB11, 0);	/* LCDD6 */
+	at91_set_A_periph(AT91_PIN_PB12, 0);	/* LCDD7 */
+	at91_set_A_periph(AT91_PIN_PB15, 0);	/* LCDD10 */
+	at91_set_A_periph(AT91_PIN_PB16, 0);	/* LCDD11 */
+	at91_set_A_periph(AT91_PIN_PB17, 0);	/* LCDD12 */
+	at91_set_A_periph(AT91_PIN_PB18, 0);	/* LCDD13 */
+	at91_set_A_periph(AT91_PIN_PB19, 0);	/* LCDD14 */
+	at91_set_A_periph(AT91_PIN_PB20, 0);	/* LCDD15 */
+	at91_set_B_periph(AT91_PIN_PB23, 0);	/* LCDD18 */
+	at91_set_B_periph(AT91_PIN_PB24, 0);	/* LCDD19 */
+	at91_set_B_periph(AT91_PIN_PB25, 0);	/* LCDD20 */
+	at91_set_B_periph(AT91_PIN_PB26, 0);	/* LCDD21 */
+	at91_set_B_periph(AT91_PIN_PB27, 0);	/* LCDD22 */
+	at91_set_B_periph(AT91_PIN_PB28, 0);	/* LCDD23 */
+#endif
+
+	add_generic_device("atmel_lcdfb", 0, NULL, AT91SAM9261_LCDC_BASE, SZ_4K,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_lcdc(struct atmel_lcdfb_info *data) {}
+#endif
+
 resource_size_t __init at91_configure_dbgu(void)
 {
 	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
