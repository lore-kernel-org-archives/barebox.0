Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9F0W-0001GQ-Tk
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 14:24:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:23:22 +0100
Message-Id: <1391178204-20889-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
References: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 13/15] ARM: i.MX25: Karo TX25: Switch to devicetree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/board.c   | 130 ++++++++++--------------------------
 arch/arm/configs/tx25stk5_defconfig |  19 +++---
 2 files changed, 47 insertions(+), 102 deletions(-)

diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 7cdeecc..b4d553e 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -17,6 +17,8 @@
  *
  */
 
+#define pr_fmt(fmt) "tx25: " fmt
+
 #include <common.h>
 #include <init.h>
 #include <driver.h>
@@ -31,8 +33,6 @@
 #include <partition.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
-#include <fec.h>
-#include <nand.h>
 #include <mach/iomux-mx25.h>
 #include <mach/generic.h>
 #include <mach/iim.h>
@@ -41,78 +41,51 @@
 #include <mach/bbu.h>
 #include <asm/mmu.h>
 
-static struct fec_platform_data fec_info = {
-	.xcv_type	= PHY_INTERFACE_MODE_RMII,
-	.phy_addr	= 0x1f,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.width	= 1,
-	.hw_ecc	= 1,
-	.flash_bbt = 1,
-};
-
-static iomux_v3_cfg_t karo_tx25_padsd_fec[] = {
-	MX25_PAD_D11__GPIO_4_9,		/* FEC PHY power on pin */
-	MX25_PAD_D13__GPIO_4_7,		/* FEC reset */
-	MX25_PAD_FEC_MDC__FEC_MDC,
-	MX25_PAD_FEC_MDIO__FEC_MDIO,
-	MX25_PAD_FEC_TDATA0__FEC_TDATA0,
-	MX25_PAD_FEC_TDATA1__FEC_TDATA1,
-	MX25_PAD_FEC_TX_EN__FEC_TX_EN,
-	MX25_PAD_FEC_RDATA0__FEC_RDATA0,
-	MX25_PAD_FEC_RDATA1__FEC_RDATA1,
-	MX25_PAD_FEC_RX_DV__FEC_RX_DV,
-	MX25_PAD_FEC_TX_CLK__FEC_TX_CLK,
-};
-
 #define TX25_FEC_PWR_GPIO	IMX_GPIO_NR(4, 9)
 #define TX25_FEC_RST_GPIO	IMX_GPIO_NR(4, 7)
 
+static struct gpio fec_gpios[] = {
+	{
+		.gpio = TX25_FEC_PWR_GPIO,
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "fec-pwr",
+	}, {
+		.gpio = TX25_FEC_RST_GPIO,
+		.flags = GPIOF_OUT_INIT_LOW,
+		.label = "fec-rst",
+	},
+};
+
 static void noinline gpio_fec_active(void)
 {
-	mxc_iomux_v3_setup_multiple_pads(karo_tx25_padsd_fec,
-			ARRAY_SIZE(karo_tx25_padsd_fec));
+	int ret;
 
 	/* power down phy, put into reset */
-	gpio_direction_output(TX25_FEC_PWR_GPIO, 0);
-	gpio_direction_output(TX25_FEC_RST_GPIO, 0);
+	ret = gpio_request_array(fec_gpios, ARRAY_SIZE(fec_gpios));
+	if (ret) {
+		pr_err("Failed to request fec gpios: %s\n", strerror(-ret));
+		return;
+	}
 
 	udelay(10);
 
-	/* power up phy, get out of reset */
-	gpio_direction_output(TX25_FEC_PWR_GPIO, 1);
-	gpio_direction_output(TX25_FEC_RST_GPIO, 1);
+	/* power up phy, but leave in reset */
+	gpio_set_value(TX25_FEC_PWR_GPIO, 1);
 
 	udelay(100);
 
-	/* apply a reset to the powered phy again */
-	gpio_direction_output(TX25_FEC_RST_GPIO, 0);
-	udelay(100);
-	gpio_direction_output(TX25_FEC_RST_GPIO, 1);
+	/* FEC driver picks up the reset gpio later */
+	gpio_free(TX25_FEC_RST_GPIO);
 }
 
