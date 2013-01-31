Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0ski-00089A-O0
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 11:56:32 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 04540FFB024
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 13:11:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 31 Jan 2013 12:55:01 +0100
Message-Id: <1359633302-19419-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/8] sama5d3: add lcd support
To: barebox@lists.infradead.org

the sam9x5 have multiple overlay but only register the base one

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/sama5d3.c         |    1 +
 arch/arm/mach-at91/sama5d3_devices.c |   53 ++++++++++++++++++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index 17d5654..0eec696 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -323,6 +323,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_DEV_ID("at91sam9x5-gpio3", &pioD_clk),
 	CLKDEV_DEV_ID("at91sam9x5-gpio4", &pioE_clk),
 	CLKDEV_DEV_ID("at91-pit", &pit_clk),
+	CLKDEV_CON_DEV_ID("hck1", "atmel_hlcdfb", &lcdc_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index 23e4ab9..3e4531e 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -404,6 +404,59 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
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
+	if (cpu_is_sama5d35()) {
+		pr_warn("AT91: no lcd on sama5d35\n");
+		return;
+	}
+
+	at91_set_A_periph(AT91_PIN_PA24, 0);	/* LCDPWM */
+	at91_set_A_periph(AT91_PIN_PA25, 0);	/* LCDDISP */
+	at91_set_A_periph(AT91_PIN_PA26, 0);	/* LCDVSYNC */
+	at91_set_A_periph(AT91_PIN_PA27, 0);	/* LCDHSYNC */
+	at91_set_A_periph(AT91_PIN_PA28, 0);	/* LCDDOTCK */
+	at91_set_A_periph(AT91_PIN_PA29, 0);	/* LCDDEN */
+
+	at91_set_A_periph(AT91_PIN_PA0, 0);	/* LCDD0 */
+	at91_set_A_periph(AT91_PIN_PA1, 0);	/* LCDD1 */
+	at91_set_A_periph(AT91_PIN_PA2, 0);	/* LCDD2 */
+	at91_set_A_periph(AT91_PIN_PA3, 0);	/* LCDD3 */
+	at91_set_A_periph(AT91_PIN_PA4, 0);	/* LCDD4 */
+	at91_set_A_periph(AT91_PIN_PA5, 0);	/* LCDD5 */
+	at91_set_A_periph(AT91_PIN_PA6, 0);	/* LCDD6 */
+	at91_set_A_periph(AT91_PIN_PA7, 0);	/* LCDD7 */
+	at91_set_A_periph(AT91_PIN_PA8, 0);	/* LCDD8 */
+	at91_set_A_periph(AT91_PIN_PA9, 0);	/* LCDD9 */
+	at91_set_A_periph(AT91_PIN_PA10, 0);	/* LCDD10 */
+	at91_set_A_periph(AT91_PIN_PA11, 0);	/* LCDD11 */
+	at91_set_A_periph(AT91_PIN_PA12, 0);	/* LCDD12 */
+	at91_set_A_periph(AT91_PIN_PA13, 0);	/* LCDD13 */
+	at91_set_A_periph(AT91_PIN_PA14, 0);	/* LCDD14 */
+	at91_set_A_periph(AT91_PIN_PA15, 0);	/* LCDD15 */
+	at91_set_C_periph(AT91_PIN_PC14, 0);	/* LCDD16 */
+	at91_set_C_periph(AT91_PIN_PC13, 0);	/* LCDD17 */
+	at91_set_C_periph(AT91_PIN_PC12, 0);	/* LCDD18 */
+	at91_set_C_periph(AT91_PIN_PC11, 0);	/* LCDD19 */
+	at91_set_C_periph(AT91_PIN_PC10, 0);	/* LCDD20 */
+	at91_set_C_periph(AT91_PIN_PC15, 0);	/* LCDD21 */
+	at91_set_C_periph(AT91_PIN_PE27, 0);	/* LCDD22 */
+	at91_set_C_periph(AT91_PIN_PE28, 0);	/* LCDD23 */
+
+	add_generic_device("atmel_hlcdfb", DEVICE_ID_SINGLE, NULL, SAMA5D3_BASE_LCDC, SZ_4K,
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
