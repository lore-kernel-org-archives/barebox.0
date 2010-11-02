Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUL-0005KA-Iq
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:29 +0100
Message-Id: <1288718250-24919-17-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/17] ARM eukrea cpuimx27: Use device functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   27 +++-----------------
 1 files changed, 4 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 62fc14e..4567cba 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -46,6 +46,7 @@
 #include <i2c/i2c.h>
 #include <mfd/lp3972.h>
 #include <mach/iomux-mx27.h>
+#include <mach/devices-imx27.h>
 
 static struct device_d cfi_dev = {
 	.id	  = -1,
@@ -86,26 +87,12 @@ static struct fec_platform_data fec_info = {
 	.phy_addr = 1,
 };
 
-static struct device_d fec_dev = {
-	.id	  = -1,
-	.name     = "fec_imx",
-	.map_base = 0x1002b000,
-	.platform_data	= &fec_info,
-};
-
 struct imx_nand_platform_data nand_info = {
 	.width = 1,
 	.hw_ecc = 1,
 	.flash_bbt = 1,
 };
 
-static struct device_d nand_dev = {
-	.id	  = -1,
-	.name     = "imx_nand",
-	.map_base = 0xd8000000,
-	.platform_data	= &nand_info,
-};
-
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 unsigned int quad_uart_read(unsigned long base, unsigned char reg_idx)
 {
@@ -156,12 +143,6 @@ static struct i2c_board_info i2c_devices[] = {
 	},
 };
 
-static struct device_d i2c_dev = {
-	.id		= -1,
-	.name		= "i2c-imx",
-	.map_base	= IMX_I2C1_BASE,
-};
-
 #ifdef CONFIG_MMU
 static void eukrea_cpuimx27_mmu_init(void)
 {
@@ -294,12 +275,12 @@ static int eukrea_cpuimx27_devices_init(void)
 #ifdef CONFIG_EUKREA_CPUIMX27_NOR_64MB
 	register_device(&cfi_dev1);
 #endif
-	register_device(&nand_dev);
+	imx27_add_nand(&nand_info);
 	register_device(&sdram_dev);
 
 	PCCR0 |= PCCR0_I2C1_EN;
 	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	register_device(&i2c_dev);
+	imx27_add_i2c0(NULL);
 
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
@@ -359,7 +340,7 @@ static int eukrea_cpuimx27_late_init(void)
 	u8 reg[1];
 #endif
 	console_flush();
-	register_device(&fec_dev);
+	imx27_add_fec(&fec_info);
 
 #ifdef CONFIG_I2C_LP3972
 	client = lp3972_get_client();
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
