Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TU0b6-00019Q-G3
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 19:38:38 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id B25FFFFABFC
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 20:48:59 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  1 Nov 2012 20:36:20 +0100
Message-Id: <1351798582-22667-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351798582-22667-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121101193002.GL29599@game.jcrosoft.org>
 <1351798582-22667-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] at91sam9x5ek: add spi support
To: barebox@lists.infradead.org

on all the cpu module we have a at25 except on the cogent where we have a at45

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/init.c     |   31 +++++++++++++++++++++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig |    5 ++++-
 2 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 48eebac..8f9fc0f 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -41,6 +41,7 @@
 #include <readkey.h>
 #include <linux/w1-gpio.h>
 #include <w1_mac_address.h>
+#include <spi/spi.h>
 
 #include "hw_version.h"
 
@@ -125,6 +126,35 @@ static void ek_add_device_i2c(void)
 	at91_add_device_i2c(0, i2c_devices, ARRAY_SIZE(i2c_devices));
 }
 
+static const struct spi_board_info ek_cm_cogent_spi_devices[] = {
+	{
+		.name		= "mtd_dataflash",
+		.chip_select	= 0,
+		.max_speed_hz	= 15 * 1000 * 1000,
+		.bus_num	= 0,
+	}
+};
+
+static const struct spi_board_info ek_spi_devices[] = {
+	{
+		.name		= "m25p80",
+		.chip_select	= 0,
+		.max_speed_hz	= 30 * 1000 * 1000,
+		.bus_num	= 0,
+	}
+};
+
+static void ek_add_device_spi(void)
+{
+	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT))
+		spi_register_board_info(ek_cm_cogent_spi_devices,
+				ARRAY_SIZE(ek_cm_cogent_spi_devices));
+	else
+		spi_register_board_info(ek_spi_devices,
+				ARRAY_SIZE(ek_spi_devices));
+	at91_add_device_spi(0, NULL);
+}
+
 /*
  * USB Host port
  */
@@ -181,6 +211,7 @@ static int at91sam9x5ek_devices_init(void)
 	ek_add_device_w1();
 	ek_add_device_nand();
 	ek_add_device_eth();
+	ek_add_device_spi();
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_add_led();
 	ek_add_device_i2c();
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index c71fe0d..5611b95 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -52,10 +52,13 @@ CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_ATMEL=y
+CONFIG_MTD_M25P80=y
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
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
