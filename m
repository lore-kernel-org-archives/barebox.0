Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzANT-0004oy-6q
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 18:21:21 +0000
Received: from mail609.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id CCE7DFFA25B
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 19:31:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 19:19:57 +0100
Message-Id: <1359224399-569-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359224399-569-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130126181809.GH26329@game.jcrosoft.org>
 <1359224399-569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] at91sam9261ek: add spi support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9261ek/init.c     |   42 ++++++++++++++++++++++++++++++
 arch/arm/configs/at91sam9261ek_defconfig |    3 ++-
 arch/arm/mach-at91/Kconfig               |    1 +
 3 files changed, 45 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 7c95435..ef13828 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -37,6 +37,7 @@
 #include <gpio_keys.h>
 #include <readkey.h>
 #include <led.h>
+#include <spi/spi.h>
 
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 22,
@@ -229,6 +230,46 @@ static void ek_device_add_leds(void)
 static void ek_device_add_leds(void) {}
 #endif
 
+/*
+ * SPI related devices
+ */
+#if defined(CONFIG_DRIVER_SPI_ATMEL)
+/*
+ * SPI devices
+ */
+static struct spi_board_info ek_spi_devices[] = {
+	{	/* DataFlash chip */
+		.name		= "mtd_dataflash",
+		.chip_select	= 0,
+		.max_speed_hz	= 15 * 1000 * 1000,
+		.bus_num	= 0,
+	},
+#if defined(CONFIG_MTD_AT91_DATAFLASH_CARD)
+	{	/* DataFlash card - jumper (J12) configurable to CS3 or CS0 */
+		.name		= "mtd_dataflash",
+		.chip_select	= 1,
+		.max_speed_hz	= 15 * 1000 * 1000,
+		.bus_num	= 0,
+	},
+#endif
+};
+
+static unsigned spi0_standard_cs[] = { AT91_PIN_PA3, AT91_PIN_PA6};
+static struct at91_spi_platform_data spi_pdata = {
+	.chipselect = spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+};
+
+static void ek_add_device_spi(void)
+{
+	spi_register_board_info(ek_spi_devices,
+				ARRAY_SIZE(ek_spi_devices));
+	at91_add_device_spi(0, &spi_pdata);
+}
+#else
+static void ek_add_device_spi(void) {}
+#endif
+
 static int at91sam9261ek_mem_init(void)
 {
 	at91_add_device_sdram(0);
@@ -245,6 +286,7 @@ static int at91sam9261ek_devices_init(void)
 	ek_add_device_udc();
 	ek_add_device_buttons();
 	ek_device_add_leds();
+	ek_add_device_spi();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 5daa47b..259e060 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -51,9 +51,10 @@ CONFIG_CMD_TFTP=y
 CONFIG_FS_TFTP=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_DM9K=y
-# CONFIG_SPI is not set
+CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_DATAFLASH=y
 CONFIG_NAND=y
 # CONFIG_NAND_ECC_HW is not set
 # CONFIG_NAND_ECC_HW_SYNDROME is not set
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 661ff35..a964fd6 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -266,6 +266,7 @@ choice
 config MACH_AT91SAM9261EK
 	bool "Atmel AT91SAM9261-EK Evaluation Kit"
 	select HAS_DM9000
+	select HAVE_AT91_DATAFLASH_CARD
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	help
 	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
