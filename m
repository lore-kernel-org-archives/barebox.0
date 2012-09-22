Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TFMkF-0006c8-3Q
 for barebox@lists.infradead.org; Sat, 22 Sep 2012 10:15:38 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id AC2E2FFAB64
 for <barebox@lists.infradead.org>; Sat, 22 Sep 2012 12:21:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 22 Sep 2012 12:12:54 +0200
Message-Id: <1348308774-32378-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120922100757.GR26553@game.jcrosoft.org>
References: <20120922100757.GR26553@game.jcrosoft.org>
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
Subject: [PATCH 1/1] net: introduce phylib
To: barebox@lists.infradead.org

Adapt phylib from linux

switch all the driver to it
reimplement mii bus

This will allow to have
 - phy drivers
 - to only connect the phy at then opening of the device
 - if the phy is not ready or not up fail on open

Same behaviour as in linux and will allow to share code and simplify porting.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/freescale-mx6-arm2/board.c      |   43 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c |   40 +-
 arch/arm/configs/phycard_a_l1_defconfig         |    2 +-
 arch/arm/configs/tx51stk5_defconfig             |    2 +-
 drivers/net/Kconfig                             |   30 +-
 drivers/net/Makefile                            |    2 +-
 drivers/net/altera_tse.c                        |   48 +-
 drivers/net/altera_tse.h                        |    3 +-
 drivers/net/at91_ether.c                        |   49 +-
 drivers/net/designware.c                        |   62 ++-
 drivers/net/dm9k.c                              |   50 +-
 drivers/net/ep93xx.c                            |   35 +-
 drivers/net/ep93xx.h                            |    2 +-
 drivers/net/fec_imx.c                           |   89 +--
 drivers/net/fec_imx.h                           |    6 +-
 drivers/net/fec_mpc5200.c                       |   54 +-
 drivers/net/fec_mpc5200.h                       |    4 +-
 drivers/net/gianfar.c                           |   61 +-
 drivers/net/gianfar.h                           |    2 +-
 drivers/net/ks8851_mll.c                        |   36 +-
 drivers/net/macb.c                              |   79 +--
 drivers/net/miidev.c                            |  316 -----------
 drivers/net/netx_eth.c                          |   26 +-
 drivers/net/phy/Kconfig                         |   17 +
 drivers/net/phy/Makefile                        |    2 +
 include/fec.h => drivers/net/phy/generic.c      |   43 +-
 drivers/net/phy/mdio_bus.c                      |  250 +++++++++
 drivers/net/phy/phy.c                           |  568 +++++++++++++++++++
 drivers/net/smc91111.c                          |   47 +-
 drivers/net/smc911x.c                           |   37 +-
 drivers/net/usb/Kconfig                         |    4 +-
 drivers/net/usb/asix.c                          |   29 +-
 drivers/net/usb/smsc95xx.c                      |   41 +-
 drivers/net/usb/usbnet.c                        |   11 +-
 include/fec.h                                   |    3 +
 include/linux/ethtool.h                         |  114 ++++
 include/linux/mii.h                             |  675 +++++++++++++++--------
 include/linux/phy.h                             |  266 +++++++++
 include/miidev.h                                |   51 +-
 include/net.h                                   |    4 +
 include/usb/usbnet.h                            |    5 +-
 net/eth.c                                       |    8 +-
 42 files changed, 2140 insertions(+), 1076 deletions(-)
 delete mode 100644 drivers/net/miidev.c
 create mode 100644 drivers/net/phy/Kconfig
 create mode 100644 drivers/net/phy/Makefile
 copy include/fec.h => drivers/net/phy/generic.c (53%)
 create mode 100644 drivers/net/phy/mdio_bus.c
 create mode 100644 drivers/net/phy/phy.c
 create mode 100644 include/linux/ethtool.h
 rewrite include/linux/mii.h (70%)
 create mode 100644 include/linux/phy.h

diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
index e4a9a49..0e853a6 100644
--- a/arch/arm/boards/freescale-mx6-arm2/board.c
+++ b/arch/arm/boards/freescale-mx6-arm2/board.c
@@ -26,7 +26,7 @@
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
-#include <miidev.h>
+#include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
 #include <mach/generic.h>
@@ -104,50 +104,39 @@ static int arm2_mem_init(void)
 }
 mem_initcall(arm2_mem_init);
 
-static struct fec_platform_data fec_info = {
-	.xcv_type = RGMII,
-	.phy_addr = 0,
-};
-
-static int mx6_rgmii_rework(void)
+static void mx6_rgmii_rework(struct phy_device *dev)
 {
-	struct mii_device *mdev;
 	u16 val;
 
-	mdev = mii_open("phy0");
-	if (!mdev) {
-		printf("unable to open phy0\n");
-		return -ENODEV;
-	}
-
 	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
-	mii_write(mdev, mdev->address, 0xd, 0x7);
-	mii_write(mdev, mdev->address, 0xe, 0x8016);
-	mii_write(mdev, mdev->address, 0xd, 0x4007);
+	phy_write(dev, 0xd, 0x7);
+	phy_write(dev, 0xe, 0x8016);
+	phy_write(dev, 0xd, 0x4007);
 
-	val = mii_read(mdev, mdev->address, 0xe);
+	val = phy_read(dev, 0xe);
 	val &= 0xffe3;
 	val |= 0x18;
-	mii_write(mdev, mdev->address, 0xe, val);
+	phy_write(dev, 0xe, val);
 
 	/* introduce tx clock delay */
-	mii_write(mdev, mdev->address, 0x1d, 0x5);
+	phy_write(dev, 0x1d, 0x5);
 
-	val = mii_read(mdev, mdev->address, 0x1e);
+	val = phy_read(dev, 0x1e);
 	val |= 0x0100;
-	mii_write(mdev, mdev->address, 0x1e, val);
-
-	mii_close(mdev);
-
-	return 0;
+	phy_write(dev, 0x1e, val);
 }
 
+static struct fec_platform_data fec_info = {
+	.xcv_type = RGMII,
+	.phy_init = mx6_rgmii_rework,
+	.phy_addr = 0,
+};
+
 static int arm2_devices_init(void)
 {
 	imx6_add_mmc3(NULL);
 
 	imx6_add_fec(&fec_info);
-	mx6_rgmii_rework();
 
 	armlinux_set_bootparams((void *)0x10000100);
 	armlinux_set_architecture(3837);
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index c5bcf8b..6070e2e 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -28,7 +28,7 @@
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
-#include <miidev.h>
+#include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
 #include <mach/generic.h>
@@ -136,38 +136,27 @@ static int sabrelite_mem_init(void)
 }
 mem_initcall(sabrelite_mem_init);
 
-static struct fec_platform_data fec_info = {
-	.xcv_type = RGMII,
-	.phy_addr = 6,
-};
-
-int mx6_rgmii_rework(void)
+static void mx6_rgmii_rework(struct phy_device *dev)
 {
-	struct mii_device *mdev;
-
-	mdev = mii_open("phy0");
-	if (!mdev) {
-		printf("unable to open phy0\n");
-		return -ENODEV;
-	}
-
-	mii_write(mdev, mdev->address, 0x09, 0x0f00);
+	phy_write(dev, 0x09, 0x0f00);
 
 	/* do same as linux kernel */
 	/* min rx data delay */
-	mii_write(mdev, mdev->address, 0x0b, 0x8105);
-	mii_write(mdev, mdev->address, 0x0c, 0x0000);
+	phy_write(dev, 0x0b, 0x8105);
+	phy_write(dev, 0x0c, 0x0000);
 
 	/* max rx/tx clock delay, min rx/tx control delay */
-	mii_write(mdev, mdev->address, 0x0b, 0x8104);
-	mii_write(mdev, mdev->address, 0x0c, 0xf0f0);
-	mii_write(mdev, mdev->address, 0x0b, 0x104);
-
-	mii_close(mdev);
-
-	return 0;
+	phy_write(dev, 0x0b, 0x8104);
+	phy_write(dev, 0x0c, 0xf0f0);
+	phy_write(dev, 0x0b, 0x104);
 }
 
+static struct fec_platform_data fec_info = {
+	.xcv_type = RGMII,
+	.phy_init = mx6_rgmii_rework,
+	.phy_addr = 6,
+};
+
 static int sabrelite_ksz9021rn_setup(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet_pads, ARRAY_SIZE(sabrelite_enet_pads));
@@ -266,7 +255,6 @@ static int sabrelite_devices_init(void)
 	sabrelite_ksz9021rn_setup();
 	imx6_iim_register_fec_ethaddr();
 	imx6_add_fec(&fec_info);
-	mx6_rgmii_rework();
 
 	sabrelite_ehci_init();
 
diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phycard_a_l1_defconfig
index cf980f7..4cf2d21 100644
--- a/arch/arm/configs/phycard_a_l1_defconfig
+++ b/arch/arm/configs/phycard_a_l1_defconfig
@@ -134,7 +134,7 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-CONFIG_MIIDEV=y
+CONFIG_PHYLIB=y
 CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT=0
 CONFIG_SPI=n
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index 7fff0f0..2c83189 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -110,7 +110,7 @@ CONFIG_NET_TFTP=y
 CONFIG_NET_TFTP_PUSH=y
 CONFIG_DRIVER_SERIAL_IMX=y
 CONFIG_ARCH_HAS_FEC_IMX=y
-CONFIG_MIIDEV=y
+CONFIG_PHYLIB=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_SPI_IMX_2_3=y
 CONFIG_MTD=y
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 3c5f729..99757d3 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -19,26 +19,28 @@ config HAS_DESIGNWARE_ETH
 config ARCH_HAS_FEC_IMX
 	bool
 
-config MIIDEV
+config PHYLIB
 	bool
 
 menu "Network drivers               "
 	depends on NET
 
+source "drivers/net/phy/Kconfig"
+
 config DRIVER_NET_CS8900
 	bool "cs8900 ethernet driver"
 	depends on HAS_CS8900
 
 config DRIVER_NET_SMC911X
 	bool "smc911x ethernet driver"
-	select MIIDEV
+	select PHYLIB
 	help
 	  This option enables support for the SMSC LAN9[12]1[567]
 	  ethernet chip.
 
 config DRIVER_NET_SMC91111
 	bool "smc91111 ethernet driver"
-	select MIIDEV
+	select PHYLIB
 	help
 	  This option enables support for the SMSC LAN91C111
 	  ethernet chip.
@@ -46,37 +48,37 @@ config DRIVER_NET_SMC91111
 config DRIVER_NET_DM9K
 	bool "Davicom dm9k[E|A|B] ethernet driver"
 	depends on HAS_DM9000
-	select MIIDEV
+	select PHYLIB
 
 config DRIVER_NET_NETX
 	bool "Hilscher Netx ethernet driver"
 	depends on HAS_NETX_ETHER
-	select MIIDEV
+	select PHYLIB
 
 config DRIVER_NET_AT91_ETHER
 	bool "at91 ethernet driver"
 	depends on HAS_AT91_ETHER
-	select MIIDEV
+	select PHYLIB
 
 config DRIVER_NET_MPC5200
 	bool "MPC5200 Ethernet driver"
 	depends on ARCH_MPC5200
-	select MIIDEV
+	select PHYLIB
 
 config DRIVER_NET_FEC_IMX
 	bool "i.MX FEC Ethernet driver"
 	depends on ARCH_HAS_FEC_IMX
-	select MIIDEV
+	select PHYLIB
 
 config DRIVER_NET_EP93XX
 	bool "EP93xx Ethernet driver"
 	depends on ARCH_EP93XX
-	select MIIDEV
+	select PHYLIB
 
 config DRIVER_NET_MACB
 	bool "macb Ethernet driver"
 	depends on HAS_MACB
-	select MIIDEV
+	select PHYLIB
 
 config DRIVER_NET_TAP
 	bool "tap Ethernet driver"
@@ -85,7 +87,7 @@ config DRIVER_NET_TAP
 config DRIVER_NET_TSE
 	depends on NIOS2
 	bool "Altera TSE ethernet driver"
-	select MIIDEV
+	select PHYLIB
 	help
 	  This option enables support for the Altera TSE MAC.
 
@@ -100,14 +102,14 @@ config TSE_USE_DEDICATED_DESC_MEM
 
 config DRIVER_NET_KS8851_MLL
 	bool "ks8851 mll ethernet driver"
-	select MIIDEV
+	select PHYLIB
 	help
 	  This option enables support for the Micrel KS8851 MLL
 	  ethernet chip.
 
 config DRIVER_NET_DESIGNWARE
 	bool "Designware Universal MAC ethernet driver"
-	select MIIDEV
+	select PHYLIB
 	depends on HAS_DESIGNWARE_ETH
 	help
 	  This option enables support for the Synopsys
@@ -121,7 +123,7 @@ config DRIVER_NET_DESIGNWARE_ALTDESCRIPTOR
 config DRIVER_NET_GIANFAR
 	bool "Gianfar Ethernet"
 	depends on ARCH_MPC85XX
-	select MIIDEV
+	select PHYLIB
 
 source "drivers/net/usb/Kconfig"
 
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 4d960e8..4939b7f 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -9,7 +9,7 @@ obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
 obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
 obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
-obj-$(CONFIG_MIIDEV)			+= miidev.o
+obj-$(CONFIG_PHYLIB)			+= phy/
 obj-$(CONFIG_NET_USB)			+= usb/
 obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
 obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index 5353a68..aedd5da 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -26,10 +26,10 @@
 
 #include <common.h>
 #include <net.h>
-#include <miidev.h>
 #include <init.h>
 #include <clock.h>
 #include <linux/mii.h>
+#include <linux/phy.h>
 
 #include <io.h>
 #include <asm/dma-mapping.h>
@@ -247,10 +247,9 @@ static int tse_set_ethaddr(struct eth_device *edev, unsigned char *m)
 	return 0;
 }
 
-static int tse_phy_read(struct mii_device *mdev, int phy_addr, int reg)
+static int tse_phy_read(struct mii_bus *bus, int phy_addr, int reg)
 {
-	struct eth_device *edev = mdev->edev;
-	struct altera_tse_priv *priv = edev->priv;
+	struct altera_tse_priv *priv = bus->priv;
 	struct alt_tse_mac *mac_dev = priv->tse_regs;
 	uint32_t *mdio_regs;
 
@@ -261,10 +260,9 @@ static int tse_phy_read(struct mii_device *mdev, int phy_addr, int reg)
 	return readl(&mdio_regs[reg]) & 0xFFFF;
 }
 
-static int tse_phy_write(struct mii_device *mdev, int phy_addr, int reg, int val)
+static int tse_phy_write(struct mii_bus *bus, int phy_addr, int reg, u16 val)
 {
-	struct eth_device *edev = mdev->edev;
-	struct altera_tse_priv *priv = edev->priv;
+	struct altera_tse_priv *priv = bus->priv;
 	struct alt_tse_mac *mac_dev = priv->tse_regs;
 	uint32_t *mdio_regs;
 
@@ -347,9 +345,12 @@ static void tse_reset(struct eth_device *edev)
 static int tse_eth_open(struct eth_device *edev)
 {
 	struct altera_tse_priv *priv = edev->priv;
+	int ret;
 
-	miidev_wait_aneg(priv->miidev);
-	miidev_print_status(priv->miidev);
+	ret = phy_device_connect(edev, priv->miibus, priv->phy_addr, NULL, 0,
+				 PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
 
 	return 0;
 }
@@ -488,15 +489,13 @@ static int tse_init_dev(struct eth_device *edev)
 	/* enable MAC */
 	writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK, &mac_dev->command_config);
 
-	miidev_restart_aneg(priv->miidev);
-
 	return 0;
 }
 
 static int tse_probe(struct device_d *dev)
 {
 	struct altera_tse_priv *priv;
-	struct mii_device *miidev;
+	struct mii_bus *miibus;
 	struct eth_device *edev;
 	struct alt_sgdma_descriptor *rx_desc;
 	struct alt_sgdma_descriptor *tx_desc;
@@ -505,7 +504,7 @@ static int tse_probe(struct device_d *dev)
 #endif
 	edev = xzalloc(sizeof(struct eth_device));
 	priv = xzalloc(sizeof(struct altera_tse_priv));
-	miidev = xzalloc(sizeof(struct mii_device));
+	miibus = xzalloc(sizeof(struct mii_bus));
 
 	edev->priv = priv;
 
@@ -527,7 +526,7 @@ static int tse_probe(struct device_d *dev)
 
 	if (!tx_desc) {
 		free(edev);
-		free(miidev);
+		free(miibus);
 		return 0;
 	}
 #endif
@@ -541,22 +540,19 @@ static int tse_probe(struct device_d *dev)
 	priv->rx_desc = rx_desc;
 	priv->tx_desc = tx_desc;
 
-	priv->miidev = miidev;
+	priv->miibus = miibus;
 
-	miidev->read = tse_phy_read;
-	miidev->write = tse_phy_write;
-	miidev->flags = 0;
-	miidev->edev = edev;
-	miidev->parent = dev;
+	miibus->read = tse_phy_read;
+	miibus->write = tse_phy_write;
+	miibus->priv = priv;
+	miibus->parent = dev;
 
 	if (dev->platform_data != NULL)
-		miidev->address = *((int8_t *)(dev->platform_data));
-	else {
-		printf("No PHY address specified.\n");
-		return -ENODEV;
-	}
+		priv->phy_addr = *((int8_t *)(dev->platform_data));
+	else
+		priv->phy_addr = -1;
 
-	mii_register(miidev);
+	mdiobus_register(miibus);
 
 	return eth_register(edev);
 }
diff --git a/drivers/net/altera_tse.h b/drivers/net/altera_tse.h
index 866dbce..5a66a7d 100644
--- a/drivers/net/altera_tse.h
+++ b/drivers/net/altera_tse.h
@@ -292,7 +292,8 @@ struct altera_tse_priv {
 	void __iomem *sgdma_tx_regs;
 	void __iomem *rx_desc;
 	void __iomem *tx_desc;
-	struct mii_device *miidev;
+	int phy_addr;
+	struct mii_bus *miibus;
 };
 
 #endif /* _ALTERA_TSE_H_ */
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 3592141..13ca745 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -30,7 +30,6 @@
 #include <driver.h>
 #include <xfuncs.h>
 #include <init.h>
-#include <miidev.h>
 #include <asm/io.h>
 #include <mach/hardware.h>
 #include <mach/at91rm9200_emac.h>
@@ -40,18 +39,18 @@
 #include <linux/mii.h>
 #include <errno.h>
 #include <asm/mmu.h>
+#include <linux/phy.h>
 
 #include "at91_ether.h"
 
-#define SPEED_100 1
-#define DUPLEX_FULL 1
-
 struct ether_device {
 	struct eth_device netdev;
-	struct mii_device miidev;
+	struct mii_bus miibus;
 	struct rbf_t *rbfp;
 	struct rbf_t *rbfdt;
 	unsigned char *rbf_framebuf;
+	int phy_addr;
+	phy_interface_t interface;
 };
 #define to_ether(_nd) container_of(_nd, struct ether_device, netdev)
 
@@ -98,7 +97,7 @@ static inline int at91_phy_wait(void)
 	return 0;
 }
 
-static int at91_ether_mii_read(struct mii_device *dev, int addr, int reg)
+static int at91_ether_mii_read(struct mii_bus *dev, int addr, int reg)
 {
 	int value;
 
@@ -120,7 +119,7 @@ out:
 	return value;
 }
 
