Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9vkx-00016z-OP
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 10:25:52 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A3488FF96A9
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 12:33:26 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  7 Sep 2012 12:26:06 +0200
Message-Id: <1347013566-26130-1-git-send-email-plagnioj@jcrosoft.com>
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

This will allow to have phy drivers and to only connect the phy at then
opening of the device. And if the phy is not ready fail on open.

This is needed by the boot sequence support to do not endup in a loop or spend
time on bootp when no ethernet cable is connected.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/Kconfig        |    2 +
 drivers/net/Makefile       |    2 +-
 drivers/net/altera_tse.c   |   17 +-
 drivers/net/altera_tse.h   |    1 +
 drivers/net/at91_ether.c   |   24 +-
 drivers/net/designware.c   |   38 +--
 drivers/net/dm9k.c         |    9 +-
 drivers/net/ep93xx.c       |    7 +-
 drivers/net/fec_imx.c      |   43 ++-
 drivers/net/fec_imx.h      |    1 +
 drivers/net/fec_mpc5200.c  |    9 +-
 drivers/net/gianfar.c      |   28 +-
 drivers/net/ks8851_mll.c   |   11 +-
 drivers/net/macb.c         |   38 ++-
 drivers/net/miidev.c       |  477 +++++++++++-----------------------
 drivers/net/netx_eth.c     |    7 +-
 drivers/net/phy/Kconfig    |   17 ++
 drivers/net/phy/Makefile   |    2 +
 drivers/net/phy/generic.c  |   36 +++
 drivers/net/phy/phylib.c   |  617 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/smc91111.c     |   20 +-
 drivers/net/smc911x.c      |   12 +-
 drivers/net/usb/asix.c     |    2 +-
 drivers/net/usb/smsc95xx.c |    2 +-
 drivers/net/usb/usbnet.c   |   10 +-
 include/linux/ethtool.h    |  114 ++++++++
 include/miidev.h           |   12 +-
 include/phydev.h           |  126 +++++++++
 include/usb/usbnet.h       |    1 +
 29 files changed, 1202 insertions(+), 483 deletions(-)
 rewrite drivers/net/miidev.c (60%)
 create mode 100644 drivers/net/phy/Kconfig
 create mode 100644 drivers/net/phy/Makefile
 create mode 100644 drivers/net/phy/generic.c
 create mode 100644 drivers/net/phy/phylib.c
 create mode 100644 include/linux/ethtool.h
 create mode 100644 include/phydev.h

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
index 5353a68..dd96b3c 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -30,6 +30,7 @@
 #include <init.h>
 #include <clock.h>
 #include <linux/mii.h>
+#include <phydev.h>
 
 #include <io.h>
 #include <asm/dma-mapping.h>
@@ -347,9 +348,11 @@ static void tse_reset(struct eth_device *edev)
 static int tse_eth_open(struct eth_device *edev)
 {
 	struct altera_tse_priv *priv = edev->priv;
+	int ret;
 
-	miidev_wait_aneg(priv->miidev);
-	miidev_print_status(priv->miidev);
+	ret = phy_device_connect(priv->miidev, priv->phy_addr, NULL);
+	if (ret)
+		return ret;
 
 	return 0;
 }
@@ -488,8 +491,6 @@ static int tse_init_dev(struct eth_device *edev)
 	/* enable MAC */
 	writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK, &mac_dev->command_config);
 
-	miidev_restart_aneg(priv->miidev);
-
 	return 0;
 }
 
@@ -550,11 +551,9 @@ static int tse_probe(struct device_d *dev)
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
index 3592141..45fa4c5 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -40,18 +40,17 @@
 #include <linux/mii.h>
 #include <errno.h>
 #include <asm/mmu.h>
+#include <phydev.h>
 
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
 };
 #define to_ether(_nd) container_of(_nd, struct ether_device, netdev)
 
@@ -136,19 +135,19 @@ static int at91_ether_mii_write(struct mii_device *dev, int addr, int reg, int v
 	return ret;
 }
 
