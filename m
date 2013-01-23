Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ty7K9-0008Tk-BL
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 20:53:34 +0000
Received: from mail416.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id AB464DC1209
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2013 22:03:18 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 23 Jan 2013 21:52:11 +0100
Message-Id: <1358974332-10189-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130123204916.GS26329@game.jcrosoft.org>
References: <20130123204916.GS26329@game.jcrosoft.org>
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
Subject: [PATCH 1/2] tny-a9263: add dataflash support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/tny-a926x/init.c     |   43 ++++++++++++++++++++++++----------
 arch/arm/configs/tny_a9263_defconfig |    1 +
 2 files changed, 31 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 5fe6531..027186a 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -160,16 +160,31 @@ static struct spi_board_info tny_a9g20_lpw_spi_devices[] = {
 	},
 };
 
-static int spi0_standard_cs[] = { AT91_PIN_PC11 };
-struct at91_spi_platform_data spi0_pdata = {
-	.chipselect = spi0_standard_cs,
-	.num_chipselect = ARRAY_SIZE(spi0_standard_cs),
+static struct spi_board_info tny_a9263_spi_devices[] = {
+	{
+		.name = "mtd_dataflash",
+		.max_speed_hz = 15 * 1000 * 1000,
+		.bus_num = 0,
+		.chip_select = 0,
+	},
 };
 
-static int spi1_standard_cs[] = { AT91_PIN_PC3 };
-struct at91_spi_platform_data spi1_pdata = {
-	.chipselect = spi1_standard_cs,
-	.num_chipselect = ARRAY_SIZE(spi1_standard_cs),
+static int tny_a9263_spi0_standard_cs[] = { AT91_PIN_PA5 };
+struct at91_spi_platform_data tny_a9263_spi0_pdata = {
+	.chipselect = tny_a9263_spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(tny_a9263_spi0_standard_cs),
+};
+
+static int tny_a9g20_spi0_standard_cs[] = { AT91_PIN_PC11 };
+struct at91_spi_platform_data tny_a9g20_spi0_pdata = {
+	.chipselect = tny_a9g20_spi0_standard_cs,
+	.num_chipselect = ARRAY_SIZE(tny_a9g20_spi0_standard_cs),
+};
+
+static int tny_a9g20_spi1_standard_cs[] = { AT91_PIN_PC3 };
+struct at91_spi_platform_data tny_a9g20_spi1_pdata = {
+	.chipselect = tny_a9g20_spi1_standard_cs,
+	.num_chipselect = ARRAY_SIZE(tny_a9g20_spi1_standard_cs),
 };
 
 static void __init ek_add_device_udc(void)
@@ -182,17 +197,19 @@ static void __init ek_add_device_udc(void)
 
 static void __init ek_add_device_spi(void)
 {
-	if (machine_is_tny_a9263())
-		return;
+	if (machine_is_tny_a9263()) {
+		spi_register_board_info(tny_a9263_spi_devices,
+			ARRAY_SIZE(tny_a9263_spi_devices));
+		at91_add_device_spi(0, &tny_a9263_spi0_pdata);
 
-	if (machine_is_tny_a9g20() && at91_is_low_power_sdram()) {
+	} else if (machine_is_tny_a9g20() && at91_is_low_power_sdram()) {
 		spi_register_board_info(tny_a9g20_lpw_spi_devices,
 			ARRAY_SIZE(tny_a9g20_lpw_spi_devices));
-		at91_add_device_spi(1, &spi1_pdata);
+		at91_add_device_spi(1, &tny_a9g20_spi1_pdata);
 	} else {
 		spi_register_board_info(tny_a9g20_spi_devices,
 			ARRAY_SIZE(tny_a9g20_spi_devices));
-		at91_add_device_spi(0, &spi0_pdata);
+		at91_add_device_spi(0, &tny_a9g20_spi0_pdata);
 	}
 }
 
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index c199cca..652fd3d 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -62,6 +62,7 @@ CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_SPI_ATMEL=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
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
