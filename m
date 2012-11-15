Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TZ2Dp-0003Xe-Fl
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 16:23:22 +0000
Received: from mail629.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id CCACDFFBA25
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2012 17:30:59 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 15 Nov 2012 17:21:16 +0100
Message-Id: <1352996476-16071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] at91rm9200ek: add spi support
To: barebox@lists.infradead.org

as the support atmel mci drivers does not work on rm9200 and we have the
possibility to use it as spi use it

Originally on rm9200 when the interface mci is in SPI mode we use a DataFlash Card
so allow it but if no dataflash card option is enable use as mmc spi.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c     |   49 +++++++++++++++++++++++++++++++
 arch/arm/configs/at91rm9200ek_defconfig |   10 ++++++-
 arch/arm/mach-at91/Kconfig              |   10 +++++++
 3 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 20e9ad1..439ee9e 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -30,6 +30,7 @@
 #include <mach/board.h>
 #include <mach/gpio.h>
 #include <mach/io.h>
+#include <spi/spi.h>
 
 static struct at91_ether_platform_data ether_pdata = {
 	.flags = AT91SAM_ETHER_RMII,
@@ -103,6 +104,53 @@ static void ek_add_device_udc(void)
 static void ek_add_device_udc(void) {}
 #endif
 
+static struct spi_board_info ek_dataflash_spi_devices[] = {
+	{	/* DataFlash chip */
+		.name		= "mtd_dataflash",
+		.chip_select	= 0,
+		.max_speed_hz	= 15 * 1000 * 1000,
+	},
+#ifdef CONFIG_MTD_AT91_DATAFLASH_CARD
+	{	/* DataFlash card */
+		.name		= "mtd_dataflash",
+		.chip_select	= 1,
+		.max_speed_hz	= 15 * 1000 * 1000,
+	},
+#endif
+};
+
+static struct spi_board_info ek_mmc_spi_devices[] = {
+#if !defined(CONFIG_MTD_DATAFLASH)
+	{
+		.name		= "spi_mci",
+		.chip_select	= 0,
+		.max_speed_hz	= 20 * 1000 * 1000,
+	},
+#endif
+#if !defined(CONFIG_MTD_AT91_DATAFLASH_CARD)
+	{
+		.name		= "spi_mci",
+		.chip_select	= 1,
+		.max_speed_hz	= 20 * 1000 * 1000,
+	},
+#endif
+};
+
+static unsigned spi0_standard_cs[] = { AT91_PIN_PA3, AT91_PIN_PA6 };
+static struct at91_spi_platform_data spi_pdata = {
+	.chipselect = spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+};
+
+static void ek_add_device_spi(void)
+{
+	/* select mci0 as spi */
+	at91_set_gpio_output(AT91_PIN_PB22, 0);
+	spi_register_board_info(ek_dataflash_spi_devices, ARRAY_SIZE(ek_dataflash_spi_devices));
+	spi_register_board_info(ek_mmc_spi_devices, ARRAY_SIZE(ek_mmc_spi_devices));
+	at91_add_device_spi(0, &spi_pdata);
+}
+
 static int at91rm9200ek_devices_init(void)
 {
 	/*
@@ -118,6 +166,7 @@ static int at91rm9200ek_devices_init(void)
 	at91_add_device_usbh_ohci(&ek_usbh_data);
 	ek_device_add_leds();
 	ek_add_device_udc();
+	ek_add_device_spi();
 
 #if defined(CONFIG_DRIVER_CFI) || defined(CONFIG_DRIVER_CFI_OLD)
 	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 2bcade9..cc63445 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -44,6 +44,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SPI=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
@@ -55,14 +56,21 @@ CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_AT91_ETHER=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_INTEL is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_DATAFLASH=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_SPI=y
+CONFIG_MMC_SPI_CRC_ON=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b3f1885..3a985f7 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -31,6 +31,9 @@ config BOARDINFO
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
 
+config HAVE_AT91_DATAFLASH_CARD
+	bool
+
 config AT91SAM9_RESET
 	bool
 
@@ -119,6 +122,7 @@ choice
 config MACH_AT91RM9200EK
 	bool "Atmel AT91RM9200-EK Evaluation Kit"
 	help
+	select HAVE_AT91_DATAFLASH_CARD
 	  Select this if you are using Atmel's AT91RM9200-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3507>
 
@@ -334,6 +338,12 @@ endif
 
 comment "AT91 Board Options"
 
+config MTD_AT91_DATAFLASH_CARD
+	bool "Enable DataFlash Card support"
+	depends on HAVE_AT91_DATAFLASH_CARD
+	help
+	  Enable support for the DataFlash card.
+
 config MTD_NAND_ATMEL_BUSWIDTH_16
 	bool "Enable 16-bit data bus interface to NAND flash"
 	depends on HAVE_NAND_ATMEL_BUSWIDTH_16
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
