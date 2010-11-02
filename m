Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUL-0005K5-H3
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:24 +0100
Message-Id: <1288718250-24919-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1288718250-24919-1-git-send-email-s.hauer@pengutronix.de>
References: <1288718250-24919-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/17] ARM mx51 babbage: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |   33 ++++-----------------------
 1 files changed, 5 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 5197c55..ff779ca 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -39,6 +39,7 @@
 #include <mach/spi.h>
 #include <mach/generic.h>
 #include <mach/iomux-mx51.h>
+#include <mach/devices-imx51.h>
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
@@ -57,17 +58,6 @@ static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
 };
 
-static struct device_d fec_dev = {
-	.name     = "fec_imx",
-	.map_base = 0x83fec000,
-	.platform_data	= &fec_info,
-};
-
-static struct device_d esdhc_dev = {
-	.name     = "imx-esdhc",
-	.map_base = 0x70004000,
-};
-
 static struct pad_desc f3s_pads[] = {
 	MX51_PAD_EIM_EB2__FEC_MDIO,
 	MX51_PAD_EIM_EB3__FEC_RDATA1,
@@ -130,13 +120,6 @@ static struct spi_imx_master spi_0_data = {
 	.num_chipselect = ARRAY_SIZE(spi_0_cs),
 };
 
-static struct device_d spi_dev = {
-	.id       = -1,
-	.name     = "imx_spi",
-	.map_base = MX51_CSPI1_BASE_ADDR,
-	.platform_data = &spi_0_data,
-};
-
 static const struct spi_board_info mx51_babbage_spi_board_info[] = {
 	{
 		.name = "mc13892-spi",
@@ -268,12 +251,12 @@ static int f3s_devices_init(void)
 	babbage_mmu_init();
 
 	register_device(&sdram_dev);
-	register_device(&fec_dev);
-	register_device(&esdhc_dev);
+	imx51_add_fec(&fec_info);
+	imx51_add_mmc0(NULL);
 
 	spi_register_board_info(mx51_babbage_spi_board_info,
 			ARRAY_SIZE(mx51_babbage_spi_board_info));
-	register_device(&spi_dev);
+	imx51_add_spi0(&spi_0_data);
 
 	babbage_power_init();
 
@@ -295,12 +278,6 @@ static int f3s_part_init(void)
 }
 late_initcall(f3s_part_init);
 
-static struct device_d f3s_serial_device = {
-	.name     = "imx_serial",
-	.map_base = 0x73fbc000,
-	.size     = 4096,
-};
-
 static int f3s_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(f3s_pads, ARRAY_SIZE(f3s_pads));
@@ -310,7 +287,7 @@ static int f3s_console_init(void)
 	writel(0, 0x73fa8230);
 	writel(0, 0x73fa8234);
 
-	register_device(&f3s_serial_device);
+	imx51_add_uart0();
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
