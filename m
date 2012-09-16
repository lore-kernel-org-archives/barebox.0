Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDFCM-0003u5-C3
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 13:47:52 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6BF18FF98C6
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 15:53:27 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 16 Sep 2012 15:45:08 +0200
Message-Id: <1347803108-336-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120916124223.GK25990@game.jcrosoft.org>
References: <20120916124223.GK25990@game.jcrosoft.org>
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

This will allow to have
 - phy drivers
 - to only connect the phy at then opening of the device
 - if the phy is not ready or not up fail on open

Same behaviour as in linux and will allow to share code and simplify porting.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/freescale-mx6-arm2/board.c      |   41 +-
 arch/arm/boards/freescale-mx6-sabrelite/board.c |   38 +-
 drivers/net/Kconfig                             |    2 +
 drivers/net/Makefile                            |    2 +-
 drivers/net/altera_tse.c                        |   19 +-
 drivers/net/altera_tse.h                        |    1 +
 drivers/net/at91_ether.c                        |   31 +-
 drivers/net/designware.c                        |   39 +-
 drivers/net/dm9k.c                              |   11 +-
 drivers/net/ep93xx.c                            |    9 +-
 drivers/net/fec_imx.c                           |   64 ++-
 drivers/net/fec_imx.h                           |    4 +
 drivers/net/fec_mpc5200.c                       |   26 +-
 drivers/net/gianfar.c                           |   34 +-
 drivers/net/ks8851_mll.c                        |   13 +-
 drivers/net/macb.c                              |   56 +-
 drivers/net/miidev.c                            |  384 +++----------
 drivers/net/netx_eth.c                          |    9 +-
 drivers/net/phy/Kconfig                         |   17 +
 drivers/net/phy/Makefile                        |    2 +
 include/fec.h => drivers/net/phy/generic.c      |   43 +-
 drivers/net/phy/phy.c                           |  688 +++++++++++++++++++++++
 drivers/net/smc91111.c                          |   22 +-
 drivers/net/smc911x.c                           |   14 +-
 drivers/net/usb/asix.c                          |    3 +-
 drivers/net/usb/smsc95xx.c                      |    3 +-
 drivers/net/usb/usbnet.c                        |   11 +-
 include/fec.h                                   |    3 +
 include/linux/ethtool.h                         |  114 ++++
 include/linux/mii.h                             |  675 ++++++++++++++--------
 include/linux/phy.h                             |  206 +++++++
 include/miidev.h                                |   18 -
 include/net.h                                   |    4 +
 include/usb/usbnet.h                            |    1 +
 net/eth.c                                       |    6 +-
 35 files changed, 1801 insertions(+), 812 deletions(-)
 rewrite drivers/net/miidev.c (76%)
 create mode 100644 drivers/net/phy/Kconfig
 create mode 100644 drivers/net/phy/Makefile
 copy include/fec.h => drivers/net/phy/generic.c (53%)
 create mode 100644 drivers/net/phy/phy.c
 create mode 100644 include/linux/ethtool.h
 rewrite include/linux/mii.h (70%)
 create mode 100644 include/linux/phy.h

diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
index e4a9a49..b9948ab 100644
--- a/arch/arm/boards/freescale-mx6-arm2/board.c
+++ b/arch/arm/boards/freescale-mx6-arm2/board.c
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
index c5bcf8b..43ef28e 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
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
 
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 3c5f729..c2b2095 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -25,6 +25,8 @@ config MIIDEV
 menu "Network drivers               "
 	depends on NET
 
+source "drivers/net/phy/Kconfig"
+
 config DRIVER_NET_CS8900
 	bool "cs8900 ethernet driver"
 	depends on HAS_CS8900
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 4d960e8..8a23900 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -9,7 +9,7 @@ obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
 obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
 obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
-obj-$(CONFIG_MIIDEV)			+= miidev.o
+obj-$(CONFIG_MIIDEV)			+= miidev.o phy/
 obj-$(CONFIG_NET_USB)			+= usb/
 obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
 obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index 5353a68..1f550a5 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -30,6 +30,7 @@
 #include <init.h>
 #include <clock.h>
 #include <linux/mii.h>
+#include <linux/phy.h>
 
 #include <io.h>
 #include <asm/dma-mapping.h>
@@ -347,9 +348,12 @@ static void tse_reset(struct eth_device *edev)
 static int tse_eth_open(struct eth_device *edev)
 {
 	struct altera_tse_priv *priv = edev->priv;
+	int ret;
 
-	miidev_wait_aneg(priv->miidev);
-	miidev_print_status(priv->miidev);
+	ret = phy_device_connect(priv->miidev, priv->phy_addr, NULL, 0,
+				 PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
 
 	return 0;
 }
@@ -488,8 +492,6 @@ static int tse_init_dev(struct eth_device *edev)
 	/* enable MAC */
 	writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK, &mac_dev->command_config);
 
