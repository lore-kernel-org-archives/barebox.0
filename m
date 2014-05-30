Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22a.google.com ([2a00:1450:400c:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIiA-0002Cd-Ds
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:02:53 +0000
Received: by mail-we0-f170.google.com with SMTP id u57so1709579wes.1
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:02:31 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:36 +0200
Message-Id: <1401440856-6145-11-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 10/10] device drivers: harmonize underscore in driver names
To: barebox@lists.infradead.org

Some device names were in the form "imx_spi", others in the form "imx-gpt".
As most device names used the dash and not the underscore, this device
driver harmonizes them all.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/boards/at91rm9200ek/init.c             |    8 ++++----
 arch/arm/boards/at91sam9261ek/init.c            |    4 ++--
 arch/arm/boards/at91sam9m10g45ek/init.c         |    2 +-
 arch/arm/boards/nhk8815/setup.c                 |    2 +-
 arch/arm/boards/phytec-phycore-imx27/pcm970.c   |    2 +-
 arch/arm/boards/tny-a926x/init.c                |    4 ++--
 arch/arm/boards/usb-a926x/init.c                |    4 ++--
 arch/arm/mach-imx/iim.c                         |    2 +-
 arch/arm/mach-imx/imx25.c                       |    2 +-
 arch/arm/mach-imx/imx27.c                       |    2 +-
 arch/arm/mach-imx/imx31.c                       |    2 +-
 arch/arm/mach-imx/imx35.c                       |    2 +-
 arch/arm/mach-imx/imx51.c                       |    2 +-
 arch/arm/mach-imx/imx53.c                       |    2 +-
 arch/arm/mach-imx/ocotp.c                       |    2 +-
 arch/mips/mach-ar231x/ar231x_reset.c            |    2 +-
 arch/nios2/boards/generic/generic.c             |    2 +-
 arch/x86/boards/x86_generic/intf_platform_ide.c |    4 ++--
 drivers/ata/intf_platform_ide.c                 |    2 +-
 drivers/clk/clk-ar933x.c                        |    2 +-
 drivers/clocksource/arm_smp_twd.c               |    2 +-
 drivers/clocksource/nomadik.c                   |    2 +-
 drivers/gpio/gpio-davinci.c                     |    2 +-
 drivers/gpio/gpio-pl061.c                       |    2 +-
 drivers/input/gpio_keys.c                       |    2 +-
 drivers/input/twl6030_pwrbtn.c                  |    2 +-
 drivers/mci/atmel_mci.c                         |    2 +-
 drivers/mci/dw_mmc.c                            |    2 +-
 drivers/mci/mci-bcm2835.c                       |    2 +-
 drivers/mci/mci_spi.c                           |    2 +-
 drivers/mci/mxs.c                               |    2 +-
 drivers/mci/s3c.c                               |    2 +-
 drivers/mtd/devices/mtd_dataflash.c             |    2 +-
 drivers/mtd/nand/atmel_nand.c                   |    2 +-
 drivers/mtd/nand/nand_imx.c                     |    2 +-
 drivers/mtd/nand/nand_mxs.c                     |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c               |    4 ++--
 drivers/mtd/nand/nand_s3c24xx.c                 |    2 +-
 drivers/mtd/nand/nomadik_nand.c                 |    2 +-
 drivers/mtd/nor/cfi_flash.c                     |    2 +-
 drivers/net/altera_tse.c                        |    2 +-
 drivers/net/ar231x.c                            |    2 +-
 drivers/net/arc_emac.c                          |    2 +-
 drivers/net/at91_ether.c                        |    2 +-
 drivers/net/cpsw.c                              |    2 +-
 drivers/net/cs8900.c                            |    2 +-
 drivers/net/davinci_emac.c                      |    2 +-
 drivers/net/designware.c                        |    2 +-
 drivers/net/dm9k.c                              |    2 +-
 drivers/net/ep93xx.c                            |    2 +-
 drivers/net/ethoc.c                             |    2 +-
 drivers/net/fec_imx.c                           |    2 +-
 drivers/net/fec_mpc5200.c                       |    2 +-
 drivers/net/gianfar.c                           |    6 +++---
 drivers/net/ks8851_mll.c                        |    2 +-
 drivers/net/ksz8864rmn.c                        |    2 +-
 drivers/net/macb.c                              |    2 +-
 drivers/net/netx_eth.c                          |    2 +-
 drivers/net/orion-gbe.c                         |    2 +-
 drivers/net/phy/mdio_bus.c                      |    2 +-
 drivers/net/smc91111.c                          |    2 +-
 drivers/net/smc911x.c                           |    2 +-
 drivers/net/tap.c                               |    2 +-
 drivers/net/xgmac.c                             |    2 +-
 drivers/pwm/pxa_pwm.c                           |    2 +-
 drivers/serial/arm_dcc.c                        |    4 ++--
 drivers/serial/atmel.c                          |    2 +-
 drivers/serial/serial_altera.c                  |    2 +-
 drivers/serial/serial_altera_jtag.c             |    2 +-
 drivers/serial/serial_ar933x.c                  |    2 +-
 drivers/serial/serial_auart.c                   |    2 +-
 drivers/serial/serial_blackfin.c                |    2 +-
 drivers/serial/serial_cadence.c                 |    2 +-
 drivers/serial/serial_imx.c                     |    2 +-
 drivers/serial/serial_mpc5xxx.c                 |    2 +-
 drivers/serial/serial_netx.c                    |    2 +-
 drivers/serial/serial_ns16550.c                 |    2 +-
 drivers/serial/serial_omap4_usbboot.c           |    2 +-
 drivers/serial/serial_pl010.c                   |    2 +-
 drivers/serial/serial_pxa.c                     |    2 +-
 drivers/serial/serial_s3c.c                     |    2 +-
 drivers/serial/stm-serial.c                     |    2 +-
 drivers/spi/altera_spi.c                        |    2 +-
 drivers/spi/atmel_spi.c                         |    2 +-
 drivers/spi/imx_spi.c                           |    2 +-
 drivers/spi/mxs_spi.c                           |    2 +-
 drivers/usb/gadget/dfu.c                        |    2 +-
 drivers/usb/gadget/serial.c                     |    2 +-
 drivers/usb/host/ohci-at91.c                    |    2 +-
 drivers/video/atmel_hlcdfb.c                    |    2 +-
 drivers/video/atmel_lcdfb.c                     |    2 +-
 drivers/video/bcm2835.c                         |    2 +-
 drivers/video/imx.c                             |    2 +-
 drivers/video/omap.c                            |    2 +-
 drivers/video/pxa.c                             |    2 +-
 drivers/video/s3c24xx.c                         |    2 +-
 drivers/video/sdl.c                             |    2 +-
 drivers/video/stm.c                             |    2 +-
 drivers/w1/w1.c                                 |    4 ++--
 fs/omap4_usbbootfs.c                            |    2 +-
 100 files changed, 112 insertions(+), 112 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index c444669..1e9d373 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -108,13 +108,13 @@ static void ek_add_device_udc(void) {}
 
 static struct spi_board_info ek_dataflash_spi_devices[] = {
 	{	/* DataFlash chip */
-		.name		= "mtd_dataflash",
+		.name		= "mtd-dataflash",
 		.chip_select	= 0,
 		.max_speed_hz	= 15 * 1000 * 1000,
 	},
 #ifdef CONFIG_MTD_AT91_DATAFLASH_CARD
 	{	/* DataFlash card */
-		.name		= "mtd_dataflash",
+		.name		= "mtd-dataflash",
 		.chip_select	= 1,
 		.max_speed_hz	= 15 * 1000 * 1000,
 	},
@@ -124,14 +124,14 @@ static struct spi_board_info ek_dataflash_spi_devices[] = {
 static struct spi_board_info ek_mmc_spi_devices[] = {
 #if !defined(CONFIG_MTD_DATAFLASH)
 	{
-		.name		= "spi_mci",
+		.name		= "spi-mci",
 		.chip_select	= 0,
 		.max_speed_hz	= 20 * 1000 * 1000,
 	},
 #endif
 #if !defined(CONFIG_MTD_AT91_DATAFLASH_CARD)
 	{
-		.name		= "spi_mci",
+		.name		= "spi-mci",
 		.chip_select	= 1,
 		.max_speed_hz	= 20 * 1000 * 1000,
 	},
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 9ebc16a..2ce4ff1 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -320,14 +320,14 @@ static void ek_device_add_leds(void) {}
  */
 static struct spi_board_info ek_spi_devices[] = {
 	{	/* DataFlash chip */
-		.name		= "mtd_dataflash",
+		.name		= "mtd-dataflash",
 		.chip_select	= 0,
 		.max_speed_hz	= 15 * 1000 * 1000,
 		.bus_num	= 0,
 	},
 #if defined(CONFIG_MTD_AT91_DATAFLASH_CARD)
 	{	/* DataFlash card - jumper (J12) configurable to CS3 or CS0 */
-		.name		= "mtd_dataflash",
+		.name		= "mtd-dataflash",
 		.chip_select	= 1,
 		.max_speed_hz	= 15 * 1000 * 1000,
 		.bus_num	= 0,
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 6503ebb..2916949 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -129,7 +129,7 @@ static void ek_add_device_mci(void) {}
 
 static const struct spi_board_info ek_spi_devices[] = {
 	{
-		.name		= "mtd_dataflash",
+		.name		= "mtd-dataflash",
 		.chip_select	= 0,
 		.max_speed_hz	= 15 * 1000 * 1000,
 		.bus_num	= 0,
diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
index aaf9cd7..0bb7077 100644
--- a/arch/arm/boards/nhk8815/setup.c
+++ b/arch/arm/boards/nhk8815/setup.c
@@ -67,7 +67,7 @@ static struct resource nhk8815_nand_resources[] = {
 
 static struct device_d nhk8815_nand_device = {
 	.id		= DEVICE_ID_DYNAMIC,
-	.name		= "nomadik_nand",
+	.name		= "nomadik-nand",
 	.num_resources	= ARRAY_SIZE(nhk8815_nand_resources),
 	.resource	= nhk8815_nand_resources,
 	.platform_data	= &nhk8815_nand_data,
diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm970.c b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
index 2b2483b..5cf82b7 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm970.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
@@ -48,7 +48,7 @@ static struct ide_port_info pcm970_ide_pdata = {
 
 static struct device_d pcm970_ide_device = {
 	.id		= DEVICE_ID_DYNAMIC,
-	.name		= "ide_intf",
+	.name		= "ide-intf",
 	.num_resources	= ARRAY_SIZE(pcm970_ide_resources),
 	.resource	= pcm970_ide_resources,
 	.platform_data	= &pcm970_ide_pdata,
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index ac86457..2ebe223 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -154,7 +154,7 @@ static struct spi_board_info tny_a9g20_spi_devices[] = {
 
 static struct spi_board_info tny_a9g20_lpw_spi_devices[] = {
 	{
-		.name = "spi_mci",
+		.name = "spi-mci",
 		.max_speed_hz = 25 * 1000 * 1000,
 		.bus_num = 1,
 		.chip_select = 0,
@@ -163,7 +163,7 @@ static struct spi_board_info tny_a9g20_lpw_spi_devices[] = {
 
 static struct spi_board_info tny_a9263_spi_devices[] = {
 	{
-		.name = "mtd_dataflash",
+		.name = "mtd-dataflash",
 		.max_speed_hz = 15 * 1000 * 1000,
 		.bus_num = 0,
 		.chip_select = 0,
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 4a28af0..deef06e 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -167,7 +167,7 @@ static void usb_a9260_add_device_eth(void) {}
 #if defined(CONFIG_DRIVER_SPI_ATMEL)
 static const struct spi_board_info usb_a9263_spi_devices[] = {
 	{
-		.name		= "mtd_dataflash",
+		.name		= "mtd-dataflash",
 		.chip_select	= 0,
 		.max_speed_hz	= 15 * 1000 * 1000,
 		.bus_num	= 0,
@@ -176,7 +176,7 @@ static const struct spi_board_info usb_a9263_spi_devices[] = {
 
 static const struct spi_board_info usb_a9g20_spi_devices[] = {
 	{
-		.name		= "spi_mci",
+		.name		= "spi-mci",
 		.chip_select	= 0,
 		.max_speed_hz	= 25 * 1000 * 1000,
 		.bus_num	= 1,
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 16ba678..85aa390 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -34,7 +34,7 @@
 #include <mach/imx53-regs.h>
 #include <mach/clock-imx51_53.h>
 
-#define DRIVERNAME	"imx_iim"
+#define DRIVERNAME	"imx-iim"
 #define IIM_NUM_BANKS	8
 
 struct iim_priv;
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 1f87787..07a76e7 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -63,7 +63,7 @@ int imx25_init(void)
 
 int imx25_devices_init(void)
 {
-	add_generic_device("imx_iim", 0, NULL, MX25_IIM_BASE_ADDR, SZ_4K,
+	add_generic_device("imx-iim", 0, NULL, MX25_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
 	add_generic_device("imx-iomuxv3", 0, NULL, MX25_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index d3eaa87..1cfa11d 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -111,7 +111,7 @@ int imx27_devices_init(void)
 {
 	imx_iomuxv1_init((void *)MX27_GPIO1_BASE_ADDR);
 
-	add_generic_device("imx_iim", DEVICE_ID_SINGLE, NULL,
+	add_generic_device("imx-iim", DEVICE_ID_SINGLE, NULL,
 			   MX27_IIM_BASE_ADDR, SZ_4K, IORESOURCE_MEM, NULL);
 
 	imx27_init_max();
diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index 3013f02..cd7176c 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -35,7 +35,7 @@ int imx31_init(void)
 
 int imx31_devices_init(void)
 {
-	add_generic_device("imx_iim", 0, NULL, MX31_IIM_BASE_ADDR, SZ_4K,
+	add_generic_device("imx-iim", 0, NULL, MX31_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
 	add_generic_device("imx31-iomux", 0, NULL, MX31_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 40f5770..969ebeb 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -63,7 +63,7 @@ int imx35_init(void)
 
 int imx35_devices_init(void)
 {
-	add_generic_device("imx_iim", 0, NULL, MX35_IIM_BASE_ADDR, SZ_4K,
+	add_generic_device("imx-iim", 0, NULL, MX35_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
 	add_generic_device("imx-iomuxv3", 0, NULL, MX35_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index a0b627f..ad15c02 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -52,7 +52,7 @@ int imx51_init(void)
 
 int imx51_devices_init(void)
 {
-	add_generic_device("imx_iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
+	add_generic_device("imx-iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
 	add_generic_device("imx-iomuxv3", 0, NULL, MX51_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 62e65e0..5be33a5 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -61,7 +61,7 @@ int imx53_init(void)
 
 int imx53_devices_init(void)
 {
-	add_generic_device("imx_iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
+	add_generic_device("imx-iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
 	add_generic_device("imx-iomuxv3", 0, NULL, MX53_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 476b376..b4f44eb 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -448,7 +448,7 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 };
 
 static struct driver_d imx_ocotp_driver = {
-	.name	= "imx_ocotp",
+	.name	= "imx-ocotp",
 	.probe	= imx_ocotp_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_ocotp_dt_ids),
 };
diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
index 5ececb5..9720140 100644
--- a/arch/mips/mach-ar231x/ar231x_reset.c
+++ b/arch/mips/mach-ar231x/ar231x_reset.c
@@ -63,7 +63,7 @@ static int ar231x_reset_probe(struct device_d *dev)
 
 static struct driver_d ar231x_reset_driver = {
 	.probe	= ar231x_reset_probe,
-	.name	= "ar231x_reset",
+	.name	= "ar231x-reset",
 };
 
 static int ar231x_reset_init(void)
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 61b60b6..0324d09 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -27,7 +27,7 @@ static struct resource mac_resources[] = {
 
 static struct device_d mac_dev = {
 	.id            = DEVICE_ID_DYNAMIC,
-	.name          = "altera_tse",
+	.name          = "altera-tse",
 	.num_resources = ARRAY_SIZE(mac_resources),
 	.resource      = mac_resources,
 	.platform_data = &phy_address,
diff --git a/arch/x86/boards/x86_generic/intf_platform_ide.c b/arch/x86/boards/x86_generic/intf_platform_ide.c
index 18a2620..5938810 100644
--- a/arch/x86/boards/x86_generic/intf_platform_ide.c
+++ b/arch/x86/boards/x86_generic/intf_platform_ide.c
@@ -57,7 +57,7 @@ static struct resource secondary_ide_resources[] = {
 };
 
 static struct device_d primary_ide_device = {
-	.name = "ide_intf",
+	.name = "ide-intf",
 	.id = 0,
 	.platform_data = &ide_plat,
 	.resource = primary_ide_resources,
@@ -65,7 +65,7 @@ static struct device_d primary_ide_device = {
 };
 
 static struct device_d secondary_ide_device = {
-	.name = "ide_intf",
+	.name = "ide-intf",
 	.id = 1,
 	.platform_data = &ide_plat,
 	.resource = secondary_ide_resources,
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index ecc2546..d802908 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -136,7 +136,7 @@ static int platform_ide_probe(struct device_d *dev)
 }
 
 static struct driver_d platform_ide_driver = {
-	.name   = "ide_intf",
+	.name   = "ide-intf",
 	.probe  = platform_ide_probe,
 };
 device_platform_driver(platform_ide_driver);
diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index d983387..dc5b9be 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -164,7 +164,7 @@ static __maybe_unused struct of_device_id ar933x_clk_dt_ids[] = {
 
 static struct driver_d ar933x_clk_driver = {
 	.probe	= ar933x_clk_probe,
-	.name	= "ar933x_clk",
+	.name	= "ar933x-clk",
 	.of_compatible = DRV_OF_COMPAT(ar933x_clk_dt_ids),
 };
 
diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
index 3efe8dd..392e71f 100644
--- a/drivers/clocksource/arm_smp_twd.c
+++ b/drivers/clocksource/arm_smp_twd.c
@@ -98,7 +98,7 @@ static __maybe_unused struct of_device_id smp_twd_compatible[] = {
 };
 
 static struct driver_d smp_twd_driver = {
-	.name = "smp_twd",
+	.name = "smp-twd",
 	.probe = smp_twd_probe,
 	.of_compatible = DRV_OF_COMPAT(smp_twd_compatible),
 };
diff --git a/drivers/clocksource/nomadik.c b/drivers/clocksource/nomadik.c
index 8a3e6d9..a2b7951 100644
--- a/drivers/clocksource/nomadik.c
+++ b/drivers/clocksource/nomadik.c
@@ -136,7 +136,7 @@ static int nmdk_mtu_probe(struct device_d *dev)
 }
 
 static struct driver_d nmdk_mtu_driver = {
-	.name = "nomadik_mtu",
+	.name = "nomadik-mtu",
 	.probe = nmdk_mtu_probe,
 };
 
diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 7d15b85..00a062e 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -199,7 +199,7 @@ static struct of_device_id davinci_gpio_ids[] = {
 };
 
 static struct driver_d davinci_gpio_driver = {
-	.name		= "davinci_gpio",
+	.name		= "davinci-gpio",
 	.probe		= davinci_gpio_probe,
 	.of_compatible	= DRV_OF_COMPAT(davinci_gpio_ids),
 };
diff --git a/drivers/gpio/gpio-pl061.c b/drivers/gpio/gpio-pl061.c
index f34aba9..538a5ed 100644
--- a/drivers/gpio/gpio-pl061.c
+++ b/drivers/gpio/gpio-pl061.c
@@ -141,7 +141,7 @@ static struct amba_id pl061_ids[] = {
 
 static struct amba_driver pl061_gpio_driver = {
 	.drv = {
-		.name	= "pl061_gpio",
+		.name	= "pl061-gpio",
 	},
 	.id_table	= pl061_ids,
 	.probe		= pl061_probe,
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index d017594..d3e9cf3 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -201,7 +201,7 @@ static struct of_device_id key_gpio_of_ids[] = {
 };
 
 static struct driver_d gpio_keys_driver = {
-	.name	= "gpio_keys",
+	.name	= "gpio-keys",
 	.probe	= gpio_keys_probe,
 	.of_compatible = DRV_OF_COMPAT(key_gpio_of_ids),
 };
diff --git a/drivers/input/twl6030_pwrbtn.c b/drivers/input/twl6030_pwrbtn.c
index fc4c728..962082c 100644
--- a/drivers/input/twl6030_pwrbtn.c
+++ b/drivers/input/twl6030_pwrbtn.c
@@ -101,7 +101,7 @@ static int __init twl6030_pwrbtn_probe(struct device_d *dev)
 }
 
 static struct driver_d twl6030_pwrbtn_driver = {
-	.name	= "twl6030_pwrbtn",
+	.name	= "twl6030-pwrbtn",
 	.probe	= twl6030_pwrbtn_probe,
 };
 device_platform_driver(twl6030_pwrbtn_driver);
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 36107a6..44aea86 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -617,7 +617,7 @@ err_gpio_cd_request:
 }
 
 static struct driver_d atmci_driver = {
-	.name	= "atmel_mci",
+	.name	= "atmel-mmc",
 	.probe	= atmci_probe,
 };
 device_platform_driver(atmci_driver);
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index cd2fbb5..c388af9 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -602,7 +602,7 @@ static __maybe_unused struct of_device_id dw_mmc_compatible[] = {
 };
 
 static struct driver_d dw_mmc_driver = {
-	.name  = "dw_mmc",
+	.name  = "dw-mmc",
 	.probe = dw_mmc_probe,
 	.of_compatible = DRV_OF_COMPAT(dw_mmc_compatible),
 };
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 7d8997c..c87982d 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -541,7 +541,7 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
 }
 
 static struct driver_d bcm2835_mci_driver = {
-	.name = "bcm2835_mci",
+	.name = "bcm2835-mci",
 	.probe = bcm2835_mci_probe,
 };
 
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 011947c..296ada8 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -440,7 +440,7 @@ static int spi_mci_probe(struct device_d *dev)
 }
 
 static struct driver_d spi_mci_driver = {
-	.name	= "spi_mci",
+	.name	= "spi-mci",
 	.probe	= spi_mci_probe,
 };
 device_spi_driver(spi_mci_driver);
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index bf928e8..3e46b8c 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -607,7 +607,7 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 }
 
 static struct driver_d mxs_mci_driver = {
-        .name  = "mxs_mci",
+        .name  = "mxs-mci",
         .probe = mxs_mci_probe,
 };
 device_platform_driver(mxs_mci_driver);
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 773c84a..ca535fa 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -762,7 +762,7 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 }
 
 static struct driver_d s3c_mci_driver = {
-        .name  = "s3c_mci",
+        .name  = "s3c-mci",
         .probe = s3c_mci_probe,
 };
 device_platform_driver(s3c_mci_driver);
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index fa31b61..a35198e 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -883,7 +883,7 @@ static __maybe_unused struct of_device_id dataflash_dt_ids[] = {
 };
 
 static struct driver_d dataflash_driver = {
-	.name  = "mtd_dataflash",
+	.name  = "mtd-dataflash",
 	.probe = dataflash_probe,
 	.of_compatible = DRV_OF_COMPAT(dataflash_dt_ids),
 };
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 2e9f61f..53e786b 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1243,7 +1243,7 @@ err_no_card:
 }
 
 static struct driver_d atmel_nand_driver = {
-	.name	= "atmel_nand",
+	.name	= "atmel-nand",
 	.probe	= atmel_nand_probe,
 };
 device_platform_driver(atmel_nand_driver);
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index e2aaa15..f3649d9 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1318,7 +1318,7 @@ static __maybe_unused struct of_device_id imx_nand_compatible[] = {
 };
 
 static struct driver_d imx_nand_driver = {
-	.name  = "imx_nand",
+	.name  = "imx-nand",
 	.probe = imxnd_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_nand_compatible),
 };
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 5a4449d..f89c807 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -1347,7 +1347,7 @@ static __maybe_unused struct of_device_id gpmi_dt_ids[] = {
 };
 
 static struct driver_d mxs_nand_driver = {
-	.name  = "mxs_nand",
+	.name  = "mxs-nand",
 	.probe = mxs_nand_probe,
 	.of_compatible = DRV_OF_COMPAT(gpmi_dt_ids),
 };
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 59712b8..958c8d7 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -12,7 +12,7 @@
  *
  * @code
  * static struct device_d my_nand_device = {
- *	.name = "gpmc_nand",
+ *	.name = "gpmc-nand",
  *	.id = some identifier you need to show.. e.g. "gpmc_nand0"
  *	.resource[0].start = GPMC base address
  *	.resource[0].size = GPMC address map size.
@@ -1071,7 +1071,7 @@ out_release_mem:
 
 /** GMPC nand driver -> device registered by platforms */
 static struct driver_d gpmc_nand_driver = {
-	.name = "gpmc_nand",
+	.name = "gpmc-nand",
 	.probe = gpmc_nand_probe,
 };
 device_platform_driver(gpmc_nand_driver);
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index bee037b..90591d2 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -494,7 +494,7 @@ on_error:
 }
 
 static struct driver_d s3c24x0_nand_driver = {
-	.name  = "s3c24x0_nand",
+	.name  = "s3c24x0-nand",
 	.probe = s3c24x0_nand_probe,
 };
 device_platform_driver(s3c24x0_nand_driver);
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index fbd8ecd..c3e051c 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -233,7 +233,7 @@ err:
 
 static struct driver_d nomadik_nand_driver = {
 	.probe = nomadik_nand_probe,
-	.name = "nomadik_nand",
+	.name = "nomadik-nand",
 };
 device_platform_driver(nomadik_nand_driver);
 
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 3d3d231..ba5a934 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -1006,7 +1006,7 @@ static __maybe_unused struct of_device_id cfi_dt_ids[] = {
 };
 
 static struct driver_d cfi_driver = {
-	.name    = "cfi_flash",
+	.name    = "cfi-flash",
 	.probe   = cfi_probe,
 	.of_compatible = DRV_OF_COMPAT(cfi_dt_ids),
 };
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index 4bbf595..408180c 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -554,7 +554,7 @@ static int tse_probe(struct device_d *dev)
 }
 
 static struct driver_d altera_tse_driver = {
-	.name = "altera_tse",
+	.name = "altera-tse",
 	.probe = tse_probe,
 };
 device_platform_driver(altera_tse_driver);
diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
index 572008a..8c4a847 100644
--- a/drivers/net/ar231x.c
+++ b/drivers/net/ar231x.c
@@ -420,7 +420,7 @@ static int ar231x_eth_probe(struct device_d *dev)
 }
 
 static struct driver_d ar231x_eth_driver = {
-	.name = "ar231x_eth",
+	.name = "eth-ar231x",
 	.probe = ar231x_eth_probe,
 };
 
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 8b74ea5..0116a62 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -452,7 +452,7 @@ static __maybe_unused struct of_device_id arc_emac_dt_ids[] = {
 };
 
 static struct driver_d arc_emac_driver = {
-	.name = "arc-emac",
+	.name = "eth-emac",
 	.probe = arc_emac_probe,
 	.of_compatible = DRV_OF_COMPAT(arc_emac_dt_ids),
 };
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index e09ea83..fa21eab 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -358,7 +358,7 @@ static int at91_ether_probe(struct device_d *dev)
 }
 
 static struct driver_d at91_ether_driver = {
-	.name = "at91_ether",
+	.name = "eth-at91",
 	.probe = at91_ether_probe,
 };
 device_platform_driver(at91_ether_driver);
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index ccae537..8bb2bd5 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1219,7 +1219,7 @@ static __maybe_unused struct of_device_id cpsw_dt_ids[] = {
 };
 
 static struct driver_d cpsw_driver = {
-	.name   = "cpsw",
+	.name   = "eth-cpsw",
 	.probe  = cpsw_probe,
 	.of_compatible = DRV_OF_COMPAT(cpsw_dt_ids),
 };
diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index dccb808..7c41e5d 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -466,7 +466,7 @@ static int cs8900_probe(struct device_d *dev)
 }
 
 static struct driver_d cs8900_driver = {
-	.name = "cs8900",
+	.name = "eth-cs8900",
 	.probe = cs8900_probe,
 };
 device_platform_driver(cs8900_driver);
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index ce367a3..a3f7ef4 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -604,7 +604,7 @@ static void davinci_emac_remove(struct device_d *dev)
 }
 
 static struct driver_d davinci_emac_driver = {
-	.name   = "davinci_emac",
+	.name   = "eth-emac",
 	.probe  = davinci_emac_probe,
 	.remove = davinci_emac_remove,
 };
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index ac2eca5..5d4c271 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -487,7 +487,7 @@ static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
 };
 
 static struct driver_d dwc_ether_driver = {
-	.name = "designware_eth",
+	.name = "eth-designware",
 	.probe = dwc_ether_probe,
 	.of_compatible = DRV_OF_COMPAT(dwc_ether_compatible),
 };
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 3a4c6aa..aa20151 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -783,7 +783,7 @@ static int dm9k_probe(struct device_d *dev)
 }
 
 static struct driver_d dm9k_driver = {
-	.name  = "dm9000",
+	.name  = "eth-dm9000",
 	.probe = dm9k_probe,
 };
 device_platform_driver(dm9k_driver);
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index 4b73abf..919e743 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -660,7 +660,7 @@ static int ep93xx_phy_write(struct mii_bus *bus, int phy_addr,
 }
 
 static struct driver_d ep93xx_eth_driver = {
-	.name  = "ep93xx_eth",
+	.name  = "eth-ep93xx",
 	.probe = ep93xx_eth_probe,
 };
 device_platform_driver(ep93xx_eth_driver);
diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index 679e1e5..843243f 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -566,7 +566,7 @@ static int ethoc_probe(struct device_d *dev)
 }
 
 static struct driver_d ethoc_driver = {
-	.name  = "ethoc",
+	.name  = "eth-oc",
 	.probe = ethoc_probe,
 };
 device_platform_driver(ethoc_driver);
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 4ed5e8e..8722bea 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -796,7 +796,7 @@ static struct platform_device_id imx_fec_ids[] = {
  * Driver description for registering
  */
 static struct driver_d fec_driver = {
-	.name   = "fec_imx",
+	.name   = "imx-fec",
 	.probe  = fec_probe,
 	.remove = fec_remove,
 	.of_compatible = DRV_OF_COMPAT(imx_fec_dt_ids),
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 41a3b58..f748bc2 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -682,7 +682,7 @@ static void mpc5xxx_fec_remove(struct device_d *dev)
 }
 
 static struct driver_d mpc5xxx_driver = {
-        .name  = "fec_mpc5xxx",
+        .name  = "eth-mpc5xxx",
         .probe = mpc5xxx_fec_probe,
 	.remove = mpc5xxx_fec_remove,
 };
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 3370b5c..8b8f8c5 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -540,7 +540,7 @@ static int gfar_probe(struct device_d *dev)
 }
 
 static struct driver_d gfar_eth_driver = {
-	.name  = "gfar",
+	.name  = "eth-gianfar",
 	.probe = gfar_probe,
 };
 device_platform_driver(gfar_eth_driver);
@@ -571,7 +571,7 @@ static int gfar_phy_probe(struct device_d *dev)
 }
 
 static struct driver_d gfar_phy_driver = {
-	.name  = "gfar-mdio",
+	.name  = "eth-gianfar-mdio",
 	.probe = gfar_phy_probe,
 };
 register_driver_macro(coredevice, platform, gfar_phy_driver);
@@ -601,7 +601,7 @@ static int gfar_tbiphy_probe(struct device_d *dev)
 }
 
 static struct driver_d gfar_tbiphy_driver = {
-	.name  = "gfar-tbiphy",
+	.name  = "eth-gianfar-tbiphy",
 	.probe = gfar_tbiphy_probe,
 };
 register_driver_macro(coredevice, platform, gfar_tbiphy_driver);
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 83d1b02..bce6cee 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -870,7 +870,7 @@ static int ks8851_probe(struct device_d *dev)
 }
 
 static struct driver_d ks8851_driver = {
-	.name  = "ks8851_mll",
+	.name  = "eth-ks8851",
 	.probe = ks8851_probe,
 };
 device_platform_driver(ks8851_driver);
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index ec3e9f7..dbc4cca 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -171,7 +171,7 @@ static int micrel_switch_probe(struct device_d *dev)
 }
 
 static struct driver_d micrel_switch_driver = {
-	.name  = "ksz8864rmn",
+	.name  = "eth-ksz8864rmn",
 	.probe = micrel_switch_probe,
 };
 device_spi_driver(micrel_switch_driver);
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 12a2a3c..e819756 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -686,7 +686,7 @@ static int macb_probe(struct device_d *dev)
 }
 
 static struct driver_d macb_driver = {
-	.name  = "macb",
+	.name  = "eth-macb",
 	.probe = macb_probe,
 };
 device_platform_driver(macb_driver);
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 96dbc7c..a5a788e 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -273,7 +273,7 @@ static int netx_eth_probe(struct device_d *dev)
 }
 
 static struct driver_d netx_eth_driver = {
-        .name  = "netx-eth",
+        .name  = "eth-netx",
         .probe = netx_eth_probe,
 };
 device_platform_driver(netx_eth_driver);
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 9315127..5689ff4 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -539,7 +539,7 @@ static struct of_device_id orion_gbe_dt_ids[] = {
 };
 
 static struct driver_d orion_gbe_driver = {
-	.name   = "orion-gbe",
+	.name   = "eth-gbe",
 	.probe  = orion_gbe_probe,
 	.remove = orion_gbe_remove,
 	.of_compatible = DRV_OF_COMPAT(orion_gbe_dt_ids),
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index f526cfc..5a29394 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -340,7 +340,7 @@ static void mdio_bus_remove(struct device_d *_dev)
 }
 
 struct bus_type mdio_bus_type = {
-	.name		= "mdio_bus",
+	.name		= "mdio-bus",
 	.match		= mdio_bus_match,
 	.probe		= mdio_bus_probe,
 	.remove		= mdio_bus_remove,
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 7baa749..8800a7e 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1340,7 +1340,7 @@ static int smc91c111_probe(struct device_d *dev)
 }
 
 static struct driver_d smc91c111_driver = {
-        .name  = "smc91c111",
+        .name  = "eth-smc91c111",
         .probe = smc91c111_probe,
 };
 device_platform_driver(smc91c111_driver);
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 9977ae3..937d2e1 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -631,7 +631,7 @@ static int smc911x_probe(struct device_d *dev)
 }
 
 static struct driver_d smc911x_driver = {
-        .name  = "smc911x",
+        .name  = "eth-smc911x",
         .probe = smc911x_probe,
 };
 device_platform_driver(smc911x_driver);
diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 2458fb5..da23aec 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -106,7 +106,7 @@ out:
 }
 
 static struct driver_d tap_driver = {
-        .name  = "tap",
+        .name  = "eth-tap",
         .probe = tap_probe,
 };
 device_platform_driver(tap_driver);
diff --git a/drivers/net/xgmac.c b/drivers/net/xgmac.c
index cc22d0e..6568b64 100644
--- a/drivers/net/xgmac.c
+++ b/drivers/net/xgmac.c
@@ -727,7 +727,7 @@ static __maybe_unused struct of_device_id xgmac_dt_ids[] = {
 };
 
 static struct driver_d hb_xgmac_driver = {
-	.name  = "hb-xgmac",
+	.name  = "eth-hb-xgmac",
 	.probe = hb_xgmac_probe,
 	.of_compatible = DRV_OF_COMPAT(xgmac_dt_ids),
 };
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 8b2ebe4..854c745 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -143,7 +143,7 @@ static int pxa_pwm_probe(struct device_d *dev)
 }
 
 static struct driver_d pxa_pwm_driver = {
-	.name  = "pxa_pwm",
+	.name  = "pxa-pwm",
 	.probe = pxa_pwm_probe,
 };
 
diff --git a/drivers/serial/arm_dcc.c b/drivers/serial/arm_dcc.c
index e5f2bbe..79cbfbd 100644
--- a/drivers/serial/arm_dcc.c
+++ b/drivers/serial/arm_dcc.c
@@ -145,14 +145,14 @@ static int arm_dcc_probe(struct device_d *dev)
 }
 
 static struct driver_d arm_dcc_driver = {
-	.name	= "arm_dcc",
+	.name	= "arm-dcc",
 	.probe	= arm_dcc_probe,
 };
 console_platform_driver(arm_dcc_driver);
 
 static struct device_d arm_dcc_device = {
 	.id	= DEVICE_ID_DYNAMIC,
-	.name	= "arm_dcc",
+	.name	= "arm-dcc",
 };
 
 static int arm_dcc_init(void)
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index c2a5d33..a7ff35b 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -439,7 +439,7 @@ static int atmel_serial_probe(struct device_d *dev)
 }
 
 static struct driver_d atmel_serial_driver = {
-        .name  = "atmel_usart",
+        .name  = "atmel-usart",
         .probe = atmel_serial_probe,
 };
 console_platform_driver(atmel_serial_driver);
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
index d519a87..e203afe 100644
--- a/drivers/serial/serial_altera.c
+++ b/drivers/serial/serial_altera.c
@@ -97,7 +97,7 @@ static int altera_serial_probe(struct device_d *dev)
 }
 
 static struct driver_d altera_serial_driver = {
-	.name = "altera_serial",
+	.name = "altera-serial",
 	.probe = altera_serial_probe,
 };
 console_platform_driver(altera_serial_driver);
diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index 4219a4b..9137101 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -102,7 +102,7 @@ static int altera_serial_jtag_probe(struct device_d *dev) {
 }
 
 static struct driver_d altera_serial_jtag_driver = {
-	.name = "altera_serial_jtag",
+	.name = "altera-serial-jtag",
 	.probe = altera_serial_jtag_probe,
 };
 console_platform_driver(altera_serial_jtag_driver);
diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
index 27cccba..6297b8f 100644
--- a/drivers/serial/serial_ar933x.c
+++ b/drivers/serial/serial_ar933x.c
@@ -197,7 +197,7 @@ static struct of_device_id ar933x_serial_dt_ids[] = {
 };
 
 static struct driver_d ar933x_serial_driver = {
-	.name  = "ar933x_serial",
+	.name  = "ar933x-serial",
 	.probe = ar933x_serial_probe,
 	.of_compatible = DRV_OF_COMPAT(ar933x_serial_dt_ids),
 };
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index 1980516..400bb87 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -228,7 +228,7 @@ static void auart_serial_remove(struct device_d *dev)
 }
 
 static struct driver_d auart_serial_driver = {
-	.name = "auart_serial",
+	.name = "auart-serial",
 	.probe = auart_serial_probe,
 	.remove = auart_serial_remove,
 };
diff --git a/drivers/serial/serial_blackfin.c b/drivers/serial/serial_blackfin.c
index 2122226..d58bc8a 100644
--- a/drivers/serial/serial_blackfin.c
+++ b/drivers/serial/serial_blackfin.c
@@ -126,7 +126,7 @@ static int blackfin_serial_probe(struct device_d *dev)
 }
 
 static struct driver_d blackfin_serial_driver = {
-        .name  = "blackfin_serial",
+        .name  = "blackfin-serial",
         .probe = blackfin_serial_probe,
 };
 console_platform_driver(blackfin_serial_driver);
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index a1b76d0..e24c743 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -292,7 +292,7 @@ static struct platform_device_id cadence_serial_ids[] = {
 };
 
 static struct driver_d cadence_serial_driver = {
-	.name   = "cadence_serial",
+	.name   = "cadence-serial",
 	.probe  = cadence_serial_probe,
 	.remove = cadence_serial_remove,
 	.of_compatible = DRV_OF_COMPAT(cadence_serial_dt_ids),
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e0bd185..91e5784 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -391,7 +391,7 @@ static struct platform_device_id imx_serial_ids[] = {
 };
 
 static struct driver_d imx_serial_driver = {
-	.name   = "imx_serial",
+	.name   = "imx-serial",
 	.probe  = imx_serial_probe,
 	.remove = imx_serial_remove,
 	.of_compatible = DRV_OF_COMPAT(imx_serial_dt_ids),
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index 18aca87..de89e64 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -162,7 +162,7 @@ static int mpc5xxx_serial_probe(struct device_d *dev)
 }
 
 static struct driver_d mpc5xxx_serial_driver = {
-        .name  = "mpc5xxx_serial",
+        .name  = "mpc5xxx-serial",
         .probe = mpc5xxx_serial_probe,
 };
 console_platform_driver(mpc5xxx_serial_driver);
diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
index c659cfa..2eb8516 100644
--- a/drivers/serial/serial_netx.c
+++ b/drivers/serial/serial_netx.c
@@ -151,7 +151,7 @@ static int netx_serial_probe(struct device_d *dev)
 }
 
 static struct driver_d netx_serial_driver = {
-        .name  = "netx_serial",
+        .name  = "netx-serial",
         .probe = netx_serial_probe,
 };
 console_platform_driver(netx_serial_driver);
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 709f704..0126ff8 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -496,7 +496,7 @@ static __maybe_unused struct platform_device_id ns16550_serial_ids[] = {
  * @brief Driver registration structure
  */
 static struct driver_d ns16550_serial_driver = {
-	.name = "ns16550_serial",
+	.name = "ns16550-serial",
 	.probe = ns16550_probe,
 	.of_compatible = DRV_OF_COMPAT(ns16550_serial_dt_ids),
 #if IS_ENABLED(CONFIG_ARCH_OMAP)
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
index 2ef026c..c5f79f6 100644
--- a/drivers/serial/serial_omap4_usbboot.c
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -71,7 +71,7 @@ static int serial_omap4_usbboot_probe(struct device_d *dev)
 }
 
 static struct driver_d serial_omap4_usbboot_driver = {
-	.name = "serial_omap4_usbboot",
+	.name = "omap4-usbboot-serial",
 	.probe = serial_omap4_usbboot_probe,
 };
 console_platform_driver(serial_omap4_usbboot_driver);
diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
index 81cea77..3f62f3c 100644
--- a/drivers/serial/serial_pl010.c
+++ b/drivers/serial/serial_pl010.c
@@ -153,7 +153,7 @@ static int pl010_probe(struct device_d *dev)
 }
 
 static struct driver_d pl010_driver = {
-	.name  = "pl010_serial",
+	.name  = "pl010-serial",
 	.probe = pl010_probe,
 };
 console_platform_driver(pl010_driver);
diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index 20ac4be..963dab8 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -190,7 +190,7 @@ static void pxa_serial_remove(struct device_d *dev)
 }
 
 static struct driver_d pxa_serial_driver = {
-	.name = "pxa_serial",
+	.name = "pxa-serial",
 	.probe = pxa_serial_probe,
 	.remove = pxa_serial_remove,
 };
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index 038193d..ddf5d4e 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -208,7 +208,7 @@ static void s3c_serial_remove(struct device_d *dev)
 }
 
 static struct driver_d s3c_serial_driver = {
-	.name   = "s3c_serial",
+	.name   = "s3c-serial",
 	.probe  = s3c_serial_probe,
 	.remove = s3c_serial_remove,
 };
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 3fec1ce..c58e092 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -189,7 +189,7 @@ static void stm_serial_remove(struct device_d *dev)
 }
 
 static struct driver_d stm_serial_driver = {
-        .name   = "stm_serial",
+        .name   = "stm-serial",
         .probe  = stm_serial_probe,
 	.remove = stm_serial_remove,
 };
diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
index 983b877..52cffe3 100644
--- a/drivers/spi/altera_spi.c
+++ b/drivers/spi/altera_spi.c
@@ -236,7 +236,7 @@ static int altera_spi_probe(struct device_d *dev)
 }
 
 static struct driver_d altera_spi_driver = {
-	.name  = "altera_spi",
+	.name  = "altera-spi",
 	.probe = altera_spi_probe,
 };
 device_platform_driver(altera_spi_driver);
diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 0bf9d08..530473a 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -435,7 +435,7 @@ out_free:
 }
 
 static struct driver_d atmel_spi_driver = {
-	.name  = "atmel_spi",
+	.name  = "atmel-spi",
 	.probe = atmel_spi_probe,
 };
 device_platform_driver(atmel_spi_driver);
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 3146339..3cc0849 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -581,7 +581,7 @@ static struct platform_device_id imx_spi_ids[] = {
 };
 
 static struct driver_d imx_spi_driver = {
-	.name  = "imx_spi",
+	.name  = "imx-spi",
 	.probe = imx_spi_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_spi_dt_ids),
 	.id_table = imx_spi_ids,
diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index a00784f..f8029cf 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -278,7 +278,7 @@ static int mxs_spi_probe(struct device_d *dev)
 }
 
 static struct driver_d mxs_spi_driver = {
-	.name  = "mxs_spi",
+	.name  = "mxs-spi",
 	.probe = mxs_spi_probe,
 };
 device_platform_driver(mxs_spi_driver);
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index d0f2155..83d23bf 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -686,7 +686,7 @@ fail:
 }
 
 static struct usb_composite_driver dfu_driver = {
-	.name		= "g_dfu",
+	.name		= "gadget-dfu",
 	.dev		= &dfu_dev_descriptor,
 	.strings	= dev_strings,
 	.bind		= dfu_driver_bind,
diff --git a/drivers/usb/gadget/serial.c b/drivers/usb/gadget/serial.c
index 98a501b..9883e4a 100644
--- a/drivers/usb/gadget/serial.c
+++ b/drivers/usb/gadget/serial.c
@@ -173,7 +173,7 @@ fail:
 }
 
 static struct usb_composite_driver gserial_driver = {
-	.name		= "g_serial",
+	.name		= "gadget-serial",
 	.dev		= &device_desc,
 	.strings	= dev_strings,
 	.bind		= gs_bind,
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 0f5c8f1..06ebf88 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -81,7 +81,7 @@ static void at91_ohci_remove(struct device_d *dev)
 }
 
 static struct driver_d at91_ohci_driver = {
-	.name = "at91_ohci",
+	.name = "at91-ohci",
 	.probe = at91_ohci_probe,
 	.remove = at91_ohci_remove,
 };
diff --git a/drivers/video/atmel_hlcdfb.c b/drivers/video/atmel_hlcdfb.c
index 2956598..1d9e024 100644
--- a/drivers/video/atmel_hlcdfb.c
+++ b/drivers/video/atmel_hlcdfb.c
@@ -286,7 +286,7 @@ static int atmel_hlcdc_probe(struct device_d *dev)
 }
 
 static struct driver_d atmel_hlcdc_driver = {
-	.name	= "atmel_hlcdfb",
+	.name	= "atmel-hlcdfb",
 	.probe	= atmel_hlcdc_probe,
 };
 device_platform_driver(atmel_hlcdc_driver);
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index e9164e3..c18e630 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -252,7 +252,7 @@ static int atmel_lcdc_probe(struct device_d *dev)
 }
 
 static struct driver_d atmel_lcdc_driver = {
-	.name	= "atmel_lcdfb",
+	.name	= "atmel-lcdfb",
 	.probe	= atmel_lcdc_probe,
 };
 device_platform_driver(atmel_lcdc_driver);
diff --git a/drivers/video/bcm2835.c b/drivers/video/bcm2835.c
index 3d52f8b..61ff946 100644
--- a/drivers/video/bcm2835.c
+++ b/drivers/video/bcm2835.c
@@ -130,7 +130,7 @@ static int bcm2835fb_probe(struct device_d *dev)
 }
 
 static struct driver_d bcm2835fb_driver = {
-	.name	= "bcm2835_fb",
+	.name	= "bcm2835-fb",
 	.probe	= bcm2835fb_probe,
 };
 device_platform_driver(bcm2835fb_driver);
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index b12c09c..cec2e8b 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -581,7 +581,7 @@ static int imxfb_probe(struct device_d *dev)
 }
 
 static struct driver_d imxfb_driver = {
-	.name		= "imxfb",
+	.name		= "imx-fb",
 	.probe		= imxfb_probe,
 };
 device_platform_driver(imxfb_driver);
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
index 485cc75..8d76431 100644
--- a/drivers/video/omap.c
+++ b/drivers/video/omap.c
@@ -512,7 +512,7 @@ out:
 }
 
 static struct driver_d omapfb_driver = {
-	.name	= "omap_fb",
+	.name	= "omap-fb",
 	.probe	= omapfb_probe,
 };
 
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index b4ce3a1..27398cd 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -537,7 +537,7 @@ static int pxafb_probe(struct device_d *dev)
 }
 
 static struct driver_d pxafb_driver = {
-	.name	= "pxafb",
+	.name	= "pxa-fb",
 	.probe	= pxafb_probe,
 };
 device_platform_driver(pxafb_driver);
diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
index b1883e2..028ba9a 100644
--- a/drivers/video/s3c24xx.c
+++ b/drivers/video/s3c24xx.c
@@ -401,7 +401,7 @@ static int s3cfb_probe(struct device_d *hw_dev)
 }
 
 static struct driver_d s3cfb_driver = {
-	.name	= "s3c_fb",
+	.name	= "s3c-fb",
 	.probe	= s3cfb_probe,
 };
 device_platform_driver(s3cfb_driver);
diff --git a/drivers/video/sdl.c b/drivers/video/sdl.c
index a568340..de65f3f 100644
--- a/drivers/video/sdl.c
+++ b/drivers/video/sdl.c
@@ -89,7 +89,7 @@ static void sdlfb_remove(struct device_d *dev)
 }
 
 static struct driver_d sdlfb_driver = {
-	.name	= "sdlfb",
+	.name	= "sdl-fb",
 	.probe	= sdlfb_probe,
 	.remove	= sdlfb_remove,
 };
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 175e4b6..860dfdb 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -521,7 +521,7 @@ static int stmfb_probe(struct device_d *hw_dev)
 }
 
 static struct driver_d stmfb_driver = {
-	.name	= "stmfb",
+	.name	= "stm-fb",
 	.probe	= stmfb_probe,
 };
 device_platform_driver(stmfb_driver);
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index bbef470..221fdfc 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -396,7 +396,7 @@ static void w1_bus_remove(struct device_d *_dev)
 }
 
 struct bus_type w1_bustype= {
-	.name = "w1_bus",
+	.name = "w1-bus",
 	.match = w1_bus_match,
 	.probe = w1_bus_probe,
 	.remove = w1_bus_remove,
@@ -618,7 +618,7 @@ int w1_bus_register(struct w1_bus *bus)
 
 	list_add_tail(&bus->list, &w1_buses);
 
-	strcpy(bus->dev.name, "w1_bus");
+	strcpy(bus->dev.name, "w1-bus");
 	bus->dev.id = DEVICE_ID_DYNAMIC;
 	bus->dev.parent = bus->parent;
 
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 0dc7682..b0b4390 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -208,7 +208,7 @@ static struct fs_driver_d omap4_usbbootfs_driver = {
 	.drv = {
 		.probe	= omap4_usbbootfs_probe,
 		.remove	= omap4_usbbootfs_remove,
-		.name	= "omap4_usbbootfs",
+		.name	= "omap4-usbbootfs",
 	}
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
