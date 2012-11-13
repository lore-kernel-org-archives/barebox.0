Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYNpR-0005MM-Az
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 21:15:31 +0000
Received: from mail95.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D20D5DC29F7
 for <barebox@lists.infradead.org>; Tue, 13 Nov 2012 22:22:57 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Nov 2012 22:13:17 +0100
Message-Id: <1352841198-22595-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1352841198-22595-1-git-send-email-plagnioj@jcrosoft.com>
References: <1352841198-22595-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] usb-a9g20: add mmc spi support
To: barebox@lists.infradead.org

on the 9g20 low power version we have a mmc spi as microSD

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/usb-a926x/init.c            |   37 ++++++++++++++++++++++-----
 arch/arm/configs/usb_a9g20_128mib_defconfig |   10 +++++++-
 arch/arm/configs/usb_a9g20_defconfig        |   10 +++++++-
 3 files changed, 49 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index cd0df50..e57591b 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -31,6 +31,7 @@
 #include <linux/clk.h>
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
+#include <mach/at91sam9_sdramc.h>
 #include <mach/sam9_smc.h>
 #include <gpio.h>
 #include <led.h>
@@ -158,14 +159,38 @@ static const struct spi_board_info usb_a9263_spi_devices[] = {
 	}
 };
 
+static const struct spi_board_info usb_a9g20_spi_devices[] = {
+	{
+		.name		= "spi_mci",
+		.chip_select	= 0,
+		.max_speed_hz	= 25 * 1000 * 1000,
+		.bus_num	= 1,
+	}
+};
+
+static unsigned spi0_standard_cs_a9263[] = { AT91_PIN_PA5 };
+static struct at91_spi_platform_data spi_a9263_pdata = {
+	.chipselect = spi0_standard_cs_a9263,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs_a9263),
+};
+
+static unsigned spi0_standard_cs_a9g20[] = { AT91_PIN_PB3 };
+static struct at91_spi_platform_data spi_a9g20_pdata = {
+	.chipselect = spi0_standard_cs_a9g20,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs_a9g20),
+};
+
 static void usb_a9260_add_spi(void)
 {
-	if (!machine_is_usb_a9263())
-		return;
-
-	spi_register_board_info(usb_a9263_spi_devices,
-			ARRAY_SIZE(usb_a9263_spi_devices));
-	at91_add_device_spi(0, NULL);
+	if (machine_is_usb_a9263()) {
+		spi_register_board_info(usb_a9263_spi_devices,
+				ARRAY_SIZE(usb_a9263_spi_devices));
+		at91_add_device_spi(0, &spi_a9263_pdata);
+	} else if (machine_is_usb_a9g20() && at91_is_low_power_sdram()) {
+		spi_register_board_info(usb_a9g20_spi_devices,
+				ARRAY_SIZE(usb_a9g20_spi_devices));
+		at91_add_device_spi(1, &spi_a9g20_pdata);
+	}
 }
 
 #if defined(CONFIG_MCI_ATMEL)
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index 4a6c933..f4d412c 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -53,6 +53,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
@@ -64,7 +65,7 @@ CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
@@ -76,6 +77,13 @@ CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_SPI=y
+CONFIG_MMC_SPI_CRC_ON=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index e851b9c..3062fb4 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -52,6 +52,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
@@ -63,7 +64,7 @@ CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
@@ -75,6 +76,13 @@ CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_DFU=y
 CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_SPI=y
+CONFIG_MMC_SPI_CRC_ON=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
