Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYNpR-0005ML-Ax
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 21:15:31 +0000
Received: from mail95.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D2344DC2A0B
 for <barebox@lists.infradead.org>; Tue, 13 Nov 2012 22:22:57 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Nov 2012 22:13:18 +0100
Message-Id: <1352841198-22595-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] tny-a9g20: add mmc spi support
To: barebox@lists.infradead.org

on the 9g20 low power version we have a mmc spi as microSD

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/tny-a926x/init.c     |   41 ++++++++++++++++++++++++++++------
 arch/arm/configs/tny_a9g20_defconfig |    5 +++++
 2 files changed, 39 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index ce36570..270becf 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -31,6 +31,7 @@
 #include <linux/clk.h>
 #include <mach/board.h>
 #include <mach/at91sam9_smc.h>
+#include <mach/at91sam9_sdramc.h>
 #include <mach/sam9_smc.h>
 #include <gpio.h>
 #include <mach/io.h>
@@ -151,12 +152,27 @@ static struct spi_board_info tny_a9g20_spi_devices[] = {
 	},
 };
 
+static struct spi_board_info tny_a9g20_lpw_spi_devices[] = {
+	{
+		.name = "spi_mci",
+		.max_speed_hz = 25 * 1000 * 1000,
+		.bus_num = 1,
+		.chip_select = 0,
+	},
+};
+
 static int spi0_standard_cs[] = { AT91_PIN_PC11 };
-struct at91_spi_platform_data spi_pdata = {
+struct at91_spi_platform_data spi0_pdata = {
 	.chipselect = spi0_standard_cs,
 	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
 };
 
+static int spi1_standard_cs[] = { AT91_PIN_PC3 };
+struct at91_spi_platform_data spi1_pdata = {
+	.chipselect = spi1_standard_cs,
+	.num_chipselect = ARRAY_SIZE(spi1_standard_cs),
+};
+
 static void __init ek_add_device_udc(void)
 {
 	if (machine_is_tny_a9260() || machine_is_tny_a9g20())
@@ -165,6 +181,22 @@ static void __init ek_add_device_udc(void)
 	at91_add_device_udc(&ek_udc_data);
 }
 
+static void __init ek_add_device_spi(void)
+{
+	if (machine_is_tny_a9263())
+		return;
+
+	if (machine_is_tny_a9g20() && at91_is_low_power_sdram()) {
+		spi_register_board_info(tny_a9g20_lpw_spi_devices,
+			ARRAY_SIZE(tny_a9g20_lpw_spi_devices));
+		at91_add_device_spi(1, &spi1_pdata);
+	} else {
+		spi_register_board_info(tny_a9g20_spi_devices,
+			ARRAY_SIZE(tny_a9g20_spi_devices));
+		at91_add_device_spi(0, &spi0_pdata);
+	}
+}
+
 static int tny_a9260_mem_init(void)
 {
 	at91_add_device_sdram(0);
@@ -178,16 +210,11 @@ static int tny_a9260_devices_init(void)
 	tny_a9260_add_device_nand();
 	ek_add_device_macb();
 	ek_add_device_udc();
+	ek_add_device_spi();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	tny_a9260_set_board_type();
 
-	if (machine_is_tny_a9260() || machine_is_tny_a9g20()) {
-		spi_register_board_info(tny_a9g20_spi_devices,
-			ARRAY_SIZE(tny_a9g20_spi_devices));
-		at91_add_device_spi(0, &spi_pdata);
-	}
-
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
 	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index cf5d4c5..a84e90f 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -51,6 +51,7 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_SPI=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -70,4 +71,8 @@ CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_SPI=y
+CONFIG_MMC_SPI_CRC_ON=y
 CONFIG_EEPROM_AT25=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
