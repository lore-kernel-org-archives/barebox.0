Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail431.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxNiB-0003NO-Uz
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 20:11:23 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 21:09:54 +0100
Message-Id: <1358798996-26595-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/9] at91sam9m10g45ek: add usb support
To: barebox@lists.infradead.org

warning: the ohci work only without MMU

enable:
 - ehci
 - usb strorage
 - usb net asix

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9m10g45ek/init.c     |   20 ++++++++++++++++++++
 arch/arm/configs/at91sam9m10g45ek_defconfig |    6 ++++++
 2 files changed, 26 insertions(+)

diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index d77b2bf..214de96 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -209,6 +209,25 @@ static void ek_device_add_keyboard(void)
 static void ek_device_add_keyboard(void) {}
 #endif
 
+#if defined(CONFIG_USB_OHCI) || defined(CONFIG_USB_EHCI)
+/*
+ * USB HS Host port (common to OHCI & EHCI)
+ */
+static struct at91_usbh_data ek_usbh_hs_data = {
+	.ports			= 2,
+	.vbus_pin		= {AT91_PIN_PD1, AT91_PIN_PD3},
+	.vbus_pin_active_low	= {1, 1},
+};
+
+static void ek_add_device_usb(void)
+{
+	at91_add_device_usbh_ohci(&ek_usbh_hs_data);
+	at91_add_device_usbh_ehci(&ek_usbh_hs_data);
+}
+#else
+static void ek_add_device_usb(void) {}
+#endif
+
 static int at91sam9m10g45ek_mem_init(void)
 {
 	at91_add_device_sdram(128 * 1024 * 1024);
@@ -222,6 +241,7 @@ static int at91sam9m10g45ek_devices_init(void)
 	ek_add_device_nand();
 	at91_add_device_eth(0, &macb_pdata);
 	ek_add_device_mci();
+	ek_add_device_usb();
 	ek_device_add_leds();
 	ek_device_add_keyboard();
 
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 0929f8e..1e35787 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -58,6 +58,8 @@ CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
+CONFIG_NET_USB=y
+CONFIG_NET_USB_ASIX=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
@@ -66,6 +68,10 @@ CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
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