-static void update_linkspeed(struct mii_device *dev, int speed, int duplex)
+static void update_linkspeed(struct mii_device *mdev)
 {
 	unsigned int mac_cfg;
 
 	/* Update the MAC */
 	mac_cfg = at91_emac_read(AT91_EMAC_CFG) & ~(AT91_EMAC_SPD | AT91_EMAC_FD);
-	if (speed == SPEED_100) {
-		if (duplex == DUPLEX_FULL)	/* 100 Full Duplex */
+	if (mdev->phydev->speed == SPEED_100) {
+		if (mdev->phydev->duplex)
 			mac_cfg |= AT91_EMAC_SPD | AT91_EMAC_FD;
 		else					/* 100 Half Duplex */
 			mac_cfg |= AT91_EMAC_SPD;
 	} else {
-		if (duplex == DUPLEX_FULL)	/* 10 Full Duplex */
+		if (mdev->phydev->duplex)
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
+	ret = phy_device_connect(&etdev->miidev, etdev->phy_addr,
+				 update_linkspeed);
+	if (ret)
+		return ret;
 
 	/* Clear internal statistics */
 	ctl = at91_emac_read(AT91_EMAC_CTL);
@@ -327,7 +327,7 @@ static int at91_ether_probe(struct device_d *dev)
 	ether_dev->rbf_framebuf = dma_alloc_coherent(MAX_RX_DESCR * MAX_RBUFF_SZ);
 	ether_dev->rbfdt = dma_alloc_coherent(sizeof(struct rbf_t) * MAX_RX_DESCR);
 
-	miidev->address = pdata->phy_addr;
+	ether_dev->phy_addr = pdata->phy_addr;
 	miidev->read = at91_ether_mii_read;
 	miidev->write = at91_ether_mii_write;
 	miidev->edev = edev;
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 379b4e3..a883301 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -32,6 +32,7 @@
 #include <miidev.h>
 #include <asm/mmu.h>
 #include <net/designware.h>
+#include <phydev.h>
 #include "designware.h"
 
 
@@ -52,6 +53,7 @@ struct dw_eth_dev {
 
 	struct eth_mac_regs *mac_regs_p;
 	struct eth_dma_regs *dma_regs_p;
+	int phy_addr;
 };
 
 /* Speed specific definitions */
@@ -222,34 +224,38 @@ static int dwc_ether_init(struct eth_device *dev)
 	return 0;
 }
 
-static int dwc_ether_open(struct eth_device *dev)
+static void dwc_update_linkspeed(struct mii_device *mdev)
 {
+	struct eth_device *edev = mdev->edev;
 	struct dw_eth_dev *priv = dev->priv;
-	struct eth_mac_regs *mac_p = priv->mac_regs_p;
-	struct eth_dma_regs *dma_p = priv->dma_regs_p;
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
+		priv->fix_mac_speed(mdev->phydev->speed);
 
 	conf = readl(&mac_p->conf);
-	if (link & MIIDEV_STATUS_IS_FULL_DUPLEX)
+	if (mdev->phydev->duplex)
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
+				 dwc_update_linkspeed);
+	if (ret)
+		return ret;
 
 	descs_init(dev);
 
@@ -408,7 +414,7 @@ static int dwc_ether_probe(struct device_d *dev)
 	edev->get_ethaddr = dwc_ether_get_ethaddr;
 	edev->set_ethaddr = dwc_ether_set_ethaddr;
 
-	miidev->address = pdata->phy_addr;
+	priv->phy_addr = pdata->phy_addr;
 	miidev->read = dwc_ether_mii_read;
 	miidev->write = dwc_ether_mii_write;
 	miidev->edev = edev;
diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 0222d98..f140891 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -32,6 +32,7 @@
 #include <xfuncs.h>
 #include <dm9000.h>
 #include <errno.h>
+#include <phydev.h>
 
 #define DM9K_ID		0x90000A46
 #define CHIPR_DM9000A	0x19
@@ -472,9 +473,7 @@ static int dm9k_eth_open(struct eth_device *edev)
 {
 	struct dm9k *priv = (struct dm9k *)edev->priv;
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
-	return 0;
+	return phy_device_connect(&priv->miidev, 0, NULL);
 }
 
 static void dm9k_write_length(struct dm9k *priv, unsigned length)
@@ -696,9 +695,6 @@ static int dm9k_set_ethaddr(struct eth_device *edev, unsigned char *adr)
 
 static int dm9k_init_dev(struct eth_device *edev)
 {
-	struct dm9k *priv = (struct dm9k *)edev->priv;
-
-	miidev_restart_aneg(&priv->miidev);
 	return 0;
 }
 
@@ -742,7 +738,6 @@ static int dm9k_probe(struct device_d *dev)
 
 	priv->miidev.read = dm9k_phy_read;
 	priv->miidev.write = dm9k_phy_write;
-	priv->miidev.address = 0;
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
 	priv->miidev.parent = dev;
diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
index c28fb79..e19d38e 100644
--- a/drivers/net/ep93xx.c
+++ b/drivers/net/ep93xx.c
@@ -38,6 +38,7 @@
 #include <io.h>
 #include <linux/types.h>
 #include <mach/ep93xx-regs.h>
+#include <phydev.h>
 #include "ep93xx.h"
 
 #define EP93XX_MAX_PKT_SIZE    1536
@@ -199,9 +200,14 @@ static int ep93xx_eth_open(struct eth_device *edev)
 	struct ep93xx_eth_priv *priv = ep93xx_get_priv(edev);
 	struct mac_regs *regs = ep93xx_get_regs(edev);
 	int i;
+	int ret;
 
 	pr_debug("+ep93xx_eth_open\n");
 
+	ret = phy_device_connect(&priv->miidev, 0, NULL);
+	if (ret)
+		return ret;
+
 	ep93xx_eth_reset(edev);
 
 	/* Reset the descriptor queues' current and end address values */
@@ -500,7 +506,6 @@ static int ep93xx_eth_probe(struct device_d *dev)
 
 	priv->miidev.read = ep93xx_phy_read;
 	priv->miidev.write = ep93xx_phy_write;
-	priv->miidev.address = 0;
 	priv->miidev.flags = 0;
 	priv->miidev.parent = dev;
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 599a9b4..0aa56b0 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -28,6 +28,7 @@
 #include <io.h>
 #include <clock.h>
 #include <xfuncs.h>
+#include <phydev.h>
 
 #include <asm/mmu.h>
 
@@ -347,12 +348,21 @@ static int fec_init(struct eth_device *dev)
 	/* size of each buffer */
 	writel(FEC_MAX_PKT_SIZE, fec->regs + FEC_EMRBR);
 
-	if (fec->xcv_type != SEVENWIRE)
-		miidev_restart_aneg(&fec->miidev);
-
 	return 0;
 }
 
+static void fec_update_linkspeed(struct mii_device *mdev)
+{
+	struct eth_device *edev = mdev->edev;
+	struct fec_priv *fec = (struct fec_priv *)edev->priv;
+
+	if (mdev->phydev->speed == SPEED_10) {
+		u32 rcntl = readl(fec->regs + FEC_R_CNTRL);
+		rcntl |= FEC_R_CNTRL_RMII_10T;
+		writel(rcntl, fec->regs + FEC_R_CNTRL);
+	}
+}
+
 /**
  * Start the FEC engine
  * @param[in] edev Our device to handle
@@ -363,6 +373,13 @@ static int fec_open(struct eth_device *edev)
 	int ret;
 	u32 ecr;
 
+	if (fec->xcv_type != SEVENWIRE) {
+		ret = phy_device_connect(&fec->miidev, fec->phy_addr,
+					 fec_update_linkspeed);
+		if (ret)
+			return ret;
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
 
@@ -661,7 +660,7 @@ static int fec_probe(struct device_d *dev)
 	if (fec->xcv_type != SEVENWIRE) {
 		fec->miidev.read = fec_miidev_read;
 		fec->miidev.write = fec_miidev_write;
-		fec->miidev.address = pdata->phy_addr;
+		fec->phy_addr = pdata->phy_addr;
 		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
 		fec->miidev.edev = edev;
 		fec->miidev.parent = dev;
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index b75b4d6..07321f9 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -137,6 +137,7 @@ struct fec_priv {
 	int rbd_index;				/* next receive BD to read   */
 	struct buffer_descriptor __iomem *tbd_base;	/* TBD ring                  */
 	int tbd_index;				/* next transmit BD to write */
+	int phy_addr;
 	struct mii_device miidev;
 };
 
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index c3f2099..05db70d 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -17,6 +17,7 @@
 #include <mach/fec.h>
 #include <mach/clocks.h>
 #include <miidev.h>
