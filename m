Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFUS8-00081P-0p
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 18:29:20 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6E0CFFF9FAE
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 20:35:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 22 Sep 2012 20:26:45 +0200
Message-Id: <1348338408-26737-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] at91sam9263: add atmel lcdc frambuffer support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
---
 arch/arm/mach-at91/at91sam9263.c         |    1 +
 arch/arm/mach-at91/at91sam9263_devices.c |   40 ++++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index b3116d3..4f987d8 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -168,6 +168,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+	CLKDEV_CON_DEV_ID("hck1", "atmel_lcdfb0", &lcdc_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index e686480..ba0b0b2 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -218,6 +218,46 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
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
+	at91_set_A_periph(AT91_PIN_PC1, 0);	/* LCDHSYNC */
+	at91_set_A_periph(AT91_PIN_PC2, 0);	/* LCDDOTCK */
+	at91_set_A_periph(AT91_PIN_PC3, 0);	/* LCDDEN */
+	at91_set_B_periph(AT91_PIN_PB9, 0);	/* LCDCC */
+	at91_set_A_periph(AT91_PIN_PC6, 0);	/* LCDD2 */
+	at91_set_A_periph(AT91_PIN_PC7, 0);	/* LCDD3 */
+	at91_set_A_periph(AT91_PIN_PC8, 0);	/* LCDD4 */
+	at91_set_A_periph(AT91_PIN_PC9, 0);	/* LCDD5 */
+	at91_set_A_periph(AT91_PIN_PC10, 0);	/* LCDD6 */
+	at91_set_A_periph(AT91_PIN_PC11, 0);	/* LCDD7 */
+	at91_set_A_periph(AT91_PIN_PC14, 0);	/* LCDD10 */
+	at91_set_A_periph(AT91_PIN_PC15, 0);	/* LCDD11 */
+	at91_set_A_periph(AT91_PIN_PC16, 0);	/* LCDD12 */
+	at91_set_B_periph(AT91_PIN_PC12, 0);	/* LCDD13 */
+	at91_set_A_periph(AT91_PIN_PC18, 0);	/* LCDD14 */
+	at91_set_A_periph(AT91_PIN_PC19, 0);	/* LCDD15 */
+	at91_set_A_periph(AT91_PIN_PC22, 0);	/* LCDD18 */
+	at91_set_A_periph(AT91_PIN_PC23, 0);	/* LCDD19 */
+	at91_set_A_periph(AT91_PIN_PC24, 0);	/* LCDD20 */
+	at91_set_B_periph(AT91_PIN_PC17, 0);	/* LCDD21 */
+	at91_set_A_periph(AT91_PIN_PC26, 0);	/* LCDD22 */
+	at91_set_A_periph(AT91_PIN_PC27, 0);	/* LCDD23 */
+
+	add_generic_device("atmel_lcdfb", 0, NULL, AT91SAM9263_LCDC_BASE, SZ_4K,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_lcdc(struct atmel_lcdfb_info *data) {}
+#endif
+
 resource_size_t __init at91_configure_dbgu(void)
 {
 	at91_set_A_periph(AT91_PIN_PC30, 0);		/* DRXD */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
