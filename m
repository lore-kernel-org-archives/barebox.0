Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail431.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxNiC-0003NQ-2f
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 20:11:24 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 21:09:55 +0100
Message-Id: <1358798996-26595-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130121200712.GJ26329@game.jcrosoft.org>
 <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/9] at91sam9x5: add ehci support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9x5.c         |    1 +
 arch/arm/mach-at91/at91sam9x5_devices.c |   22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index 5d43423..e6e3a2f 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -206,6 +206,7 @@ static struct clk_lookup periph_clocks_lookups[] = {
 	CLKDEV_CON_DEV_ID("macb_clk", "macb0", &macb0_clk),
 	CLKDEV_CON_DEV_ID("macb_clk", "macb1", &macb1_clk),
 	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
+	CLKDEV_CON_DEV_ID("ehci_clk", "atmel-ehci", &uhphs_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi1", &spi1_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 71057a5..8e59fe0 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -56,6 +56,28 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
 void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data) {}
 #endif
 
+#if defined(CONFIG_USB_EHCI)
+void __init at91_add_device_usbh_ehci(struct at91_usbh_data *data)
+{
+	int i;
+
+	if (!data)
+		return;
+
+	/* Enable VBus control for UHP ports */
+	for (i = 0; i < data->ports; i++) {
+		if (gpio_is_valid(data->vbus_pin[i]))
+			at91_set_gpio_output(data->vbus_pin[i],
+					     data->vbus_pin_active_low[i]);
+	}
+
+	add_generic_device("atmel-ehci", DEVICE_ID_SINGLE, NULL, AT91SAM9X5_EHCI_BASE,
+			1024 * 1024, IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_usbh_ehci(struct at91_usbh_data *data) {}
+#endif
+
 #if defined(CONFIG_DRIVER_NET_MACB)
 void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