-	miidev_restart_aneg(priv->miidev);
-
 	return 0;
 }
 
@@ -545,16 +547,13 @@ static int tse_probe(struct device_d *dev)
 
 	miidev->read = tse_phy_read;
 	miidev->write = tse_phy_write;
-	miidev->flags = 0;
 	miidev->edev = edev;
 	miidev->parent = dev;
 
 	if (dev->platform_data != NULL)
-		miidev->address = *((int8_t *)(dev->platform_data));
-	else {
-		printf("No PHY address specified.\n");
-		return -ENODEV;
-	}
+		priv->phy_addr = *((int8_t *)(dev->platform_data));
+	else
+		priv->phy_addr = -1;
 
 	mii_register(miidev);
 
diff --git a/drivers/net/altera_tse.h b/drivers/net/altera_tse.h
index 866dbce..d860d9c 100644
--- a/drivers/net/altera_tse.h
+++ b/drivers/net/altera_tse.h
@@ -292,6 +292,7 @@ struct altera_tse_priv {
 	void __iomem *sgdma_tx_regs;
 	void __iomem *rx_desc;
 	void __iomem *tx_desc;
+	int phy_addr;
 	struct mii_device *miidev;
 };
 
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index 3592141..ca93bf3 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -40,18 +40,18 @@
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
 	struct mii_device miidev;
 	struct rbf_t *rbfp;
 	struct rbf_t *rbfdt;
 	unsigned char *rbf_framebuf;
+	int phy_addr;
+	phy_interface_t interface;
 };
 #define to_ether(_nd) container_of(_nd, struct ether_device, netdev)
 