+#include <phydev.h>
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
+				 NULL);
 	}
 
 	return 0;
@@ -685,7 +683,6 @@ int mpc5xxx_fec_probe(struct device_d *dev)
 	if (fec->xcv_type != SEVENWIRE) {
 		fec->miidev.read = fec5xxx_miidev_read;
 		fec->miidev.write = fec5xxx_miidev_write;
-		fec->miidev.address = CONFIG_PHY_ADDR;
 		fec->miidev.flags = pdata->xcv_type == MII10 ? MIIDEV_FORCE_10 : 0;
 		fec->miidev.edev = edev;
 		fec->miidev.parent = dev;
diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 19544de..c71a3b6 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -21,6 +21,7 @@
 #include <command.h>
 #include <errno.h>
 #include <asm/io.h>
+#include <phydev.h>
 #include "gianfar.h"
 
 /* 2 seems to be the minimum number of TX descriptors to make it work. */
@@ -77,25 +78,21 @@ static void gfar_init_registers(void __iomem *regs)
  * Configure maccfg2 based on negotiated speed and duplex
  * reported by PHY handling code
  */
-static void gfar_adjust_link(struct eth_device *edev)
+static void gfar_adjust_link(struct mii_device *mdev)
 {
+	struct eth_device *edev = mdev->edev;
 	struct gfar_private *priv = edev->priv;
 	struct device_d *mdev = priv->miidev.parent;
 	void __iomem *regs = priv->regs;
 	u32 ecntrl, maccfg2;
 	uint32_t status;
 
-	status = miidev_get_status(&priv->miidev);
-
-	priv->link = status & MIIDEV_STATUS_IS_UP;
-	if (status & MIIDEV_STATUS_IS_FULL_DUPLEX)
-		priv->duplexity = 1;
-	else
-		priv->duplexity = 0;
+	priv->link = mdev->phydev->link;
+	priv->duplexity = mdev->phydev->duplex;
 
-	if (status & MIIDEV_STATUS_IS_1000MBIT)
+	if (mdev->phydev->speed == SPEED_1000)
 		priv->speed = 1000;
-	else if (status & MIIDEV_STATUS_IS_100MBIT)
+	if (mdev->phydev->speed == SPEED_100)
 		priv->speed = 100;
 	else
 		priv->speed = 10;
@@ -184,8 +181,6 @@ static int gfar_init(struct eth_device *edev)
 
 	gfar_init_registers(regs);
 
-	miidev_restart_aneg(&priv->miidev);
-
 	return  0;
 }
 
@@ -194,6 +189,12 @@ static int gfar_open(struct eth_device *edev)
 	int ix;
 	struct gfar_private *priv = edev->priv;
 	void __iomem *regs = priv->regs;
+	int ret;
+
+	ret = phy_device_connect(&priv->miidev, priv->phy_addr,
+				 gfar_adjust_link);
+	if (ret)
+		return ret;
 
 	/* Point to the buffer descriptors */
 	out_be32(regs + GFAR_TBASE0_OFFSET, (unsigned int)priv->txbd);
@@ -215,9 +216,6 @@ static int gfar_open(struct eth_device *edev)
 	}
 	priv->txbd[TX_BUF_CNT - 1].status |= TXBD_WRAP;
 
