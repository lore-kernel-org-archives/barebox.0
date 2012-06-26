Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjSRM-0007nZ-VS
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 09:52:19 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 11:51:53 +0200
Message-Id: <1340704314-12593-12-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 11/12] board hmi10: enable support for SPI
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/boards/hmi10/board.c |   39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boards/hmi10/board.c b/arch/arm/boards/hmi10/board.c
index bc3283d..1ec2ea2 100644
--- a/arch/arm/boards/hmi10/board.c
+++ b/arch/arm/boards/hmi10/board.c
@@ -34,6 +34,7 @@
 #include <mach/aemif.h>
 #include <mach/hardware.h>
 #include <mach/nand.h>
+#include <mach/spi.h>
 #include <mach/da8xx.h>
 
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
@@ -101,12 +102,50 @@ static struct davinci_nand_pdata hmi10_nandflash_data = {
 	.timing = &hmi10_nandflash_timing,
 };
 
+static struct spi_board_info hmi10_spi1_board_info[] = {
+	/* 20 MHz according to datasheet for 130nm and normal READ (!= FAST_READ) */
+	{
+		.name = "m25p",
+		.max_speed_hz = 20000000,
+		.bus_num = 1,
+		.chip_select = 0,
+		.mode = SPI_MODE_0,
+	},
+	{
+		.name = "m25p",
+		.max_speed_hz = 20000000,
+		.bus_num = 1,
+		.chip_select = 1,
+		.mode = SPI_MODE_0,
+	},
+};
+
+static struct davinci_spi_master_pdata hmi10_spi1_pdata = {
+	.num_chipselect = 2,
+	.bus_num = 1,
+};
+
 static int hmi10_devices_init(void)
 {
 	lpsc_on(DAVINCI_LPSC_AEMIF);
 	add_generic_device("davinci_nand", -1, NULL, DAVINCI_ASYNC_EMIF_CNTRL_BASE, 0,
 			   IORESOURCE_MEM, &hmi10_nandflash_data);
 
+	lpsc_on(DAVINCI_LPSC_SPI1);
+	spi_register_board_info(hmi10_spi1_board_info, ARRAY_SIZE(hmi10_spi1_board_info));
+	hmi10_spi1_pdata.clk_id = DAVINCI_SPI1_CLKID;
+	add_generic_device("davinci_spi", 1, NULL, DAVINCI_SPI1_BASE, 0x68,
+			   IORESOURCE_MEM, &hmi10_spi1_pdata);
+
+	/* one sector for the UBL (TI User Boot Loader) */
+	devfs_add_partition("m25p0", 0x00000, 0x40000,
+		DEVFS_PARTITION_FIXED|DEVFS_PARTITION_READONLY, "ubl"); /* 256k */
+	/* one sector for barebox itself */
+	devfs_add_partition("m25p0", 0x40000, 0x40000,
+		DEVFS_PARTITION_FIXED|DEVFS_PARTITION_READONLY, "self0"); /* 256k */
+	/* two sectors for read-write environment */
+	devfs_add_partition("m25p0", 0x80000, 0x80000, DEVFS_PARTITION_FIXED, "env0"); /* 512k */
+
 	armlinux_set_bootparams((void *)0xc0000100);
 	armlinux_set_architecture(MACH_TYPE_DAVINCI_HE_HMI10);
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
