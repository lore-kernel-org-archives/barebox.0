Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail431.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxNiB-0003NN-RW
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 20:11:23 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 21:09:53 +0100
Message-Id: <1358798996-26595-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/9] at91sam9g45: add ehci support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9g45.c         |    1 +
 arch/arm/mach-at91/at91sam9g45_devices.c |   22 ++++++++++++++++++++++
 arch/arm/mach-at91/include/mach/board.h  |    1 +
 3 files changed, 24 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index 7118efe..6e88bf1 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -187,6 +187,7 @@ static struct clk *periph_clocks[] __initdata = {
 static struct clk_lookup periph_clocks_lookups[] = {
 	/* One additional fake clock for ohci */
 	CLKDEV_CON_ID("ohci_clk", &uhphs_clk),
+	CLKDEV_CON_DEV_ID("ehci_clk", "atmel-ehci", &uhphs_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci0", &mmc0_clk),
 	CLKDEV_CON_DEV_ID("mci_clk", "atmel_mci1", &mmc1_clk),
 	CLKDEV_CON_DEV_ID("spi_clk", "atmel_spi0", &spi0_clk),
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 7d44ee0..c4ca7c6 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -55,6 +55,28 @@ void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data)
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
+	add_generic_device("atmel-ehci", DEVICE_ID_SINGLE, NULL, AT91SAM9G45_EHCI_BASE,
+			1024 * 1024, IORESOURCE_MEM, data);
+}
+#else
+void __init at91_add_device_usbh_ehci(struct at91_usbh_data *data) {}
+#endif
+
 #if defined(CONFIG_DRIVER_NET_MACB)
 void at91_add_device_eth(int id, struct at91_ether_platform_data *data)
 {
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 0994770..b0afcf9 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -32,6 +32,7 @@ struct at91_usbh_data {
 	u8	vbus_pin_active_low[2];	/* vbus polarity */
 };
 extern void __init at91_add_device_usbh_ohci(struct at91_usbh_data *data);
+extern void __init at91_add_device_usbh_ehci(struct at91_usbh_data *data);
 
 void atmel_nand_load_image(void *dest, int size, int pagesize, int blocksize);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
