Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzQJX-0003Lw-30
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 11:22:20 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id EDC73DC0C81
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 12:32:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 12:20:43 +0100
Message-Id: <1359285649-18717-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359285649-18717-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130127110714.GL26329@game.jcrosoft.org>
 <1359285649-18717-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/8] at91sam9263: add atmel lcdc frambuffer support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
---
 arch/arm/mach-at91/at91sam9263.c         |    1 +
 arch/arm/mach-at91/at91sam9263_devices.c |   42 ++++++++++++++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index eeea1ce..49d280d 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -175,6 +175,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_DEV_ID("at91rm9200-gpio3", &pioCDE_clk),
 	CLKDEV_DEV_ID("at91rm9200-gpio4", &pioCDE_clk),
 	CLKDEV_DEV_ID("at91-pit", &mck),
+	CLKDEV_CON_DEV_ID("hck1", "atmel_lcdfb", &lcdc_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index c5efe9f..8f06821 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -250,6 +250,48 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
 #endif
 
+
+/* --------------------------------------------------------------------
+ *  LCD Controller
+ * -------------------------------------------------------------------- */
+
+#if defined(CONFIG_DRIVER_VIDEO_ATMEL)
+void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data)
+{
+	BUG_ON(!data);
+
+	data->have_intensity_bit = true;
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
+	add_generic_device("atmel_lcdfb", DEVICE_ID_SINGLE, NULL, AT91SAM9263_LCDC_BASE, SZ_4K,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data) {}
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
