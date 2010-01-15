Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([212.27.42.4])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NVjlD-0001eh-A0
	for barebox@lists.infradead.org; Fri, 15 Jan 2010 10:50:44 +0000
From: Eric Benard <eric@eukrea.com>
Date: Fri, 15 Jan 2010 11:50:19 +0100
Message-Id: <1263552619-4601-4-git-send-email-eric@eukrea.com>
In-Reply-To: <1263552619-4601-3-git-send-email-eric@eukrea.com>
References: <1263552619-4601-1-git-send-email-eric@eukrea.com>
	<1263552619-4601-2-git-send-email-eric@eukrea.com>
	<1263552619-4601-3-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 4/4] Eukrea CPUIMX27 : add I2C and LP3972 support
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

This allows to properly setup the voltage on LCD pins at boot.

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 board/eukrea_cpuimx27/eukrea_cpuimx27.c |   29 +++++++++++++++++++++++++++++
 1 files changed, 29 insertions(+), 0 deletions(-)

diff --git a/board/eukrea_cpuimx27/eukrea_cpuimx27.c b/board/eukrea_cpuimx27/eukrea_cpuimx27.c
index 629399f..0908dca 100644
--- a/board/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/board/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -21,6 +21,7 @@
  */
 
 #include <common.h>
+#include <errno.h>
 #include <net.h>
 #include <cfi_flash.h>
 #include <init.h>
@@ -42,6 +43,8 @@
 #include <mach/imx-pll.h>
 #include <ns16550.h>
 #include <asm/mmu.h>
+#include <i2c/i2c.h>
+#include <i2c/lp3972.h>
 
 static struct device_d cfi_dev = {
 	.name     = "cfi_flash",
@@ -140,6 +143,17 @@ static struct device_d quad_uart_serial_device = {
 };
 #endif
 
+static struct i2c_board_info i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("lp3972", 0x34),
+	},
+};
+
+static struct device_d i2c_dev = {
+	.name		= "i2c-imx",
+	.map_base	= IMX_I2C1_BASE,
+};
+
 #ifdef CONFIG_MMU
 static void eukrea_cpuimx27_mmu_init(void)
 {
@@ -187,6 +201,8 @@ static int eukrea_cpuimx27_devices_init(void)
 		PD15_AOUT_FEC_COL,
 		PD16_AIN_FEC_TX_ER,
 		PF23_AIN_FEC_TX_EN,
+		PD17_PF_I2C_DATA,
+		PD18_PF_I2C_CLK,
 #ifdef CONFIG_DRIVER_SERIAL_IMX
 		PE12_PF_UART1_TXD,
 		PE13_PF_UART1_RXD,
@@ -213,6 +229,10 @@ static int eukrea_cpuimx27_devices_init(void)
 	register_device(&nand_dev);
 	register_device(&sdram_dev);
 
+	PCCR0 |= PCCR0_I2C1_EN;
+	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+	register_device(&i2c_dev);
+
 	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
 	protect_file("/dev/env0", 1);
@@ -257,9 +277,18 @@ console_initcall(eukrea_cpuimx27_console_init);
 
 static int eukrea_cpuimx27_late_init(void)
 {
+	struct i2c_client *client;
+	u8 reg[1];
+
 	console_flush();
 	register_device(&fec_dev);
 
+	client = lp3972_get_client();
+	if (!client)
+		return -ENODEV;
+	reg[0] = 0xa0;
+	i2c_write_reg(client, 0x39, reg, sizeof(reg));
+
 	return 0;
 }
 
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
