Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1URibI-0000uH-Cw
 for barebox@lists.infradead.org; Mon, 15 Apr 2013 12:33:38 +0000
Received: from mail181.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5EC29FF8D1A
 for <barebox@lists.infradead.org>; Mon, 15 Apr 2013 14:33:29 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 15 Apr 2013 14:28:45 +0200
Message-Id: <1366028925-27776-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] at91sam9m10g45ek: add spi dataflash supprt
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9m10g45ek/init.c     |   18 ++++++++++++++++++
 arch/arm/configs/at91sam9m10g45ek_defconfig |    4 +++-
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index f32215d..d9a2f1f 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -38,6 +38,7 @@
 #include <mach/at91sam9_smc.h>
 #include <gpio_keys.h>
 #include <readkey.h>
+#include <spi/spi.h>
 
 /*
  * board revision encoding
@@ -125,6 +126,22 @@ static void ek_add_device_mci(void)
 static void ek_add_device_mci(void) {}
 #endif
 
+static const struct spi_board_info ek_spi_devices[] = {
+	{
+		.name		= "mtd_dataflash",
+		.chip_select	= 0,
+		.max_speed_hz	= 15 * 1000 * 1000,
+		.bus_num	= 0,
+	}
+};
+
+static void ek_add_device_spi(void)
+{
+	spi_register_board_info(ek_spi_devices,
+			ARRAY_SIZE(ek_spi_devices));
+	at91_add_device_spi(0, NULL);
+}
+
 #ifdef CONFIG_LED_GPIO
 struct gpio_led ek_leds[] = {
 	{
@@ -281,6 +298,7 @@ static void ek_add_device_lcdc(void) {}
 static int at91sam9m10g45ek_devices_init(void)
 {
 	ek_add_device_nand();
+	ek_add_device_spi();
 	at91_add_device_eth(0, &macb_pdata);
 	ek_add_device_mci();
 	ek_add_device_usb();
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 1df34f7..7e05e95 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -64,8 +64,10 @@ CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_DATAFLASH=y
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
