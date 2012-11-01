Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TU2AP-00028f-LC
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 21:19:11 +0000
Received: from mail624.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id BF25DFFAAC6
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 22:26:20 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 22:16:55 +0100
Message-Id: <1351804616-31047-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351804616-31047-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121101195008.GM29599@game.jcrosoft.org>
 <1351804616-31047-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] at91sam9x5: add mci support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9x5.c         |    2 +
 arch/arm/mach-at91/at91sam9x5_devices.c |   62 +++++++++++++++++++++++++++++++
 2 files changed, 64 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index a9065ff..7c7d997 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -207,6 +207,8 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
+	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
 };
 
 static struct clk_lookup usart_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 710ded7..14fcb1e 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -123,6 +123,68 @@ void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 void at91_add_device_eth(int id, struct at91_ether_platform_data *data) {}
 #endif
 
+#if defined(CONFIG_MCI_ATMEL)
+/* Consider only one slot : slot 0 */
+void __init at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
+{
+	resource_size_t start = ~0;
+
+	if (!data)
+		return;
+
+	/* Must have at least one usable slot */
+	if (!data->bus_width)
+		return;
+
+	/* input/irq */
+	if (data->detect_pin) {
+		at91_set_gpio_input(data->detect_pin, 1);
+		at91_set_deglitch(data->detect_pin, 1);
+	}
+	if (data->wp_pin)
+		at91_set_gpio_input(data->wp_pin, 1);
+
+	if (mmc_id == 0) {		/* MCI0 */
+		start = AT91SAM9X5_BASE_MCI0;
+
+		/* CLK */
+		at91_set_A_periph(AT91_PIN_PA17, 0);
+
+		/* CMD */
+		at91_set_A_periph(AT91_PIN_PA16, 1);
+
+		/* DAT0, maybe DAT1..DAT3 */
+		at91_set_A_periph(AT91_PIN_PA15, 1);
+		if (data->bus_width == 4) {
+			at91_set_A_periph(AT91_PIN_PA18, 1);
+			at91_set_A_periph(AT91_PIN_PA19, 1);
+			at91_set_A_periph(AT91_PIN_PA20, 1);
+		}
+	} else {			/* MCI1 */
+		start = AT91SAM9X5_BASE_MCI1;
+
+		/* CLK */
+		at91_set_B_periph(AT91_PIN_PA13, 0);
+
+		/* CMD */
+		at91_set_B_periph(AT91_PIN_PA12, 1);
+
+		/* DAT0, maybe DAT1..DAT3 */
+		at91_set_B_periph(AT91_PIN_PA11, 1);
+		if (data->bus_width == 4) {
+			at91_set_B_periph(AT91_PIN_PA2, 1);
+			at91_set_B_periph(AT91_PIN_PA3, 1);
+			at91_set_B_periph(AT91_PIN_PA4, 1);
+		}
+	}
+
+	add_generic_device("atmel_mci", mmc_id, NULL, start, SZ_16K,
+			   IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
+#endif
+
 /* --------------------------------------------------------------------
  *  NAND / SmartMedia
  * -------------------------------------------------------------------- */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
