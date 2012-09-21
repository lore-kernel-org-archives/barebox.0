Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TF2o4-0004n3-L1
 for barebox@lists.infradead.org; Fri, 21 Sep 2012 12:58:10 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id BAE60FF8626
 for <barebox@lists.infradead.org>; Fri, 21 Sep 2012 15:03:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 21 Sep 2012 14:55:32 +0200
Message-Id: <1348232133-18969-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348232133-18969-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120921125151.GM26553@game.jcrosoft.org>
 <1348232133-18969-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] at91sam9g45: add atmel lcdc frambuffer support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Nicolas Ferre <nicolas.ferre@atmel.com>
---
 arch/arm/mach-at91/at91sam9g45.c         |    1 +
 arch/arm/mach-at91/at91sam9g45_devices.c |   49 ++++++++++++++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index a6717f1..93e815f 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -190,6 +190,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+	CLKDEV_CON_DEV_ID("hck1", "atmel_lcdfb0", &lcdc_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 22b455e..e08904b 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -324,3 +324,52 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 #else
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
 #endif
+
+/* --------------------------------------------------------------------
+ *  LCD Controller
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL)
+void __init at91_add_device_lcdc(struct atmel_lcdfb_info *data)
+{
+	BUG_ON(!data);
+
+	at91_set_A_periph(AT91_PIN_PE0, 0);	/* LCDDPWR */
+
+	at91_set_A_periph(AT91_PIN_PE2, 0);	/* LCDCC */
+	at91_set_A_periph(AT91_PIN_PE3, 0);	/* LCDVSYNC */
+	at91_set_A_periph(AT91_PIN_PE4, 0);	/* LCDHSYNC */
+	at91_set_A_periph(AT91_PIN_PE5, 0);	/* LCDDOTCK */
+	at91_set_A_periph(AT91_PIN_PE6, 0);	/* LCDDEN */
+	at91_set_A_periph(AT91_PIN_PE7, 0);	/* LCDD0 */
+	at91_set_A_periph(AT91_PIN_PE8, 0);	/* LCDD1 */
+	at91_set_A_periph(AT91_PIN_PE9, 0);	/* LCDD2 */
+	at91_set_A_periph(AT91_PIN_PE10, 0);	/* LCDD3 */
+	at91_set_A_periph(AT91_PIN_PE11, 0);	/* LCDD4 */
+	at91_set_A_periph(AT91_PIN_PE12, 0);	/* LCDD5 */
+	at91_set_A_periph(AT91_PIN_PE13, 0);	/* LCDD6 */
+	at91_set_A_periph(AT91_PIN_PE14, 0);	/* LCDD7 */
+	at91_set_A_periph(AT91_PIN_PE15, 0);	/* LCDD8 */
+	at91_set_A_periph(AT91_PIN_PE16, 0);	/* LCDD9 */
+	at91_set_A_periph(AT91_PIN_PE17, 0);	/* LCDD10 */
+	at91_set_A_periph(AT91_PIN_PE18, 0);	/* LCDD11 */
+	at91_set_A_periph(AT91_PIN_PE19, 0);	/* LCDD12 */
+	at91_set_A_periph(AT91_PIN_PE20, 0);	/* LCDD13 */
+	at91_set_A_periph(AT91_PIN_PE21, 0);	/* LCDD14 */
+	at91_set_A_periph(AT91_PIN_PE22, 0);	/* LCDD15 */
+	at91_set_A_periph(AT91_PIN_PE23, 0);	/* LCDD16 */
+	at91_set_A_periph(AT91_PIN_PE24, 0);	/* LCDD17 */
+	at91_set_A_periph(AT91_PIN_PE25, 0);	/* LCDD18 */
+	at91_set_A_periph(AT91_PIN_PE26, 0);	/* LCDD19 */
+	at91_set_A_periph(AT91_PIN_PE27, 0);	/* LCDD20 */
+	at91_set_A_periph(AT91_PIN_PE28, 0);	/* LCDD21 */
+	at91_set_A_periph(AT91_PIN_PE29, 0);	/* LCDD22 */
+	at91_set_A_periph(AT91_PIN_PE30, 0);	/* LCDD23 */
+
+	add_generic_device("atmel_lcdfb", 0, NULL, AT91SAM9G45_LCDC_BASE, SZ_4K,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_lcdc(struct atmel_lcdfb_info *data) {}
+#endif
+
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