-static int tx25_devices_init(void)
+static int tx25_init(void)
 {
-	gpio_fec_active();
-
-	imx25_iim_register_fec_ethaddr();
-	imx25_add_fec(&fec_info);
-
-	if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 14))
-		nand_info.width = 2;
-
-	imx25_add_nand(&nand_info);
+	if (!of_machine_is_compatible("karo,imx25-tx25"))
+		return 0;
 
-	devfs_add_partition("nand0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-
-	devfs_add_partition("nand0", SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-
-	add_mem_device("sram0", 0x78000000, 128 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
+	gpio_fec_active();
 
+	barebox_set_hostname("tx25");
 	armlinux_set_architecture(MACH_TYPE_TX25);
 	armlinux_set_serial(imx_uid());
 
@@ -122,44 +95,7 @@ static int tx25_devices_init(void)
 	return 0;
 }
 
-device_initcall(tx25_devices_init);
-
-static iomux_v3_cfg_t tx25_pads[] = {
-	MX25_PAD_D12__GPIO_4_8,
-	MX25_PAD_D10__GPIO_4_10,
-	MX25_PAD_NF_CE0__NF_CE0,
-	MX25_PAD_NFWE_B__NFWE_B,
-	MX25_PAD_NFRE_B__NFRE_B,
-	MX25_PAD_NFALE__NFALE,
-	MX25_PAD_NFCLE__NFCLE,
-	MX25_PAD_NFWP_B__NFWP_B,
-	MX25_PAD_NFRB__NFRB,
-	MX25_PAD_D7__D7,
-	MX25_PAD_D6__D6,
-	MX25_PAD_D5__D5,
-	MX25_PAD_D4__D4,
-	MX25_PAD_D3__D3,
-	MX25_PAD_D2__D2,
-	MX25_PAD_D1__D1,
-	MX25_PAD_D0__D0,
-	MX25_PAD_UART1_TXD__UART1_TXD,
-	MX25_PAD_UART1_RXD__UART1_RXD,
-	MX25_PAD_UART1_CTS__UART1_CTS,
-	MX25_PAD_UART1_RTS__UART1_RTS,
-};
-
-static int tx25_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(tx25_pads, ARRAY_SIZE(tx25_pads));
-
-	barebox_set_model("Ka-Ro TX25");
-	barebox_set_hostname("tx25");
-
-	imx25_add_uart0();
-	return 0;
-}
-
-console_initcall(tx25_console_init);
+console_initcall(tx25_init);
 
 static iomux_v3_cfg_t tx25_lcdc_gpios[] = {
 	MX25_PAD_A18__GPIO_2_4,		/* LCD Reset (active LOW) */
@@ -236,6 +172,12 @@ static struct imx_fb_platform_data tx25_fb_data = {
 
 static int tx25_init_fb(void)
 {
+	if (!IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX))
+		return 0;
+
+	if (!of_machine_is_compatible("karo,imx25-tx25"))
+		return 0;
+
 	tx25_fb_enable(0);
 
 	mxc_iomux_v3_setup_multiple_pads(tx25_lcdc_gpios,
diff --git a/arch/arm/configs/tx25stk5_defconfig b/arch/arm/configs/tx25stk5_defconfig
index 365a940..32a6183 100644
--- a/arch/arm/configs/tx25stk5_defconfig
+++ b/arch/arm/configs/tx25stk5_defconfig
@@ -1,7 +1,8 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="imx25-karo-tx25"
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX_EXTERNAL_BOOT=y
 CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
-CONFIG_ARCH_IMX25=y
 CONFIG_MACH_TX25=y
 CONFIG_IMX_IIM=y
 CONFIG_AEABI=y
@@ -17,6 +18,7 @@ CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/karo-tx25/env"
 CONFIG_RESET_SOURCE=y
@@ -28,9 +30,7 @@ CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
 CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_ECHO_E=y
@@ -40,7 +40,6 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
@@ -51,10 +50,10 @@ CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OFTREE_PROBE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_SPLASH=y
+CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
@@ -63,20 +62,24 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
 CONFIG_NAND_IMX=y
-CONFIG_UBI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_IMX=y
 CONFIG_MCI=y
 CONFIG_MCI_IMX_ESDHC=y
+CONFIG_SRAM=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
 CONFIG_FS_TFTP=y
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