-	miidev_wait_aneg(&priv->miidev);
-	gfar_adjust_link(edev);
-
 	/* Enable Transmit and Receive */
 	setbits_be32(regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_RX_EN |
 			GFAR_MACCFG1_TX_EN);
diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 71391cc..c5e4a56 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -33,6 +33,7 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
+#include <phydev.h>
 
 #define MAX_RECV_FRAMES			32
 #define MAX_BUF_SIZE			2048
@@ -783,11 +784,13 @@ static int ks8851_eth_open(struct eth_device *edev)
 {
 	struct ks_net *priv = (struct ks_net *)edev->priv;
 	struct device_d *dev = &edev->dev;
+	int ret;
 
 	ks_enable_qmu(priv);
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
+	ret = phy_device_connect(&priv->miidev, 1, NULL);
+	if (ret)
+		return ret;
 
 	dev_dbg(dev, "eth_open\n");
 
@@ -796,9 +799,6 @@ static int ks8851_eth_open(struct eth_device *edev)
 
 static int ks8851_init_dev(struct eth_device *edev)
 {
-	struct ks_net *priv = (struct ks_net *)edev->priv;
-
-	miidev_restart_aneg(&priv->miidev);
 	return 0;
 }
 
@@ -844,7 +844,6 @@ static int ks8851_probe(struct device_d *dev)
 	/* setup mii state */
 	ks->miidev.read = ks_phy_read;
 	ks->miidev.write = ks_phy_write;
-	ks->miidev.address = 1;
 	ks->miidev.flags = 0;
 	ks->miidev.edev = edev;
 	ks->miidev.parent = dev;
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index feffea5..8b14ce5 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -51,6 +51,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm/mmu.h>
+#include <phydev.h>
 
 #include "macb.h"
 
@@ -97,6 +98,8 @@ struct macb_device {
 	struct macb_dma_desc	*rx_ring;
 	struct macb_dma_desc	*tx_ring;
 
+	int			phy_addr;
+
 	const struct device	*dev;
 	struct eth_device	netdev;
 
@@ -214,24 +217,33 @@ static int macb_recv(struct eth_device *edev)
 	return 0;
 }
 
+static void macb_adjust_link(struct mii_device *mdev)
+{
+	struct eth_device *edev = mdev->edev;
+	struct macb_device *macb = edev->priv;
+	u32 reg;
+
+	reg = readl(macb->regs + MACB_NCFGR);
+	reg &= ~(MACB_BIT(SPD) | MACB_BIT(FD));
+
+	if (mdev->phydev->duplex)
+		reg |= MACB_BIT(FD);
+	if (mdev->phydev->speed == SPEED_100)
+		reg |= MACB_BIT(SPD);
+
+	writel(reg, macb->regs + MACB_NCFGR);
+}
+
 static int macb_open(struct eth_device *edev)
 {
 	struct macb_device *macb = edev->priv;
-	int duplex = 1, speed = 1;
-	u32 ncfgr;
 
 	debug("%s\n", __func__);
 
-	miidev_wait_aneg(&macb->miidev);
-	miidev_print_status(&macb->miidev);
-
-	ncfgr = readl(macb->regs + MACB_NCFGR);
-	ncfgr &= ~(MACB_BIT(SPD) | MACB_BIT(FD));
-	if (speed)
-		ncfgr |= MACB_BIT(SPD);
-	if (duplex)
-		ncfgr |= MACB_BIT(FD);
-	writel(ncfgr, macb->regs + MACB_NCFGR);
+	/* Obtain the PHY's address/id */
+	if (phy_device_connect(&macb->miidev, macb->phy_addr,
+			       macb_adjust_link) < 0)
+		return -1;
 
 	return 0;
 }
@@ -430,7 +442,7 @@ static int macb_probe(struct device_d *dev)
 
 	macb->miidev.read = macb_phy_read;
 	macb->miidev.write = macb_phy_write;
-	macb->miidev.address = pdata->phy_addr;
+	macb->phy_addr = pdata->phy_addr;
 	macb->miidev.flags = pdata->flags & AT91SAM_ETHER_FORCE_LINK ?
 		MIIDEV_FORCE_LINK : 0;
 	macb->miidev.edev = edev;
diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
dissimilarity index 60%
index 75b53e3..4e0ee13 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -1,331 +1,146 @@
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
-	int val;
-	int caps = 0;
-
-	val = mii_read(mdev, mdev->address, MII_PHYSID1);
-	if (val < 0 || val == 0xffff)
-		goto err_out;
-	val = mii_read(mdev, mdev->address, MII_PHYSID2);
-	if (val < 0 || val == 0xffff)
-		goto err_out;
-	val = mii_read(mdev, mdev->address, MII_BMSR);
-	if (val < 0)
-		goto err_out;
-	if (val & BMSR_ESTATEN) {
-		val = mii_read(mdev, mdev->address, MII_ESTATUS);
-		if (val < 0)
-			goto err_out;
-		if (val & (ESTATUS_1000_TFULL | ESTATUS_1000_THALF))
-			caps = MIIDEV_CAPABLE_1000M;
-	}
-
-	mdev->capabilities = caps;
-	mdev->cdev.name = asprintf("phy%d", dev->id);
-	mdev->cdev.size = 64;
-	mdev->cdev.ops = &miidev_ops;
-	mdev->cdev.priv = mdev;
-	mdev->cdev.dev = dev;
-	devfs_create(&mdev->cdev);
-	list_add_tail(&mdev->list, &miidev_list);
-	return 0;
-
-err_out:
-	dev_err(dev, "cannot read PHY registers (addr %d)\n", mdev->address);
-	return -ENODEV;
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
+#include <phydev.h>
+
+static LIST_HEAD(miidev_list);
+
+static ssize_t miidev_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
+{
+	int i = count;
+	uint16_t *buf = _buf;
+	struct mii_device *mdev = cdev->priv;
+
+	if (!mdev->phydev)
+		return -EPERM;
+
+	while (i > 0) {
+		*buf = phy_read(mdev->phydev, offset / 2);
+		buf++;
+		i -= 2;
+		offset += 2;
+	}
+
+	return count;
+}
+
+static ssize_t miidev_write(struct cdev *cdev, const void *_buf, size_t count, loff_t offset, ulong flags)
+{
+	int i = count;
+	const uint16_t *buf = _buf;
+	struct mii_device *mdev = cdev->priv;
+
+	if (!mdev->phydev)
+		return -EPERM;
+
+	while (i > 0) {
+		phy_write(mdev->phydev, offset / 2, *buf);
+		buf++;
+		i -= 2;
+		offset += 2;
+	}
+
+	return count;
+}
+
+static struct file_operations miidev_ops = {
+	.read  = miidev_read,
+	.write = miidev_write,
+	.lseek = dev_lseek_default,
+};
+
+static int miidev_probe(struct device_d *dev)
+{
+	struct mii_device *mdev = dev->priv;
+
+	mdev->cdev.name = asprintf("phy%d", dev->id);
+	mdev->cdev.size = 64;
+	mdev->cdev.ops = &miidev_ops;
+	mdev->cdev.priv = mdev;
+	mdev->cdev.dev = dev;
+	devfs_create(&mdev->cdev);
+	list_add_tail(&mdev->list, &miidev_list);
+	return 0;
+}
+
+static void miidev_remove(struct device_d *dev)
+{
+	struct mii_device *mdev = dev->priv;
+
+	list_del(&mdev->list);
+
+	free(mdev->cdev.name);
+	devfs_remove(&mdev->cdev);
+}
+
+struct mii_device *mii_open(const char *name)
+{
+	struct mii_device *mdev;
+
+	list_for_each_entry(mdev, &miidev_list, list) {
+		if (!strcmp(name, mdev->cdev.name))
+			return mdev;
+	}
+	return NULL;
+}
+
+void mii_close(struct mii_device *mdev)
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
+
+device_initcall(miidev_init);
+
diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 2d92a2e..9af7346 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -9,6 +9,7 @@
 #include <xfuncs.h>
 #include <init.h>
 #include <driver.h>
+#include <phydev.h>
 
 #define ETH_MAC_LOCAL_CONFIG 0x1560
 #define ETH_MAC_4321         0x1564
@@ -189,13 +190,14 @@ static int netx_eth_init_dev(struct eth_device *edev)
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
+	return phy_device_connect(&priv->miidev, 0, NULL);
 }
 
 static void netx_eth_halt (struct eth_device *edev)
