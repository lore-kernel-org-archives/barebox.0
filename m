Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UejKm-0005N2-RB
 for barebox@lists.infradead.org; Tue, 21 May 2013 09:58:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 11:57:47 +0200
Message-Id: <1369130267-8094-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
References: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] ARM: i.MX51 babbage: switch to devicetree
To: barebox@lists.infradead.org

This switches the babbage board to probe from devicetree for all
for all devices we currently support probing from devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c        | 93 -----------------------
 arch/arm/configs/freescale_mx51_babbage_defconfig | 16 +++-
 arch/arm/dts/imx51-babbage.dts                    |  4 +
 3 files changed, 18 insertions(+), 95 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index db34056..89ade44 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -39,80 +39,8 @@
 #include <mach/iomux-mx51.h>
 #include <mach/devices-imx51.h>
 #include <mach/revision.h>
-#include <mach/iim.h>
 #include <mach/imx-flash-header.h>
 
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_MII,
-};
-
-static iomux_v3_cfg_t f3s_pads[] = {
-	/* UART1 */
-	MX51_PAD_UART1_RXD__UART1_RXD,
-	MX51_PAD_UART1_TXD__UART1_TXD,
-	MX51_PAD_UART1_RTS__UART1_RTS,
-	MX51_PAD_UART1_CTS__UART1_CTS,
-	/* FEC */
-	MX51_PAD_EIM_EB2__FEC_MDIO,
-	MX51_PAD_EIM_EB3__FEC_RDATA1,
-	MX51_PAD_EIM_CS2__FEC_RDATA2,
-	MX51_PAD_EIM_CS3__FEC_RDATA3,
-	MX51_PAD_EIM_CS4__FEC_RX_ER,
-	MX51_PAD_EIM_CS5__FEC_CRS,
-	MX51_PAD_NANDF_RB2__FEC_COL,
-	MX51_PAD_NANDF_RB3__FEC_RX_CLK,
-	MX51_PAD_NANDF_CS2__FEC_TX_ER,
-	MX51_PAD_NANDF_CS3__FEC_MDC,
-	MX51_PAD_NANDF_CS4__FEC_TDATA1,
-	MX51_PAD_NANDF_CS5__FEC_TDATA2,
-	MX51_PAD_NANDF_CS6__FEC_TDATA3,
-	MX51_PAD_NANDF_CS7__FEC_TX_EN,
-	MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK,
-	MX51_PAD_NANDF_D11__FEC_RX_DV,
-	MX51_PAD_NANDF_D9__FEC_RDATA0,
-	MX51_PAD_NANDF_D8__FEC_TDATA0,
-	MX51_PAD_CSPI1_SS0__ECSPI1_SS0,
-	MX51_PAD_CSPI1_MOSI__ECSPI1_MOSI,
-	MX51_PAD_CSPI1_MISO__ECSPI1_MISO,
-	MX51_PAD_CSPI1_RDY__ECSPI1_RDY,
-	MX51_PAD_CSPI1_SCLK__ECSPI1_SCLK,
-	MX51_PAD_EIM_A20__GPIO2_14, /* LAN8700 reset pin */
-	IOMUX_PAD(0x60C, 0x21C, 3, 0x0, 0, 0x85), /* FIXME: needed? */
-	/* SD 1 */
-	MX51_PAD_SD1_CMD__SD1_CMD,
-	MX51_PAD_SD1_CLK__SD1_CLK,
-	MX51_PAD_SD1_DATA0__SD1_DATA0,
-	MX51_PAD_SD1_DATA1__SD1_DATA1,
-	MX51_PAD_SD1_DATA2__SD1_DATA2,
-	MX51_PAD_SD1_DATA3__SD1_DATA3,
-	/* SD 2 */
-	MX51_PAD_SD2_CMD__SD2_CMD,
-	MX51_PAD_SD2_CLK__SD2_CLK,
-	MX51_PAD_SD2_DATA0__SD2_DATA0,
-	MX51_PAD_SD2_DATA1__SD2_DATA1,
-	MX51_PAD_SD2_DATA2__SD2_DATA2,
-	MX51_PAD_SD2_DATA3__SD2_DATA3,
-	/* CD/WP gpio */
-	MX51_PAD_GPIO1_6__GPIO1_6,
-	MX51_PAD_GPIO1_5__GPIO1_5,
-};
-
-#define BABBAGE_ECSPI1_CS0	(3 * 32 + 24)
-static int spi_0_cs[] = {BABBAGE_ECSPI1_CS0};
-
-static struct spi_imx_master spi_0_data = {
-	.chipselect = spi_0_cs,
-	.num_chipselect = ARRAY_SIZE(spi_0_cs),
-};
-
-static const struct spi_board_info mx51_babbage_spi_board_info[] = {
-	{
-		.name = "mc13xxx-spi",
-		.bus_num = 0,
-		.chip_select = 0,
-	},
-};
-
 #define MX51_CCM_CACRR 0x10
 
 static void babbage_power_init(void)
@@ -235,21 +163,12 @@ static void babbage_power_init(void)
 
 static int f3s_devices_init(void)
 {
-	spi_register_board_info(mx51_babbage_spi_board_info,
-			ARRAY_SIZE(mx51_babbage_spi_board_info));
-	imx51_add_spi0(&spi_0_data);
-
 	babbage_power_init();
 
 	console_flush();
 	imx51_init_lowlevel(800);
 	clock_notifier_call_chain();
 
-	imx51_iim_register_fec_ethaddr();
-	imx51_add_fec(&fec_info);
-	imx51_add_mmc0(NULL);
-	imx51_add_mmc1(NULL);
-
 	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
@@ -269,15 +188,3 @@ static int f3s_part_init(void)
 	return 0;
 }
 late_initcall(f3s_part_init);
-
-static int f3s_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(f3s_pads, ARRAY_SIZE(f3s_pads));
-
-	imx51_add_uart0();
-
-	return 0;
-}
-
-console_initcall(f3s_console_init);
-
diff --git a/arch/arm/configs/freescale_mx51_babbage_defconfig b/arch/arm/configs/freescale_mx51_babbage_defconfig
index 97963c1..2c03c14 100644
--- a/arch/arm/configs/freescale_mx51_babbage_defconfig
+++ b/arch/arm/configs/freescale_mx51_babbage_defconfig
@@ -1,13 +1,13 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="imx51-babbage"
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_IMX51=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_AEABI=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x97f00000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
@@ -16,6 +16,7 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx51-pdk/env/"
@@ -31,8 +32,10 @@ CONFIG_CMD_TIME=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MM=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
@@ -43,19 +46,28 @@ CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
 CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_MTD=y
+CONFIG_MTD_DATAFLASH=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MCI=y
diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index c893247..4950eef 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -17,6 +17,10 @@
 	model = "Freescale i.MX51 Babbage Board";
 	compatible = "fsl,imx51-babbage", "fsl,imx51";
 
+	chosen {
+		linux,stdout-path = "/soc/aips@70000000/serial@73fbc000";
+	};
+
 	memory {
 		reg = <0x90000000 0x20000000>;
 	};
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
