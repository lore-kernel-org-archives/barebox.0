Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail431.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxNiC-0003NR-2o
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 20:11:25 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 21:09:56 +0100
Message-Id: <1358798996-26595-9-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 9/9] at91sam9x5ek: add usb support
To: barebox@lists.infradead.org

warning: the ohci work only without MMU

enable:
 - ehci
 - usb strorage
 - usb net asix

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/init.c     |   20 +++++++++++++++-----
 arch/arm/configs/at91sam9x5ek_defconfig |    6 ++++++
 2 files changed, 21 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index f230205..5e11241 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -192,14 +192,24 @@ static void ek_add_device_spi(void)
 	at91_add_device_spi(0, &spi_pdata);
 }
 
+#if defined(CONFIG_USB_OHCI) || defined(CONFIG_USB_EHCI)
 /*
- * USB Host port
+ * USB HS Host port (common to OHCI & EHCI)
  */
-static struct at91_usbh_data __initdata ek_usbh_data = {
-	.ports		= 2,
-	.vbus_pin	= {AT91_PIN_PD20, AT91_PIN_PD19},
+static struct at91_usbh_data ek_usbh_hs_data = {
+	.ports			= 2,
+	.vbus_pin		= {AT91_PIN_PD19, AT91_PIN_PD20},
 };
 
+static void ek_add_device_usb(void)
+{
+	at91_add_device_usbh_ohci(&ek_usbh_hs_data);
+	at91_add_device_usbh_ehci(&ek_usbh_hs_data);
+}
+#else
+static void ek_add_device_usb(void) {}
+#endif
+
 struct gpio_led leds[] = {
 	{
 		.gpio	= AT91_PIN_PB18,
@@ -250,7 +260,7 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_eth();
 	ek_add_device_spi();
 	ek_add_device_mci();
-	at91_add_device_usbh_ohci(&ek_usbh_data);
+	ek_add_device_usb();
 	ek_add_led();
 	ek_add_device_i2c();
 
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 0df8631..400a35b 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -52,6 +52,8 @@ CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD_M25P80=y
 CONFIG_I2C=y
@@ -66,6 +68,10 @@ CONFIG_NAND=y
 CONFIG_NAND_ATMEL=y
 CONFIG_NAND_ATMEL_PMECC=y
 CONFIG_UBI=y
+CONFIG_USB=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_EHCI_ATMEL=y
+CONFIG_USB_STORAGE=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_ATMEL=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