@@ -261,7 +263,6 @@ static int netx_eth_probe(struct device_d *dev)
 
 	priv->miidev.read = netx_miidev_read;
 	priv->miidev.write = netx_miidev_write;
-	priv->miidev.address = 0;
 	priv->miidev.flags = 0;
 	priv->miidev.parent = dev;
 
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
index 0000000..026c916
--- /dev/null
+++ b/drivers/net/phy/Makefile
@@ -0,0 +1,2 @@
+obj-y += phylib.o
+obj-$(CONFIG_GENERIC_PHY) += generic.o
diff --git a/drivers/net/phy/generic.c b/drivers/net/phy/generic.c
new file mode 100644
index 0000000..51a5c8e
--- /dev/null
+++ b/drivers/net/phy/generic.c
@@ -0,0 +1,36 @@
+/*
+ * Copyright (c) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <phydev.h>
+#include <init.h>
+
+static struct phy_driver generic_phy = {
+	.drv.name = "Generic PHY",
+	.phy_id = 0xffffffff,
+	.phy_id_mask = 0xffffffff,
+	.features = 0,
+};
+
+static int generic_phy_register(void)
+{
+	return phy_driver_register(&generic_phy);
+}
+fs_initcall(generic_phy_register);
diff --git a/drivers/net/phy/phylib.c b/drivers/net/phy/phylib.c
new file mode 100644
index 0000000..c68dbb4
--- /dev/null
+++ b/drivers/net/phy/phylib.c
@@ -0,0 +1,617 @@
+/*
+ * drivers/net/phy/phylib.c
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
+#include <phydev.h>
+
+#define PHY_AN_TIMEOUT	10
+
+#define to_phy_driver(d)	container_of(d, struct phy_driver, drv)
+#define to_phy_device(d)	container_of(d, struct phy_device, dev)
+
+static int genphy_config_init(struct phy_device *phydev);
+
+static int phy_probe(struct device_d *dev)
+{
+	return 0;
+}
+
+static int phy_match(struct device_d *dev, struct driver_d *drv)
+{
+	struct phy_device *phydev = to_phy_device(dev);
+	struct phy_driver *phydrv = to_phy_driver(drv);
+
+	return phydev->phydrv != phydrv;
+}
+
+static void phy_remove(struct device_d *dev)
+{
+}
+
+struct bus_type phy_bustype = {
+	.name = "phy",
+	.match = phy_match,
+	.probe = phy_probe,
+	.remove = phy_remove,
+};
+
+static struct phy_device* phy_search(struct mii_device *miidev, unsigned int id)
+{
+	struct phy_driver *phydrv;
+	struct phy_device *phydev;
+	struct driver_d *drv;
+
+	for_each_driver(drv) {
+		if (drv->bus != &phy_bustype)
+			continue;
+
+		phydrv = to_phy_driver(drv);
+
+		if (((id & phydrv->phy_id_mask) ==
+		     (phydrv->phy_id & phydrv->phy_id_mask)) ||
+		     (phydrv->phy_id == PHY_ANY_UID)) {
+			phydev = calloc(1, sizeof(struct phy_device));
+
+			if (!phydev)
+				return NULL;
+
+			phydev->phydrv = phydrv;
+			return phydev;
+		}
+	}
+
+	return NULL;
+}
+
+static int phy_connect(struct mii_device *miidev, int addr)
+{
+	struct phy_device* phydev;
+	u32 phy_id;
+	char str[16];
+
+	if (get_phy_id(miidev, addr, &phy_id) < 0)
+		return -1;
+
+	/* If the phy_id is mostly Fs, there is no device there */
+	if ((phy_id & 0x1fffffff) == 0x1fffffff)
+		return -1;
+
+	phydev = phy_search(miidev, phy_id);
+
+	if (!phydev)
+		return -1;
+
+	phydev->addr = addr;
+	phydev->miidev = miidev;
+	miidev->phydev = phydev;
+	phydev->phy_id = phy_id;
+
+	if (miidev->flags) {
+		if (miidev->flags & MIIDEV_FORCE_10) {
+			phydev->speed = SPEED_10;
+			phydev->duplex = DUPLEX_FULL;
+			phydev->autoneg = !AUTONEG_ENABLE;
+		}
+	}
+
+	sprintf(str, "%d", phydev->addr);
+	dev_add_param_fixed(&miidev->dev, "phy_addr", str);
+
+	dev_dbg(&miidev->dev, "%s found at 0x%x\n", phydev->phydrv->drv.name, addr);
+
+	return 0;
+}
+
+/* Automatically gets and returns the PHY device */
+int phy_device_connect(struct mii_device *miidev, int phy_addr,
+		void (*adjust_link) (struct mii_device *miidev))
+{
+	struct phy_driver* phydrv;
+	struct phy_device* phydev;
+	unsigned int i;
+	int ret = 0;
+
+	if (!miidev->phydev) {
+		if (phy_addr >= 0) {
+			ret = phy_connect(miidev, phy_addr);
+			if (ret < 0)
+				goto fail;
+		} else {
+			for (i = 0; i < PHY_MAX_ADDR; i++) {
+				if(!phy_connect(miidev, i))
+					break;
+			}
+
+			if (i == 32)
+				goto fail;
+		}
+
+		phydev = miidev->phydev;
+		phydrv = phydev->phydrv;
+
+		phydev->speed = 0;
+		phydev->duplex = -1;
+		phydev->pause = phydev->asym_pause = 0;
+		phydev->link = 1;
+		phydev->autoneg = AUTONEG_ENABLE;
+
+		/* Start out supporting everything. Eventually,
+		 * a controller will attach, and may modify one
+		 * or both of these values */
+		phydev->supported = phydrv->features;
+		phydev->advertising = phydrv->features;
+
+		phydrv->config_init(phydev);
+
+		/* Sanitize settings based on PHY capabilities */
+		if ((phydev->supported & SUPPORTED_Autoneg) == 0)
+			phydev->autoneg = AUTONEG_DISABLE;
+
+		strcpy(phydev->dev.name, "phy");
+		phydev->dev.id = DEVICE_ID_DYNAMIC;
+		phydev->dev.parent = &miidev->dev;
+		ret = register_device(&phydev->dev);
+		if (ret)
+			goto fail;
+	} else {
+		phydev = miidev->phydev;
+		phydrv = phydev->phydrv;
+	}
+
+	phydrv->config_aneg(phydev);
+
+	if (!phydrv->read_status(phydev)) {
+		printf("%dMbps %s duplex link detected\n", phydev->speed,
+				phydev->duplex ? "full" : "half");
+		if (adjust_link)
+			adjust_link(miidev);
+	} else {
+		printf("*Warning* no link detected\n");
+		return -EPERM;
+	}
+
+	return 0;
+
+fail:
+	puts("Unable to find a PHY (unknown ID?)\n");
+	return ret;
+}
+
+/* Generic PHY support and helper functions */
+
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
+		return -1;
+
+	*phy_id = (phy_reg & 0xffff) << 16;
+
+	/* Grab the bits from PHYIR2, and put them in the lower half */
+	phy_reg = bus->read(bus, addr, MII_PHYSID2);
+
+	if (phy_reg < 0)
+		return -1;
+
+	*phy_id |= (phy_reg & 0xffff);
+
+	return 0;
+}
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
+			ADVERTISE_PAUSE_ASYM);
+	if (advertise & ADVERTISED_10baseT_Half)
+		adv |= ADVERTISE_10HALF;
+	if (advertise & ADVERTISED_10baseT_Full)
+		adv |= ADVERTISE_10FULL;
+	if (advertise & ADVERTISED_100baseT_Half)
+		adv |= ADVERTISE_100HALF;
+	if (advertise & ADVERTISED_100baseT_Full)
+		adv |= ADVERTISE_100FULL;
+	if (advertise & ADVERTISED_Pause)
+		adv |= ADVERTISE_PAUSE_CAP;
+	if (advertise & ADVERTISED_Asym_Pause)
+		adv |= ADVERTISE_PAUSE_ASYM;
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
+		if (advertise & SUPPORTED_1000baseT_Half)
+			adv |= ADVERTISE_1000HALF;
+		if (advertise & SUPPORTED_1000baseT_Full)
+			adv |= ADVERTISE_1000FULL;
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
+		/* Advertisment hasn't changed, but maybe aneg was never on to
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
+ * genphy_restart_aneg - Enable and Restart Autonegotiation
+ * @phydev: target phy_device struct
+ */
+int genphy_restart_aneg(struct phy_device *phydev)
+{
+	int ctl;
+	uint64_t start;
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
+	start = get_time_ns();
+	while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
+		ctl = phy_read(phydev, MII_BMSR);
+		if (ctl & BMSR_ANEGCOMPLETE)
+			break;
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
+	if (!(ctl & BMSR_ANEGCOMPLETE))
+		puts("PHY auto-negotiate timed out\n");
+
+	if (ctl & BMSR_RFAULT)
+		puts("PHY remote fault detected\n");
+
+	return 0;
+}
+
+int phy_driver_register(struct phy_driver *phydrv)
+{
+	if (!phydrv)
+		return -1;
+
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
index cbd9f48..658b0f2 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -74,6 +74,7 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
+#include <phydev.h>
 
 /*---------------------------------------------------------------
  .
@@ -892,12 +893,14 @@ static void smc91c111_enable(struct eth_device *edev)
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
+	return phy_device_connect(&priv->miidev, 0, NULL);
 }
 
 static int smc91c111_eth_send(struct eth_device *edev, void *packet,
@@ -1279,14 +1282,6 @@ static void print_packet( unsigned char * buf, int length )
 
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
 
@@ -1314,7 +1309,6 @@ static int smc91c111_probe(struct device_d *dev)
 
 	priv->miidev.read = smc91c111_phy_read;
 	priv->miidev.write = smc91c111_phy_write;
-	priv->miidev.address = 0;
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
 	priv->miidev.parent = dev;
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 3ccb0ef..5d3e330 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -38,6 +38,7 @@
 #include <clock.h>
 #include <io.h>
 #include <smc911x.h>
+#include <phydev.h>
 
 #include "smc911x.h"
 
@@ -308,9 +309,11 @@ static void smc911x_enable(struct eth_device *edev)
 static int smc911x_eth_open(struct eth_device *edev)
 {
 	struct smc911x_priv *priv = (struct smc911x_priv *)edev->priv;
+	int ret;
 
-	miidev_wait_aneg(&priv->miidev);
-	miidev_print_status(&priv->miidev);
+	ret = phy_device_connect(&priv->miidev, 1, NULL);
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
 
@@ -538,7 +537,6 @@ static int smc911x_probe(struct device_d *dev)
 
 	priv->miidev.read = smc911x_phy_read;
 	priv->miidev.write = smc911x_phy_write;
-	priv->miidev.address = 1;
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
 	priv->miidev.parent = dev;
diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index be5a170..cbdbed0 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -471,7 +471,7 @@ static int asix_init_mii(struct usbnet *dev)
 {
 	dev->miidev.read = asix_mdio_read;
 	dev->miidev.write = asix_mdio_write;
-	dev->miidev.address = asix_get_phy_addr(dev);
+	dev->phy_addr = asix_get_phy_addr(dev);
 	dev->miidev.flags = 0;
 	dev->miidev.edev = &dev->edev;
 	dev->miidev.parent = &dev->udev->dev;
diff --git a/drivers/net/usb/smsc95xx.c b/drivers/net/usb/smsc95xx.c
index c21705e..a104563 100644
--- a/drivers/net/usb/smsc95xx.c
+++ b/drivers/net/usb/smsc95xx.c
@@ -441,7 +441,7 @@ static int smsc95xx_phy_initialize(struct usbnet *dev)
 	/* Initialize MII structure */
 	dev->miidev.read = smsc95xx_mdio_read;
 	dev->miidev.write = smsc95xx_mdio_write;
-	dev->miidev.address = 1; /* FIXME: asix_get_phy_addr(dev); */
+	dev->phy_addr = 1; /* FIXME: asix_get_phy_addr(dev); */
 	dev->miidev.flags = 0;
 	dev->miidev.edev = &dev->edev;
 	dev->miidev.parent = &dev->udev->dev;
diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index c7e3606..0b11e1b 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -4,6 +4,7 @@
 #include <asm/byteorder.h>
 #include <errno.h>
 #include <malloc.h>
+#include <phydev.h>
 
 static inline int usb_endpoint_dir_in(const struct usb_endpoint_descriptor *epd)
 {
@@ -160,8 +161,6 @@ static int usbnet_init(struct eth_device *edev)
                 return ret;
         }
 
-	miidev_restart_aneg(&dev->miidev);
-
 	return 0;
 }
 