-static int at91_ether_mii_write(struct mii_device *dev, int addr, int reg, int val)
+static int at91_ether_mii_write(struct mii_bus *dev, int addr, int reg, u16 val)
 {
 	int ret;
 
@@ -136,19 +135,19 @@ static int at91_ether_mii_write(struct mii_device *dev, int addr, int reg, int v
 	return ret;
 }
 
-static void update_linkspeed(struct mii_device *dev, int speed, int duplex)
+static void update_linkspeed(struct eth_device *edev)
 {
 	unsigned int mac_cfg;
 
 	/* Update the MAC */
 	mac_cfg = at91_emac_read(AT91_EMAC_CFG) & ~(AT91_EMAC_SPD | AT91_EMAC_FD);
-	if (speed == SPEED_100) {
-		if (duplex == DUPLEX_FULL)	/* 100 Full Duplex */
+	if (edev->phydev->speed == SPEED_100) {
+		if (edev->phydev->duplex)
 			mac_cfg |= AT91_EMAC_SPD | AT91_EMAC_FD;
 		else					/* 100 Half Duplex */
 			mac_cfg |= AT91_EMAC_SPD;
 	} else {
-		if (duplex == DUPLEX_FULL)	/* 10 Full Duplex */
+		if (edev->phydev->duplex)
 			mac_cfg |= AT91_EMAC_FD;
 		else {}					/* 10 Half Duplex */
 	}
@@ -161,11 +160,12 @@ static int at91_ether_open(struct eth_device *edev)
 	unsigned long ctl;
 	struct ether_device *etdev = to_ether(edev);
 	unsigned char *rbf_framebuf = etdev->rbf_framebuf;
+	int ret;
 
-	miidev_wait_aneg(&etdev->miidev);
-	miidev_print_status(&etdev->miidev);
-
-	update_linkspeed(&etdev->miidev, SPEED_100, DUPLEX_FULL);
+	ret = phy_device_connect(edev, &etdev->miibus, etdev->phy_addr,
+				 update_linkspeed, 0, etdev->interface);
+	if (ret)
+		return ret;
 
 	/* Clear internal statistics */
 	ctl = at91_emac_read(AT91_EMAC_CTL);
@@ -299,7 +299,7 @@ static int at91_ether_probe(struct device_d *dev)
 	unsigned int mac_cfg;
 	struct ether_device *ether_dev;
 	struct eth_device *edev;
-	struct mii_device *miidev;
+	struct mii_bus *miibus;
 	unsigned long ether_hz;
 	struct clk *pclk;
 	struct at91_ether_platform_data *pdata;
@@ -314,7 +314,7 @@ static int at91_ether_probe(struct device_d *dev)
 	ether_dev = xzalloc(sizeof(struct ether_device));
 
 	edev = &ether_dev->netdev;
-	miidev = &ether_dev->miidev;
+	miibus = &ether_dev->miibus;
 	edev->priv = ether_dev;
 
 	edev->init = at91_ether_init;
@@ -327,10 +327,9 @@ static int at91_ether_probe(struct device_d *dev)
 	ether_dev->rbf_framebuf = dma_alloc_coherent(MAX_RX_DESCR * MAX_RBUFF_SZ);
 	ether_dev->rbfdt = dma_alloc_coherent(sizeof(struct rbf_t) * MAX_RX_DESCR);
 
-	miidev->address = pdata->phy_addr;
-	miidev->read = at91_ether_mii_read;
-	miidev->write = at91_ether_mii_write;
-	miidev->edev = edev;
+	ether_dev->phy_addr = pdata->phy_addr;
+	miibus->read = at91_ether_mii_read;
+	miibus->write = at91_ether_mii_write;
 
 	/* Sanitize the clocks */
 	mac_cfg = at91_emac_read(AT91_EMAC_CFG);
@@ -347,12 +346,16 @@ static int at91_ether_probe(struct device_d *dev)
 
 	mac_cfg |= AT91_EMAC_CLK_DIV32 | AT91_EMAC_BIG;
 
-	if (pdata->flags & AT91SAM_ETHER_RMII)
+	if (pdata->flags & AT91SAM_ETHER_RMII) {
+		ether_dev->interface = PHY_INTERFACE_MODE_RGMII;
 		mac_cfg |= AT91_EMAC_RMII;
+	} else {
+		ether_dev->interface = PHY_INTERFACE_MODE_MII;
+	}
 
 	at91_emac_write(AT91_EMAC_CFG, mac_cfg);
 
-	mii_register(miidev);
+	mdiobus_register(miibus);
 	eth_register(edev);
 
 	return 0;
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 379b4e3..2a87d26 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -29,15 +29,15 @@
 #include <init.h>
 #include <io.h>
 #include <net.h>
-#include <miidev.h>
 #include <asm/mmu.h>
 #include <net/designware.h>
+#include <linux/phy.h>
 #include "designware.h"
 
 
 struct dw_eth_dev {
 	struct eth_device netdev;
-	struct mii_device miidev;
+	struct mii_bus miibus;
 
 	void (*fix_mac_speed)(int speed);
 	u8 macaddr[6];
@@ -52,6 +52,7 @@ struct dw_eth_dev {
 
 	struct eth_mac_regs *mac_regs_p;
 	struct eth_dma_regs *dma_regs_p;
+	int phy_addr;
 };
 
 /* Speed specific definitions */
@@ -64,9 +65,9 @@ struct dw_eth_dev {
 #define FULL_DUPLEX		2
 
 
-static int dwc_ether_mii_read(struct mii_device *dev, int addr, int reg)
+static int dwc_ether_mii_read(struct mii_bus *dev, int addr, int reg)
 {
-	struct dw_eth_dev *priv = dev->edev->priv;
+	struct dw_eth_dev *priv = dev->priv;
 	struct eth_mac_regs *mac_p = priv->mac_regs_p;
 	u64 start;
 	u32 miiaddr;
@@ -86,9 +87,9 @@ static int dwc_ether_mii_read(struct mii_device *dev, int addr, int reg)
 	return readl(&mac_p->miidata) & 0xffff;
 }
 
-static int dwc_ether_mii_write(struct mii_device *dev, int addr, int reg, int val)
+static int dwc_ether_mii_write(struct mii_bus *dev, int addr, int reg, u16 val)
 {
-	struct dw_eth_dev *priv = dev->edev->priv;
+	struct dw_eth_dev *priv = dev->priv;
 	struct eth_mac_regs *mac_p = priv->mac_regs_p;
 	u64 start;
 	u32 miiaddr;
@@ -222,34 +223,37 @@ static int dwc_ether_init(struct eth_device *dev)
 	return 0;
 }
 
-static int dwc_ether_open(struct eth_device *dev)
+static void dwc_update_linkspeed(struct eth_device *edev)
 {
-	struct dw_eth_dev *priv = dev->priv;
-	struct eth_mac_regs *mac_p = priv->mac_regs_p;
-	struct eth_dma_regs *dma_p = priv->dma_regs_p;
+	struct dw_eth_dev *priv = edev->priv;
 	u32 conf;
-	int link, speed;
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
-	link = miidev_get_status(&priv->miidev);
-
-	if (priv->fix_mac_speed) {
-		speed = link & MIIDEV_STATUS_IS_1000MBIT ? 1000 :
-			(link & MIIDEV_STATUS_IS_100MBIT ? 100 : 10);
-		priv->fix_mac_speed(speed);
-	}
+	if (priv->fix_mac_speed)
+		priv->fix_mac_speed(edev->phydev->speed);
 
 	conf = readl(&mac_p->conf);
-	if (link & MIIDEV_STATUS_IS_FULL_DUPLEX)
+	if (edev->phydev->duplex)
 		conf |= FULLDPLXMODE;
 	else
 		conf &= ~FULLDPLXMODE;
-	if (link & MIIDEV_STATUS_IS_1000MBIT)
+	if (edev->phydev->speed == SPEED_1000)
 		conf &= ~MII_PORTSELECT;
 	else
 		conf |= MII_PORTSELECT;
 	writel(conf, &mac_p->conf);
+}
+
+static int dwc_ether_open(struct eth_device *dev)
+{
+	struct dw_eth_dev *priv = dev->priv;
+	struct eth_mac_regs *mac_p = priv->mac_regs_p;
+	struct eth_dma_regs *dma_p = priv->dma_regs_p;
+	int ret;
+
+	ret = phy_device_connect(dev, &priv->miibus, priv->phy_addr,
+				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
 
 	descs_init(dev);
 
@@ -373,7 +377,7 @@ static int dwc_ether_probe(struct device_d *dev)
 {
 	struct dw_eth_dev *priv;
 	struct eth_device *edev;
-	struct mii_device *miidev;
+	struct mii_bus *miibus;
 	void __iomem *base;
 	struct dwc_ether_platform_data *pdata = dev->platform_data;
 
@@ -397,7 +401,7 @@ static int dwc_ether_probe(struct device_d *dev)
 	priv->fix_mac_speed = pdata->fix_mac_speed;
 
 	edev = &priv->netdev;
-	miidev = &priv->miidev;
+	miibus = &priv->miibus;
 	edev->priv = priv;
 
 	edev->init = dwc_ether_init;
@@ -408,12 +412,12 @@ static int dwc_ether_probe(struct device_d *dev)
 	edev->get_ethaddr = dwc_ether_get_ethaddr;
 	edev->set_ethaddr = dwc_ether_set_ethaddr;
 
-	miidev->address = pdata->phy_addr;
-	miidev->read = dwc_ether_mii_read;
-	miidev->write = dwc_ether_mii_write;
-	miidev->edev = edev;
+	priv->phy_addr = pdata->phy_addr;
+	miibus->read = dwc_ether_mii_read;
+	miibus->write = dwc_ether_mii_write;
+	miibus->priv = priv;
 
-	mii_register(miidev);
+	mdiobus_register(miibus);
 	eth_register(edev);
 	return 0;
 }
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 0222d98..ac18be2 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -26,12 +26,12 @@
 #include <init.h>
 #include <common.h>
 #include <driver.h>
-#include <miidev.h>
 #include <net.h>
 #include <io.h>
 #include <xfuncs.h>
 #include <dm9000.h>
 #include <errno.h>
+#include <linux/phy.h>
 
 #define DM9K_ID		0x90000A46
 #define CHIPR_DM9000A	0x19
@@ -160,7 +160,7 @@
 struct dm9k {
 	void __iomem *iobase;
 	void __iomem *iodata;
-	struct mii_device miidev;
+	struct mii_bus miibus;
 	int buswidth;
 	int srom;
 	uint8_t pckt[2048];
@@ -353,12 +353,11 @@ static void dm9k_wd(int b_width, void __iomem *port, const void *src, int length
 
 /* ----------------- end of data move functions -------------------------- */
 
-static int dm9k_phy_read(struct mii_device *mdev, int addr, int reg)
+static int dm9k_phy_read(struct mii_bus *bus, int addr, int reg)
 {
 	unsigned val;
-	struct eth_device *edev = mdev->edev;
-	struct device_d *dev = edev->parent;
-	struct dm9k *priv = edev->priv;
+	struct dm9k *priv = bus->priv;
+	struct device_d *dev = &bus->dev;
 
 	/* Fill the phyxcer register into REG_0C */
 	dm9k_iow(priv, DM9K_EPAR, DM9K_PHY | reg);
@@ -374,11 +373,10 @@ static int dm9k_phy_read(struct mii_device *mdev, int addr, int reg)
 	return val;
 }
 
-static int dm9k_phy_write(struct mii_device *mdev, int addr, int reg, int val)
+static int dm9k_phy_write(struct mii_bus *bus, int addr, int reg, u16 val)
 {
-	struct eth_device *edev = mdev->edev;
-	struct device_d *dev = edev->parent;
-	struct dm9k *priv = edev->priv;
+	struct dm9k *priv = bus->priv;
+	struct device_d *dev = &bus->dev;
 
 	/* Fill the phyxcer register into REG_0C */
 	dm9k_iow(priv, DM9K_EPAR, DM9K_PHY | reg);
@@ -397,7 +395,7 @@ static int dm9k_phy_write(struct mii_device *mdev, int addr, int reg, int val)
 
 static int dm9k_check_id(struct dm9k *priv)
 {
-	struct device_d *dev = priv->miidev.parent;
+	struct device_d *dev = priv->miibus.parent;
 	u32 id;
 	char c;
 
@@ -461,7 +459,7 @@ static void dm9k_enable(struct dm9k *priv)
 
 static void dm9k_reset(struct dm9k *priv)
 {
-	struct device_d *dev = priv->miidev.parent;
+	struct device_d *dev = priv->miibus.parent;
 
 	dev_dbg(dev, "%s\n", __func__);
 	dm9k_iow(priv, DM9K_NCR, NCR_RST);
@@ -472,9 +470,8 @@ static int dm9k_eth_open(struct eth_device *edev)
 {
 	struct dm9k *priv = (struct dm9k *)edev->priv;
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
-	return 0;
+	return phy_device_connect(edev, &priv->miibus, 0, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
 }
 
 static void dm9k_write_length(struct dm9k *priv, unsigned length)
@@ -485,7 +482,7 @@ static void dm9k_write_length(struct dm9k *priv, unsigned length)
 
 static int dm9k_wait_for_trans_end(struct dm9k *priv)
 {
-	struct device_d *dev = priv->miidev.parent;
+	struct device_d *dev = priv->miibus.parent;
 	static const uint64_t toffs = 1 * SECOND;
 	uint8_t status;
 	uint64_t start = get_time_ns();
@@ -511,7 +508,7 @@ static int dm9k_wait_for_trans_end(struct dm9k *priv)
 static int dm9k_eth_send(struct eth_device *edev, void *packet, int length)
 {
 	struct dm9k *priv = (struct dm9k *)edev->priv;
-	struct device_d *dev = priv->miidev.parent;
+	struct device_d *dev = priv->miibus.parent;
 
 	dev_dbg(dev, "%s: %d bytes\n", __func__, length);
 
@@ -537,7 +534,7 @@ static int dm9k_eth_send(struct eth_device *edev, void *packet, int length)
 static int dm9k_check_for_rx_packet(struct dm9k *priv)
 {
 	uint8_t status;
-	struct device_d *dev = priv->miidev.parent;
+	struct device_d *dev = priv->miibus.parent;
 
 	status = dm9k_ior(priv, DM9K_ISR);
 	if (!(status & ISR_PR))
@@ -550,7 +547,7 @@ static int dm9k_check_for_rx_packet(struct dm9k *priv)
 
 static int dm9k_validate_entry(struct dm9k *priv)
 {
-	struct device_d *dev = priv->miidev.parent;
+	struct device_d *dev = priv->miibus.parent;
 
 	uint8_t p_stat;
 	/*
@@ -696,9 +693,6 @@ static int dm9k_set_ethaddr(struct eth_device *edev, unsigned char *adr)
 
 static int dm9k_init_dev(struct eth_device *edev)
 {
-	struct dm9k *priv = (struct dm9k *)edev->priv;
-
-	miidev_restart_aneg(&priv->miidev);
 	return 0;
 }
 
@@ -740,12 +734,10 @@ static int dm9k_probe(struct device_d *dev)
 	edev->get_ethaddr = dm9k_get_ethaddr;
 	edev->parent = dev;
 
-	priv->miidev.read = dm9k_phy_read;
-	priv->miidev.write = dm9k_phy_write;
-	priv->miidev.address = 0;
-	priv->miidev.flags = 0;
-	priv->miidev.edev = edev;
-	priv->miidev.parent = dev;
+	priv->miibus.read = dm9k_phy_read;
+	priv->miibus.write = dm9k_phy_write;
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
 
 	/* RESET device */
 	dm9k_reset(priv);
@@ -778,7 +770,7 @@ static int dm9k_probe(struct device_d *dev)
 
 	dm9k_enable(priv);
 
-	mii_register(&priv->miidev);
+	mdiobus_register(&priv->miibus);
 	eth_register(edev);
 
 	return 0;
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index c28fb79..a14c0ea 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -34,17 +34,17 @@
 #include <command.h>
 #include <init.h>
 #include <malloc.h>
-#include <miidev.h>
 #include <io.h>
 #include <linux/types.h>
 #include <mach/ep93xx-regs.h>
+#include <linux/phy.h>
 #include "ep93xx.h"
 
 #define EP93XX_MAX_PKT_SIZE    1536
 
-static int ep93xx_phy_read(struct mii_device *mdev, int phy_addr, int phy_reg);
-static int ep93xx_phy_write(struct mii_device *mdev, int phy_addr, int phy_reg,
-			    int value);
+static int ep93xx_phy_read(struct mii_bus *bus, int phy_addr, int phy_reg);
+static int ep93xx_phy_write(struct mii_bus *bus, int phy_addr, int phy_reg,
+			    u16 value);
 
 static inline struct ep93xx_eth_priv *ep93xx_get_priv(struct eth_device *edev)
 {
@@ -199,9 +199,15 @@ static int ep93xx_eth_open(struct eth_device *edev)
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	struct mac_regs *regs = ep93xx_get_regs(edev);
 	int i;
+	int ret;
 
 	pr_debug("+ep93xx_eth_open\n");
 
+	ret = phy_device_connect(edev, &priv->miibus, 0, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
+
 	ep93xx_eth_reset(edev);
 
 	/* Reset the descriptor queues' current and end address values */
@@ -498,11 +504,10 @@ static int ep93xx_eth_probe(struct device_d *dev)
 	edev->set_ethaddr = ep93xx_eth_set_ethaddr;
 	edev->parent = dev;
 
-	priv->miidev.read = ep93xx_phy_read;
-	priv->miidev.write = ep93xx_phy_write;
-	priv->miidev.address = 0;
-	priv->miidev.flags = 0;
-	priv->miidev.parent = dev;
+	priv->miibus.read = ep93xx_phy_read;
+	priv->miibus.write = ep93xx_phy_write;
+	priv->miibus.parent = dev;
+	priv->miibus.priv = edev;
 
 	priv->tx_dq.base = calloc(NUMTXDESC,
 				sizeof(struct tx_descriptor));
@@ -532,7 +537,7 @@ static int ep93xx_eth_probe(struct device_d *dev)
 		goto eth_probe_failed_3;
 	}
 
-	mii_register(&priv->miidev);
+	mdiobus_register(&priv->miibus);
 	eth_register(edev);
 
 	ret = 0;
@@ -575,9 +580,9 @@ eth_probe_done:
 /**
  * Read a 16-bit value from an MII register.
  */
-static int ep93xx_phy_read(struct mii_device *mdev, int phy_addr, int phy_reg)
+static int ep93xx_phy_read(struct mii_bus *bus, int phy_addr, int phy_reg)
 {
-	struct mac_regs *regs = ep93xx_get_regs(mdev->edev);
+	struct mac_regs *regs = ep93xx_get_regs(bus->priv);
 	int value = -1;
 	uint32_t self_ctl;
 
@@ -618,10 +623,10 @@ static int ep93xx_phy_read(struct mii_device *mdev, int phy_addr, int phy_reg)
 /**
  * Write a 16-bit value to an MII register.
  */
-static int ep93xx_phy_write(struct mii_device *mdev, int phy_addr,
-			int phy_reg, int value)
+static int ep93xx_phy_write(struct mii_bus *bus, int phy_addr,
+			int phy_reg, u16 value)
 {
-	struct mac_regs *regs = ep93xx_get_regs(mdev->edev);
+	struct mac_regs *regs = ep93xx_get_regs(bus->priv);
 	uint32_t self_ctl;
 
 	pr_debug("+ep93xx_phy_write\n");
diff --git a/drivers/net/ep93xx.h b/drivers/net/ep93xx.h
index 875715f..4d50f70 100644
--- a/drivers/net/ep93xx.h
+++ b/drivers/net/ep93xx.h
@@ -141,7 +141,7 @@ struct ep93xx_eth_priv {
 	struct tx_descriptor_queue	tx_dq;
 	struct tx_status_queue		tx_sq;
 
-	struct mii_device miidev;
+	struct mii_bus miibus;
 };
 
 #endif
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 599a9b4..453185a 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -23,11 +23,11 @@
 #include <net.h>
 #include <init.h>
 #include <driver.h>
-#include <miidev.h>
 #include <fec.h>
 #include <io.h>
 #include <clock.h>
 #include <xfuncs.h>
+#include <linux/phy.h>
 
 #include <asm/mmu.h>
 
@@ -50,10 +50,9 @@ struct fec_frame {
 /*
  * MII-interface related functions
  */
-static int fec_miidev_read(struct mii_device *mdev, int phyAddr, int regAddr)
+static int fec_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
 {
-	struct eth_device *edev = mdev->edev;
-	struct fec_priv *fec = (struct fec_priv *)edev->priv;
+	struct fec_priv *fec = (struct fec_priv *)bus->priv;
 
 	uint32_t reg;		/* convenient holder for the PHY register */
 	uint32_t phy;		/* convenient holder for the PHY */
@@ -93,11 +92,10 @@ static int fec_miidev_read(struct mii_device *mdev, int phyAddr, int regAddr)
 	return readl(fec->regs + FEC_MII_DATA);
 }
 
-static int fec_miidev_write(struct mii_device *mdev, int phyAddr,
-	int regAddr, int data)
+static int fec_miibus_write(struct mii_bus *bus, int phyAddr,
+	int regAddr, u16 data)
 {
-	struct eth_device *edev = mdev->edev;
-	struct fec_priv *fec = (struct fec_priv *)edev->priv;
+	struct fec_priv *fec = (struct fec_priv *)bus->priv;
 
 	uint32_t reg;		/* convenient holder for the PHY register */
 	uint32_t phy;		/* convenient holder for the PHY */
@@ -347,12 +345,20 @@ static int fec_init(struct eth_device *dev)
 	/* size of each buffer */
 	writel(FEC_MAX_PKT_SIZE, fec->regs + FEC_EMRBR);
 
-	if (fec->xcv_type != SEVENWIRE)
-		miidev_restart_aneg(&fec->miidev);
-
 	return 0;
 }
 
+static void fec_update_linkspeed(struct eth_device *edev)
+{
+	struct fec_priv *fec = (struct fec_priv *)edev->priv;
+
+	if (edev->phydev->speed == SPEED_10) {
+		u32 rcntl = readl(fec->regs + FEC_R_CNTRL);
+		rcntl |= FEC_R_CNTRL_RMII_10T;
+		writel(rcntl, fec->regs + FEC_R_CNTRL);
+	}
+}
+
 /**
  * Start the FEC engine
  * @param[in] edev Our device to handle
@@ -363,6 +369,17 @@ static int fec_open(struct eth_device *edev)
 	int ret;
 	u32 ecr;
 
+	if (fec->xcv_type != SEVENWIRE) {
+		ret = phy_device_connect(edev, &fec->miibus, fec->phy_addr,
+					 fec_update_linkspeed, fec->phy_flags,
+					 fec->interface);
+		if (ret)
+			return ret;
+
+		if (fec->phy_init)
+			fec->phy_init(edev->phydev);
+	}
+
 	/*
 	 * Initialize RxBD/TxBD rings
 	 */
@@ -388,24 +405,6 @@ static int fec_open(struct eth_device *edev)
 	 */
 	fec_rx_task_enable(fec);
 
-	if (fec->xcv_type != SEVENWIRE) {
-		ret = miidev_wait_aneg(&fec->miidev);
-		if (ret)
-			return ret;
-
-		ret = miidev_get_status(&fec->miidev);
-		if (ret < 0)
-			return ret;
-
-		if (ret & MIIDEV_STATUS_IS_10MBIT) {
-			u32 rcntl = readl(fec->regs + FEC_R_CNTRL);
-			rcntl |= FEC_R_CNTRL_RMII_10T;
-			writel(rcntl, fec->regs + FEC_R_CNTRL);
-		}
-
-		miidev_print_status(&fec->miidev);
-	}
-
 	return 0;
 }
 
@@ -659,14 +658,30 @@ static int fec_probe(struct device_d *dev)
 	fec->xcv_type = pdata->xcv_type;
 
 	if (fec->xcv_type != SEVENWIRE) {
-		fec->miidev.read = fec_miidev_read;
-		fec->miidev.write = fec_miidev_write;
-		fec->miidev.address = pdata->phy_addr;
-		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
-		fec->miidev.edev = edev;
-		fec->miidev.parent = dev;
-
-		mii_register(&fec->miidev);
+		fec->phy_init = pdata->phy_init;
+		fec->miibus.read = fec_miibus_read;
+		fec->miibus.write = fec_miibus_write;
+		fec->phy_addr = pdata->phy_addr;
+		switch (pdata->xcv_type) {
+		case RMII:
+			fec->interface = PHY_INTERFACE_MODE_RMII;
+			break;
+		case RGMII:
+			fec->interface = PHY_INTERFACE_MODE_RGMII;
+			break;
+		case MII10:
+			fec->phy_flags = PHYLIB_FORCE_10;
+		case MII100:
+			fec->interface = PHY_INTERFACE_MODE_MII;
+			break;
+		case SEVENWIRE:
+			fec->interface = PHY_INTERFACE_MODE_NA;
+			break;
+		}
+		fec->miibus.priv = fec;
+		fec->miibus.parent = dev;
+
+		mdiobus_register(&fec->miibus);
 	}
 
 	eth_register(edev);
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index b75b4d6..c8e758b 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -137,7 +137,11 @@ struct fec_priv {
 	int rbd_index;				/* next receive BD to read   */
 	struct buffer_descriptor __iomem *tbd_base;	/* TBD ring                  */
 	int tbd_index;				/* next transmit BD to write */
-	struct mii_device miidev;
+	int phy_addr;
+	phy_interface_t interface;
+	u32 phy_flags;
+	struct mii_bus miibus;
+	void (*phy_init)(struct phy_device *dev);
 };
 
 /**
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index c3f2099..1f65014 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -11,12 +11,11 @@
 #include <malloc.h>
 #include <net.h>
 #include <init.h>
-#include <miidev.h>
 #include <driver.h>
 #include <mach/sdma.h>
 #include <mach/fec.h>
 #include <mach/clocks.h>
-#include <miidev.h>
+#include <linux/phy.h>
 #include "fec_mpc5200.h"
 
 #define CONFIG_PHY_ADDR 1 /* FIXME */
@@ -31,10 +30,9 @@ typedef struct {
 /*
  * MII-interface related functions
  */
-static int fec5xxx_miidev_read(struct mii_device *mdev, int phyAddr, int regAddr)
+static int fec5xxx_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
 {
-	struct eth_device *edev = mdev->edev;
-	mpc5xxx_fec_priv *fec = (mpc5xxx_fec_priv *)edev->priv;
+	mpc5xxx_fec_priv *fec = (mpc5xxx_fec_priv *)bus->priv;
 
 	uint32_t reg;		/* convenient holder for the PHY register */
 	uint32_t phy;		/* convenient holder for the PHY */
@@ -70,11 +68,10 @@ static int fec5xxx_miidev_read(struct mii_device *mdev, int phyAddr, int regAddr
 	return fec->eth->mii_data;
 }
 
-static int fec5xxx_miidev_write(struct mii_device *mdev, int phyAddr,
-	int regAddr, int data)
+static int fec5xxx_miibus_write(struct mii_bus *bus, int phyAddr,
+	int regAddr, u16 data)
 {
-	struct eth_device *edev = mdev->edev;
-	mpc5xxx_fec_priv *fec = (mpc5xxx_fec_priv *)edev->priv;
+	mpc5xxx_fec_priv *fec = (mpc5xxx_fec_priv *)bus->priv;
 
 	uint32_t reg;		/* convenient holder for the PHY register */
 	uint32_t phy;		/* convenient holder for the PHY */
@@ -381,9 +378,6 @@ static int mpc5xxx_fec_init(struct eth_device *dev)
 
 	debug("mpc5xxx_fec_init... Done \n");
 
-	if (fec->xcv_type != SEVENWIRE)
-		miidev_restart_aneg(&fec->miidev);
-
 	return 0;
 }
 
@@ -413,8 +407,8 @@ static int mpc5xxx_fec_open(struct eth_device *edev)
 	SDMA_TASK_ENABLE(FEC_RECV_TASK_NO);
 
 	if (fec->xcv_type != SEVENWIRE) {
-		miidev_wait_aneg(&fec->miidev);
-		miidev_print_status(&fec->miidev);
+		return phy_device_connect(edev, &fec->miibus, CONFIG_PHY_ADDR,
+				 NULL, fec->phy_flags, fec->interface);
 	}
 
 	return 0;
@@ -556,7 +550,7 @@ static int mpc5xxx_fec_send(struct eth_device *dev, void *eth_data,
 	 */
 	if (fec->xcv_type != SEVENWIRE) {
 		uint16_t phyStatus;
-		phyStatus = fec5xxx_miidev_read(&fec->miidev, 0, 0x1);
+		phyStatus = fec5xxx_miibus_read(&fec->miibus, 0, 0x1);
 	}
 
 	/*
@@ -683,14 +677,28 @@ int mpc5xxx_fec_probe(struct device_d *dev)
 	loadtask(0, 2);
 
 	if (fec->xcv_type != SEVENWIRE) {
-		fec->miidev.read = fec5xxx_miidev_read;
-		fec->miidev.write = fec5xxx_miidev_write;
-		fec->miidev.address = CONFIG_PHY_ADDR;
-		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
-		fec->miidev.edev = edev;
-		fec->miidev.parent = dev;
-
-		mii_register(&fec->miidev);
+		fec->miibus.read = fec5xxx_miibus_read;
+		fec->miibus.write = fec5xxx_miibus_write;
+		switch (pdata->xcv_type) {
+		case RMII:
+			fec->interface = PHY_INTERFACE_MODE_RMII;
+			break;
+		case RGMII:
+			fec->interface = PHY_INTERFACE_MODE_RGMII;
+			break;
+		case MII10:
+			fec->phy_flags = PHYLIB_FORCE_10;
+		case MII100:
+			fec->interface = PHY_INTERFACE_MODE_MII;
+			break;
+		case SEVENWIRE:
+			fec->interface = PHY_INTERFACE_MODE_NA;
+			break;
+		}
+		fec->miibus.priv = fec;
+		fec->miibus.parent = dev;
+
+		mdiobus_register(&fec->miibus);
 	}
 
 	eth_register(edev);
diff --git a/drivers/net/fec_mpc5200.h b/drivers/net/fec_mpc5200.h
index f6da3e5..20ac607 100644
--- a/drivers/net/fec_mpc5200.h
+++ b/drivers/net/fec_mpc5200.h
@@ -260,7 +260,9 @@ typedef struct {
 	uint16_t usedTbdIndex;		/* next transmit BD to clean */
 	uint16_t cleanTbdNum;		/* the number of available transmit BDs */
 
-	struct mii_device miidev;
+	phy_interface_t interface;
+	u32 phy_flags;
+	struct mii_bus miibus;
 } mpc5xxx_fec_priv;
 
 /* Ethernet parameter area */
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 19544de..20fd102 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -17,10 +17,10 @@
 #include <net.h>
 #include <init.h>
 #include <driver.h>
-#include <miidev.h>
 #include <command.h>
 #include <errno.h>
 #include <asm/io.h>
+#include <linux/phy.h>
 #include "gianfar.h"
 
 /* 2 seems to be the minimum number of TX descriptors to make it work. */
@@ -80,22 +80,16 @@ static void gfar_init_registers(void __iomem *regs)
 static void gfar_adjust_link(struct eth_device *edev)
 {
 	struct gfar_private *priv = edev->priv;
-	struct device_d *mdev = priv->miidev.parent;
 	void __iomem *regs = priv->regs;
 	u32 ecntrl, maccfg2;
 	uint32_t status;
 
-	status = miidev_get_status(&priv->miidev);
+	priv->link = edev->phydev->link;
+	priv->duplexity =edev->phydev->duplex;
 
-	priv->link = status & MIIDEV_STATUS_IS_UP;
-	if (status & MIIDEV_STATUS_IS_FULL_DUPLEX)
-		priv->duplexity = 1;
-	else
-		priv->duplexity = 0;
-
-	if (status & MIIDEV_STATUS_IS_1000MBIT)
+	if (edev->phydev->speed == SPEED_1000)
 		priv->speed = 1000;
-	else if (status & MIIDEV_STATUS_IS_100MBIT)
+	if (edev->phydev->speed == SPEED_100)
 		priv->speed = 100;
 	else
 		priv->speed = 10;
@@ -128,18 +122,18 @@ static void gfar_adjust_link(struct eth_device *edev)
 				ecntrl |= GFAR_ECNTRL_R100;
 			break;
 		default:
-			dev_info(mdev, "Speed is unknown\n");
+			dev_info(&edev->dev, "Speed is unknown\n");
 			break;
 		}
 
 		out_be32(regs + GFAR_ECNTRL_OFFSET, ecntrl);
 		out_be32(regs + GFAR_MACCFG2_OFFSET, maccfg2);
 
-		dev_info(mdev, "Speed: %d, %s duplex\n", priv->speed,
+		dev_info(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
 		       (priv->duplexity) ? "full" : "half");
 
 	} else {
-		dev_info(mdev, "No link.\n");
+		dev_info(&edev->dev, "No link.\n");
 	}
 }
 
@@ -184,8 +178,6 @@ static int gfar_init(struct eth_device *edev)
 
 	gfar_init_registers(regs);
 
-	miidev_restart_aneg(&priv->miidev);
-
 	return  0;
 }
 
@@ -194,6 +186,12 @@ static int gfar_open(struct eth_device *edev)
 	int ix;
 	struct gfar_private *priv = edev->priv;
 	void __iomem *regs = priv->regs;
+	int ret;
+
+	ret = phy_device_connect(edev, &priv->miibus, priv->phyaddr,
+				 gfar_adjust_link, 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
 
 	/* Point to the buffer descriptors */
 	out_be32(regs + GFAR_TBASE0_OFFSET, (unsigned int)priv->txbd);
@@ -215,9 +213,6 @@ static int gfar_open(struct eth_device *edev)
 	}
 	priv->txbd[TX_BUF_CNT - 1].status |= TXBD_WRAP;
 
-	miidev_wait_aneg(&priv->miidev);
-	gfar_adjust_link(edev);
-
 	/* Enable Transmit and Receive */
 	setbits_be32(regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_RX_EN |
 			GFAR_MACCFG1_TX_EN);
@@ -437,11 +432,10 @@ static int gfar_recv(struct eth_device *edev)
 }
 
 /* Read a MII PHY register. */
-static int gfar_miiphy_read(struct mii_device *mdev, int addr, int reg)
+static int gfar_miiphy_read(struct mii_bus *bus, int addr, int reg)
 {
-	struct eth_device *edev = mdev->edev;
-	struct device_d *dev = edev->parent;
-	struct gfar_private *priv = edev->priv;
+	struct device_d *dev = bus->parent;
+	struct gfar_private *priv = bus->priv;
 	int ret;
 
 	ret = gfar_local_mdio_read(priv->phyregs, addr, reg);
@@ -452,12 +446,11 @@ static int gfar_miiphy_read(struct mii_device *mdev, int addr, int reg)
 }
 
 /* Write a MII PHY register.  */
-static int gfar_miiphy_write(struct mii_device *mdev, int addr, int reg,
-				int value)
+static int gfar_miiphy_write(struct mii_bus *bus, int addr, int reg,
+				u16 value)
 {
-	struct eth_device *edev = mdev->edev;
-	struct device_d *dev = edev->parent;
-	struct gfar_private *priv = edev->priv;
+	struct device_d *dev = bus->parent;
+	struct gfar_private *priv = bus->priv;
 	unsigned short val = value;
 	int ret;
 
@@ -520,16 +513,14 @@ static int gfar_probe(struct device_d *dev)
 	udelay(2);
 	clrbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
 
-	priv->miidev.read = gfar_miiphy_read;
-	priv->miidev.write = gfar_miiphy_write;
-	priv->miidev.address = priv->phyaddr;
-	priv->miidev.flags = 0;
-	priv->miidev.edev = edev;
-	priv->miidev.parent = dev;
+	priv->miibus.read = gfar_miiphy_read;
+	priv->miibus.write = gfar_miiphy_write;
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
 
 	gfar_init_phy(edev);
 
-	mii_register(&priv->miidev);
+	mdiobus_register(&priv->miibus);
 
 	return eth_register(edev);
 }
diff --git a/drivers/net/gianfar.h b/drivers/net/gianfar.h
index a4ad99e..b52cc5a 100644
--- a/drivers/net/gianfar.h
+++ b/drivers/net/gianfar.h
@@ -269,7 +269,7 @@ struct gfar_private {
 	void __iomem *phyregs;
 	void __iomem *phyregs_sgmii;
 	struct phy_info *phyinfo;
-	struct mii_device miidev;
+	struct mii_bus miibus;
 	volatile struct txbd8 *txbd;
 	volatile struct rxbd8 *rxbd;
 	uint txidx;
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 71391cc..926c433 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -26,13 +26,13 @@
 
 #include <command.h>
 #include <net.h>
-#include <miidev.h>
 #include <malloc.h>
 #include <init.h>
 #include <xfuncs.h>
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
+#include <linux/phy.h>
 
 #define MAX_RECV_FRAMES			32
 #define MAX_BUF_SIZE			2048
@@ -372,7 +372,7 @@
 
 struct ks_net {
 	struct eth_device	edev;
-	struct mii_device	miidev;
+	struct mii_bus	miibus;
 	void __iomem		*hw_addr;
 	void __iomem		*hw_addr_cmd;
 	struct platform_device	*pdev;
@@ -536,10 +536,9 @@ static int ks_phy_reg(int reg)
  * caller. The mii-tool that the driver was tested with takes any -ve error
  * as real PHY capabilities, thus displaying incorrect data to the user.
  */
-static int ks_phy_read(struct mii_device *mdev, int addr, int reg)
+static int ks_phy_read(struct mii_bus *bus, int addr, int reg)
 {
-	struct eth_device *edev = mdev->edev;
-	struct ks_net *priv = (struct ks_net *)edev->priv;
+	struct ks_net *priv = (struct ks_net *)bus->priv;
 	int ksreg;
 	int result;
 
@@ -552,10 +551,9 @@ static int ks_phy_read(struct mii_device *mdev, int addr, int reg)
 	return result;
 }
 
-static int ks_phy_write(struct mii_device *mdev, int addr, int reg, int val)
+static int ks_phy_write(struct mii_bus *bus, int addr, int reg, u16 val)
 {
-	struct eth_device *edev = mdev->edev;
-	struct ks_net *priv = (struct ks_net *)edev->priv;
+	struct ks_net *priv = (struct ks_net *)bus->priv;
 	int ksreg;
 
 	ksreg = ks_phy_reg(reg);
@@ -783,11 +781,14 @@ static int ks8851_eth_open(struct eth_device *edev)
 {
 	struct ks_net *priv = (struct ks_net *)edev->priv;
 	struct device_d *dev = &edev->dev;
+	int ret;
 
 	ks_enable_qmu(priv);
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
+	ret = phy_device_connect(edev, &priv->miibus, 1, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
 
 	dev_dbg(dev, "eth_open\n");
 
@@ -796,9 +797,6 @@ static int ks8851_eth_open(struct eth_device *edev)
 
 static int ks8851_init_dev(struct eth_device *edev)
 {
-	struct ks_net *priv = (struct ks_net *)edev->priv;
-
-	miidev_restart_aneg(&priv->miidev);
 	return 0;
 }
 
@@ -842,12 +840,10 @@ static int ks8851_probe(struct device_d *dev)
 	edev->parent = dev;
 
 	/* setup mii state */
-	ks->miidev.read = ks_phy_read;
-	ks->miidev.write = ks_phy_write;
-	ks->miidev.address = 1;
-	ks->miidev.flags = 0;
-	ks->miidev.edev = edev;
-	ks->miidev.parent = dev;
+	ks->miibus.read = ks_phy_read;
+	ks->miibus.write = ks_phy_write;
+	ks->miibus.priv = ks;
+	ks->miibus.parent = dev;
 
 	/* simple check for a valid chip being connected to the bus */
 
@@ -868,7 +864,7 @@ static int ks8851_probe(struct device_d *dev)
 	ks_soft_reset(ks, GRR_GSR);
 	ks_setup(ks);
 
-	mii_register(&ks->miidev);
+	mdiobus_register(&ks->miibus);
 	eth_register(edev);
 	dev_dbg(dev, "%s MARL 0x%04x MARM 0x%04x MARH 0x%04x\n", __func__,
 		ks_rdreg16(ks, KS_MARL), ks_rdreg16(ks, KS_MARM),
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index feffea5..feb8ac6 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -44,13 +44,13 @@
 #include <malloc.h>
 #include <xfuncs.h>
 #include <init.h>
-#include <miidev.h>
 #include <errno.h>
 #include <io.h>
 #include <mach/board.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm/mmu.h>
+#include <linux/phy.h>
 
 #include "macb.h"
 
@@ -97,12 +97,16 @@ struct macb_device {
 	struct macb_dma_desc	*rx_ring;
 	struct macb_dma_desc	*tx_ring;
 
+	int			phy_addr;
+
 	const struct device	*dev;
 	struct eth_device	netdev;
 
-	struct mii_device	miidev;
+	phy_interface_t		interface;
+
+	struct mii_bus	miibus;
 
-	unsigned int		flags;
+	unsigned int		phy_flags;
 };
 
 static int macb_send(struct eth_device *edev, void *packet,
@@ -214,26 +218,32 @@ static int macb_recv(struct eth_device *edev)
 	return 0;
 }
 
-static int macb_open(struct eth_device *edev)
+static void macb_adjust_link(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
-	int duplex = 1, speed = 1;
-	u32 ncfgr;
+	u32 reg;
 
-	debug("%s\n", __func__);
+	reg = readl(macb->regs + MACB_NCFGR);
+	reg &= ~(MACB_BIT(SPD) | MACB_BIT(FD));
 
-	miidev_wait_aneg(&macb->miidev);
-	miidev_print_status(&macb->miidev);
+	if (edev->phydev->duplex)
+		reg |= MACB_BIT(FD);
+	if (edev->phydev->speed == SPEED_100)
+		reg |= MACB_BIT(SPD);
 
-	ncfgr = readl(macb->regs + MACB_NCFGR);
-	ncfgr &= ~(MACB_BIT(SPD) | MACB_BIT(FD));
-	if (speed)
-		ncfgr |= MACB_BIT(SPD);
-	if (duplex)
-		ncfgr |= MACB_BIT(FD);
-	writel(ncfgr, macb->regs + MACB_NCFGR);
+	writel(reg, macb->regs + MACB_NCFGR);
+}
 
-	return 0;
+static int macb_open(struct eth_device *edev)
+{
+	struct macb_device *macb = edev->priv;
+
+	debug("%s\n", __func__);
+
+	/* Obtain the PHY's address/id */
+	return phy_device_connect(edev, &macb->miibus, macb->phy_addr,
+			       macb_adjust_link, macb->phy_flags,
+			       macb->interface);
 }
 
 static int macb_init(struct eth_device *edev)
@@ -267,7 +277,7 @@ static int macb_init(struct eth_device *edev)
 	writel((ulong)macb->rx_ring, macb->regs + MACB_RBQP);
 	writel((ulong)macb->tx_ring, macb->regs + MACB_TBQP);
 
-	if (macb->flags & AT91SAM_ETHER_RMII)
+	if (macb->interface == PHY_INTERFACE_MODE_RMII)
 		val |= MACB_BIT(RMII);
 	else
 		val &= ~MACB_BIT(RMII);
@@ -301,10 +311,9 @@ static void macb_halt(struct eth_device *edev)
 	writel(MACB_BIT(CLRSTAT), macb->regs + MACB_NCR);
 }
 
-static int macb_phy_read(struct mii_device *mdev, int addr, int reg)
+static int macb_phy_read(struct mii_bus *bus, int addr, int reg)
 {
-	struct eth_device *edev = mdev->edev;
-	struct macb_device *macb = edev->priv;
+	struct macb_device *macb = bus->priv;
 
 	unsigned long netctl;
 	unsigned long netstat;
@@ -344,10 +353,9 @@ static int macb_phy_read(struct mii_device *mdev, int addr, int reg)
 	return value;
 }
 
-static int macb_phy_write(struct mii_device *mdev, int addr, int reg, int value)
+static int macb_phy_write(struct mii_bus *bus, int addr, int reg, u16 value)
 {
-	struct eth_device *edev = mdev->edev;
-	struct macb_device *macb = edev->priv;
+	struct macb_device *macb = bus->priv;
 	unsigned long netctl;
 	unsigned long netstat;
 	unsigned long frame;
@@ -428,14 +436,19 @@ static int macb_probe(struct device_d *dev)
 	edev->set_ethaddr = macb_set_ethaddr;
 	edev->parent = dev;
 
-	macb->miidev.read = macb_phy_read;
-	macb->miidev.write = macb_phy_write;
-	macb->miidev.address = pdata->phy_addr;
-	macb->miidev.flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
-		MIIDEV_FORCE_LINK : 0;
-	macb->miidev.edev = edev;
-	macb->miidev.parent = dev;
-	macb->flags = pdata->flags;
+	macb->miibus.read = macb_phy_read;
+	macb->miibus.write = macb_phy_write;
+	macb->phy_addr = pdata->phy_addr;
+	macb->miibus.priv = macb;
+	macb->miibus.parent = dev;
+
+	if (pdata->flags & AT91SAM_ETHER_RMII) {
+		macb->interface = PHY_INTERFACE_MODE_RGMII;
+	} else {
+		macb->interface = PHY_INTERFACE_MODE_MII;
+		macb->phy_flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
+					PHYLIB_FORCE_LINK : 0;
+	}
 
 	macb->rx_buffer = dma_alloc_coherent(CFG_MACB_RX_BUFFER_SIZE);
 	macb->rx_ring = dma_alloc_coherent(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
@@ -470,7 +483,7 @@ static int macb_probe(struct device_d *dev)
 
 	writel(ncfgr, macb->regs + MACB_NCFGR);
 
-	mii_register(&macb->miidev);
+	mdiobus_register(&macb->miibus);
 	eth_register(edev);
 
 	return 0;
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
deleted file mode 100644
index e0f9d67..0000000
--- a/drivers/net/miidev.c
+++ /dev/null
@@ -1,316 +0,0 @@
-/*
- * miidev.c - generic phy abstraction
- *
- * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- */
-
-#include <common.h>
-#include <driver.h>
-#include <init.h>
-#include <miidev.h>
-#include <clock.h>
-#include <net.h>
-#include <malloc.h>
-
-static LIST_HEAD(miidev_list);
-
-int miidev_restart_aneg(struct mii_device *mdev)
-{
-	int status, timeout;
-	uint64_t start;
-
-	status = mii_write(mdev, mdev->address, MII_BMCR, BMCR_RESET);
-	if (status)
-		return status;
-
-	start = get_time_ns();
-	do {
-		status = mii_read(mdev, mdev->address, MII_BMCR);
-		if (status < 0)
-			return status;
-
-		if (is_timeout(start, SECOND))
-			return -ETIMEDOUT;
-
-	} while (status & BMCR_RESET);
-
-	if (mdev->flags & MIIDEV_FORCE_LINK)
-		return 0;
-
-	if (mdev->flags & MIIDEV_FORCE_10) {
-		printf("Forcing 10 Mbps ethernet link... ");
-
-		status = mii_read(mdev, mdev->address, MII_BMSR);
-		if (status < 0)
-			return status;
-
-		status = mii_write(mdev, mdev->address, MII_BMCR, BMCR_FULLDPLX | BMCR_CTST);
-		if (status)
-			return status;
-
-		timeout = 20;
-		do {	/* wait for link status to go down */
-			udelay(10000);
-			if ((timeout--) == 0) {
-				debug("hmmm, should not have waited...");
-				break;
-			}
-			status = mii_read(mdev, mdev->address, MII_BMSR);
-			if (status < 0)
-				return status;
-		} while (status & BMSR_LSTATUS);
-
-	} else {	/* MII100 */
-		/*
-		 * Set the auto-negotiation advertisement register bits
-		 */
-		status = mii_read(mdev, mdev->address, MII_ADVERTISE);
-		if (status < 0)
-			return status;
-
-		status |= ADVERTISE_ALL;
-
-		status = mii_write(mdev, mdev->address, MII_ADVERTISE, status);
-		if (status)
-			return status;
-
-		status = mii_write(mdev, mdev->address, MII_BMCR, BMCR_ANENABLE | BMCR_ANRESTART);
-		if (status)
-			return status;
-	}
-
-	return 0;
-}
-
-int miidev_wait_aneg(struct mii_device *mdev)
-{
-	int status;
-	uint64_t start = get_time_ns();
-
-	if (mdev->flags & MIIDEV_FORCE_LINK)
-		return 0;
-
-	do {
-		status = mii_read(mdev, mdev->address, MII_BMSR);
-		if (status < 0)
-			return status;
-
-		if (is_timeout(start, 5 * SECOND)) {
-			printf("%s: Autonegotiation timeout\n", mdev->cdev.name);
-			return -ETIMEDOUT;
-		}
-
-	} while (!(status & BMSR_ANEGCOMPLETE));
-
-	return 0;
-}
-
-int miidev_get_status(struct mii_device *mdev)
-{
-	int ret, status, adv, lpa;
-
-	ret = mii_read(mdev, mdev->address, MII_BMSR);
-	if (ret < 0)
-		goto err_out;
-
-	status = ret & BMSR_LSTATUS ? MIIDEV_STATUS_IS_UP : 0;
-
-	if (ret & BMSR_ESTATEN) {
-		ret = mii_read(mdev, mdev->address, MII_ESTATUS);
-		if (ret < 0)
-			goto err_out;
-		if (ret & (ESTATUS_1000_TFULL | ESTATUS_1000_THALF))
-			mdev->capabilities = MIIDEV_CAPABLE_1000M;
-	}
-
-	ret = mii_read(mdev, mdev->address, MII_BMCR);
-	if (ret < 0)
-		goto err_out;
-
-	if (ret & BMCR_ANENABLE) {
-		if (mdev->capabilities & MIIDEV_CAPABLE_1000M) {
-			lpa = mii_read(mdev, mdev->address, MII_STAT1000);
-			if (lpa < 0)
-				goto err_out;
-			adv = mii_read(mdev, mdev->address, MII_CTRL1000);
-			if (adv < 0)
-				goto err_out;
-			lpa &= adv << 2;
-			if (lpa & (LPA_1000FULL | LPA_1000HALF)) {
-				if (lpa & LPA_1000FULL)
-				       status |= MIIDEV_STATUS_IS_FULL_DUPLEX;
-				status |= MIIDEV_STATUS_IS_1000MBIT;
-				return status;
-			}
-		}
-		lpa = mii_read(mdev, mdev->address, MII_LPA);
-		if (lpa < 0)
-			goto err_out;
-		adv = mii_read(mdev, mdev->address, MII_ADVERTISE);
-		if (adv < 0)
-			goto err_out;
-		lpa &= adv;
-		status |= lpa & LPA_DUPLEX ? MIIDEV_STATUS_IS_FULL_DUPLEX : 0;
-		status |= lpa & LPA_100 ? MIIDEV_STATUS_IS_100MBIT :
-			MIIDEV_STATUS_IS_10MBIT;
-	} else {
-		status |= ret & BMCR_FULLDPLX ? MIIDEV_STATUS_IS_FULL_DUPLEX : 0;
-		status |= ret & BMCR_SPEED100 ? MIIDEV_STATUS_IS_100MBIT :
-			MIIDEV_STATUS_IS_10MBIT;
-	}
-
-	return status;
-err_out:
-	printf("%s: failed to read (%d)\n", mdev->cdev.name, ret);
-	return ret;
-}
-
-int miidev_print_status(struct mii_device *mdev)
-{
-	char *duplex;
-	int speed, status;
-
-	if (mdev->flags & MIIDEV_FORCE_LINK) {
-		printf("Forcing link present...\n");
-		return 0;
-	}
-
-	status = miidev_get_status(mdev);
-	if (status < 0)
-		return status;
-
-	duplex = status & MIIDEV_STATUS_IS_FULL_DUPLEX ? "Full" : "Half";
-	speed = status & MIIDEV_STATUS_IS_1000MBIT ? 1000 :
-		(status & MIIDEV_STATUS_IS_100MBIT ? 100 : 10);
-
-	printf("%s: Link is %s", mdev->cdev.name,
-			status & MIIDEV_STATUS_IS_UP ? "up" : "down");
-	printf(" - %d/%s\n", speed, duplex);
-
-	return 0;
-}
-
-static ssize_t miidev_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
-{
-	int i = count;
-	uint16_t *buf = _buf;
-	struct mii_device *mdev = cdev->priv;
-
-	while (i > 0) {
-		*buf = mii_read(mdev, mdev->address, offset / 2);
-		buf++;
-		i -= 2;
-		offset += 2;
-	}
-
-	return count;
-}
-
-static ssize_t miidev_write(struct cdev *cdev, const void *_buf, size_t count, loff_t offset, ulong flags)
-{
-	int i = count;
-	const uint16_t *buf = _buf;
-	struct mii_device *mdev = cdev->priv;
-
-	while (i > 0) {
-		mii_write(mdev, mdev->address, offset / 2, *buf);
-		buf++;
-		i -= 2;
-		offset += 2;
-	}
-
-	return count;
-}
-
-static struct file_operations miidev_ops = {
-	.read  = miidev_read,
-	.write = miidev_write,
-	.lseek = dev_lseek_default,
-};
-
-static int miidev_probe(struct device_d *dev)
-{
-	struct mii_device *mdev = dev->priv;
-
-	mdev->capabilities = 0;
-	mdev->cdev.name = asprintf("phy%d", dev->id);
-	mdev->cdev.size = 64;
-	mdev->cdev.ops = &miidev_ops;
-	mdev->cdev.priv = mdev;
-	mdev->cdev.dev = dev;
-	devfs_create(&mdev->cdev);
-	list_add_tail(&mdev->list, &miidev_list);
-	return 0;
-}
-
-static void miidev_remove(struct device_d *dev)
-{
-	struct mii_device *mdev = dev->priv;
-
-	list_del(&mdev->list);
-
-	free(mdev->cdev.name);
-	devfs_remove(&mdev->cdev);
-}
-
-struct mii_device *mii_open(const char *name)
-{
-	struct mii_device *mdev;
-
-	list_for_each_entry(mdev, &miidev_list, list) {
-		if (!strcmp(name, mdev->cdev.name))
-			return mdev;
-	}
-	return NULL;
-}
-
-void mii_close(struct mii_device *mdev)
-{
-}
-
-static struct driver_d miidev_drv = {
-        .name  = "miidev",
-        .probe = miidev_probe,
-	.remove = miidev_remove,
-};
-
-int mii_register(struct mii_device *mdev)
-{
-	mdev->dev.priv = mdev;
-	mdev->dev.id = DEVICE_ID_DYNAMIC;
-	strcpy(mdev->dev.name, "miidev");
-	if (mdev->parent)
-		dev_add_child(mdev->parent, &mdev->dev);
-
-	return register_device(&mdev->dev);
-}
-
-void mii_unregister(struct mii_device *mdev)
-{
-	unregister_device(&mdev->dev);
-}
-
-static int miidev_init(void)
-{
-	register_driver(&miidev_drv);
-	return 0;
-}
-
-device_initcall(miidev_init);
-
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 2d92a2e..a476425 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -2,13 +2,13 @@
 #include <command.h>
 #include <net.h>
 #include <io.h>
-#include <miidev.h>
 #include <mach/netx-xc.h>
 #include <mach/netx-eth.h>
 #include <mach/netx-regs.h>
 #include <xfuncs.h>
 #include <init.h>
 #include <driver.h>
+#include <linux/phy.h>
 
 #define ETH_MAC_LOCAL_CONFIG 0x1560
 #define ETH_MAC_4321         0x1564
@@ -47,7 +47,7 @@
 #define CON_FIFO_PORT_LO(xcno)  (6 + ((xcno) << 3))    /* Index of the FIFO where sent Data packages are confirmed */
 
 struct netx_eth_priv {
-	struct mii_device miidev;
+	struct mii_bus miibus;
 	int xcno;
 };
 
@@ -118,7 +118,7 @@ static int netx_eth_rx (struct eth_device *edev)
 	return 0;
 }
 
-static int netx_miidev_read(struct mii_device *mdev, int phy_addr, int reg)
+static int netx_miibus_read(struct mii_bus *bus, int phy_addr, int reg)
 {
 	int value;
 
@@ -135,8 +135,8 @@ static int netx_miidev_read(struct mii_device *mdev, int phy_addr, int reg)
 	return value;
 }
 
-static int netx_miidev_write(struct mii_device *mdev, int phy_addr,
-	int reg, int val)
+static int netx_miibus_write(struct mii_bus *bus, int phy_addr,
+	int reg, u16 val)
 {
 	debug("%s: addr: 0x%02x reg: 0x%02x val: 0x%04x\n",__func__,
 	      phy_addr, reg, val);
@@ -189,13 +189,15 @@ static int netx_eth_init_dev(struct eth_device *edev)
 	for (i = 2; i <= 18; i++)
 		PFIFO_REG( PFIFO_BASE(EMPTY_PTR_FIFO(xcno)) ) = FIFO_PTR_FRAMENO(i) | FIFO_PTR_SEGMENT(xcno);
 
-	miidev_restart_aneg(&priv->miidev);
 	return 0;
 }
 
 static int netx_eth_open(struct eth_device *edev)
 {
-	return 0;
+	struct netx_eth_priv *priv = (struct netx_eth_priv *)edev->priv;
+
+	return phy_device_connect(edev, &priv->miibus, 0, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
 }
 
 static void netx_eth_halt (struct eth_device *edev)
@@ -259,14 +261,12 @@ static int netx_eth_probe(struct device_d *dev)
 	edev->set_ethaddr = netx_eth_set_ethaddr;
 	edev->parent = dev;
 
-	priv->miidev.read = netx_miidev_read;
-	priv->miidev.write = netx_miidev_write;
-	priv->miidev.address = 0;
-	priv->miidev.flags = 0;
-	priv->miidev.parent = dev;
+	priv->miibus.read = netx_miibus_read;
+	priv->miibus.write = netx_miibus_write;
+	priv->miibus.parent = dev;
 
 	netx_eth_init_phy();
-	mii_register(&priv->miidev);
+	mdiobus_register(&priv->miibus);
 	eth_register(edev);
 
         return 0;
diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
new file mode 100644
index 0000000..b66261a
--- /dev/null
+++ b/drivers/net/phy/Kconfig
@@ -0,0 +1,17 @@
+#
+# PHY Layer Configuration
+#
+
+menu "phylib                       "
+
+if PHYLIB
+
+comment "MII PHY device drivers"
+
+config GENERIC_PHY
+	bool "Drivers for the Generic PHYs"
+	default y
+
+endif
+
+endmenu
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
new file mode 100644
index 0000000..82e90d4
--- /dev/null
+++ b/drivers/net/phy/Makefile
@@ -0,0 +1,2 @@
+obj-y += phy.o mdio_bus.o
+obj-$(CONFIG_GENERIC_PHY) += generic.o
diff --git a/include/fec.h b/drivers/net/phy/generic.c
similarity index 53%
copy from include/fec.h
copy to drivers/net/phy/generic.c
index f56b023..3f5f127 100644
--- a/include/fec.h
+++ b/drivers/net/phy/generic.c
@@ -1,6 +1,5 @@
 /*
- * (C) Copyright 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
- * (C) Copyright 2007 Pengutronix, Juergen Beisert <j.beisert@pengutronix.de>
+ * Copyright (c) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -16,34 +15,22 @@
  * along with this program; if not, write to the Free Software
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
  * MA 02111-1307 USA
+ *
  */
 
-/**
- * @file
- * @brief Shared structures and constants between i.MX27's and MPC52xx's FEC
- */
-#ifndef __INCLUDE_NETWORK_FEC_H
-#define __INCLUDE_NETWORK_FEC_H
-
-/*
- * Supported phy types on this platform
- */
-typedef enum {
-	SEVENWIRE,
-	MII10,
-	MII100,
-	RMII,
-	RGMII,
-} xceiver_type;
+#include <common.h>
+#include <linux/phy.h>
+#include <init.h>
 
-/*
- * Define the phy connected externally for FEC drivers
- * (like MPC52xx and i.MX27)
- */
-struct fec_platform_data {
-        xceiver_type	xcv_type;
-	int		phy_addr;
+static struct phy_driver generic_phy = {
+	.drv.name = "Generic PHY",
+	.phy_id = PHY_ANY_UID,
+	.phy_id_mask = PHY_ANY_UID,
+	.features = 0,
 };
 
-#endif /* __INCLUDE_NETWORK_FEC_H */
-
+static int generic_phy_register(void)
+{
+	return phy_driver_register(&generic_phy);
+}
+device_initcall(generic_phy_register);
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
new file mode 100644
index 0000000..93d6fe1
--- /dev/null
+++ b/drivers/net/phy/mdio_bus.c
@@ -0,0 +1,250 @@
+/*
+ * drivers/net/phy/mdio_bus.c
+ *
+ * MDIO Bus interface
+ *
+ * Author: Andy Fleming
+ *
+ * Copyright (c) 2004 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute  it and/or modify it
+ * under  the terms of  the GNU General  Public License as published by the
+ * Free Software Foundation;  either version 2 of the  License, or (at your
+ * option) any later version.
+ *
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <clock.h>
+#include <net.h>
+#include <errno.h>
+#include <linux/phy.h>
+#include <linux/err.h>
+
+/**
+ * mdiobus_register - bring up all the PHYs on a given bus and attach them to bus
+ * @bus: target mii_bus
+ *
+ * Description: Called by a bus driver to bring up all the PHYs
+ *   on a given bus, and attach them to the bus.
+ *
+ * Returns 0 on success or < 0 on error.
+ */
+int mdiobus_register(struct mii_bus *bus)
+{
+	int i, err;
+
+	if (NULL == bus ||
+			NULL == bus->read ||
+			NULL == bus->write)
+		return -EINVAL;
+
+	bus->dev.priv = bus;
+	bus->dev.id = DEVICE_ID_DYNAMIC;
+	strcpy(bus->dev.name, "miibus");
+	bus->dev.parent = bus->parent;
+	if (bus->parent)
+		dev_add_child(bus->parent, &bus->dev);
+
+	err = register_device(&bus->dev);
+	if (err) {
+		pr_err("mii_bus %s failed to register\n", bus->dev.name);
+		return -EINVAL;
+	}
+
+	if (bus->reset)
+		bus->reset(bus);
+
+	for (i = 0; i < PHY_MAX_ADDR; i++) {
+		if ((bus->phy_mask & (1 << i)) == 0) {
+			struct phy_device *phydev;
+
+			phydev = mdiobus_scan(bus, i);
+			if (IS_ERR(phydev)) {
+				err = PTR_ERR(phydev);
+				goto error;
+			}
+		}
+	}
+
+	pr_info("%s: probed\n", dev_name(&bus->dev));
+	return 0;
+
+error:
+	while (--i >= 0) {
+		if (bus->phy_map[i]) {
+			kfree(bus->phy_map[i]);
+			bus->phy_map[i] = NULL;
+		}
+	}
+	return err;
+}
+EXPORT_SYMBOL(mdiobus_register);
+
+void mdiobus_unregister(struct mii_bus *bus)
+{
+	int i;
+
+	for (i = 0; i < PHY_MAX_ADDR; i++) {
+		if (bus->phy_map[i])
+			unregister_device(&bus->phy_map[i]->dev);
+		bus->phy_map[i] = NULL;
+	}
+}
+EXPORT_SYMBOL(mdiobus_unregister);
+
+struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
+{
+	struct phy_device *phydev;
+
+	phydev = get_phy_device(bus, addr);
+	if (IS_ERR(phydev) || phydev == NULL)
+		return phydev;
+
+	bus->phy_map[addr] = phydev;
+
+	return phydev;
+}
+EXPORT_SYMBOL(mdiobus_scan);
+
+/**
+ * mdio_bus_match - determine if given PHY driver supports the given PHY device
+ * @dev: target PHY device
+ * @drv: given PHY driver
+ *
+ * Description: Given a PHY device, and a PHY driver, return 1 if
+ *   the driver supports the device.  Otherwise, return 0.
+ */
+static int mdio_bus_match(struct device_d *dev, struct driver_d *drv)
+{
+	struct phy_device *phydev = to_phy_device(dev);
+	struct phy_driver *phydrv = to_phy_driver(drv);
+
+	return ((phydrv->phy_id & phydrv->phy_id_mask) ==
+		(phydev->phy_id & phydrv->phy_id_mask));
+}
+
+static ssize_t phydev_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
+{
+	int i = count;
+	uint16_t *buf = _buf;
+	struct phy_device *phydev = cdev->priv;
+
+	while (i > 0) {
+		*buf = phy_read(phydev, offset / 2);
+		buf++;
+		i -= 2;
+		offset += 2;
+	}
+
+	return count;
+}
+
+static ssize_t phydev_write(struct cdev *cdev, const void *_buf, size_t count, loff_t offset, ulong flags)
+{
+	int i = count;
+	const uint16_t *buf = _buf;
+	struct phy_device *phydev = cdev->priv;
+
+	while (i > 0) {
+		phy_write(phydev, offset / 2, *buf);
+		buf++;
+		i -= 2;
+		offset += 2;
+	}
+
+	return count;
+}
+
+static struct file_operations phydev_ops = {
+	.read  = phydev_read,
+	.write = phydev_write,
+	.lseek = dev_lseek_default,
+};
+
+static int mdio_bus_probe(struct device_d *_dev)
+{
+	struct phy_device *dev = to_phy_device(_dev);
+	struct phy_driver *drv = to_phy_driver(_dev->driver);
+
+	char str[16];
+
+	dev->attached_dev->phydev = dev;
+	dev->dev.parent = &dev->attached_dev->dev;
+	dev_add_child(dev->dev.parent, _dev);
+
+	if (drv->probe) {
+		int ret;
+
+		ret = drv->probe(dev);
+		if (ret) {
+			dev->attached_dev->phydev = NULL;
+			dev->attached_dev = NULL;
+			return ret;
+		}
+	}
+
+	if (dev->dev_flags) {
+		if (dev->dev_flags & PHYLIB_FORCE_10) {
+			dev->speed = SPEED_10;
+			dev->duplex = DUPLEX_FULL;
+			dev->autoneg = !AUTONEG_ENABLE;
+		}
+	}
+
+	/* Start out supporting everything. Eventually,
+	 * a controller will attach, and may modify one
+	 * or both of these values */
+	dev->supported = drv->features;
+	dev->advertising = drv->features;
+
+	drv->config_init(dev);
+
+	/* Sanitize settings based on PHY capabilities */
+	if ((dev->supported & SUPPORTED_Autoneg) == 0)
+		dev->autoneg = AUTONEG_DISABLE;
+
+	sprintf(str, "%d", dev->addr);
+	dev_add_param_fixed(&dev->dev, "phy_addr", str);
+
+	dev->cdev.name = asprintf("phy%d", _dev->id);
+	dev->cdev.size = 64;
+	dev->cdev.ops = &phydev_ops;
+	dev->cdev.priv = dev;
+	dev->cdev.dev = _dev;
+	devfs_create(&dev->cdev);
+
+	return 0;
+}
+
+static void mdio_bus_remove(struct device_d *_dev)
+{
+	struct phy_device *dev = to_phy_device(_dev);
+	struct phy_driver *drv = to_phy_driver(_dev->driver);
+
+	if (drv->remove)
+		drv->remove(dev);
+
+	free(dev->cdev.name);
+	devfs_remove(&dev->cdev);
+}
+
+struct bus_type mdio_bus_type = {
+	.name		= "mdio_bus",
+	.match		= mdio_bus_match,
+	.probe		= mdio_bus_probe,
+	.remove		= mdio_bus_remove,
+};
+EXPORT_SYMBOL(mdio_bus_type);
+
+#if 0
+static int mdio_bus_init(void)
+{
+	return bus_register(&mdio_bus_type);
+}
+pure_initcall(mdio_bus_init);
+#endif
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
new file mode 100644
index 0000000..2ea190a
--- /dev/null
+++ b/drivers/net/phy/phy.c
@@ -0,0 +1,568 @@
+/*
+ * drivers/net/phy/phy.c
+ *
+ * Framework for finding and configuring PHYs.
+ * Also contains generic PHY driver
+ *
+ * Copyright (c) 2009-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Author: Andy Fleming
+ *
+ * Copyright (c) 2004 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute  it and/or modify it
+ * under  the terms of  the GNU General  Public License as published by the
+ * Free Software Foundation;  either version 2 of the  License, or (at your
+ * option) any later version.
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <net.h>
+#include <malloc.h>
+#include <linux/phy.h>
+#include <linux/phy.h>
+#include <linux/err.h>
+
+#define PHY_AN_TIMEOUT	10
+
+static int genphy_config_init(struct phy_device *phydev);
+
+struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id)
+{
+	struct phy_device *dev;
+
+	/* We allocate the device, and initialize the
+	 * default values */
+	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
+
+	if (NULL == dev)
+		return (struct phy_device*) PTR_ERR((void*)-ENOMEM);
+
+	dev->speed = 0;
+	dev->duplex = -1;
+	dev->pause = dev->asym_pause = 0;
+	dev->link = 1;
+	dev->autoneg = AUTONEG_ENABLE;
+
+	dev->addr = addr;
+	dev->phy_id = phy_id;
+
+	dev->bus = bus;
+	dev->dev.parent = bus->parent;
+	dev->dev.bus = &mdio_bus_type;
+
+	strcpy(dev->dev.name, "phy");
+	dev->dev.id = DEVICE_ID_DYNAMIC;
+
+	return dev;
+}
+/**
+ * get_phy_id - reads the specified addr for its ID.
+ * @bus: the target MII bus
+ * @addr: PHY address on the MII bus
+ * @phy_id: where to store the ID retrieved.
+ *
+ * Description: Reads the ID registers of the PHY at @addr on the
+ *   @bus, stores it in @phy_id and returns zero on success.
+ */
+int get_phy_id(struct mii_bus *bus, int addr, u32 *phy_id)
+{
+	int phy_reg;
+
+	/* Grab the bits from PHYIR1, and put them
+	 * in the upper half */
+	phy_reg = mdiobus_read(bus, addr, MII_PHYSID1);
+
+	io (phy_reg < 0)
+		return -EIO;
+
+	*phy_id = (phy_reg & 0xffff) << 16;
+
+	/* Grab the bits from PHYIR2, and put them in the lower half */
+	phy_reg = mdiobus_read(bus, addr, MII_PHYSID2);
+
+	if (phy_reg < 0)
+		return -EIO;
+
+	*phy_id |= (phy_reg & 0xffff);
+
+	return 0;
+}
+
+/**
+ * get_phy_device - reads the specified PHY device and returns its @phy_device struct
+ * @bus: the target MII bus
+ * @addr: PHY address on the MII bus
+ *
+ * Description: Reads the ID registers of the PHY at @addr on the
+ *   @bus, then allocates and returns the phy_device to represent it.
+ */
+struct phy_device *get_phy_device(struct mii_bus *bus, int addr)
+{
+	struct phy_device *dev = NULL;
+	u32 phy_id = 0;
+	int r;
+
+	r = get_phy_id(bus, addr, &phy_id);
+	if (r)
+		return ERR_PTR(r);
+
+	/* If the phy_id is mostly Fs, there is no device there */
+	if ((phy_id & 0x1fffffff) == 0x1fffffff)
+		return NULL;
+
+	dev = phy_device_create(bus, addr, phy_id);
+
+	return dev;
+}
+
+/* Automatically gets and returns the PHY device */
+int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
+		       void (*adjust_link) (struct eth_device *edev),
+		       u32 flags, phy_interface_t interface)
+{
+	struct phy_driver* drv;
+	struct phy_device* dev = NULL;
+	unsigned int i;
+	int ret = -EINVAL;
+
+	if (!edev->phydev) {
+		if (addr >= 0) {
+			dev = bus->phy_map[addr];
+			if (!dev) {
+				ret = -EIO;
+				goto fail;
+			}
+
+			dev->attached_dev = edev;
+			dev->interface = interface;
+			dev->dev_flags = flags;
+
+			ret = register_device(&dev->dev);
+			if (ret)
+				goto fail;
+		} else {
+			for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
+				dev = bus->phy_map[i];
+				if (!dev || dev->attached_dev)
+					continue;
+
+				dev->attached_dev = edev;
+				dev->interface = interface;
+				dev->dev_flags = flags;
+
+				ret = register_device(&dev->dev);
+				if (ret)
+					goto fail;
+
+				break;
+			}
+		}
+
+		if (!edev->phydev) {
+			ret = -EIO;
+			goto fail;
+		}
+	}
+
+	dev = edev->phydev;
+	drv = to_phy_driver(dev->dev.driver);
+
+	drv->config_aneg(dev);
+
+	ret = drv->read_status(dev);
+	if (ret < 0)
+		return ret;
+
+	if (dev->link)
+		printf("%dMbps %s duplex link detected\n", dev->speed,
+			dev->duplex ? "full" : "half");
+
+	if (adjust_link)
+		adjust_link(edev);
+
+	return 0;
+
+fail:
+	if (dev)
+		dev->attached_dev = NULL;
+	puts("Unable to find a PHY (unknown ID?)\n");
+	return ret;
+}
+
+/* Generic PHY support and helper functions */
+
+/**
+ * genphy_config_advert - sanitize and advertise auto-negotiation parameters
+ * @phydev: target phy_device struct
+ *
+ * Description: Writes MII_ADVERTISE with the appropriate values,
+ *   after sanitizing the values to make sure we only advertise
+ *   what is supported.  Returns < 0 on error, 0 if the PHY's advertisement
+ *   hasn't changed, and > 0 if it has changed.
+ */
+int genphy_config_advert(struct phy_device *phydev)
+{
+	u32 advertise;
+	int oldadv, adv;
+	int err, changed = 0;
+
+	/* Only allow advertising what
+	 * this PHY supports */
+	phydev->advertising &= phydev->supported;
+	advertise = phydev->advertising;
+
+	/* Setup standard advertisement */
+	oldadv = adv = phy_read(phydev, MII_ADVERTISE);
+
+	if (adv < 0)
+		return adv;
+
+	adv &= ~(ADVERTISE_ALL | ADVERTISE_100BASE4 | ADVERTISE_PAUSE_CAP |
+		 ADVERTISE_PAUSE_ASYM);
+	adv |= ethtool_adv_to_mii_adv_t(advertise);
+
+	if (adv != oldadv) {
+		err = phy_write(phydev, MII_ADVERTISE, adv);
+
+		if (err < 0)
+			return err;
+		changed = 1;
+	}
+
+	/* Configure gigabit if it's supported */
+	if (phydev->supported & (SUPPORTED_1000baseT_Half |
+				SUPPORTED_1000baseT_Full)) {
+		oldadv = adv = phy_read(phydev, MII_CTRL1000);
+
+		if (adv < 0)
+			return adv;
+
+		adv &= ~(ADVERTISE_1000FULL | ADVERTISE_1000HALF);
+		adv |= ethtool_adv_to_mii_ctrl1000_t(advertise);
+
+		if (adv != oldadv) {
+			err = phy_write(phydev, MII_CTRL1000, adv);
+
+			if (err < 0)
+				return err;
+			changed = 1;
+		}
+	}
+
+	return changed;
+}
+
+/**
+ * genphy_setup_forced - configures/forces speed/duplex from @phydev
+ * @phydev: target phy_device struct
+ *
+ * Description: Configures MII_BMCR to force speed/duplex
+ *   to the values in phydev. Assumes that the values are valid.
+ *   Please see phy_sanitize_settings().
+ */
+int genphy_setup_forced(struct phy_device *phydev)
+{
+	int err;
+	int ctl = 0;
+
+	phydev->pause = phydev->asym_pause = 0;
+
+	if (SPEED_1000 == phydev->speed)
+		ctl |= BMCR_SPEED1000;
+	else if (SPEED_100 == phydev->speed)
+		ctl |= BMCR_SPEED100;
+
+	if (DUPLEX_FULL == phydev->duplex)
+		ctl |= BMCR_FULLDPLX;
+
+	err = phy_write(phydev, MII_BMCR, ctl);
+
+	return err;
+}
+
+static int phy_aneg_done(struct phy_device *phydev)
+{
+	uint64_t start = get_time_ns();
+	int ctl;
+
+	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
+		ctl = phy_read(phydev, MII_BMSR);
+		if (ctl & BMSR_ANEGCOMPLETE) {
+			phydev->link = 1;
+			return 0;
+		}
+
+		/* Restart auto-negotiation if remote fault */
+		if (ctl & BMSR_RFAULT) {
+			puts("PHY remote fault detected\n"
+			     "PHY restarting auto-negotiation\n");
+			phy_write(phydev, MII_BMCR,
+					  BMCR_ANENABLE | BMCR_ANRESTART);
+		}
+	}
+
+	phydev->link = 0;
+	return -ETIMEDOUT;
+}
+
+/**
+ * genphy_restart_aneg - Enable and Restart Autonegotiation
+ * @phydev: target phy_device struct
+ */
+int genphy_restart_aneg(struct phy_device *phydev)
+{
+	int ctl;
+
+	ctl = phy_read(phydev, MII_BMCR);
+
+	if (ctl < 0)
+		return ctl;
+
+	ctl |= (BMCR_ANENABLE | BMCR_ANRESTART);
+
+	/* Don't isolate the PHY if we're negotiating */
+	ctl &= ~(BMCR_ISOLATE);
+
+	ctl = phy_write(phydev, MII_BMCR, ctl);
+
+	if (ctl < 0)
+		return ctl;
+
+	return phy_aneg_done(phydev);
+}
+
+/**
+ * genphy_config_aneg - restart auto-negotiation or write BMCR
+ * @phydev: target phy_device struct
+ *
+ * Description: If auto-negotiation is enabled, we configure the
+ *   advertising, and then restart auto-negotiation.  If it is not
+ *   enabled, then we write the BMCR.
+ */
+int genphy_config_aneg(struct phy_device *phydev)
+{
+	int result;
+
+	if (AUTONEG_ENABLE != phydev->autoneg)
+		return genphy_setup_forced(phydev);
+
+	result = genphy_config_advert(phydev);
+
+	if (result < 0) /* error */
+		return result;
+
+	if (result == 0) {
+		/* Advertisement hasn't changed, but maybe aneg was never on to
+		 * begin with?  Or maybe phy was isolated? */
+		int ctl = phy_read(phydev, MII_BMCR);
+
+		if (ctl < 0)
+			return ctl;
+
+		if (!(ctl & BMCR_ANENABLE) || (ctl & BMCR_ISOLATE))
+			result = 1; /* do restart aneg */
+	}
+
+	/* Only restart aneg if we are advertising something different
+	 * than we were before.	 */
+	if (result > 0)
+		result = genphy_restart_aneg(phydev);
+
+	return result;
+}
+
+/**
+ * genphy_update_link - update link status in @phydev
+ * @phydev: target phy_device struct
+ *
+ * Description: Update the value in phydev->link to reflect the
+ *   current link value.  In order to do this, we need to read
+ *   the status register twice, keeping the second value.
+ */
+int genphy_update_link(struct phy_device *phydev)
+{
+	int status;
+
+	/* Do a fake read */
+	status = phy_read(phydev, MII_BMSR);
+
+	if (status < 0)
+		return status;
+
+	/* wait phy status update in the phy */
+	udelay(1000);
+
+	/* Read link and autonegotiation status */
+	status = phy_read(phydev, MII_BMSR);
+
+	if (status < 0)
+		return status;
+
+	if ((status & BMSR_LSTATUS) == 0)
+		phydev->link = 0;
+	else
+		phydev->link = 1;
+
+	return 0;
+}
+
+/**
+ * genphy_read_status - check the link status and update current link state
+ * @phydev: target phy_device struct
+ *
+ * Description: Check the link, then figure out the current state
+ *   by comparing what we advertise with what the link partner
+ *   advertises.  Start by checking the gigabit possibilities,
+ *   then move on to 10/100.
+ */
+int genphy_read_status(struct phy_device *phydev)
+{
+	int adv;
+	int err;
+	int lpa;
+	int lpagb = 0;
+
+	/* Update the link, but return if there
+	 * was an error */
+	err = genphy_update_link(phydev);
+	if (err)
+		return err;
+
+	if (AUTONEG_ENABLE == phydev->autoneg) {
+		if (phydev->supported & (SUPPORTED_1000baseT_Half
+					| SUPPORTED_1000baseT_Full)) {
+			lpagb = phy_read(phydev, MII_STAT1000);
+
+			if (lpagb < 0)
+				return lpagb;
+
+			adv = phy_read(phydev, MII_CTRL1000);
+
+			if (adv < 0)
+				return adv;
+
+			lpagb &= adv << 2;
+		}
+
+		lpa = phy_read(phydev, MII_LPA);
+
+		if (lpa < 0)
+			return lpa;
+
+		adv = phy_read(phydev, MII_ADVERTISE);
+
+		if (adv < 0)
+			return adv;
+
+		lpa &= adv;
+
+		phydev->speed = SPEED_10;
+		phydev->duplex = DUPLEX_HALF;
+		phydev->pause = phydev->asym_pause = 0;
+
+		if (lpagb & (LPA_1000FULL | LPA_1000HALF)) {
+			phydev->speed = SPEED_1000;
+
+			if (lpagb & LPA_1000FULL)
+				phydev->duplex = DUPLEX_FULL;
+		} else if (lpa & (LPA_100FULL | LPA_100HALF)) {
+			phydev->speed = SPEED_100;
+
+			if (lpa & LPA_100FULL)
+				phydev->duplex = DUPLEX_FULL;
+		} else
+			if (lpa & LPA_10FULL)
+				phydev->duplex = DUPLEX_FULL;
+
+		if (phydev->duplex == DUPLEX_FULL) {
+			phydev->pause = lpa & LPA_PAUSE_CAP ? 1 : 0;
+			phydev->asym_pause = lpa & LPA_PAUSE_ASYM ? 1 : 0;
+		}
+	} else {
+		int bmcr = phy_read(phydev, MII_BMCR);
+		if (bmcr < 0)
+			return bmcr;
+
+		if (bmcr & BMCR_FULLDPLX)
+			phydev->duplex = DUPLEX_FULL;
+		else
+			phydev->duplex = DUPLEX_HALF;
+
+		if (bmcr & BMCR_SPEED1000)
+			phydev->speed = SPEED_1000;
+		else if (bmcr & BMCR_SPEED100)
+			phydev->speed = SPEED_100;
+		else
+			phydev->speed = SPEED_10;
+
+		phydev->pause = phydev->asym_pause = 0;
+	}
+
+	return 0;
+}
+
+static int genphy_config_init(struct phy_device *phydev)
+{
+	int val;
+	u32 features;
+
+	/* For now, I'll claim that the generic driver supports
+	 * all possible port types */
+	features = (SUPPORTED_TP | SUPPORTED_MII
+			| SUPPORTED_AUI | SUPPORTED_FIBRE |
+			SUPPORTED_BNC);
+
+	/* Do we support autonegotiation? */
+	val = phy_read(phydev, MII_BMSR);
+
+	if (val < 0)
+		return val;
+
+	if (val & BMSR_ANEGCAPABLE)
+		features |= SUPPORTED_Autoneg;
+
+	if (val & BMSR_100FULL)
+		features |= SUPPORTED_100baseT_Full;
+	if (val & BMSR_100HALF)
+		features |= SUPPORTED_100baseT_Half;
+	if (val & BMSR_10FULL)
+		features |= SUPPORTED_10baseT_Full;
+	if (val & BMSR_10HALF)
+		features |= SUPPORTED_10baseT_Half;
+
+	if (val & BMSR_ESTATEN) {
+		val = phy_read(phydev, MII_ESTATUS);
+
+		if (val < 0)
+			return val;
+
+		if (val & ESTATUS_1000_TFULL)
+			features |= SUPPORTED_1000baseT_Full;
+		if (val & ESTATUS_1000_THALF)
+			features |= SUPPORTED_1000baseT_Half;
+	}
+
+	phydev->supported = features;
+	phydev->advertising = features;
+
+	return 0;
+}
+
+int phy_driver_register(struct phy_driver *phydrv)
+{
+	phydrv->drv.bus = &mdio_bus_type;
+
+	if (!phydrv->config_init)
+		phydrv->config_init = genphy_config_init;
+
+	if (!phydrv->config_aneg)
+		phydrv->config_aneg = genphy_config_aneg;
+
+	if (!phydrv->read_status)
+		phydrv->read_status = genphy_read_status;
+
+	return register_driver(&phydrv->drv);
+}
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index cbd9f48..3da7b82 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -67,13 +67,13 @@
 
 #include <command.h>
 #include <net.h>
-#include <miidev.h>
 #include <malloc.h>
 #include <init.h>
 #include <xfuncs.h>
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
+#include <linux/phy.h>
 
 /*---------------------------------------------------------------
  .
@@ -451,7 +451,7 @@ struct accessors {
 };
 
 struct smc91c111_priv {
-	struct mii_device miidev;
+	struct mii_bus miibus;
 	struct accessors a;
 	void __iomem *base;
 };
@@ -621,11 +621,10 @@ static void smc_wait_mmu_release_complete(struct smc91c111_priv *priv)
 	}
 }
 
-static int smc91c111_phy_write(struct mii_device *mdev, int phyaddr,
-	int phyreg, int phydata)
+static int smc91c111_phy_write(struct mii_bus *bus, int phyaddr,
+	int phyreg, u16 phydata)
 {
-	struct eth_device *edev = mdev->edev;
-	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
+	struct smc91c111_priv *priv = (struct smc91c111_priv *)bus->priv;
 	int oldBank;
 	int i;
 	unsigned mask;
@@ -723,10 +722,9 @@ static int smc91c111_phy_write(struct mii_device *mdev, int phyaddr,
 	return 0;
 }
 
-static int smc91c111_phy_read(struct mii_device *mdev, int phyaddr, int phyreg)
+static int smc91c111_phy_read(struct mii_bus *bus, int phyaddr, int phyreg)
 {
-	struct eth_device *edev = mdev->edev;
-	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
+	struct smc91c111_priv *priv = (struct smc91c111_priv *)bus->priv;
 	int oldBank;
 	int i;
 	unsigned char mask;
@@ -892,12 +890,15 @@ static void smc91c111_enable(struct eth_device *edev)
 static int smc91c111_eth_open(struct eth_device *edev)
 {
 	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
-	smc91c111_enable(edev);
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
+	/* Configure the Receive/Phy Control register */
+	SMC_SELECT_BANK(priv, 0);
+	SMC_outw(priv, RPC_DEFAULT, RPC_REG);
 
-	return 0;
+	smc91c111_enable(edev);
+
+	return phy_device_connect(edev, &priv->miibus, 0, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
 }
 
 static int smc91c111_eth_send(struct eth_device *edev, void *packet,
@@ -1279,14 +1280,6 @@ static void print_packet( unsigned char * buf, int length )
 
 static int smc91c111_init_dev(struct eth_device *edev)
 {
-	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
-
-	/* Configure the Receive/Phy Control register */
-	SMC_SELECT_BANK(priv, 0);
-	SMC_outw(priv, RPC_DEFAULT, RPC_REG);
-
-	miidev_restart_aneg(&priv->miidev);
-
 	return 0;
 }
 
@@ -1312,17 +1305,15 @@ static int smc91c111_probe(struct device_d *dev)
 	edev->set_ethaddr = smc91c111_set_ethaddr;
 	edev->parent = dev;
 
-	priv->miidev.read = smc91c111_phy_read;
-	priv->miidev.write = smc91c111_phy_write;
-	priv->miidev.address = 0;
-	priv->miidev.flags = 0;
-	priv->miidev.edev = edev;
-	priv->miidev.parent = dev;
+	priv->miibus.read = smc91c111_phy_read;
+	priv->miibus.write = smc91c111_phy_write;
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
 	priv->base = dev_request_mem_region(dev, 0);
 
 	smc91c111_reset(edev);
 
-	mii_register(&priv->miidev);
+	mdiobus_register(&priv->miibus);
 	eth_register(edev);
 
 	return 0;
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index f697608..c58ea72 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -30,7 +30,6 @@
 
 #include <command.h>
 #include <net.h>
-#include <miidev.h>
 #include <malloc.h>
 #include <init.h>
 #include <xfuncs.h>
@@ -38,12 +37,13 @@
 #include <clock.h>
 #include <io.h>
 #include <smc911x.h>
+#include <linux/phy.h>
 
 #include "smc911x.h"
 
 struct smc911x_priv {
 	struct eth_device edev;
-	struct mii_device miidev;
+	struct mii_bus miibus;
 	void __iomem *base;
 
 	int shift;
@@ -198,9 +198,9 @@ static int smc911x_set_ethaddr(struct eth_device *edev, unsigned char *m)
 	return 0;
 }
 
-static int smc911x_phy_read(struct mii_device *mdev, int phy_addr, int reg)
+static int smc911x_phy_read(struct mii_bus *bus, int phy_addr, int reg)
 {
-	struct eth_device *edev = mdev->edev;
+	struct eth_device *edev = bus->priv;
 
 	while (smc911x_get_mac_csr(edev, MII_ACC) & MII_ACC_MII_BUSY);
 
@@ -212,10 +212,10 @@ static int smc911x_phy_read(struct mii_device *mdev, int phy_addr, int reg)
 	return smc911x_get_mac_csr(edev, MII_DATA);
 }
 
-static int smc911x_phy_write(struct mii_device *mdev, int phy_addr,
-	int reg, int val)
+static int smc911x_phy_write(struct mii_bus *bus, int phy_addr,
+	int reg, u16 val)
 {
-	struct eth_device *edev = mdev->edev;
+	struct eth_device *edev = bus->priv;
 
 	while (smc911x_get_mac_csr(edev, MII_ACC) & MII_ACC_MII_BUSY);
 
@@ -308,9 +308,12 @@ static void smc911x_enable(struct eth_device *edev)
 static int smc911x_eth_open(struct eth_device *edev)
 {
 	struct smc911x_priv *priv = (struct smc911x_priv *)edev->priv;
+	int ret;
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
+	ret = phy_device_connect(edev, &priv->miibus, 1, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
 
 	/* Turn on Tx + Rx */
 	smc911x_enable(edev);
@@ -405,13 +408,9 @@ static int smc911x_eth_rx(struct eth_device *edev)
 
 static int smc911x_init_dev(struct eth_device *edev)
 {
-	struct smc911x_priv *priv = (struct smc911x_priv *)edev->priv;
-
 	smc911x_set_mac_csr(edev, MAC_CR, MAC_CR_TXEN | MAC_CR_RXEN |
 			MAC_CR_HBDIS);
 
-	miidev_restart_aneg(&priv->miidev);
-
 	return 0;
 }
 
@@ -536,17 +535,15 @@ static int smc911x_probe(struct device_d *dev)
 	edev->set_ethaddr = smc911x_set_ethaddr;
 	edev->parent = dev;
 
-	priv->miidev.read = smc911x_phy_read;
-	priv->miidev.write = smc911x_phy_write;
-	priv->miidev.address = 1;
-	priv->miidev.flags = 0;
-	priv->miidev.edev = edev;
-	priv->miidev.parent = dev;
+	priv->miibus.read = smc911x_phy_read;
+	priv->miibus.write = smc911x_phy_write;
+	priv->miibus.priv = edev;
+	priv->miibus.parent = dev;
 
 	smc911x_reset(edev);
 	smc911x_phy_reset(edev);
 
-	mii_register(&priv->miidev);
+	mdiobus_register(&priv->miibus);
 	eth_register(edev);
 
         return 0;
diff --git a/drivers/net/usb/Kconfig b/drivers/net/usb/Kconfig
index b53dcc7..adb1b0b 100644
--- a/drivers/net/usb/Kconfig
+++ b/drivers/net/usb/Kconfig
@@ -5,11 +5,11 @@ menuconfig NET_USB
 if NET_USB
 
 config NET_USB_ASIX
-	select MIIDEV
+	select PHYLIB
 	bool "Asix compatible"
 
 config NET_USB_SMSC95XX
-	select MIIDEV
+	select PHYLIB
 	bool "SMSC95xx"
 
 endif
diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index be5a170..97680cf 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <init.h>
 #include <net.h>
-#include <miidev.h>
+#include <linux/phy.h>
 #include <usb/usb.h>
 #include <usb/usbnet.h>
 #include <errno.h>
@@ -231,10 +231,9 @@ static inline int asix_set_hw_mii(struct usbnet *dev)
 	return ret;
 }
 
-static int asix_mdio_read(struct mii_device *mdev, int phy_id, int loc)
+static int asix_mdio_read(struct mii_bus *bus, int phy_id, int loc)
 {
-	struct eth_device *eth = mdev->edev;
-	struct usbnet *dev = eth->priv;
+	struct usbnet *dev = bus->priv;
 	__le16 res;
 
 	asix_set_sw_mii(dev);
@@ -248,10 +247,9 @@ static int asix_mdio_read(struct mii_device *mdev, int phy_id, int loc)
 	return le16_to_cpu(res);
 }
 
-static int asix_mdio_write(struct mii_device *mdev, int phy_id, int loc, int val)
+static int asix_mdio_write(struct mii_bus *bus, int phy_id, int loc, u16 val)
 {
-	struct eth_device *eth = mdev->edev;
-	struct usbnet *dev = eth->priv;
+	struct usbnet *dev = bus->priv;
 	__le16 res = cpu_to_le16(val);
 
 	dev_dbg(&dev->edev.dev, "asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x",
@@ -469,14 +467,13 @@ static int asix_tx_fixup(struct usbnet *dev,
 
 static int asix_init_mii(struct usbnet *dev)
 {
-	dev->miidev.read = asix_mdio_read;
-	dev->miidev.write = asix_mdio_write;
-	dev->miidev.address = asix_get_phy_addr(dev);
-	dev->miidev.flags = 0;
-	dev->miidev.edev = &dev->edev;
-	dev->miidev.parent = &dev->udev->dev;
-
-	return mii_register(&dev->miidev);
+	dev->miibus.read = asix_mdio_read;
+	dev->miibus.write = asix_mdio_write;
+	dev->phy_addr = asix_get_phy_addr(dev);
+	dev->miibus.priv = dev;
+	dev->miibus.parent = &dev->udev->dev;
+
+	return mdiobus_register(&dev->miibus);
 }
 
 static int ax88172_link_reset(struct usbnet *dev)
@@ -631,7 +628,7 @@ out:
 
 static void asix_unbind(struct usbnet *dev)
 {
-	mii_unregister(&dev->miidev);
+	mdiobus_unregister(&dev->miibus);
 }
 
 static struct driver_info ax8817x_info = {
diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index c21705e..11f2795 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -27,7 +27,7 @@
 #include <malloc.h>
 #include <asm/byteorder.h>
 #include <errno.h>
-#include <miidev.h>
+#include <linux/phy.h>
 #include "smsc95xx.h"
 
 #define SMSC_CHIPNAME			"smsc95xx"
@@ -123,10 +123,9 @@ static int smsc95xx_phy_wait_not_busy(struct usbnet *dev)
 	return -EIO;
 }
 
-static int smsc95xx_mdio_read(struct mii_device *mdev, int phy_id, int idx)
+static int smsc95xx_mdio_read(struct mii_bus *bus, int phy_id, int idx)
 {
-	struct eth_device *eth = mdev->edev;
-	struct usbnet *dev = eth->priv;
+	struct usbnet *dev = bus->priv;
 	u32 val, addr;
 
 	/* confirm MII not busy */
@@ -149,11 +148,10 @@ static int smsc95xx_mdio_read(struct mii_device *mdev, int phy_id, int idx)
 	return val & 0xffff;
 }
 
-static int smsc95xx_mdio_write(struct mii_device *mdev, int phy_id, int idx,
-		int regval)
+static int smsc95xx_mdio_write(struct mii_bus *bus, int phy_id, int idx,
+		u16 regval)
 {
-	struct eth_device *eth = mdev->edev;
-	struct usbnet *dev = eth->priv;
+	struct usbnet *dev = bus->priv;
 	u32 val, addr;
 
 	/* confirm MII not busy */
@@ -439,20 +437,19 @@ static int smsc95xx_phy_initialize(struct usbnet *dev)
 	uint16_t val, bmcr;
 
 	/* Initialize MII structure */
-	dev->miidev.read = smsc95xx_mdio_read;
-	dev->miidev.write = smsc95xx_mdio_write;
-	dev->miidev.address = 1; /* FIXME: asix_get_phy_addr(dev); */
-	dev->miidev.flags = 0;
-	dev->miidev.edev = &dev->edev;
-	dev->miidev.parent = &dev->udev->dev;
-//	dev->miidev.name = dev->edev.name;
+	dev->miibus.read = smsc95xx_mdio_read;
+	dev->miibus.write = smsc95xx_mdio_write;
+	dev->phy_addr = 1; /* FIXME: asix_get_phy_addr(dev); */
+	dev->miibus.priv = dev;
+	dev->miibus.parent = &dev->udev->dev;
+//	dev->miibus.name = dev->edev.name;
 
 	/* reset phy and wait for reset to complete */
-	smsc95xx_mdio_write(&dev->miidev, phy_id, MII_BMCR, BMCR_RESET);
+	smsc95xx_mdio_write(&dev->miibus, phy_id, MII_BMCR, BMCR_RESET);
 
 	do {
 		udelay(10 * 1000);
-		bmcr = smsc95xx_mdio_read(&dev->miidev, phy_id, MII_BMCR);
+		bmcr = smsc95xx_mdio_read(&dev->miibus, phy_id, MII_BMCR);
 		timeout++;
 	} while ((bmcr & MII_BMCR) && (timeout < 100));
 
@@ -461,14 +458,14 @@ static int smsc95xx_phy_initialize(struct usbnet *dev)
 		return -EIO;
 	}
 
-	smsc95xx_mdio_write(&dev->miidev, phy_id, MII_ADVERTISE,
+	smsc95xx_mdio_write(&dev->miibus, phy_id, MII_ADVERTISE,
 		ADVERTISE_ALL | ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP |
 		ADVERTISE_PAUSE_ASYM);
 
 	/* read to clear */
-	val = smsc95xx_mdio_read(&dev->miidev, phy_id, PHY_INT_SRC);
+	val = smsc95xx_mdio_read(&dev->miibus, phy_id, PHY_INT_SRC);
 
-	smsc95xx_mdio_write(&dev->miidev, phy_id, PHY_INT_MASK,
+	smsc95xx_mdio_write(&dev->miibus, phy_id, PHY_INT_MASK,
 		PHY_INT_MASK_DEFAULT_);
 
 	netif_dbg(dev, ifup, dev->net, "phy initialised successfully\n");
@@ -751,7 +748,7 @@ static int smsc95xx_bind(struct usbnet *dev)
 
 	dev->edev.get_ethaddr = smsc95xx_get_ethaddr;
 	dev->edev.set_ethaddr = smsc95xx_set_ethaddr;
-	mii_register(&dev->miidev);
+	mdiobus_register(&dev->miibus);
 
 	return 0;
 }
@@ -760,7 +757,7 @@ static void smsc95xx_unbind(struct usbnet *dev)
 {
 	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 
-	mii_unregister(&dev->miidev);
+	mdiobus_unregister(&dev->miibus);
 
 	if (pdata) {
 		netif_dbg(dev, ifdown, dev->net, "free pdata\n");
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index c7e3606..80b4ae7 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -4,6 +4,7 @@
 #include <asm/byteorder.h>
 #include <errno.h>
 #include <malloc.h>
+#include <linux/phy.h>
 
 static inline int usb_endpoint_dir_in(const struct usb_endpoint_descriptor *epd)
 {
@@ -160,8 +161,6 @@ static int usbnet_init(struct eth_device *edev)
                 return ret;
         }
 
-	miidev_restart_aneg(&dev->miidev);
-
 	return 0;
 }
 
@@ -171,12 +170,8 @@ static int usbnet_open(struct eth_device *edev)
 
 	dev_dbg(&edev->dev, "%s\n",__func__);
 
-	if (miidev_wait_aneg(&dev->miidev))
-		return -1;
-
-	miidev_print_status(&dev->miidev);
-
-	return 0;
+	return phy_device_connect(edev, &dev->miibus, dev->phy_addr, NULL,
+				0, PHY_INTERFACE_MODE_NA);
 }
 
 static void usbnet_halt(struct eth_device *edev)
diff --git a/include/fec.h b/include/fec.h
index f56b023..6e1e1cd 100644
--- a/include/fec.h
+++ b/include/fec.h
@@ -25,6 +25,8 @@
 #ifndef __INCLUDE_NETWORK_FEC_H
 #define __INCLUDE_NETWORK_FEC_H
 
+#include <linux/phy.h>
+
 /*
  * Supported phy types on this platform
  */
@@ -43,6 +45,7 @@ typedef enum {
 struct fec_platform_data {
         xceiver_type	xcv_type;
 	int		phy_addr;
+	void 		(*phy_init)(struct phy_device *dev);
 };
 
 #endif /* __INCLUDE_NETWORK_FEC_H */
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
new file mode 100644
index 0000000..4d83fe0
--- /dev/null
+++ b/include/linux/ethtool.h
@@ -0,0 +1,114 @@
+/*
+ * ethtool.h: Defines for Linux ethtool.
+ *
+ * Copyright (C) 1998 David S. Miller (davem@redhat.com)
+ * Copyright 2001 Jeff Garzik <jgarzik@pobox.com>
+ * Portions Copyright 2001 Sun Microsystems (thockin@sun.com)
+ * Portions Copyright 2002 Intel (eli.kupermann@intel.com,
+ *                                christopher.leech@intel.com,
+ *                                scott.feldman@intel.com)
+ * Portions Copyright (C) Sun Microsystems 2008
+ */
+
+#ifndef _LINUX_ETHTOOL_H
+#define _LINUX_ETHTOOL_H
+
+/* Indicates what features are supported by the interface. */
+#define SUPPORTED_10baseT_Half		(1 << 0)
+#define SUPPORTED_10baseT_Full		(1 << 1)
+#define SUPPORTED_100baseT_Half		(1 << 2)
+#define SUPPORTED_100baseT_Full		(1 << 3)
+#define SUPPORTED_1000baseT_Half	(1 << 4)
+#define SUPPORTED_1000baseT_Full	(1 << 5)
+#define SUPPORTED_Autoneg		(1 << 6)
+#define SUPPORTED_TP			(1 << 7)
+#define SUPPORTED_AUI			(1 << 8)
+#define SUPPORTED_MII			(1 << 9)
+#define SUPPORTED_FIBRE			(1 << 10)
+#define SUPPORTED_BNC			(1 << 11)
+#define SUPPORTED_10000baseT_Full	(1 << 12)
+#define SUPPORTED_Pause			(1 << 13)
+#define SUPPORTED_Asym_Pause		(1 << 14)
+#define SUPPORTED_2500baseX_Full	(1 << 15)
+#define SUPPORTED_Backplane		(1 << 16)
+#define SUPPORTED_1000baseKX_Full	(1 << 17)
+#define SUPPORTED_10000baseKX4_Full	(1 << 18)
+#define SUPPORTED_10000baseKR_Full	(1 << 19)
+#define SUPPORTED_10000baseR_FEC	(1 << 20)
+
+/* Indicates what features are advertised by the interface. */
+#define ADVERTISED_10baseT_Half		(1 << 0)
+#define ADVERTISED_10baseT_Full		(1 << 1)
+#define ADVERTISED_100baseT_Half	(1 << 2)
+#define ADVERTISED_100baseT_Full	(1 << 3)
+#define ADVERTISED_1000baseT_Half	(1 << 4)
+#define ADVERTISED_1000baseT_Full	(1 << 5)
+#define ADVERTISED_Autoneg		(1 << 6)
+#define ADVERTISED_TP			(1 << 7)
+#define ADVERTISED_AUI			(1 << 8)
+#define ADVERTISED_MII			(1 << 9)
+#define ADVERTISED_FIBRE		(1 << 10)
+#define ADVERTISED_BNC			(1 << 11)
+#define ADVERTISED_10000baseT_Full	(1 << 12)
+#define ADVERTISED_Pause		(1 << 13)
+#define ADVERTISED_Asym_Pause		(1 << 14)
+#define ADVERTISED_2500baseX_Full	(1 << 15)
+#define ADVERTISED_Backplane		(1 << 16)
+#define ADVERTISED_1000baseKX_Full	(1 << 17)
+#define ADVERTISED_10000baseKX4_Full	(1 << 18)
+#define ADVERTISED_10000baseKR_Full	(1 << 19)
+#define ADVERTISED_10000baseR_FEC	(1 << 20)
+
+/* The following are all involved in forcing a particular link
+ * mode for the device for setting things.  When getting the
+ * devices settings, these indicate the current mode and whether
+ * it was foced up into this mode or autonegotiated.
+ */
+
+/* The forced speed, 10Mb, 100Mb, gigabit, 2.5Gb, 10GbE. */
+#define SPEED_10		10
+#define SPEED_100		100
+#define SPEED_1000		1000
+#define SPEED_2500		2500
+#define SPEED_10000		10000
+
+/* Duplex, half or full. */
+#define DUPLEX_HALF		0x00
+#define DUPLEX_FULL		0x01
+
+/* Which connector port. */
+#define PORT_TP			0x00
+#define PORT_AUI		0x01
+#define PORT_MII		0x02
+#define PORT_FIBRE		0x03
+#define PORT_BNC		0x04
+#define PORT_OTHER		0xff
+
+/* Which transceiver to use. */
+#define XCVR_INTERNAL		0x00
+#define XCVR_EXTERNAL		0x01
+#define XCVR_DUMMY1		0x02
+#define XCVR_DUMMY2		0x03
+#define XCVR_DUMMY3		0x04
+
+/* Enable or disable autonegotiation.  If this is set to enable,
+ * the forced link modes above are completely ignored.
+ */
+#define AUTONEG_DISABLE		0x00
+#define AUTONEG_ENABLE		0x01
+
+/* Mode MDI or MDI-X */
+#define ETH_TP_MDI_INVALID	0x00
+#define ETH_TP_MDI		0x01
+#define ETH_TP_MDI_X		0x02
+
+/* Wake-On-Lan options. */
+#define WAKE_PHY		(1 << 0)
+#define WAKE_UCAST		(1 << 1)
+#define WAKE_MCAST		(1 << 2)
+#define WAKE_BCAST		(1 << 3)
+#define WAKE_ARP		(1 << 4)
+#define WAKE_MAGIC		(1 << 5)
+#define WAKE_MAGICSECURE	(1 << 6) /* only meaningful if WAKE_MAGIC */
+
+#endif /* _LINUX_ETHTOOL_H */
diff --git a/include/linux/mii.h b/include/linux/mii.h
dissimilarity index 70%
index 7345172..5bac6c2 100644
--- a/include/linux/mii.h
+++ b/include/linux/mii.h
@@ -1,232 +1,443 @@
-/*
- * linux/mii.h: definitions for MII-compatible transceivers
- * Originally drivers/net/sunhme.h.
- *
- * Copyright (C) 1996, 1999, 2001 David S. Miller (davem@redhat.com)
- */
-
-#ifndef __LINUX_MII_H__
-#define __LINUX_MII_H__
-
-/* Generic MII registers. */
-
-#define MII_BMCR            0x00        /* Basic mode control register */
-#define MII_BMSR            0x01        /* Basic mode status register  */
-#define MII_PHYSID1         0x02        /* PHYS ID 1                   */
-#define MII_PHYSID2         0x03        /* PHYS ID 2                   */
-#define MII_ADVERTISE       0x04        /* Advertisement control reg   */
-#define MII_LPA             0x05        /* Link partner ability reg    */
-#define MII_EXPANSION       0x06        /* Expansion register          */
-#define MII_CTRL1000        0x09        /* 1000BASE-T control          */
-#define MII_STAT1000        0x0a        /* 1000BASE-T status           */
-#define MII_ESTATUS	    0x0f	/* Extended Status */
-#define MII_DCOUNTER        0x12        /* Disconnect counter          */
-#define MII_FCSCOUNTER      0x13        /* False carrier counter       */
-#define MII_NWAYTEST        0x14        /* N-way auto-neg test reg     */
-#define MII_RERRCOUNTER     0x15        /* Receive error counter       */
-#define MII_SREVISION       0x16        /* Silicon revision            */
-#define MII_RESV1           0x17        /* Reserved...                 */
-#define MII_LBRERROR        0x18        /* Lpback, rx, bypass error    */
-#define MII_PHYADDR         0x19        /* PHY address                 */
-#define MII_RESV2           0x1a        /* Reserved...                 */
-#define MII_TPISTATUS       0x1b        /* TPI status for 10mbps       */
-#define MII_NCONFIG         0x1c        /* Network interface config    */
-
-/* Basic mode control register. */
-#define BMCR_SPEED_MASK		0x2040	/* 10/100/1000		       */
-#define BMCR_SPEED10		0x0000	/* Select 10Mbps	       */
-#define BMCR_RESV               0x003f  /* Unused...                   */
-#define BMCR_SPEED1000		0x0040  /* MSB of Speed (1000)         */
-#define BMCR_CTST               0x0080  /* Collision test              */
-#define BMCR_FULLDPLX           0x0100  /* Full duplex                 */
-#define BMCR_ANRESTART          0x0200  /* Auto negotiation restart    */
-#define BMCR_ISOLATE            0x0400  /* Disconnect DP83840 from MII */
-#define BMCR_PDOWN              0x0800  /* Powerdown the DP83840       */
-#define BMCR_ANENABLE           0x1000  /* Enable auto negotiation     */
-#define BMCR_SPEED100           0x2000  /* Select 100Mbps              */
-#define BMCR_LOOPBACK           0x4000  /* TXD loopback bits           */
-#define BMCR_RESET              0x8000  /* Reset the DP83840           */
-
-/* Basic mode status register. */
-#define BMSR_ERCAP              0x0001  /* Ext-reg capability          */
-#define BMSR_JCD                0x0002  /* Jabber detected             */
-#define BMSR_LSTATUS            0x0004  /* Link status                 */
-#define BMSR_ANEGCAPABLE        0x0008  /* Able to do auto-negotiation */
-#define BMSR_RFAULT             0x0010  /* Remote fault detected       */
-#define BMSR_ANEGCOMPLETE       0x0020  /* Auto-negotiation complete   */
-#define BMSR_RESV               0x00c0  /* Unused...                   */
-#define BMSR_ESTATEN		0x0100	/* Extended Status in R15 */
-#define BMSR_100HALF2           0x0200  /* Can do 100BASE-T2 HDX */
-#define BMSR_100FULL2           0x0400  /* Can do 100BASE-T2 FDX */
-#define BMSR_10HALF             0x0800  /* Can do 10mbps, half-duplex  */
-#define BMSR_10FULL             0x1000  /* Can do 10mbps, full-duplex  */
-#define BMSR_100HALF            0x2000  /* Can do 100mbps, half-duplex */
-#define BMSR_100FULL            0x4000  /* Can do 100mbps, full-duplex */
-#define BMSR_100BASE4           0x8000  /* Can do 100mbps, 4k packets  */
-
-/* Advertisement control register. */
-#define ADVERTISE_SLCT          0x001f  /* Selector bits               */
-#define ADVERTISE_CSMA          0x0001  /* Only selector supported     */
-#define ADVERTISE_10HALF        0x0020  /* Try for 10mbps half-duplex  */
-#define ADVERTISE_1000XFULL     0x0020  /* Try for 1000BASE-X full-duplex */
-#define ADVERTISE_10FULL        0x0040  /* Try for 10mbps full-duplex  */
-#define ADVERTISE_1000XHALF     0x0040  /* Try for 1000BASE-X half-duplex */
-#define ADVERTISE_100HALF       0x0080  /* Try for 100mbps half-duplex */
-#define ADVERTISE_1000XPAUSE    0x0080  /* Try for 1000BASE-X pause    */
-#define ADVERTISE_100FULL       0x0100  /* Try for 100mbps full-duplex */
-#define ADVERTISE_1000XPSE_ASYM 0x0100  /* Try for 1000BASE-X asym pause */
-#define ADVERTISE_100BASE4      0x0200  /* Try for 100mbps 4k packets  */
-#define ADVERTISE_PAUSE_CAP     0x0400  /* Try for pause               */
-#define ADVERTISE_PAUSE_ASYM    0x0800  /* Try for asymetric pause     */
-#define ADVERTISE_RESV          0x1000  /* Unused...                   */
-#define ADVERTISE_RFAULT        0x2000  /* Say we can detect faults    */
-#define ADVERTISE_LPACK         0x4000  /* Ack link partners response  */
-#define ADVERTISE_NPAGE         0x8000  /* Next page bit               */
-
-#define ADVERTISE_FULL (ADVERTISE_100FULL | ADVERTISE_10FULL | \
-			ADVERTISE_CSMA)
-#define ADVERTISE_ALL (ADVERTISE_10HALF | ADVERTISE_10FULL | \
-                       ADVERTISE_100HALF | ADVERTISE_100FULL)
-
-/* Link partner ability register. */
-#define LPA_SLCT                0x001f  /* Same as advertise selector  */
-#define LPA_10HALF              0x0020  /* Can do 10mbps half-duplex   */
-#define LPA_1000XFULL           0x0020  /* Can do 1000BASE-X full-duplex */
-#define LPA_10FULL              0x0040  /* Can do 10mbps full-duplex   */
-#define LPA_1000XHALF           0x0040  /* Can do 1000BASE-X half-duplex */
-#define LPA_100HALF             0x0080  /* Can do 100mbps half-duplex  */
-#define LPA_1000XPAUSE          0x0080  /* Can do 1000BASE-X pause     */
-#define LPA_100FULL             0x0100  /* Can do 100mbps full-duplex  */
-#define LPA_1000XPAUSE_ASYM     0x0100  /* Can do 1000BASE-X pause asym*/
-#define LPA_100BASE4            0x0200  /* Can do 100mbps 4k packets   */
-#define LPA_PAUSE_CAP           0x0400  /* Can pause                   */
-#define LPA_PAUSE_ASYM          0x0800  /* Can pause asymetrically     */
-#define LPA_RESV                0x1000  /* Unused...                   */
-#define LPA_RFAULT              0x2000  /* Link partner faulted        */
-#define LPA_LPACK               0x4000  /* Link partner acked us       */
-#define LPA_NPAGE               0x8000  /* Next page bit               */
-
-#define LPA_DUPLEX		(LPA_10FULL | LPA_100FULL)
-#define LPA_100			(LPA_100FULL | LPA_100HALF | LPA_100BASE4)
-
-/* Expansion register for auto-negotiation. */
-#define EXPANSION_NWAY          0x0001  /* Can do N-way auto-nego      */
-#define EXPANSION_LCWP          0x0002  /* Got new RX page code word   */
-#define EXPANSION_ENABLENPAGE   0x0004  /* This enables npage words    */
-#define EXPANSION_NPCAPABLE     0x0008  /* Link partner supports npage */
-#define EXPANSION_MFAULTS       0x0010  /* Multiple faults detected    */
-#define EXPANSION_RESV          0xffe0  /* Unused...                   */
-
-#define ESTATUS_1000_TFULL	0x2000	/* Can do 1000BT Full */
-#define ESTATUS_1000_THALF	0x1000	/* Can do 1000BT Half */
-
-/* N-way test register. */
-#define NWAYTEST_RESV1          0x00ff  /* Unused...                   */
-#define NWAYTEST_LOOPBACK       0x0100  /* Enable loopback for N-way   */
-#define NWAYTEST_RESV2          0xfe00  /* Unused...                   */
-
-/* 1000BASE-T Control register */
-#define ADVERTISE_1000FULL      0x0200  /* Advertise 1000BASE-T full duplex */
-#define ADVERTISE_1000HALF      0x0100  /* Advertise 1000BASE-T half duplex */
-
-/* 1000BASE-T Status register */
-#define LPA_1000LOCALRXOK       0x2000  /* Link partner local receiver status */
-#define LPA_1000REMRXOK         0x1000  /* Link partner remote receiver status */
-#define LPA_1000FULL            0x0800  /* Link partner 1000BASE-T full duplex */
-#define LPA_1000HALF            0x0400  /* Link partner 1000BASE-T half duplex */
-
-/* Flow control flags */
-#define FLOW_CTRL_TX		0x01
-#define FLOW_CTRL_RX		0x02
-
-/**
- * mii_nway_result
- * @negotiated: value of MII ANAR and'd with ANLPAR
- *
- * Given a set of MII abilities, check each bit and returns the
- * currently supported media, in the priority order defined by
- * IEEE 802.3u.  We use LPA_xxx constants but note this is not the
- * value of LPA solely, as described above.
- *
- * The one exception to IEEE 802.3u is that 100baseT4 is placed
- * between 100T-full and 100T-half.  If your phy does not support
- * 100T4 this is fine.  If your phy places 100T4 elsewhere in the
- * priority order, you will need to roll your own function.
- */
-static inline unsigned int mii_nway_result (unsigned int negotiated)
-{
-	unsigned int ret;
-
-	if (negotiated & LPA_100FULL)
-		ret = LPA_100FULL;
-	else if (negotiated & LPA_100BASE4)
-		ret = LPA_100BASE4;
-	else if (negotiated & LPA_100HALF)
-		ret = LPA_100HALF;
-	else if (negotiated & LPA_10FULL)
-		ret = LPA_10FULL;
-	else
-		ret = LPA_10HALF;
-
-	return ret;
-}
-
-/**
- * mii_duplex
- * @duplex_lock: Non-zero if duplex is locked at full
- * @negotiated: value of MII ANAR and'd with ANLPAR
- *
- * A small helper function for a common case.  Returns one
- * if the media is operating or locked at full duplex, and
- * returns zero otherwise.
- */
-static inline unsigned int mii_duplex (unsigned int duplex_lock,
-				       unsigned int negotiated)
-{
-	if (duplex_lock)
-		return 1;
-	if (mii_nway_result(negotiated) & LPA_DUPLEX)
-		return 1;
-	return 0;
-}
-
-/**
- * mii_advertise_flowctrl - get flow control advertisement flags
- * @cap: Flow control capabilities (FLOW_CTRL_RX, FLOW_CTRL_TX or both)
- */
-static inline u16 mii_advertise_flowctrl(int cap)
-{
-	u16 adv = 0;
-
-	if (cap & FLOW_CTRL_RX)
-		adv = ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM;
-	if (cap & FLOW_CTRL_TX)
-		adv ^= ADVERTISE_PAUSE_ASYM;
-
-	return adv;
-}
-
-/**
- * mii_resolve_flowctrl_fdx
- * @lcladv: value of MII ADVERTISE register
- * @rmtadv: value of MII LPA register
- *
- * Resolve full duplex flow control as per IEEE 802.3-2005 table 28B-3
- */
-static inline u8 mii_resolve_flowctrl_fdx(u16 lcladv, u16 rmtadv)
-{
-	u8 cap = 0;
-
-	if (lcladv & rmtadv & ADVERTISE_PAUSE_CAP) {
-		cap = FLOW_CTRL_TX | FLOW_CTRL_RX;
-	} else if (lcladv & rmtadv & ADVERTISE_PAUSE_ASYM) {
-		if (lcladv & ADVERTISE_PAUSE_CAP)
-			cap = FLOW_CTRL_RX;
-		else if (rmtadv & ADVERTISE_PAUSE_CAP)
-			cap = FLOW_CTRL_TX;
-	}
-
-	return cap;
-}
-
-#endif /* __LINUX_MII_H__ */
+/*
+ * linux/mii.h: definitions for MII-compatible transceivers
+ * Originally drivers/net/sunhme.h.
+ *
+ * Copyright (C) 1996, 1999, 2001 David S. Miller (davem@redhat.com)
+ */
+
+#ifndef __LINUX_MII_H__
+#define __LINUX_MII_H__
+
+#include <linux/types.h>
+#include <linux/ethtool.h>
+
+/* Generic MII registers. */
+#define MII_BMCR		0x00	/* Basic mode control register */
+#define MII_BMSR		0x01	/* Basic mode status register  */
+#define MII_PHYSID1		0x02	/* PHYS ID 1                   */
+#define MII_PHYSID2		0x03	/* PHYS ID 2                   */
+#define MII_ADVERTISE		0x04	/* Advertisement control reg   */
+#define MII_LPA			0x05	/* Link partner ability reg    */
+#define MII_EXPANSION		0x06	/* Expansion register          */
+#define MII_CTRL1000		0x09	/* 1000BASE-T control          */
+#define MII_STAT1000		0x0a	/* 1000BASE-T status           */
+#define	MII_MMD_CTRL		0x0d	/* MMD Access Control Register */
+#define	MII_MMD_DATA		0x0e	/* MMD Access Data Register */
+#define MII_ESTATUS		0x0f	/* Extended Status             */
+#define MII_DCOUNTER		0x12	/* Disconnect counter          */
+#define MII_FCSCOUNTER		0x13	/* False carrier counter       */
+#define MII_NWAYTEST		0x14	/* N-way auto-neg test reg     */
+#define MII_RERRCOUNTER		0x15	/* Receive error counter       */
+#define MII_SREVISION		0x16	/* Silicon revision            */
+#define MII_RESV1		0x17	/* Reserved...                 */
+#define MII_LBRERROR		0x18	/* Lpback, rx, bypass error    */
+#define MII_PHYADDR		0x19	/* PHY address                 */
+#define MII_RESV2		0x1a	/* Reserved...                 */
+#define MII_TPISTATUS		0x1b	/* TPI status for 10mbps       */
+#define MII_NCONFIG		0x1c	/* Network interface config    */
+
+/* Basic mode control register. */
+#define BMCR_RESV		0x003f	/* Unused...                   */
+#define BMCR_SPEED1000		0x0040	/* MSB of Speed (1000)         */
+#define BMCR_CTST		0x0080	/* Collision test              */
+#define BMCR_FULLDPLX		0x0100	/* Full duplex                 */
+#define BMCR_ANRESTART		0x0200	/* Auto negotiation restart    */
+#define BMCR_ISOLATE		0x0400	/* Isolate data paths from MII */
+#define BMCR_PDOWN		0x0800	/* Enable low power state      */
+#define BMCR_ANENABLE		0x1000	/* Enable auto negotiation     */
+#define BMCR_SPEED100		0x2000	/* Select 100Mbps              */
+#define BMCR_LOOPBACK		0x4000	/* TXD loopback bits           */
+#define BMCR_RESET		0x8000	/* Reset to default state      */
+
+/* Basic mode status register. */
+#define BMSR_ERCAP		0x0001	/* Ext-reg capability          */
+#define BMSR_JCD		0x0002	/* Jabber detected             */
+#define BMSR_LSTATUS		0x0004	/* Link status                 */
+#define BMSR_ANEGCAPABLE	0x0008	/* Able to do auto-negotiation */
+#define BMSR_RFAULT		0x0010	/* Remote fault detected       */
+#define BMSR_ANEGCOMPLETE	0x0020	/* Auto-negotiation complete   */
+#define BMSR_RESV		0x00c0	/* Unused...                   */
+#define BMSR_ESTATEN		0x0100	/* Extended Status in R15      */
+#define BMSR_100HALF2		0x0200	/* Can do 100BASE-T2 HDX       */
+#define BMSR_100FULL2		0x0400	/* Can do 100BASE-T2 FDX       */
+#define BMSR_10HALF		0x0800	/* Can do 10mbps, half-duplex  */
+#define BMSR_10FULL		0x1000	/* Can do 10mbps, full-duplex  */
+#define BMSR_100HALF		0x2000	/* Can do 100mbps, half-duplex */
+#define BMSR_100FULL		0x4000	/* Can do 100mbps, full-duplex */
+#define BMSR_100BASE4		0x8000	/* Can do 100mbps, 4k packets  */
+
+/* Advertisement control register. */
+#define ADVERTISE_SLCT		0x001f	/* Selector bits               */
+#define ADVERTISE_CSMA		0x0001	/* Only selector supported     */
+#define ADVERTISE_10HALF	0x0020	/* Try for 10mbps half-duplex  */
+#define ADVERTISE_1000XFULL	0x0020	/* Try for 1000BASE-X full-duplex */
+#define ADVERTISE_10FULL	0x0040	/* Try for 10mbps full-duplex  */
+#define ADVERTISE_1000XHALF	0x0040	/* Try for 1000BASE-X half-duplex */
+#define ADVERTISE_100HALF	0x0080	/* Try for 100mbps half-duplex */
+#define ADVERTISE_1000XPAUSE	0x0080	/* Try for 1000BASE-X pause    */
+#define ADVERTISE_100FULL	0x0100	/* Try for 100mbps full-duplex */
+#define ADVERTISE_1000XPSE_ASYM	0x0100	/* Try for 1000BASE-X asym pause */
+#define ADVERTISE_100BASE4	0x0200	/* Try for 100mbps 4k packets  */
+#define ADVERTISE_PAUSE_CAP	0x0400	/* Try for pause               */
+#define ADVERTISE_PAUSE_ASYM	0x0800	/* Try for asymetric pause     */
+#define ADVERTISE_RESV		0x1000	/* Unused...                   */
+#define ADVERTISE_RFAULT	0x2000	/* Say we can detect faults    */
+#define ADVERTISE_LPACK		0x4000	/* Ack link partners response  */
+#define ADVERTISE_NPAGE		0x8000	/* Next page bit               */
+
+#define ADVERTISE_FULL		(ADVERTISE_100FULL | ADVERTISE_10FULL | \
+				  ADVERTISE_CSMA)
+#define ADVERTISE_ALL		(ADVERTISE_10HALF | ADVERTISE_10FULL | \
+				  ADVERTISE_100HALF | ADVERTISE_100FULL)
+
+/* Link partner ability register. */
+#define LPA_SLCT		0x001f	/* Same as advertise selector  */
+#define LPA_10HALF		0x0020	/* Can do 10mbps half-duplex   */
+#define LPA_1000XFULL		0x0020	/* Can do 1000BASE-X full-duplex */
+#define LPA_10FULL		0x0040	/* Can do 10mbps full-duplex   */
+#define LPA_1000XHALF		0x0040	/* Can do 1000BASE-X half-duplex */
+#define LPA_100HALF		0x0080	/* Can do 100mbps half-duplex  */
+#define LPA_1000XPAUSE		0x0080	/* Can do 1000BASE-X pause     */
+#define LPA_100FULL		0x0100	/* Can do 100mbps full-duplex  */
+#define LPA_1000XPAUSE_ASYM	0x0100	/* Can do 1000BASE-X pause asym*/
+#define LPA_100BASE4		0x0200	/* Can do 100mbps 4k packets   */
+#define LPA_PAUSE_CAP		0x0400	/* Can pause                   */
+#define LPA_PAUSE_ASYM		0x0800	/* Can pause asymetrically     */
+#define LPA_RESV		0x1000	/* Unused...                   */
+#define LPA_RFAULT		0x2000	/* Link partner faulted        */
+#define LPA_LPACK		0x4000	/* Link partner acked us       */
+#define LPA_NPAGE		0x8000	/* Next page bit               */
+
+#define LPA_DUPLEX		(LPA_10FULL | LPA_100FULL)
+#define LPA_100			(LPA_100FULL | LPA_100HALF | LPA_100BASE4)
+
+/* Expansion register for auto-negotiation. */
+#define EXPANSION_NWAY		0x0001	/* Can do N-way auto-nego      */
+#define EXPANSION_LCWP		0x0002	/* Got new RX page code word   */
+#define EXPANSION_ENABLENPAGE	0x0004	/* This enables npage words    */
+#define EXPANSION_NPCAPABLE	0x0008	/* Link partner supports npage */
+#define EXPANSION_MFAULTS	0x0010	/* Multiple faults detected    */
+#define EXPANSION_RESV		0xffe0	/* Unused...                   */
+
+#define ESTATUS_1000_TFULL	0x2000	/* Can do 1000BT Full          */
+#define ESTATUS_1000_THALF	0x1000	/* Can do 1000BT Half          */
+
+/* N-way test register. */
+#define NWAYTEST_RESV1		0x00ff	/* Unused...                   */
+#define NWAYTEST_LOOPBACK	0x0100	/* Enable loopback for N-way   */
+#define NWAYTEST_RESV2		0xfe00	/* Unused...                   */
+
+/* 1000BASE-T Control register */
+#define ADVERTISE_1000FULL	0x0200  /* Advertise 1000BASE-T full duplex */
+#define ADVERTISE_1000HALF	0x0100  /* Advertise 1000BASE-T half duplex */
+#define CTL1000_AS_MASTER	0x0800
+#define CTL1000_ENABLE_MASTER	0x1000
+
+/* 1000BASE-T Status register */
+#define LPA_1000LOCALRXOK	0x2000	/* Link partner local receiver status */
+#define LPA_1000REMRXOK		0x1000	/* Link partner remote receiver status */
+#define LPA_1000FULL		0x0800	/* Link partner 1000BASE-T full duplex */
+#define LPA_1000HALF		0x0400	/* Link partner 1000BASE-T half duplex */
+
+/* Flow control flags */
+#define FLOW_CTRL_TX		0x01
+#define FLOW_CTRL_RX		0x02
+
+/* MMD Access Control register fields */
+#define MII_MMD_CTRL_DEVAD_MASK	0x1f	/* Mask MMD DEVAD*/
+#define MII_MMD_CTRL_ADDR	0x0000	/* Address */
+#define MII_MMD_CTRL_NOINCR	0x4000	/* no post increment */
+#define MII_MMD_CTRL_INCR_RDWT	0x8000	/* post increment on reads & writes */
+#define MII_MMD_CTRL_INCR_ON_WT	0xC000	/* post increment on writes only */
+
+
+/**
+ * mii_nway_result
+ * @negotiated: value of MII ANAR and'd with ANLPAR
+ *
+ * Given a set of MII abilities, check each bit and returns the
+ * currently supported media, in the priority order defined by
+ * IEEE 802.3u.  We use LPA_xxx constants but note this is not the
+ * value of LPA solely, as described above.
+ *
+ * The one exception to IEEE 802.3u is that 100baseT4 is placed
+ * between 100T-full and 100T-half.  If your phy does not support
+ * 100T4 this is fine.  If your phy places 100T4 elsewhere in the
+ * priority order, you will need to roll your own function.
+ */
+static inline unsigned int mii_nway_result (unsigned int negotiated)
+{
+	unsigned int ret;
+
+	if (negotiated & LPA_100FULL)
+		ret = LPA_100FULL;
+	else if (negotiated & LPA_100BASE4)
+		ret = LPA_100BASE4;
+	else if (negotiated & LPA_100HALF)
+		ret = LPA_100HALF;
+	else if (negotiated & LPA_10FULL)
+		ret = LPA_10FULL;
+	else
+		ret = LPA_10HALF;
+
+	return ret;
+}
+
+/**
+ * mii_duplex
+ * @duplex_lock: Non-zero if duplex is locked at full
+ * @negotiated: value of MII ANAR and'd with ANLPAR
+ *
+ * A small helper function for a common case.  Returns one
+ * if the media is operating or locked at full duplex, and
+ * returns zero otherwise.
+ */
+static inline unsigned int mii_duplex (unsigned int duplex_lock,
+				       unsigned int negotiated)
+{
+	if (duplex_lock)
+		return 1;
+	if (mii_nway_result(negotiated) & LPA_DUPLEX)
+		return 1;
+	return 0;
+}
+
+/**
+ * ethtool_adv_to_mii_adv_t
+ * @ethadv: the ethtool advertisement settings
+ *
+ * A small helper function that translates ethtool advertisement
+ * settings to phy autonegotiation advertisements for the
+ * MII_ADVERTISE register.
+ */
+static inline u32 ethtool_adv_to_mii_adv_t(u32 ethadv)
+{
+	u32 result = 0;
+
+	if (ethadv & ADVERTISED_10baseT_Half)
+		result |= ADVERTISE_10HALF;
+	if (ethadv & ADVERTISED_10baseT_Full)
+		result |= ADVERTISE_10FULL;
+	if (ethadv & ADVERTISED_100baseT_Half)
+		result |= ADVERTISE_100HALF;
+	if (ethadv & ADVERTISED_100baseT_Full)
+		result |= ADVERTISE_100FULL;
+	if (ethadv & ADVERTISED_Pause)
+		result |= ADVERTISE_PAUSE_CAP;
+	if (ethadv & ADVERTISED_Asym_Pause)
+		result |= ADVERTISE_PAUSE_ASYM;
+
+	return result;
+}
+
+/**
+ * mii_adv_to_ethtool_adv_t
+ * @adv: value of the MII_ADVERTISE register
+ *
+ * A small helper function that translates MII_ADVERTISE bits
+ * to ethtool advertisement settings.
+ */
+static inline u32 mii_adv_to_ethtool_adv_t(u32 adv)
+{
+	u32 result = 0;
+
+	if (adv & ADVERTISE_10HALF)
+		result |= ADVERTISED_10baseT_Half;
+	if (adv & ADVERTISE_10FULL)
+		result |= ADVERTISED_10baseT_Full;
+	if (adv & ADVERTISE_100HALF)
+		result |= ADVERTISED_100baseT_Half;
+	if (adv & ADVERTISE_100FULL)
+		result |= ADVERTISED_100baseT_Full;
+	if (adv & ADVERTISE_PAUSE_CAP)
+		result |= ADVERTISED_Pause;
+	if (adv & ADVERTISE_PAUSE_ASYM)
+		result |= ADVERTISED_Asym_Pause;
+
+	return result;
+}
+
+/**
+ * ethtool_adv_to_mii_ctrl1000_t
+ * @ethadv: the ethtool advertisement settings
+ *
+ * A small helper function that translates ethtool advertisement
+ * settings to phy autonegotiation advertisements for the
+ * MII_CTRL1000 register when in 1000T mode.
+ */
+static inline u32 ethtool_adv_to_mii_ctrl1000_t(u32 ethadv)
+{
+	u32 result = 0;
+
+	if (ethadv & ADVERTISED_1000baseT_Half)
+		result |= ADVERTISE_1000HALF;
+	if (ethadv & ADVERTISED_1000baseT_Full)
+		result |= ADVERTISE_1000FULL;
+
+	return result;
+}
+
+/**
+ * mii_ctrl1000_to_ethtool_adv_t
+ * @adv: value of the MII_CTRL1000 register
+ *
+ * A small helper function that translates MII_CTRL1000
+ * bits, when in 1000Base-T mode, to ethtool
+ * advertisement settings.
+ */
+static inline u32 mii_ctrl1000_to_ethtool_adv_t(u32 adv)
+{
+	u32 result = 0;
+
+	if (adv & ADVERTISE_1000HALF)
+		result |= ADVERTISED_1000baseT_Half;
+	if (adv & ADVERTISE_1000FULL)
+		result |= ADVERTISED_1000baseT_Full;
+
+	return result;
+}
+
+/**
+ * mii_lpa_to_ethtool_lpa_t
+ * @adv: value of the MII_LPA register
+ *
+ * A small helper function that translates MII_LPA
+ * bits, when in 1000Base-T mode, to ethtool
+ * LP advertisement settings.
+ */
+static inline u32 mii_lpa_to_ethtool_lpa_t(u32 lpa)
+{
+	u32 result = 0;
+
+	if (lpa & LPA_LPACK)
+		result |= ADVERTISED_Autoneg;
+
+	return result | mii_adv_to_ethtool_adv_t(lpa);
+}
+
+/**
+ * mii_stat1000_to_ethtool_lpa_t
+ * @adv: value of the MII_STAT1000 register
+ *
+ * A small helper function that translates MII_STAT1000
+ * bits, when in 1000Base-T mode, to ethtool
+ * advertisement settings.
+ */
+static inline u32 mii_stat1000_to_ethtool_lpa_t(u32 lpa)
+{
+	u32 result = 0;
+
+	if (lpa & LPA_1000HALF)
+		result |= ADVERTISED_1000baseT_Half;
+	if (lpa & LPA_1000FULL)
+		result |= ADVERTISED_1000baseT_Full;
+
+	return result;
+}
+
+/**
+ * ethtool_adv_to_mii_adv_x
+ * @ethadv: the ethtool advertisement settings
+ *
+ * A small helper function that translates ethtool advertisement
+ * settings to phy autonegotiation advertisements for the
+ * MII_CTRL1000 register when in 1000Base-X mode.
+ */
+static inline u32 ethtool_adv_to_mii_adv_x(u32 ethadv)
+{
+	u32 result = 0;
+
+	if (ethadv & ADVERTISED_1000baseT_Half)
+		result |= ADVERTISE_1000XHALF;
+	if (ethadv & ADVERTISED_1000baseT_Full)
+		result |= ADVERTISE_1000XFULL;
+	if (ethadv & ADVERTISED_Pause)
+		result |= ADVERTISE_1000XPAUSE;
+	if (ethadv & ADVERTISED_Asym_Pause)
+		result |= ADVERTISE_1000XPSE_ASYM;
+
+	return result;
+}
+
+/**
+ * mii_adv_to_ethtool_adv_x
+ * @adv: value of the MII_CTRL1000 register
+ *
+ * A small helper function that translates MII_CTRL1000
+ * bits, when in 1000Base-X mode, to ethtool
+ * advertisement settings.
+ */
+static inline u32 mii_adv_to_ethtool_adv_x(u32 adv)
+{
+	u32 result = 0;
+
+	if (adv & ADVERTISE_1000XHALF)
+		result |= ADVERTISED_1000baseT_Half;
+	if (adv & ADVERTISE_1000XFULL)
+		result |= ADVERTISED_1000baseT_Full;
+	if (adv & ADVERTISE_1000XPAUSE)
+		result |= ADVERTISED_Pause;
+	if (adv & ADVERTISE_1000XPSE_ASYM)
+		result |= ADVERTISED_Asym_Pause;
+
+	return result;
+}
+
+/**
+ * mii_lpa_to_ethtool_lpa_x
+ * @adv: value of the MII_LPA register
+ *
+ * A small helper function that translates MII_LPA
+ * bits, when in 1000Base-X mode, to ethtool
+ * LP advertisement settings.
+ */
+static inline u32 mii_lpa_to_ethtool_lpa_x(u32 lpa)
+{
+	u32 result = 0;
+
+	if (lpa & LPA_LPACK)
+		result |= ADVERTISED_Autoneg;
+
+	return result | mii_adv_to_ethtool_adv_x(lpa);
+}
+
+/**
+ * mii_advertise_flowctrl - get flow control advertisement flags
+ * @cap: Flow control capabilities (FLOW_CTRL_RX, FLOW_CTRL_TX or both)
+ */
+static inline u16 mii_advertise_flowctrl(int cap)
+{
+	u16 adv = 0;
+
+	if (cap & FLOW_CTRL_RX)
+		adv = ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM;
+	if (cap & FLOW_CTRL_TX)
+		adv ^= ADVERTISE_PAUSE_ASYM;
+
+	return adv;
+}
+
+/**
+ * mii_resolve_flowctrl_fdx
+ * @lcladv: value of MII ADVERTISE register
+ * @rmtadv: value of MII LPA register
+ *
+ * Resolve full duplex flow control as per IEEE 802.3-2005 table 28B-3
+ */
+static inline u8 mii_resolve_flowctrl_fdx(u16 lcladv, u16 rmtadv)
+{
+	u8 cap = 0;
+
+	if (lcladv & rmtadv & ADVERTISE_PAUSE_CAP) {
+		cap = FLOW_CTRL_TX | FLOW_CTRL_RX;
+	} else if (lcladv & rmtadv & ADVERTISE_PAUSE_ASYM) {
+		if (lcladv & ADVERTISE_PAUSE_CAP)
+			cap = FLOW_CTRL_RX;
+		else if (rmtadv & ADVERTISE_PAUSE_CAP)
+			cap = FLOW_CTRL_TX;
+	}
+
+	return cap;
+}
+
+#endif /* __LINUX_MII_H__ */
diff --git a/include/linux/phy.h b/include/linux/phy.h
new file mode 100644
index 0000000..8fe6b86
--- /dev/null
+++ b/include/linux/phy.h
@@ -0,0 +1,266 @@
+/*
+ * Copyright (c) 2009-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Author: Andy Fleming
+ *
+ * Copyright (c) 2004 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute  it and/or modify it
+ * under  the terms of  the GNU General  Public License as published by the
+ * Free Software Foundation;  either version 2 of the  License, or (at your
+ * option) any later version.
+ *
+ */
+
+#ifndef __PHY_H
+#define __PHY_H
+
+#include <linux/list.h>
+#include <linux/ethtool.h>
+#include <linux/mii.h>
+
+#define PHY_BASIC_FEATURES	(SUPPORTED_10baseT_Half | \
+				 SUPPORTED_10baseT_Full | \
+				 SUPPORTED_100baseT_Half | \
+				 SUPPORTED_100baseT_Full | \
+				 SUPPORTED_Autoneg | \
+				 SUPPORTED_TP | \
+				 SUPPORTED_MII)
+
+#define PHY_GBIT_FEATURES	(PHY_BASIC_FEATURES | \
+				 SUPPORTED_1000baseT_Half | \
+				 SUPPORTED_1000baseT_Full)
+
+/* Interface Mode definitions */
+typedef enum {
+	PHY_INTERFACE_MODE_NA,
+	PHY_INTERFACE_MODE_MII,
+	PHY_INTERFACE_MODE_GMII,
+	PHY_INTERFACE_MODE_SGMII,
+	PHY_INTERFACE_MODE_TBI,
+	PHY_INTERFACE_MODE_RMII,
+	PHY_INTERFACE_MODE_RGMII,
+	PHY_INTERFACE_MODE_RGMII_ID,
+	PHY_INTERFACE_MODE_RGMII_RXID,
+	PHY_INTERFACE_MODE_RGMII_TXID,
+	PHY_INTERFACE_MODE_RTBI,
+	PHY_INTERFACE_MODE_SMII,
+} phy_interface_t;
+
+#define PHY_INIT_TIMEOUT	100000
+#define PHY_FORCE_TIMEOUT	10
+#define PHY_AN_TIMEOUT		10
+
+#define PHY_MAX_ADDR	32
+
+/*
+ * Need to be a little smaller than phydev->dev.bus_id to leave room
+ * for the ":%02x"
+ */
+#define MII_BUS_ID_SIZE	(20 - 3)
+
+#define PHYLIB_FORCE_10		(1 << 0)
+#define PHYLIB_FORCE_LINK	(1 << 1)
+
+#define PHYLIB_CAPABLE_1000M	(1 << 0)
+
+/*
+ * The Bus class for PHYs.  Devices which provide access to
+ * PHYs should register using this structure
+ */
+struct mii_bus {
+	void *priv;
+	int (*read)(struct mii_bus *bus, int phy_id, int regnum);
+	int (*write)(struct mii_bus *bus, int phy_id, int regnum, u16 val);
+	int (*reset)(struct mii_bus *bus);
+
+	struct device_d *parent;
+
+	struct device_d dev;
+
+	/* list of all PHYs on bus */
+	struct phy_device *phy_map[PHY_MAX_ADDR];
+
+	/* PHY addresses to be ignored when probing */
+	u32 phy_mask;
+};
+#define to_mii_bus(d) container_of(d, struct mii_bus, dev)
+
+int mdiobus_register(struct mii_bus *bus);
+void mdiobus_unregister(struct mii_bus *bus);
+struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
+
+/**
+ * mdiobus_read - Convenience function for reading a given MII mgmt register
+ * @bus: the mii_bus struct
+ * @addr: the phy address
+ * @regnum: register number to read
+ */
+static inline int mdiobus_read(struct mii_bus *bus, int addr, u32 regnum)
+{
+	return bus->read(bus, addr, regnum);
+}
+
+/**
+ * mdiobus_write - Convenience function for writing a given MII mgmt register
+ * @bus: the mii_bus struct
+ * @addr: the phy address
+ * @regnum: register number to write
+ * @val: value to write to @regnum
+ */
+static inline int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val)
+{
+	return bus->write(bus, addr, regnum, val);
+}
+
+/* phy_device: An instance of a PHY
+ *
+ * bus: Pointer to the bus this PHY is on
+ * dev: driver model device structure for this PHY
+ * phy_id: UID for this device found during discovery
+ * dev_flags: Device-specific flags used by the PHY driver.
+ * addr: Bus address of PHY
+ * attached_dev: The attached enet driver's device instance ptr
+ *
+ * speed, duplex, pause, supported, advertising, and
+ * autoneg are used like in mii_if_info
+ */
+struct phy_device {
+	struct mii_bus *bus;
+
+	struct device_d dev;
+
+	u32 phy_id;
+
+	u32 dev_flags;
+
+	phy_interface_t interface;
+
+	/* Bus address of the PHY (0-31) */
+	int addr;
+
+	/*
+	 * forced speed & duplex (no autoneg)
+	 * partner speed & duplex & pause (autoneg)
+	 */
+	int speed;
+	int duplex;
+	int pause;
+	int asym_pause;
+
+	/* The most recently read link state */
+	int link;
+
+	/* Union of PHY and Attached devices' supported modes */
+	/* See mii.h for more info */
+	u32 supported;
+	u32 advertising;
+
+	int autoneg;
+
+
+	/* private data pointer */
+	/* For use by PHYs to maintain extra state */
+	void *priv;
+
+	struct eth_device *attached_dev;
+
+	struct cdev cdev;
+};
+#define to_phy_device(d) container_of(d, struct phy_device, dev)
+
+/* struct phy_driver: Driver structure for a particular PHY type
+ *
+ * phy_id: The result of reading the UID registers of this PHY
+ *   type, and ANDing them with the phy_id_mask.  This driver
+ *   only works for PHYs with IDs which match this field
+ * phy_id_mask: Defines the important bits of the phy_id
+ * features: A list of features (speed, duplex, etc) supported
+ *   by this PHY
+ *
+ * The drivers must implement config_aneg and read_status.  All
+ * other functions are optional. Note that none of these
+ * functions should be called from interrupt time.  The goal is
+ * for the bus read/write functions to be able to block when the
+ * bus transaction is happening, and be freed up by an interrupt
+ * (The MPC85xx has this ability, though it is not currently
+ * supported in the driver).
+ */
+struct phy_driver {
+	u32 phy_id;
+	unsigned int phy_id_mask;
+	u32 features;
+
+	/*
+	 * Called to initialize the PHY,
+	 * including after a reset
+	 */
+	int (*config_init)(struct phy_device *phydev);
+
+	/*
+	 * Called during discovery.  Used to set
+	 * up device-specific structures, if any
+	 */
+	int (*probe)(struct phy_device *phydev);
+
+	/*
+	 * Configures the advertisement and resets
+	 * autonegotiation if phydev->autoneg is on,
+	 * forces the speed to the current settings in phydev
+	 * if phydev->autoneg is off
+	 */
+	int (*config_aneg)(struct phy_device *phydev);
+
+	/* Determines the negotiated speed and duplex */
+	int (*read_status)(struct phy_device *phydev);
+
+	/* Clears up any memory if needed */
+	void (*remove)(struct phy_device *phydev);
+
+	struct driver_d	 drv;
+};
+#define to_phy_driver(d) container_of(d, struct phy_driver, drv)
+
+#define PHY_ANY_ID "MATCH ANY PHY"
+#define PHY_ANY_UID 0xffffffff
+
+int phy_driver_register(struct phy_driver *drv);
+struct phy_device *get_phy_device(struct mii_bus *bus, int addr);
+int phy_init(void);
+
+/**
+ * phy_read - Convenience function for reading a given PHY register
+ * @phydev: the phy_device struct
+ * @regnum: register number to read
+ */
+static inline int phy_read(struct phy_device *phydev, u32 regnum)
+{
+	return mdiobus_read(phydev->bus, phydev->addr, regnum);
+}
+
+/**
+ * phy_write - Convenience function for writing a given PHY register
+ * @phydev: the phy_device struct
+ * @regnum: register number to write
+ * @val: value to write to @regnum
+ */
+static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 val)
+{
+	return mdiobus_write(phydev->bus, phydev->addr, regnum, val);
+}
+
+int phy_device_connect(struct eth_device *dev, struct mii_bus *bus, int addr,
+		       void (*adjust_link) (struct eth_device *edev),
+		       u32 flags, phy_interface_t interface);
+
+/* Generic PHY support and helper functions */
+int genphy_restart_aneg(struct phy_device *phydev);
+int genphy_config_aneg(struct phy_device *phydev);
+int genphy_update_link(struct phy_device *phydev);
+int genphy_read_status(struct phy_device *phydev);
+int genphy_config_advert(struct phy_device *phydev);
+int genphy_setup_forced(struct phy_device *phydev);
+int get_phy_id(struct mii_bus *bus, int addr, u32 *phy_id);
+
+extern struct bus_type mdio_bus_type;
+#endif /* __PHYDEV_H__ */
diff --git a/include/miidev.h b/include/miidev.h
index 4bbf94c..13f8f85 100644
--- a/include/miidev.h
+++ b/include/miidev.h
@@ -22,56 +22,23 @@
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
  * MA 02111-1307 USA
  */
-#ifndef __MIIDEV_H__
-#define __MIIDEV_H__
+#ifndef __PHYLIB_H__
+#define __PHYLIB_H__
 
 #include <driver.h>
 #include <linux/mii.h>
 
-#define MIIDEV_FORCE_10		(1 << 0)
-#define MIIDEV_FORCE_LINK	(1 << 1)
-
-#define MIIDEV_CAPABLE_1000M	(1 << 0)
-
-struct mii_device {
+struct mii_bus {
 	struct device_d dev;
 	struct device_d *parent;
+	void *priv;
 
-	int address;	/* The address the phy has on the bus */
-	int	(*read) (struct mii_device *dev, int addr, int reg);
-	int	(*write) (struct mii_device *dev, int addr, int reg, int value);
-
-	int flags;
-	int capabilities;
-
-	struct eth_device *edev;
-	struct cdev cdev;
-	struct list_head list;
+	int	(*read) (struct mii_bus *dev, int addr, int reg);
+	int	(*write) (struct mii_bus *dev, int addr, int reg, int value);
 };
 
-int mii_register(struct mii_device *dev);
-void mii_unregister(struct mii_device *mdev);
-int miidev_restart_aneg(struct mii_device *mdev);
-int miidev_wait_aneg(struct mii_device *mdev);
-int miidev_get_status(struct mii_device *mdev);
-#define MIIDEV_STATUS_IS_UP		(1 << 0)
-#define MIIDEV_STATUS_IS_FULL_DUPLEX	(1 << 1)
-#define MIIDEV_STATUS_IS_10MBIT		(1 << 2)
-#define MIIDEV_STATUS_IS_100MBIT	(1 << 3)
-#define MIIDEV_STATUS_IS_1000MBIT	(1 << 4)
-int miidev_print_status(struct mii_device *mdev);
-
-static int inline mii_write(struct mii_device *dev, int addr, int reg, int value)
-{
-	return dev->write(dev, addr, reg, value);
-}
-
-static int inline mii_read(struct mii_device *dev, int addr, int reg)
-{
-	return dev->read(dev, addr, reg);
-}
+int mdiobus_register(struct mii_bus *dev);
+void mdiobus_unregister(struct mii_bus *bus);
 
-struct mii_device *mii_open(const char *name);
-void mii_close(struct mii_device *mdev);
 
-#endif /* __MIIDEV_H__ */
+#endif /* __PHYLIB_H__ */
diff --git a/include/net.h b/include/net.h
index 9152943..39fad12 100644
--- a/include/net.h
+++ b/include/net.h
@@ -19,6 +19,7 @@
 #include <stdlib.h>
 #include <clock.h>
 #include <led.h>
+#include <linux/phy.h>
 #include <asm/byteorder.h>	/* for nton* / ntoh* stuff */
 
 /* How often do we retry to send packages */
@@ -44,6 +45,9 @@ struct eth_device {
 	struct eth_device *next;
 	void *priv;
 
+	/* phy device may attach itself for hardware timestamping */
+	struct phy_device *phydev;
+
 	struct device_d dev;
 	struct device_d *parent;
 
diff --git a/include/usb/usbnet.h b/include/usb/usbnet.h
index 1609b2e..cb8ff03 100644
--- a/include/usb/usbnet.h
+++ b/include/usb/usbnet.h
@@ -23,7 +23,7 @@
 #define	__LINUX_USB_USBNET_H
 
 #include <net.h>
-#include <miidev.h>
+#include <linux/phy.h>
 
 /* interface from usbnet core to each USB networking link we handle */
 struct usbnet {
@@ -40,7 +40,8 @@ struct usbnet {
 
 	/* protocol/interface state */
 	struct eth_device	edev;
-	struct mii_device	miidev;
+	struct mii_bus	miibus;
+	int			phy_addr;
 
 	int			msg_enable;
 	unsigned long		data [5];
diff --git a/net/eth.c b/net/eth.c
index c034eaa..6cfe4f2 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -27,7 +27,7 @@
 #include <driver.h>
 #include <init.h>
 #include <net.h>
-#include <miidev.h>
+#include <linux/phy.h>
 #include <errno.h>
 #include <malloc.h>
 
@@ -139,7 +139,11 @@ int eth_send(void *packet, int length)
 		ret = eth_current->open(eth_current);
 		if (ret)
 			return ret;
-		eth_current->active = 1;
+
+		if (eth_current->phydev)
+			eth_current->active = eth_current->phydev->link;
+		else
+			eth_current->active = 1;
 	}
 
 	led_trigger_network(LED_TRIGGER_NET_TX);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