@@ -136,19 +136,19 @@ static int at91_ether_mii_write(struct mii_device *dev, int addr, int reg, int v
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
@@ -161,11 +161,12 @@ static int at91_ether_open(struct eth_device *edev)
 	unsigned long ctl;
 	struct ether_device *etdev = to_ether(edev);
 	unsigned char *rbf_framebuf = etdev->rbf_framebuf;
+	int ret;
 
-	miidev_wait_aneg(&etdev->miidev);
-	miidev_print_status(&etdev->miidev);
-
-	update_linkspeed(&etdev->miidev, SPEED_100, DUPLEX_FULL);
+	ret = phy_device_connect(&etdev->miidev, etdev->phy_addr,
+				 update_linkspeed, 0, etdev->interface);
+	if (ret)
+		return ret;
 
 	/* Clear internal statistics */
 	ctl = at91_emac_read(AT91_EMAC_CTL);
@@ -327,7 +328,7 @@ static int at91_ether_probe(struct device_d *dev)
 	ether_dev->rbf_framebuf = dma_alloc_coherent(MAX_RX_DESCR * MAX_RBUFF_SZ);
 	ether_dev->rbfdt = dma_alloc_coherent(sizeof(struct rbf_t) * MAX_RX_DESCR);
 
-	miidev->address = pdata->phy_addr;
+	ether_dev->phy_addr = pdata->phy_addr;
 	miidev->read = at91_ether_mii_read;
 	miidev->write = at91_ether_mii_write;
 	miidev->edev = edev;
@@ -347,8 +348,12 @@ static int at91_ether_probe(struct device_d *dev)
 
 	mac_cfg |= AT91_EMAC_CLK_DIV32 | AT91_EMAC_BIG;
 
-	if (pdata->flags & AT91SAM_ETHER_RMII)
+	if (pdata->flags & AT91SAM_ETHER_RMII) {
+		ether_dev->interface = PHY_INTERFACE_MODE_RGMII;
 		mac_cfg |= AT91_EMAC_RMII;
+	} else {
+		ether_dev->interface = PHY_INTERFACE_MODE_MII;
+	}
 
 	at91_emac_write(AT91_EMAC_CFG, mac_cfg);
 
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 379b4e3..ddd6bc5 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -32,6 +32,7 @@
 #include <miidev.h>
 #include <asm/mmu.h>
 #include <net/designware.h>
+#include <linux/phy.h>
 #include "designware.h"
 
 
@@ -52,6 +53,7 @@ struct dw_eth_dev {
 
 	struct eth_mac_regs *mac_regs_p;
 	struct eth_dma_regs *dma_regs_p;
+	int phy_addr;
 };
 
 /* Speed specific definitions */
@@ -222,34 +224,37 @@ static int dwc_ether_init(struct eth_device *dev)
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
+	if (mdev->phydev->speed == SPEED_1000)
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
+	ret = phy_device_connect(&priv->miidev, priv->phy_addr,
+				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
 
 	descs_init(dev);
 
@@ -408,7 +413,7 @@ static int dwc_ether_probe(struct device_d *dev)
 	edev->get_ethaddr = dwc_ether_get_ethaddr;
 	edev->set_ethaddr = dwc_ether_set_ethaddr;
 
-	miidev->address = pdata->phy_addr;
+	priv->phy_addr = pdata->phy_addr;
 	miidev->read = dwc_ether_mii_read;
 	miidev->write = dwc_ether_mii_write;
 	miidev->edev = edev;
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 0222d98..d75592d 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -32,6 +32,7 @@
 #include <xfuncs.h>
 #include <dm9000.h>
 #include <errno.h>
+#include <linux/phy.h>
 
 #define DM9K_ID		0x90000A46
 #define CHIPR_DM9000A	0x19
@@ -472,9 +473,8 @@ static int dm9k_eth_open(struct eth_device *edev)
 {
 	struct dm9k *priv = (struct dm9k *)edev->priv;
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
-	return 0;
+	return phy_device_connect(&priv->miidev, 0, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
 }
 
 static void dm9k_write_length(struct dm9k *priv, unsigned length)
@@ -696,9 +696,6 @@ static int dm9k_set_ethaddr(struct eth_device *edev, unsigned char *adr)
 
 static int dm9k_init_dev(struct eth_device *edev)
 {
-	struct dm9k *priv = (struct dm9k *)edev->priv;
-
-	miidev_restart_aneg(&priv->miidev);
 	return 0;
 }
 
@@ -742,8 +739,6 @@ static int dm9k_probe(struct device_d *dev)
 
 	priv->miidev.read = dm9k_phy_read;
 	priv->miidev.write = dm9k_phy_write;
-	priv->miidev.address = 0;
-	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
 	priv->miidev.parent = dev;
 
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index c28fb79..f085c70 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -38,6 +38,7 @@
 #include <io.h>
 #include <linux/types.h>
 #include <mach/ep93xx-regs.h>
+#include <linux/phy.h>
 #include "ep93xx.h"
 
 #define EP93XX_MAX_PKT_SIZE    1536
@@ -199,9 +200,15 @@ static int ep93xx_eth_open(struct eth_device *edev)
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	struct mac_regs *regs = ep93xx_get_regs(edev);
 	int i;
+	int ret;
 
 	pr_debug("+ep93xx_eth_open\n");
 
+	ret = phy_device_connect(&priv->miidev, 0, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
+
 	ep93xx_eth_reset(edev);
 
 	/* Reset the descriptor queues' current and end address values */
@@ -500,8 +507,6 @@ static int ep93xx_eth_probe(struct device_d *dev)
 
 	priv->miidev.read = ep93xx_phy_read;
 	priv->miidev.write = ep93xx_phy_write;
-	priv->miidev.address = 0;
-	priv->miidev.flags = 0;
 	priv->miidev.parent = dev;
 
 	priv->tx_dq.base = calloc(NUMTXDESC,
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 599a9b4..39fddbf 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -28,6 +28,7 @@
 #include <io.h>
 #include <clock.h>
 #include <xfuncs.h>
+#include <linux/phy.h>
 
 #include <asm/mmu.h>
 
@@ -347,12 +348,20 @@ static int fec_init(struct eth_device *dev)
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
@@ -363,6 +372,17 @@ static int fec_open(struct eth_device *edev)
 	int ret;
 	u32 ecr;
 
+	if (fec->xcv_type != SEVENWIRE) {
+		ret = phy_device_connect(&fec->miidev, fec->phy_addr,
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
@@ -388,24 +408,6 @@ static int fec_open(struct eth_device *edev)
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
 
@@ -659,10 +661,26 @@ static int fec_probe(struct device_d *dev)
 	fec->xcv_type = pdata->xcv_type;
 
 	if (fec->xcv_type != SEVENWIRE) {
+		fec->phy_init = pdata->phy_init;
 		fec->miidev.read = fec_miidev_read;
 		fec->miidev.write = fec_miidev_write;
-		fec->miidev.address = pdata->phy_addr;
-		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
+		fec->phy_addr = pdata->phy_addr;
+		switch (pdata->xcv_type) {
+		case RMII:
+			fec->interface = PHY_INTERFACE_MODE_RMII;
+			break;
+		case RGMII:
+			fec->interface = PHY_INTERFACE_MODE_RGMII;
+			break;
+		case MII10:
+			fec->phy_flags = MIIDEV_FORCE_10;
+		case MII100:
+			fec->interface = PHY_INTERFACE_MODE_MII;
+			break;
+		case SEVENWIRE:
+			fec->interface = PHY_INTERFACE_MODE_NA;
+			break;
+		}
 		fec->miidev.edev = edev;
 		fec->miidev.parent = dev;
 
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index b75b4d6..7f5da47 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -137,7 +137,11 @@ struct fec_priv {
 	int rbd_index;				/* next receive BD to read   */
 	struct buffer_descriptor __iomem *tbd_base;	/* TBD ring                  */
 	int tbd_index;				/* next transmit BD to write */
+	int phy_addr;
+	phy_interface_t interface;
+	u32 phy_flags;
 	struct mii_device miidev;
+	void (*phy_init)(struct phy_device *dev);
 };
 
 /**
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index c3f2099..6f7318d 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -17,6 +17,7 @@
 #include <mach/fec.h>
 #include <mach/clocks.h>
 #include <miidev.h>
+#include <linux/phy.h>
 #include "fec_mpc5200.h"
 
 #define CONFIG_PHY_ADDR 1 /* FIXME */
@@ -381,9 +382,6 @@ static int mpc5xxx_fec_init(struct eth_device *dev)
 
 	debug("mpc5xxx_fec_init... Done \n");
 
-	if (fec->xcv_type != SEVENWIRE)
-		miidev_restart_aneg(&fec->miidev);
-
 	return 0;
 }
 
@@ -413,8 +411,8 @@ static int mpc5xxx_fec_open(struct eth_device *edev)
 	SDMA_TASK_ENABLE(FEC_RECV_TASK_NO);
 
 	if (fec->xcv_type != SEVENWIRE) {
-		miidev_wait_aneg(&fec->miidev);
-		miidev_print_status(&fec->miidev);
+		return phy_device_connect(&fec->miidev, CONFIG_PHY_ADDR,
+				 NULL, fec->phy_flags, fec->interface);
 	}
 
 	return 0;
@@ -685,8 +683,22 @@ int mpc5xxx_fec_probe(struct device_d *dev)
 	if (fec->xcv_type != SEVENWIRE) {
 		fec->miidev.read = fec5xxx_miidev_read;
 		fec->miidev.write = fec5xxx_miidev_write;
-		fec->miidev.address = CONFIG_PHY_ADDR;
-		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
+		switch (pdata->xcv_type) {
+		case RMII:
+			fec->interface = PHY_INTERFACE_MODE_RMII;
+			break;
+		case RGMII:
+			fec->interface = PHY_INTERFACE_MODE_RGMII;
+			break;
+		case MII10:
+			fec->phy_flags = MIIDEV_FORCE_10;
+		case MII100:
+			fec->interface = PHY_INTERFACE_MODE_MII;
+			break;
+		case SEVENWIRE:
+			fec->interface = PHY_INTERFACE_MODE_NA;
+			break;
+		}
 		fec->miidev.edev = edev;
 		fec->miidev.parent = dev;
 
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 19544de..bac895c 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -21,6 +21,7 @@
 #include <command.h>
 #include <errno.h>
 #include <asm/io.h>
+#include <linux/phy.h>
 #include "gianfar.h"
 
 /* 2 seems to be the minimum number of TX descriptors to make it work. */
@@ -80,22 +81,16 @@ static void gfar_init_registers(void __iomem *regs)
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
@@ -128,18 +123,18 @@ static void gfar_adjust_link(struct eth_device *edev)
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
 
@@ -184,8 +179,6 @@ static int gfar_init(struct eth_device *edev)
 
 	gfar_init_registers(regs);
 
-	miidev_restart_aneg(&priv->miidev);
-
 	return  0;
 }
 
@@ -194,6 +187,12 @@ static int gfar_open(struct eth_device *edev)
 	int ix;
 	struct gfar_private *priv = edev->priv;
 	void __iomem *regs = priv->regs;
+	int ret;
+
+	ret = phy_device_connect(&priv->miidev, priv->phyaddr,
+				 gfar_adjust_link, 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
 
 	/* Point to the buffer descriptors */
 	out_be32(regs + GFAR_TBASE0_OFFSET, (unsigned int)priv->txbd);
@@ -215,9 +214,6 @@ static int gfar_open(struct eth_device *edev)
 	}
 	priv->txbd[TX_BUF_CNT - 1].status |= TXBD_WRAP;
 
-	miidev_wait_aneg(&priv->miidev);
-	gfar_adjust_link(edev);
-
 	/* Enable Transmit and Receive */
 	setbits_be32(regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_RX_EN |
 			GFAR_MACCFG1_TX_EN);
@@ -522,8 +518,6 @@ static int gfar_probe(struct device_d *dev)
 
 	priv->miidev.read = gfar_miiphy_read;
 	priv->miidev.write = gfar_miiphy_write;
-	priv->miidev.address = priv->phyaddr;
-	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
 	priv->miidev.parent = dev;
 
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 71391cc..7ee545d 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -33,6 +33,7 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
+#include <linux/phy.h>
 
 #define MAX_RECV_FRAMES			32
 #define MAX_BUF_SIZE			2048
@@ -783,11 +784,14 @@ static int ks8851_eth_open(struct eth_device *edev)
 {
 	struct ks_net *priv = (struct ks_net *)edev->priv;
 	struct device_d *dev = &edev->dev;
+	int ret;
 
 	ks_enable_qmu(priv);
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
+	ret = phy_device_connect(&priv->miidev, 1, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
 
 	dev_dbg(dev, "eth_open\n");
 
@@ -796,9 +800,6 @@ static int ks8851_eth_open(struct eth_device *edev)
 
 static int ks8851_init_dev(struct eth_device *edev)
 {
-	struct ks_net *priv = (struct ks_net *)edev->priv;
-
-	miidev_restart_aneg(&priv->miidev);
 	return 0;
 }
 
@@ -844,8 +845,6 @@ static int ks8851_probe(struct device_d *dev)
 	/* setup mii state */
 	ks->miidev.read = ks_phy_read;
 	ks->miidev.write = ks_phy_write;
-	ks->miidev.address = 1;
-	ks->miidev.flags = 0;
 	ks->miidev.edev = edev;
 	ks->miidev.parent = dev;
 
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index feffea5..c95ca74 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -51,6 +51,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm/mmu.h>
+#include <linux/phy.h>
 
 #include "macb.h"
 
@@ -97,12 +98,16 @@ struct macb_device {
 	struct macb_dma_desc	*rx_ring;
 	struct macb_dma_desc	*tx_ring;
 
+	int			phy_addr;
+
 	const struct device	*dev;
 	struct eth_device	netdev;
 
+	phy_interface_t		interface;
+
 	struct mii_device	miidev;
 
-	unsigned int		flags;
+	unsigned int		phy_flags;
 };
 
 static int macb_send(struct eth_device *edev, void *packet,
@@ -214,26 +219,32 @@ static int macb_recv(struct eth_device *edev)
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
+	return phy_device_connect(&macb->miidev, macb->phy_addr,
+			       macb_adjust_link, macb->phy_flags,
+			       macb->interface);
 }
 
 static int macb_init(struct eth_device *edev)
@@ -267,7 +278,7 @@ static int macb_init(struct eth_device *edev)
 	writel((ulong)macb->rx_ring, macb->regs + MACB_RBQP);
 	writel((ulong)macb->tx_ring, macb->regs + MACB_TBQP);
 
-	if (macb->flags & AT91SAM_ETHER_RMII)
+	if (macb->interface == PHY_INTERFACE_MODE_RMII)
 		val |= MACB_BIT(RMII);
 	else
 		val &= ~MACB_BIT(RMII);
@@ -430,12 +441,17 @@ static int macb_probe(struct device_d *dev)
 
 	macb->miidev.read = macb_phy_read;
 	macb->miidev.write = macb_phy_write;
-	macb->miidev.address = pdata->phy_addr;
-	macb->miidev.flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
-		MIIDEV_FORCE_LINK : 0;
+	macb->phy_addr = pdata->phy_addr;
 	macb->miidev.edev = edev;
 	macb->miidev.parent = dev;
-	macb->flags = pdata->flags;
+
+	if (pdata->flags & AT91SAM_ETHER_RMII) {
+		macb->interface = PHY_INTERFACE_MODE_RGMII;
+	} else {
+		macb->interface = PHY_INTERFACE_MODE_MII;
+		macb->phy_flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
+					MIIDEV_FORCE_LINK : 0;
+	}
 
 	macb->rx_buffer = dma_alloc_coherent(CFG_MACB_RX_BUFFER_SIZE);
 	macb->rx_ring = dma_alloc_coherent(CFG_MACB_RX_RING_SIZE * sizeof(struct macb_dma_desc));
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
dissimilarity index 76%
index e0f9d67..a031d1d 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -1,316 +1,68 @@
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
+/*
+ * miidev.c - generic phy abstraction
+ *
+ * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <miidev.h>
+#include <clock.h>
+#include <net.h>
+#include <malloc.h>
+#include <linux/phy.h>
+
+static int miidev_probe(struct device_d *dev)
+{
+	return 0;
+}
+
+static void miidev_remove(struct device_d *dev)
+{
+}
+
+static struct driver_d miidev_drv = {
+        .name  = "miidev",
+        .probe = miidev_probe,
+	.remove = miidev_remove,
+};
+
+int mii_register(struct mii_device *mdev)
+{
+	mdev->dev.priv = mdev;
+	mdev->dev.id = DEVICE_ID_DYNAMIC;
+	strcpy(mdev->dev.name, "miidev");
+	if (mdev->parent)
+		dev_add_child(mdev->parent, &mdev->dev);
+
+	return register_device(&mdev->dev);
+}
+
+void mii_unregister(struct mii_device *mdev)
+{
+	unregister_device(&mdev->dev);
+}
+
+static int miidev_init(void)
+{
+	register_driver(&miidev_drv);
+	return 0;
+}
+device_initcall(miidev_init);
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 2d92a2e..8212de9 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -9,6 +9,7 @@
 #include <xfuncs.h>
 #include <init.h>
 #include <driver.h>
+#include <linux/phy.h>
 
 #define ETH_MAC_LOCAL_CONFIG 0x1560
 #define ETH_MAC_4321         0x1564
@@ -189,13 +190,15 @@ static int netx_eth_init_dev(struct eth_device *edev)
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
+	return phy_device_connect(&priv->miidev, 0, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
 }
 
 static void netx_eth_halt (struct eth_device *edev)
@@ -261,8 +264,6 @@ static int netx_eth_probe(struct device_d *dev)
 
 	priv->miidev.read = netx_miidev_read;
 	priv->miidev.write = netx_miidev_write;
-	priv->miidev.address = 0;
-	priv->miidev.flags = 0;
 	priv->miidev.parent = dev;
 
 	netx_eth_init_phy();
diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
new file mode 100644
index 0000000..b071057
--- /dev/null
+++ b/drivers/net/phy/Kconfig
@@ -0,0 +1,17 @@
+#
+# PHY Layer Configuration
+#
+
+menu "phylib                       "
+
+if MIIDEV
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
index 0000000..72cf685
--- /dev/null
+++ b/drivers/net/phy/Makefile
@@ -0,0 +1,2 @@
+obj-y += phy.o
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
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
new file mode 100644
index 0000000..0384752
--- /dev/null
+++ b/drivers/net/phy/phy.c
@@ -0,0 +1,688 @@
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
+#include <miidev.h>
+#include <linux/phy.h>
+#include <linux/err.h>
+
+#define PHY_AN_TIMEOUT	10
+
+struct bus_type phy_bustype;
+static int genphy_config_init(struct phy_device *phydev);
+
+struct phy_device *phy_device_create(struct mii_device *bus, int addr, int phy_id)
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
+	dev->dev.bus = &phy_bustype;
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
+int get_phy_id(struct mii_device *bus, int addr, u32 *phy_id)
+{
+	int phy_reg;
+
+	/* Grab the bits from PHYIR1, and put them
+	 * in the upper half */
+	phy_reg = bus->read(bus, addr, MII_PHYSID1);
+
+	if (phy_reg < 0)
+		return -EIO;
+
+	*phy_id = (phy_reg & 0xffff) << 16;
+
+	/* Grab the bits from PHYIR2, and put them in the lower half */
+	phy_reg = bus->read(bus, addr, MII_PHYSID2);
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
+struct phy_device *get_phy_device(struct mii_device *bus, int addr)
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
+		return ERR_PTR(-EIO);
+
+	dev = phy_device_create(bus, addr, phy_id);
+
+	return dev;
+}
+
+/* Automatically gets and returns the PHY device */
+int phy_device_connect(struct mii_device *bus, int addr,
+		       void (*adjust_link) (struct eth_device *edev),
+		       u32 flags, phy_interface_t interface)
+{
+	struct eth_device *edev = bus->edev;
+	struct phy_driver* drv;
+	struct phy_device* dev = NULL;
+	unsigned int i;
+	int ret = -EINVAL;
+
+	if (!edev->phydev) {
+		if (addr >= 0) {
+			dev = get_phy_device(bus, addr);
+			if (IS_ERR(dev)) {
+				ret = PTR_ERR(dev);
+				goto fail;
+			}
+
+			dev->interface = interface;
+			dev->dev_flags = flags;
+
+			ret = register_device(&dev->dev);
+			if (ret)
+				goto fail;
+		} else {
+			for (i = 0; i < PHY_MAX_ADDR && !edev->phydev; i++) {
+				dev = get_phy_device(bus, i);
+				if (IS_ERR(dev))
+					continue;
+
+				dev->interface = interface;
+				dev->dev_flags = flags;
+
+				ret = register_device(&dev->dev);
+				if (ret)
+					goto fail;
+			}
+
+			if (i == 32) {
+				ret = -EIO;
+				goto fail;
+			}
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
+	if (!IS_ERR(dev))
+		kfree(dev);
+	puts("Unable to find a PHY (unknown ID?)\n");
+	return ret;
+}
+
+/* Generic PHY support and helper functions */
+
+/**
+ * genphy_config_advert - sanitize and advertise auto-negotation parameters
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
+static int phy_probe(struct device_d *_dev)
+{
+	struct phy_device *dev = to_phy_device(_dev);
+	struct phy_driver *drv = to_phy_driver(_dev->driver);
+	struct mii_device *bus = dev->bus;
+	struct eth_device *edev = bus->edev;
+
+	char str[16];
+
+	edev->phydev = dev;
+	dev->attached_dev = edev;
+
+	if (drv->probe) {
+		int ret;
+
+		ret = drv->probe(dev);
+		if (ret) {
+			edev->phydev = NULL;
+			dev->attached_dev = NULL;
+			return ret;
+		}
+	}
+
+	if (dev->dev_flags) {
+		if (dev->dev_flags & MIIDEV_FORCE_10) {
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
+static int phy_match(struct device_d *_dev, struct driver_d *_drv)
+{
+	struct phy_device *dev = to_phy_device(_dev);
+	struct phy_driver *drv = to_phy_driver(_drv);
+
+	return !(((dev->phy_id & drv->phy_id_mask) == (drv->phy_id & drv->phy_id_mask)) ||
+		(drv->phy_id == PHY_ANY_UID));
+}
+
+static void phy_remove(struct device_d *_dev)
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
+struct bus_type phy_bustype = {
+	.name = "phy",
+	.match = phy_match,
+	.probe = phy_probe,
+	.remove = phy_remove,
+};
+
+int phy_driver_register(struct phy_driver *phydrv)
+{
+	phydrv->drv.bus = &phy_bustype;
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
index cbd9f48..b93f627 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -74,6 +74,7 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
+#include <linux/phy.h>
 
 /*---------------------------------------------------------------
  .
@@ -892,12 +893,15 @@ static void smc91c111_enable(struct eth_device *edev)
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
+	return phy_device_connect(&priv->miidev, 0, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
 }
 
 static int smc91c111_eth_send(struct eth_device *edev, void *packet,
@@ -1279,14 +1283,6 @@ static void print_packet( unsigned char * buf, int length )
 
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
 
@@ -1314,8 +1310,6 @@ static int smc91c111_probe(struct device_d *dev)
 
 	priv->miidev.read = smc91c111_phy_read;
 	priv->miidev.write = smc91c111_phy_write;
-	priv->miidev.address = 0;
-	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
 	priv->miidev.parent = dev;
 	priv->base = dev_request_mem_region(dev, 0);
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index f697608..2fcf70e 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -38,6 +38,7 @@
 #include <clock.h>
 #include <io.h>
 #include <smc911x.h>
+#include <linux/phy.h>
 
 #include "smc911x.h"
 
@@ -308,9 +309,12 @@ static void smc911x_enable(struct eth_device *edev)
 static int smc911x_eth_open(struct eth_device *edev)
 {
 	struct smc911x_priv *priv = (struct smc911x_priv *)edev->priv;
+	int ret;
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
+	ret = phy_device_connect(&priv->miidev, 1, NULL,
+				 0, PHY_INTERFACE_MODE_NA);
+	if (ret)
+		return ret;
 
 	/* Turn on Tx + Rx */
 	smc911x_enable(edev);
@@ -405,13 +409,9 @@ static int smc911x_eth_rx(struct eth_device *edev)
 
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
 
@@ -538,8 +538,6 @@ static int smc911x_probe(struct device_d *dev)
 
 	priv->miidev.read = smc911x_phy_read;
 	priv->miidev.write = smc911x_phy_write;
-	priv->miidev.address = 1;
-	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
 	priv->miidev.parent = dev;
 
diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index be5a170..f3e0540 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -471,8 +471,7 @@ static int asix_init_mii(struct usbnet *dev)
 {
 	dev->miidev.read = asix_mdio_read;
 	dev->miidev.write = asix_mdio_write;
-	dev->miidev.address = asix_get_phy_addr(dev);
-	dev->miidev.flags = 0;
+	dev->phy_addr = asix_get_phy_addr(dev);
 	dev->miidev.edev = &dev->edev;
 	dev->miidev.parent = &dev->udev->dev;
 
diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index c21705e..4a9ca85 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -441,8 +441,7 @@ static int smsc95xx_phy_initialize(struct usbnet *dev)
 	/* Initialize MII structure */
 	dev->miidev.read = smsc95xx_mdio_read;
 	dev->miidev.write = smsc95xx_mdio_write;
-	dev->miidev.address = 1; /* FIXME: asix_get_phy_addr(dev); */
-	dev->miidev.flags = 0;
+	dev->phy_addr = 1; /* FIXME: asix_get_phy_addr(dev); */
 	dev->miidev.edev = &dev->edev;
 	dev->miidev.parent = &dev->udev->dev;
 //	dev->miidev.name = dev->edev.name;
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index c7e3606..b04cd70 100644
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
+	return phy_device_connect(&dev->miidev, dev->phy_addr, NULL,
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
index 0000000..456af54
--- /dev/null
+++ b/include/linux/phy.h
@@ -0,0 +1,206 @@
+/*
+ * Copyright (c) 2009-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Author: Andy Fleming
+ *
+ * Copyright (c) 2004 Freescale Semiconductor, Inc.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __PHY_H
+#define __PHY_H
+
+#include <linux/list.h>
+#include <linux/ethtool.h>
+#include <linux/mii.h>
+#include <miidev.h>
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
+#define PHY_ANY_ID "MATCH ANY PHY"
+#define PHY_ANY_UID 0xffffffff
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
+	struct mii_device *bus;
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
+int phy_driver_register(struct phy_driver *drv);
+int phy_init(void);
+
+static int inline phy_write(struct phy_device *dev, int reg, int value)
+{
+	return mii_write(dev->bus, dev->addr, reg, value);
+}
+
+static int inline phy_read(struct phy_device *dev, int reg)
+{
+	return mii_read(dev->bus, dev->addr, reg);
+}
+
+int phy_device_connect(struct mii_device *bus, int addr,
+		       void (*adjust_link) (struct eth_device *edev),
+		       u32 flags, phy_interface_t interface);
+
+/* Generic PHY support and helper functions */
+int genphy_config_advert(struct phy_device *phydev);
+int genphy_config_aneg(struct phy_device *phydev);
+int genphy_read_status(struct phy_device *phydev);
+int genphy_restart_aneg(struct phy_device *phydev);
+int genphy_setup_forced(struct phy_device *phydev);
+int genphy_update_link(struct phy_device *phydev);
+int get_phy_id(struct mii_device *bus, int addr, u32 *phy_id);
+
+#endif /* __PHYDEV_H__ */
diff --git a/include/miidev.h b/include/miidev.h
index 4bbf94c..2c1d23a 100644
--- a/include/miidev.h
+++ b/include/miidev.h
@@ -37,29 +37,14 @@ struct mii_device {
 	struct device_d dev;
 	struct device_d *parent;
 
-	int address;	/* The address the phy has on the bus */
 	int	(*read) (struct mii_device *dev, int addr, int reg);
 	int	(*write) (struct mii_device *dev, int addr, int reg, int value);
 
-	int flags;
-	int capabilities;
-
 	struct eth_device *edev;
-	struct cdev cdev;
-	struct list_head list;
 };
 
 int mii_register(struct mii_device *dev);
 void mii_unregister(struct mii_device *mdev);
-int miidev_restart_aneg(struct mii_device *mdev);
-int miidev_wait_aneg(struct mii_device *mdev);
-int miidev_get_status(struct mii_device *mdev);
-#define MIIDEV_STATUS_IS_UP		(1 << 0)
-#define MIIDEV_STATUS_IS_FULL_DUPLEX	(1 << 1)
-#define MIIDEV_STATUS_IS_10MBIT		(1 << 2)
-#define MIIDEV_STATUS_IS_100MBIT	(1 << 3)
-#define MIIDEV_STATUS_IS_1000MBIT	(1 << 4)
-int miidev_print_status(struct mii_device *mdev);
 
 static int inline mii_write(struct mii_device *dev, int addr, int reg, int value)
 {
@@ -71,7 +56,4 @@ static int inline mii_read(struct mii_device *dev, int addr, int reg)
 	return dev->read(dev, addr, reg);
 }
 
-struct mii_device *mii_open(const char *name);
-void mii_close(struct mii_device *mdev);
-
 #endif /* __MIIDEV_H__ */
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
index 1609b2e..0a59b6a 100644
--- a/include/usb/usbnet.h
+++ b/include/usb/usbnet.h
@@ -41,6 +41,7 @@ struct usbnet {
 	/* protocol/interface state */
 	struct eth_device	edev;
 	struct mii_device	miidev;
+	int			phy_addr;
 
 	int			msg_enable;
 	unsigned long		data [5];
diff --git a/net/eth.c b/net/eth.c
index c034eaa..8d516f1 100644
--- a/net/eth.c
+++ b/net/eth.c
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