@@ -171,12 +170,7 @@ static int usbnet_open(struct eth_device *edev)
 
 	dev_dbg(&edev->dev, "%s\n",__func__);
 
-	if (miidev_wait_aneg(&dev->miidev))
-		return -1;
-
-	miidev_print_status(&dev->miidev);
-
-	return 0;
+	return phy_device_connect(&dev->miidev, dev->phy_addr, NULL);
 }
 
 static void usbnet_halt(struct eth_device *edev)
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
diff --git a/include/miidev.h b/include/miidev.h
index 4bbf94c..9bea683 100644
--- a/include/miidev.h
+++ b/include/miidev.h
@@ -37,13 +37,12 @@ struct mii_device {
 	struct device_d dev;
 	struct device_d *parent;
 
-	int address;	/* The address the phy has on the bus */
 	int	(*read) (struct mii_device *dev, int addr, int reg);
 	int	(*write) (struct mii_device *dev, int addr, int reg, int value);
 
 	int flags;
-	int capabilities;
 
+	struct phy_device *phydev;
 	struct eth_device *edev;
 	struct cdev cdev;
 	struct list_head list;
@@ -51,15 +50,6 @@ struct mii_device {
 
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
diff --git a/include/phydev.h b/include/phydev.h
new file mode 100644
index 0000000..5c1b432
--- /dev/null
+++ b/include/phydev.h
@@ -0,0 +1,126 @@
+/*
+ * Copyright (c) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
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
+#ifndef __PHYDEV_H__
+#define __PHYDEV_H__
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
+#define PHY_MAX_ADDR	32
+
+#define PHY_ANY_ID "MATCH ANY PHY"
+#define PHY_ANY_UID 0xffffffff
+
+struct phy_device;
+
+struct phy_driver {
+	struct driver_d		drv;
+	unsigned int features;
+	unsigned int phy_id;
+	unsigned int phy_id_mask;
+	int (*config_init) (struct phy_device* dev);
+	int (*config_aneg) (struct phy_device* dev);
+	int (*read_status) (struct phy_device* dev);
+
+	void *priv;
+	struct list_head list;
+};
+
+struct phy_device {
+	struct device_d		dev;
+	struct mii_device *miidev;
+
+	u32 phy_id;
+
+	/* Bus address of the PHY (0-32) */
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
+	struct phy_driver *phydrv;
+
+	void *priv;
+	struct list_head list;
+};
+
+int phy_driver_register(struct phy_driver *drv);
+int phy_init(void);
+
+static int inline phy_write(struct phy_device *dev, int reg, int value)
+{
+	return mii_write(dev->miidev, dev->addr, reg, value);
+}
+
+static int inline phy_read(struct phy_device *dev, int reg)
+{
+	return mii_read(dev->miidev, dev->addr, reg);
+}
+
+int phy_device_connect(struct mii_device *miidev, int phy_addr,
+		       void (*adjust_link) (struct mii_device *miidev));
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
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
