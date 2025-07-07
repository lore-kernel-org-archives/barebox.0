Delivery-date: Mon, 07 Jul 2025 13:55:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRs-00F12c-2J
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 13:55:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRn-0002uV-Ip
	for lore@pengutronix.de; Mon, 07 Jul 2025 13:55:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RsehMcfl5W9GKZykM0R2Tx7cc6lJigyfEgL3fYVP37I=; b=4z24WMly5bHylzZtScuJZfcgz5
	xdpBdCa6sqsyJ5Wt61vnkKAGOC8vnlw5NRZP0K65VioU9sq9ZefYAedE30SWsEcmaKNaR1DTCUQVM
	zuqZHJbTtHVC1RZX7DN8QHYE7vQrRQYm1rggrCMaNNIMbio/lUeHx6ExXE7/76jTLo+ENLIiqN64x
	qS5dCo+J8ukZnupGKC97TfXBN7EnLGCpY0x+k18O0+W5BvYPn7XrGWJ5TL5og95lBhLToEYZgHl6B
	ZZFkZlMs/9/YDTrPKoWwpz0br0QBZxYvLGRZZWOypHGOxarvnm0z605cDETEH8OgSOXaamxIl25oI
	MRCFFSgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYkQt-00000002LUl-3FsI;
	Mon, 07 Jul 2025 11:54:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjwC-00000002GjG-0KYr
	for barebox@bombadil.infradead.org;
	Mon, 07 Jul 2025 11:23:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=RsehMcfl5W9GKZykM0R2Tx7cc6lJigyfEgL3fYVP37I=; b=Ebz13Hj798NH+Z57Bpfa3GuJLE
	Qdp7x3PrYs5IB3n7KZZrpwDYSIeSruwbQfqmwCRYWYUfiQvJZztM/DVH2H1lLLV2rPST/ELYaQd/J
	xTL+63jvLP8y++9/pvcMU6oNWeoTtzo7N6OQTHALhYZshXB4rX669+M5nVaOtDwAmB6OasM+h8Fel
	qBoWffbp5QmFvxAto5QUuaZ8wkULIOE04L4Ig5FXR369X5gepG20QWAJqON1CsnSSgyRf/LBu5dW0
	vlej9Xr744ni2JsdrdOg2ECxb2Xl7R+mFKI37yT1s1Fh8/oESTCq1OQ79kSyT2SRK6mdYb/oZu50g
	wKtScXcw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjw8-00000008TaB-2txh
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 11:23:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uYjvw-0001uY-IZ; Mon, 07 Jul 2025 13:22:52 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 07 Jul 2025 13:22:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-9-af7ee9182480@pengutronix.de>
References: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
In-Reply-To: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_122305_312136_6EB7E528 
X-CRM114-Status: GOOD (  28.52  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 09/10] net: add support for Designware XGMAC (10gb)
 ethernet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Designware XGMAC is designed for 1/2.5/5/10G ethernet applications.
It is mostly identical to the eqos driver but has a different register
layout.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/Kconfig                    |  18 +
 drivers/net/Makefile                   |   2 +
 drivers/net/designware_xgmac.c         | 837 +++++++++++++++++++++++++++++++++
 drivers/net/designware_xgmac.h         | 296 ++++++++++++
 drivers/net/designware_xgmac_socfpga.c | 156 ++++++
 5 files changed, 1309 insertions(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index e1439d9caf0b144d89fac7fb65e737cf6eea289f..068906078c047cb337bdace5726744b144f73711 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -158,6 +158,24 @@ config DRIVER_NET_DESIGNWARE_ROCKCHIP
 	help
 	  This option enables support for the Ethernet MAC on different Rockchip SoCs
 
+config DRIVER_NET_DESIGNWARE_XGMAC
+	bool "Designware XGMAC Ethernet driver support" if COMPILE_TEST
+	depends on HAS_DMA && OFTREE
+	select PHYLIB
+	select MFD_SYSCON
+	help
+	  This option enables support for the Synopsys Designware Ethernet XGMAC (10G Ethernet MAC).
+
+config DRIVER_NET_DESIGNWARE_XGMAC_SOCFPGA
+	bool "Designware XGMAC Ethernet driver support for SOCFPGA"
+	select DRIVER_NET_DESIGNWARE_XGMAC
+	depends on (ARCH_SOCFPGA_AGILEX5 || COMPILE_TEST)
+	select RESET_CONTROLLER if ARCH_SOCFPGA
+	select RESET_SIMPLE if ARCH_SOCFPGA_AGILEX5
+	help
+	  This option enables support for the Synopsys Designware Ethernet XGMAC with specific configuration
+	  for the Intel SoC FPGA chip.
+
 config DRIVER_NET_DM9K
 	bool "Davicom dm9k[E|A|B] ethernet driver"
 	depends on HAS_DM9000 || COMPILE_TEST
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 59d78bce3fc7d51ef6b3fa65a1c6f402254589f3..e45ce7cb6a6c6fab721aaaba09bac75ac99d6663 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -21,6 +21,8 @@ obj-$(CONFIG_DRIVER_NET_DESIGNWARE_IMX8) += designware_imx.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STM32) += designware_stm32.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_TEGRA186) += designware_tegra186.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP) += designware_rockchip.o
+obj-$(CONFIG_DRIVER_NET_DESIGNWARE_XGMAC) += designware_xgmac.o
+obj-$(CONFIG_DRIVER_NET_DESIGNWARE_XGMAC_SOCFPGA) += designware_xgmac_socfpga.o
 obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
 obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/
 obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
diff --git a/drivers/net/designware_xgmac.c b/drivers/net/designware_xgmac.c
new file mode 100644
index 0000000000000000000000000000000000000000..f1de4f8923fb7de43673505bdf0846e99b209064
--- /dev/null
+++ b/drivers/net/designware_xgmac.c
@@ -0,0 +1,837 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2023, Intel Corporation.
+ *
+ * Portions based on U-Boot's dwc_eth_qos.c.
+ */
+
+/*
+ * This driver supports the Synopsys Designware Ethernet XGMAC (10G Ethernet
+ * MAC) IP block. The IP supports multiple options for bus type, clocking/
+ * reset structure, and feature list.
+ *
+ * The driver is written such that generic core logic is kept separate from
+ * configuration-specific logic. Code that interacts with configuration-
+ * specific resources is split out into separate functions to avoid polluting
+ * common code. If/when this driver is enhanced to support multiple
+ * configurations, the core code should be adapted to call all configuration-
+ * specific functions through function pointers, with the definition of those
+ * function pointers being supplied by struct udevice_id xgmac_ids[]'s .data
+ * field.
+ *
+ * This configuration uses an AXI master/DMA bus, an AHB slave/register bus,
+ * contains the DMA, MTL, and MAC sub-blocks, and supports a single RGMII PHY.
+ * This configuration also has SW control over all clock and reset signals to
+ * the HW block.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <dma.h>
+#include <errno.h>
+#include <gpio.h>
+#include <linux/gpio/consumer.h>
+#include <malloc.h>
+#include <net.h>
+#include <of_gpio.h>
+#include <of_net.h>
+#include <linux/iopoll.h>
+#include <linux/phy.h>
+#include <asm/cache.h>
+#include "designware_xgmac.h"
+
+static inline struct xgmac_priv *to_xgmac(struct eth_device *edev)
+{
+	return container_of(edev, struct xgmac_priv, netdev);
+}
+
+static int xgmac_mdio_wait_idle(struct xgmac_priv *xgmac)
+{
+	u32 idle;
+
+	return readl_poll_timeout(&xgmac->mac_regs->mdio_data, idle,
+				  !(idle & XGMAC_MAC_MDIO_ADDRESS_SBUSY),
+				  XGMAC_TIMEOUT_100MS);
+}
+
+static int xgmac_mdio_read(struct mii_bus *bus, int mdio_addr, int mdio_reg)
+{
+	struct xgmac_priv *xgmac = bus->priv;
+	u32 val;
+	u32 hw_addr;
+	u32 idle;
+	int ret;
+
+	ret = readl_poll_timeout(&xgmac->mac_regs->mdio_data, idle,
+				 !(idle & XGMAC_MAC_MDIO_ADDRESS_SBUSY),
+				 XGMAC_TIMEOUT_100MS);
+	if (ret) {
+		dev_err(xgmac->dev, "MDIO not idle at entry: %d\n", ret);
+		return ret;
+	}
+
+	/* Set clause 22 format */
+	val = BIT(mdio_addr);
+	writel(val, &xgmac->mac_regs->mdio_clause_22_port);
+
+	hw_addr = (mdio_addr << XGMAC_MAC_MDIO_ADDRESS_PA_SHIFT) |
+		   (mdio_reg & XGMAC_MAC_MDIO_REG_ADDR_C22P_MASK);
+
+	val = xgmac->config->config_mac_mdio <<
+	      XGMAC_MAC_MDIO_ADDRESS_CR_SHIFT;
+
+	val |= XGMAC_MAC_MDIO_ADDRESS_SADDR |
+	       XGMAC_MDIO_SINGLE_CMD_ADDR_CMD_READ |
+	       XGMAC_MAC_MDIO_ADDRESS_SBUSY;
+
+	ret = readl_poll_timeout(&xgmac->mac_regs->mdio_data, idle,
+				 !(idle & XGMAC_MAC_MDIO_ADDRESS_SBUSY),
+				 XGMAC_TIMEOUT_100MS);
+	if (ret) {
+		dev_err(xgmac->dev, "MDIO not idle at entry: %d\n", ret);
+		return ret;
+	}
+
+	writel(hw_addr, &xgmac->mac_regs->mdio_address);
+	writel(val, &xgmac->mac_regs->mdio_data);
+
+	ret = readl_poll_timeout(&xgmac->mac_regs->mdio_data, idle,
+				 !(idle & XGMAC_MAC_MDIO_ADDRESS_SBUSY),
+				 XGMAC_TIMEOUT_100MS);
+	if (ret) {
+		dev_err(xgmac->dev, "MDIO read didn't complete: %d\n", ret);
+		return ret;
+	}
+
+	val = readl(&xgmac->mac_regs->mdio_data);
+	val &= XGMAC_MAC_MDIO_DATA_GD_MASK;
+
+	return val;
+}
+
+static int xgmac_mdio_write(struct mii_bus *bus, int mdio_addr, int mdio_reg,
+			    u16 mdio_val)
+{
+	struct xgmac_priv *xgmac = bus->priv;
+	u32 val;
+	u32 hw_addr;
+	int ret;
+
+	ret = xgmac_mdio_wait_idle(xgmac);
+	if (ret) {
+		dev_err(xgmac->dev, "MDIO not idle at entry: %d\n", ret);
+		return ret;
+	}
+
+	/* Set clause 22 format */
+	val = BIT(mdio_addr);
+	writel(val, &xgmac->mac_regs->mdio_clause_22_port);
+
+	hw_addr = (mdio_addr << XGMAC_MAC_MDIO_ADDRESS_PA_SHIFT) |
+		   (mdio_reg & XGMAC_MAC_MDIO_REG_ADDR_C22P_MASK);
+
+	hw_addr |= (mdio_reg >> XGMAC_MAC_MDIO_ADDRESS_PA_SHIFT) <<
+		    XGMAC_MAC_MDIO_ADDRESS_DA_SHIFT;
+
+	val = (xgmac->config->config_mac_mdio <<
+	       XGMAC_MAC_MDIO_ADDRESS_CR_SHIFT);
+
+	val |= XGMAC_MAC_MDIO_ADDRESS_SADDR |
+		mdio_val | XGMAC_MDIO_SINGLE_CMD_ADDR_CMD_WRITE |
+		XGMAC_MAC_MDIO_ADDRESS_SBUSY;
+
+	ret = xgmac_mdio_wait_idle(xgmac);
+	if (ret) {
+		dev_err(xgmac->dev, "MDIO not idle at entry: %d\n", ret);
+		return ret;
+	}
+
+	writel(hw_addr, &xgmac->mac_regs->mdio_address);
+	writel(val, &xgmac->mac_regs->mdio_data);
+
+	ret = xgmac_mdio_wait_idle(xgmac);
+	if (ret) {
+		dev_err(xgmac->dev, "MDIO write didn't complete: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void xgmac_set_full_duplex(struct xgmac_priv *xgmac)
+{
+	clrbits_le32(&xgmac->mac_regs->mac_extended_conf, XGMAC_MAC_EXT_CONF_HD);
+}
+
+static void xgmac_set_half_duplex(struct xgmac_priv *xgmac)
+{
+	setbits_le32(&xgmac->mac_regs->mac_extended_conf, XGMAC_MAC_EXT_CONF_HD);
+
+	/* WAR: Flush TX queue when switching to half-duplex */
+	setbits_le32(&xgmac->mtl_regs->txq0_operation_mode,
+		     XGMAC_MTL_TXQ0_OPERATION_MODE_FTQ);
+}
+
+static void xgmac_set_gmii_speed(struct xgmac_priv *xgmac)
+{
+	clrsetbits_le32(&xgmac->mac_regs->tx_configuration,
+			XGMAC_MAC_CONF_SS_SHIFT_MASK,
+			XGMAC_MAC_CONF_SS_1G_GMII << XGMAC_MAC_CONF_SS_SHIFT);
+}
+
+static void xgmac_set_mii_speed_100(struct xgmac_priv *xgmac)
+{
+	clrsetbits_le32(&xgmac->mac_regs->tx_configuration,
+			XGMAC_MAC_CONF_SS_SHIFT_MASK,
+			XGMAC_MAC_CONF_SS_100M_MII << XGMAC_MAC_CONF_SS_SHIFT);
+}
+
+static void xgmac_set_mii_speed_10(struct xgmac_priv *xgmac)
+{
+	clrsetbits_le32(&xgmac->mac_regs->tx_configuration,
+			XGMAC_MAC_CONF_SS_SHIFT_MASK,
+			XGMAC_MAC_CONF_SS_2_10M_MII << XGMAC_MAC_CONF_SS_SHIFT);
+}
+
+static void xgmac_adjust_link(struct eth_device *edev)
+{
+	struct xgmac_priv *xgmac = to_xgmac(edev);
+	struct device *dev = edev->parent;
+
+	if (edev->phydev->duplex)
+		xgmac_set_full_duplex(xgmac);
+	else
+		xgmac_set_half_duplex(xgmac);
+
+	switch (edev->phydev->speed) {
+	case SPEED_1000:
+		xgmac_set_gmii_speed(xgmac);
+		break;
+	case SPEED_100:
+		xgmac_set_mii_speed_100(xgmac);
+		break;
+	case SPEED_10:
+		xgmac_set_mii_speed_10(xgmac);
+		break;
+	default:
+		dev_err(dev, "invalid speed %d\n", edev->phydev->speed);
+	}
+}
+
+static int xgmac_write_hwaddr(struct eth_device *edev, const unsigned char *mac)
+{
+	struct xgmac_priv *xgmac = to_xgmac(edev);
+	u32 val;
+
+	memcpy(xgmac->macaddr, mac, ETH_ALEN);
+
+	/*
+	 * This function may be called before start() or after stop(). At that
+	 * time, on at least some configurations of the XGMAC HW, all clocks to
+	 * the XGMAC HW block will be stopped, and a reset signal applied. If
+	 * any register access is attempted in this state, bus timeouts or CPU
+	 * hangs may occur. This check prevents that.
+	 *
+	 * A simple solution to this problem would be to not implement
+	 * write_hwaddr(), since start() always writes the MAC address into HW
+	 * anyway. However, it is desirable to implement write_hwaddr() to
+	 * support the case of SW that runs subsequent to U-Boot which expects
+	 * the MAC address to already be programmed into the XGMAC registers,
+	 * which must happen irrespective of whether the U-Boot user (or
+	 * scripts) actually made use of the XGMAC device, and hence
+	 * irrespective of whether start() was ever called.
+	 *
+	 */
+	if (!xgmac->config->reg_access_always_ok && !xgmac->reg_access_ok)
+		return 0;
+
+	/* Update the MAC address */
+	val = (xgmac->macaddr[5] << 8) |
+		(xgmac->macaddr[4]);
+	writel(val, &xgmac->mac_regs->address0_high);
+	val = (xgmac->macaddr[3] << 24) |
+		(xgmac->macaddr[2] << 16) |
+		(xgmac->macaddr[1] << 8) |
+		(xgmac->macaddr[0]);
+	writel(val, &xgmac->mac_regs->address0_low);
+	return 0;
+}
+
+static int xgmac_read_rom_hwaddr(struct eth_device *edev, unsigned char *mac)
+{
+	struct xgmac_priv *xgmac = to_xgmac(edev);
+	int ret;
+
+	ret = xgmac->config->ops->xgmac_get_enetaddr(edev->parent);
+	if (ret < 0)
+		return ret;
+
+	if (is_valid_ether_addr(xgmac->macaddr))
+		return 0;
+
+	return -EINVAL;
+}
+
+static int xgmac_start(struct eth_device *edev)
+{
+	struct xgmac_priv *xgmac = to_xgmac(edev);
+	int ret, i;
+	u32 val, tx_fifo_sz, rx_fifo_sz, tqs, rqs, pbl;
+	ulong last_rx_desc;
+	ulong desc_pad;
+	u32 idle;
+
+	ret = phy_device_connect(edev, &xgmac->miibus, xgmac->phy_addr,
+				 xgmac_adjust_link, 0, xgmac->interface);
+	if (ret)
+		return ret;
+
+	ret = xgmac->config->ops->xgmac_start_resets(edev->parent);
+	if (ret < 0) {
+		dev_err(&edev->dev, "xgmac_start_resets() failed: %d\n", ret);
+		goto err;
+	}
+
+	xgmac->reg_access_ok = true;
+
+	setbits_le32(&xgmac->dma_regs->mode, XGMAC_DMA_MODE_SWR);
+
+	ret = readl_poll_timeout(&xgmac->dma_regs->mode, idle,
+				  !(idle & XGMAC_DMA_MODE_SWR),
+				  XGMAC_TIMEOUT_100MS);
+	if (ret) {
+		dev_err(&edev->dev, "XGMAC_DMA_MODE_SWR stuck: %d\n", ret);
+		goto err;
+	}
+
+	/* Configure MTL */
+
+	/* Enable Store and Forward mode for TX */
+	/* Program Tx operating mode */
+	setbits_le32(&xgmac->mtl_regs->txq0_operation_mode,
+		     XGMAC_MTL_TXQ0_OPERATION_MODE_TSF |
+		     (XGMAC_MTL_TXQ0_OPERATION_MODE_TXQEN_ENABLED <<
+		      XGMAC_MTL_TXQ0_OPERATION_MODE_TXQEN_SHIFT));
+
+	/* Transmit Queue weight */
+	writel(0x10, &xgmac->mtl_regs->txq0_quantum_weight);
+
+	/* Enable Store and Forward mode for RX, since no jumbo frame */
+	setbits_le32(&xgmac->mtl_regs->rxq0_operation_mode,
+		     XGMAC_MTL_RXQ0_OPERATION_MODE_RSF);
+
+	/* Transmit/Receive queue fifo size; use all RAM for 1 queue */
+	val = readl(&xgmac->mac_regs->hw_feature1);
+	tx_fifo_sz = (val >> XGMAC_MAC_HW_FEATURE1_TXFIFOSIZE_SHIFT) &
+		XGMAC_MAC_HW_FEATURE1_TXFIFOSIZE_MASK;
+	rx_fifo_sz = (val >> XGMAC_MAC_HW_FEATURE1_RXFIFOSIZE_SHIFT) &
+		XGMAC_MAC_HW_FEATURE1_RXFIFOSIZE_MASK;
+
+	/*
+	 * r/tx_fifo_sz is encoded as log2(n / 128). Undo that by shifting.
+	 * r/tqs is encoded as (n / 256) - 1.
+	 */
+	tqs = (128 << tx_fifo_sz) / 256 - 1;
+	rqs = (128 << rx_fifo_sz) / 256 - 1;
+
+	clrsetbits_le32(&xgmac->mtl_regs->txq0_operation_mode,
+			XGMAC_MTL_TXQ0_OPERATION_MODE_TQS_MASK <<
+			XGMAC_MTL_TXQ0_OPERATION_MODE_TQS_SHIFT,
+			tqs << XGMAC_MTL_TXQ0_OPERATION_MODE_TQS_SHIFT);
+	clrsetbits_le32(&xgmac->mtl_regs->rxq0_operation_mode,
+			XGMAC_MTL_RXQ0_OPERATION_MODE_RQS_MASK <<
+			XGMAC_MTL_RXQ0_OPERATION_MODE_RQS_SHIFT,
+			rqs << XGMAC_MTL_RXQ0_OPERATION_MODE_RQS_SHIFT);
+
+	setbits_le32(&xgmac->mtl_regs->rxq0_operation_mode,
+		     XGMAC_MTL_RXQ0_OPERATION_MODE_EHFC);
+
+	/* Configure MAC */
+	clrsetbits_le32(&xgmac->mac_regs->rxq_ctrl0,
+			XGMAC_MAC_RXQ_CTRL0_RXQ0EN_MASK <<
+			XGMAC_MAC_RXQ_CTRL0_RXQ0EN_SHIFT,
+			xgmac->config->config_mac <<
+			XGMAC_MAC_RXQ_CTRL0_RXQ0EN_SHIFT);
+
+	/* Multicast and Broadcast Queue Enable */
+	setbits_le32(&xgmac->mac_regs->rxq_ctrl1,
+		     XGMAC_MAC_RXQ_CTRL1_MCBCQEN);
+
+	/* enable promisc mode and receive all mode */
+	setbits_le32(&xgmac->mac_regs->mac_packet_filter,
+		     XGMAC_MAC_PACKET_FILTER_RA |
+			 XGMAC_MAC_PACKET_FILTER_PR);
+
+	/* Set TX flow control parameters */
+	/* Set Pause Time */
+	setbits_le32(&xgmac->mac_regs->q0_tx_flow_ctrl,
+		     XGMAC_MAC_Q0_TX_FLOW_CTRL_PT_MASK <<
+		     XGMAC_MAC_Q0_TX_FLOW_CTRL_PT_SHIFT);
+
+	/* Assign priority for RX flow control */
+	clrbits_le32(&xgmac->mac_regs->rxq_ctrl2,
+		     XGMAC_MAC_RXQ_CTRL2_PSRQ0_MASK <<
+		     XGMAC_MAC_RXQ_CTRL2_PSRQ0_SHIFT);
+
+	/* Enable flow control */
+	setbits_le32(&xgmac->mac_regs->q0_tx_flow_ctrl,
+		     XGMAC_MAC_Q0_TX_FLOW_CTRL_TFE);
+	setbits_le32(&xgmac->mac_regs->rx_flow_ctrl,
+		     XGMAC_MAC_RX_FLOW_CTRL_RFE);
+
+	clrbits_le32(&xgmac->mac_regs->tx_configuration,
+		     XGMAC_MAC_CONF_JD);
+
+	clrbits_le32(&xgmac->mac_regs->rx_configuration,
+		     XGMAC_MAC_CONF_JE |
+		     XGMAC_MAC_CONF_GPSLCE |
+		     XGMAC_MAC_CONF_WD);
+
+	setbits_le32(&xgmac->mac_regs->rx_configuration,
+		     XGMAC_MAC_CONF_ACS |
+		     XGMAC_MAC_CONF_CST);
+
+	/* Configure DMA */
+	clrsetbits_le32(&xgmac->dma_regs->sysbus_mode,
+			XGMAC_DMA_SYSBUS_MODE_AAL,
+			XGMAC_DMA_SYSBUS_MODE_EAME |
+			XGMAC_DMA_SYSBUS_MODE_UNDEF);
+
+	/* Enable OSP mode */
+	setbits_le32(&xgmac->dma_regs->ch0_tx_control,
+		     XGMAC_DMA_CH0_TX_CONTROL_OSP);
+
+	/* RX buffer size. Must be a multiple of bus width */
+	clrsetbits_le32(&xgmac->dma_regs->ch0_rx_control,
+			XGMAC_DMA_CH0_RX_CONTROL_RBSZ_MASK <<
+			XGMAC_DMA_CH0_RX_CONTROL_RBSZ_SHIFT,
+			XGMAC_MAX_PACKET_SIZE <<
+			XGMAC_DMA_CH0_RX_CONTROL_RBSZ_SHIFT);
+
+	desc_pad = 0;
+
+	setbits_le32(&xgmac->dma_regs->ch0_control,
+		     XGMAC_DMA_CH0_CONTROL_PBLX8 |
+		     (desc_pad << XGMAC_DMA_CH0_CONTROL_DSL_SHIFT));
+
+	/*
+	 * Burst length must be < 1/2 FIFO size.
+	 * FIFO size in tqs is encoded as (n / 256) - 1.
+	 * Each burst is n * 8 (PBLX8) * 16 (AXI width) == 128 bytes.
+	 * Half of n * 256 is n * 128, so pbl == tqs, modulo the -1.
+	 */
+	pbl = tqs + 1;
+	if (pbl > 32)
+		pbl = 32;
+
+	clrsetbits_le32(&xgmac->dma_regs->ch0_tx_control,
+			XGMAC_DMA_CH0_TX_CONTROL_TXPBL_MASK <<
+			XGMAC_DMA_CH0_TX_CONTROL_TXPBL_SHIFT,
+			pbl << XGMAC_DMA_CH0_TX_CONTROL_TXPBL_SHIFT);
+
+	clrsetbits_le32(&xgmac->dma_regs->ch0_rx_control,
+			XGMAC_DMA_CH0_RX_CONTROL_RXPBL_MASK <<
+			XGMAC_DMA_CH0_RX_CONTROL_RXPBL_SHIFT,
+			8 << XGMAC_DMA_CH0_RX_CONTROL_RXPBL_SHIFT);
+
+	/* DMA performance configuration */
+	val = (XGMAC_DMA_SYSBUS_MODE_RD_OSR_LMT_MASK <<
+	       XGMAC_DMA_SYSBUS_MODE_RD_OSR_LMT_SHIFT) |
+	       (XGMAC_DMA_SYSBUS_MODE_WR_OSR_LMT_MASK <<
+	       XGMAC_DMA_SYSBUS_MODE_WR_OSR_LMT_SHIFT) |
+	       XGMAC_DMA_SYSBUS_MODE_EAME |
+	       XGMAC_DMA_SYSBUS_MODE_BLEN16 |
+	       XGMAC_DMA_SYSBUS_MODE_BLEN8 |
+	       XGMAC_DMA_SYSBUS_MODE_BLEN4 |
+	       XGMAC_DMA_SYSBUS_MODE_BLEN32;
+
+	writel(val, &xgmac->dma_regs->sysbus_mode);
+
+	/* Set up descriptors */
+
+	xgmac->tx_desc_idx = 0;
+	xgmac->rx_desc_idx = 0;
+
+	for (i = 0; i < XGMAC_DESCRIPTORS_NUM; i++) {
+		struct xgmac_desc *rx_desc = &xgmac->rx_descs[i];
+
+		writel(XGMAC_DESC3_OWN, &rx_desc->des3);
+	}
+
+	writel(0, &xgmac->dma_regs->ch0_txdesc_list_haddress);
+	writel(xgmac->tx_descs_phys, &xgmac->dma_regs->ch0_txdesc_list_address);
+	writel(XGMAC_DESCRIPTORS_NUM - 1,
+	       &xgmac->dma_regs->ch0_txdesc_ring_length);
+
+	writel(0, &xgmac->dma_regs->ch0_rxdesc_list_haddress);
+	writel(xgmac->rx_descs_phys, &xgmac->dma_regs->ch0_rxdesc_list_address);
+	writel(XGMAC_DESCRIPTORS_NUM - 1,
+	       &xgmac->dma_regs->ch0_rxdesc_ring_length);
+
+	/* Enable everything */
+	setbits_le32(&xgmac->dma_regs->ch0_tx_control,
+		     XGMAC_DMA_CH0_TX_CONTROL_ST);
+	setbits_le32(&xgmac->dma_regs->ch0_rx_control,
+		     XGMAC_DMA_CH0_RX_CONTROL_SR);
+	setbits_le32(&xgmac->mac_regs->tx_configuration,
+		     XGMAC_MAC_CONF_TE);
+	setbits_le32(&xgmac->mac_regs->rx_configuration,
+		     XGMAC_MAC_CONF_RE);
+
+	/* TX tail pointer not written until we need to TX a packet */
+	/*
+	 * Point RX tail pointer at last descriptor. Ideally, we'd point at the
+	 * first descriptor, implying all descriptors were available. However,
+	 * that's not distinguishable from none of the descriptors being
+	 * available.
+	 */
+	last_rx_desc = (ulong)&xgmac->rx_descs[(XGMAC_DESCRIPTORS_NUM - 1)];
+	writel(last_rx_desc, &xgmac->dma_regs->ch0_rxdesc_tail_pointer);
+
+	xgmac->started = true;
+
+	return 0;
+
+err:
+	return ret;
+}
+
+static void xgmac_stop(struct eth_device *edev)
+{
+	struct xgmac_priv *xgmac = to_xgmac(edev);
+	u64 start_time;
+	u32 val;
+	u32 trcsts;
+	u32 txqsts;
+	u32 prxq;
+	u32 rxqsts;
+
+	if (!xgmac->started)
+		return;
+
+	xgmac->started = false;
+	xgmac->reg_access_ok = false;
+
+	/* Disable TX DMA */
+	clrbits_le32(&xgmac->dma_regs->ch0_tx_control,
+		     XGMAC_DMA_CH0_TX_CONTROL_ST);
+
+	/* Wait for TX all packets to drain out of MTL */
+	start_time = get_time_ns();
+
+	while (!is_timeout(start_time, XGMAC_TIMEOUT_100MS)) {
+		val = readl(&xgmac->mtl_regs->txq0_debug);
+
+		trcsts = (val >> XGMAC_MTL_TXQ0_DEBUG_TRCSTS_SHIFT) &
+			  XGMAC_MTL_TXQ0_DEBUG_TRCSTS_MASK;
+
+		txqsts = val & XGMAC_MTL_TXQ0_DEBUG_TXQSTS;
+
+		if (trcsts != XGMAC_MTL_TXQ0_DEBUG_TRCSTS_READ_STATE && !txqsts)
+			break;
+	}
+
+	/* Turn off MAC TX and RX */
+	clrbits_le32(&xgmac->mac_regs->tx_configuration,
+		     XGMAC_MAC_CONF_RE);
+	clrbits_le32(&xgmac->mac_regs->rx_configuration,
+		     XGMAC_MAC_CONF_RE);
+
+	/* Wait for all RX packets to drain out of MTL */
+	start_time = get_time_ns();
+
+	while (!is_timeout(start_time, XGMAC_TIMEOUT_100MS)) {
+		val = readl(&xgmac->mtl_regs->rxq0_debug);
+
+		prxq = (val >> XGMAC_MTL_RXQ0_DEBUG_PRXQ_SHIFT) &
+			XGMAC_MTL_RXQ0_DEBUG_PRXQ_MASK;
+
+		rxqsts = (val >> XGMAC_MTL_RXQ0_DEBUG_RXQSTS_SHIFT) &
+			  XGMAC_MTL_RXQ0_DEBUG_RXQSTS_MASK;
+
+		if (!prxq && !rxqsts)
+			break;
+	}
+
+	/* Turn off RX DMA */
+	clrbits_le32(&xgmac->dma_regs->ch0_rx_control,
+		     XGMAC_DMA_CH0_RX_CONTROL_SR);
+}
+
+static int xgmac_send(struct eth_device *edev, void *packet, int length)
+{
+	struct xgmac_priv *xgmac = to_xgmac(edev);
+	struct xgmac_desc *tx_desc;
+	dma_addr_t dma;
+	u32 des3_prev, des3;
+	int ret;
+
+	tx_desc = &xgmac->tx_descs[xgmac->tx_desc_idx];
+	xgmac->tx_desc_idx++;
+	xgmac->tx_desc_idx %= XGMAC_DESCRIPTORS_NUM;
+
+	dma = dma_map_single(edev->parent, packet, length, DMA_TO_DEVICE);
+	if (dma_mapping_error(edev->parent, dma))
+		return -EFAULT;
+
+	tx_desc->des0 = lower_32_bits(dma);
+	tx_desc->des1 = upper_32_bits(dma);
+	tx_desc->des2 = length;
+	/*
+	 * Make sure that if HW sees the _OWN write below, it will see all the
+	 * writes to the rest of the descriptor too.
+	 */
+	barrier();
+
+	des3_prev = XGMAC_DESC3_OWN | XGMAC_DESC3_FD | XGMAC_DESC3_LD | length;
+	writel(des3_prev, &tx_desc->des3);
+	writel((ulong)(tx_desc + 1), &xgmac->dma_regs->ch0_txdesc_tail_pointer);
+
+	ret = readl_poll_timeout(&tx_desc->des3, des3,
+				 !(des3 & XGMAC_DESC3_OWN),
+				 100 * USEC_PER_MSEC);
+
+	dma_unmap_single(edev->parent, dma, length, DMA_TO_DEVICE);
+
+	if (ret == -ETIMEDOUT)
+		dev_dbg(xgmac->dev, "%s: TX timeout 0x%08x\n", __func__, des3);
+
+	return ret;
+}
+
+static void xgmac_recv(struct eth_device *edev)
+{
+	struct xgmac_priv *xgmac = to_xgmac(edev);
+	struct xgmac_desc *rx_desc;
+	dma_addr_t dma;
+	void *pkt;
+	int length;
+
+	rx_desc = &xgmac->rx_descs[xgmac->rx_desc_idx];
+
+	if (rx_desc->des3 & XGMAC_DESC3_OWN)
+		return;
+
+	dma = xgmac->dma_rx_buf_phys[xgmac->rx_desc_idx];
+	pkt = xgmac->dma_rx_buf_virt[xgmac->rx_desc_idx];
+	length = rx_desc->des3 & XGMAC_RDES3_PKT_LENGTH_MASK;
+
+	dma_sync_single_for_cpu(edev->parent, dma, length, DMA_FROM_DEVICE);
+	net_receive(edev, pkt, length);
+	dma_sync_single_for_device(edev->parent, dma, length, DMA_FROM_DEVICE);
+
+	/* Read Format RX descriptor */
+	rx_desc = &xgmac->rx_descs[xgmac->rx_desc_idx];
+	rx_desc->des0 = lower_32_bits(dma);
+	rx_desc->des1 = upper_32_bits(dma);
+	rx_desc->des2 = 0;
+	/*
+	 * Make sure that if HW sees the _OWN write below, it will see all the
+	 * writes to the rest of the descriptor too.
+	 */
+	rx_desc->des3 = XGMAC_DESC3_OWN;
+	barrier();
+
+	writel(xgmac->rx_descs_phys + (xgmac->rx_desc_idx * XGMAC_DESCRIPTOR_SIZE),
+	       &xgmac->dma_regs->ch0_rxdesc_tail_pointer);
+
+	xgmac->rx_desc_idx++;
+	xgmac->rx_desc_idx %= XGMAC_DESCRIPTORS_NUM;
+}
+
+static int xgmac_probe_resources_core(struct xgmac_priv *xgmac)
+{
+	unsigned int desc_step;
+	dma_addr_t dma;
+	int ret = 0;
+	void *p;
+	int i;
+
+	/* Maximum distance between neighboring descriptors, in Bytes. */
+	desc_step = sizeof(struct xgmac_desc);
+
+	xgmac->tx_descs = dma_alloc_coherent(xgmac->dev,
+					     XGMAC_DESCRIPTORS_SIZE,
+					     &xgmac->tx_descs_phys);
+	if (!xgmac->tx_descs) {
+		ret = -ENOMEM;
+		goto err;
+	}
+
+	xgmac->rx_descs = dma_alloc_coherent(xgmac->dev,
+					     XGMAC_DESCRIPTORS_SIZE,
+					     &xgmac->rx_descs_phys);
+	if (!xgmac->rx_descs) {
+		ret = -ENOMEM;
+		goto err_free_tx_descs;
+	}
+
+	p = dma_alloc(XGMAC_RX_BUFFER_SIZE);
+	if (!p)
+		goto err_free_descs;
+
+	for (i = 0; i < XGMAC_DESCRIPTORS_NUM; i++) {
+		struct xgmac_desc *rx_desc = &xgmac->rx_descs[i];
+
+		dma = dma_map_single(xgmac->dev, p, XGMAC_MAX_PACKET_SIZE, DMA_FROM_DEVICE);
+		if (dma_mapping_error(xgmac->dev, dma)) {
+			ret = -EFAULT;
+			goto err_free_dma_bufs;
+		}
+
+		rx_desc->des0 = lower_32_bits(dma);
+		rx_desc->des1 = upper_32_bits(dma);
+		xgmac->dma_rx_buf_phys[i] = dma;
+		xgmac->dma_rx_buf_virt[i] = p;
+
+		p += XGMAC_MAX_PACKET_SIZE;
+	}
+
+	return 0;
+
+err_free_dma_bufs:
+	dma_unmap_single(xgmac->dev, dma, XGMAC_MAX_PACKET_SIZE, DMA_FROM_DEVICE);
+	dma_free(&dma);
+err_free_descs:
+	dma_free_coherent(xgmac->dev, xgmac->rx_descs, xgmac->rx_descs_phys,
+			  XGMAC_DESCRIPTORS_SIZE);
+err_free_tx_descs:
+	dma_free_coherent(xgmac->dev, xgmac->tx_descs, xgmac->tx_descs_phys,
+			  XGMAC_DESCRIPTORS_SIZE);
+err:
+
+	return ret;
+}
+
+static int xgmac_remove_resources_core(struct xgmac_priv *xgmac)
+{
+	dma_free_coherent(xgmac->dev, xgmac->rx_descs, xgmac->rx_descs_phys,
+			  XGMAC_DESCRIPTORS_SIZE);
+	dma_free_coherent(xgmac->dev, xgmac->tx_descs, xgmac->tx_descs_phys,
+			  XGMAC_DESCRIPTORS_SIZE);
+
+	return 0;
+}
+
+static void xgmac_probe_dt(struct device *dev, struct xgmac_priv *xgmac)
+{
+	struct device_node *child;
+
+	xgmac->interface = of_get_phy_mode(dev->of_node);
+	xgmac->phy_addr = -1;
+
+	/* Set MDIO bus device node, if present. */
+	for_each_child_of_node(dev->of_node, child) {
+		if (of_device_is_compatible(child, "snps,dwmac-mdio") ||
+		    (child->name && !of_node_cmp(child->name, "mdio"))) {
+			xgmac->miibus.dev.of_node = child;
+			break;
+		}
+	}
+}
+
+static int xgmac_phy_reset(struct device *dev)
+{
+	struct gpio_desc *phy_reset;
+	u32 delays[3] = {0, 0, 0};
+
+	phy_reset = gpiod_get_optional(dev, "snps,reset",
+				       GPIOF_OUT_INIT_ACTIVE);
+	if (IS_ERR(phy_reset)) {
+		dev_warn(dev, "Failed to get 'snps,reset' GPIO (ignored)\n");
+	} else if (phy_reset) {
+		of_property_read_u32_array(dev->of_node,
+					   "snps,reset-delays-us",
+					   delays, ARRAY_SIZE(delays));
+		udelay(delays[1]);
+		gpiod_set_value(phy_reset, false);
+		udelay(delays[2]);
+	}
+
+	return 0;
+}
+
+int xgmac_probe(struct device *dev)
+{
+	struct mii_bus *miibus;
+	struct xgmac_priv *xgmac;
+	struct resource *iores;
+	struct eth_device *edev;
+	int ret = 0;
+
+	xgmac = xzalloc(sizeof(*xgmac));
+
+	xgmac->dev = dev;
+	xgmac->config = device_get_match_data(dev);
+	if (!xgmac->config) {
+		dev_err(dev, "failed to get driver data: %d\n", ret);
+		return ret;
+	}
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	xgmac->regs = IOMEM(iores->start);
+
+	xgmac->mac_regs = xgmac->regs + XGMAC_MAC_REGS_BASE;
+	xgmac->mtl_regs = xgmac->regs + XGMAC_MTL_REGS_BASE;
+	xgmac->dma_regs = xgmac->regs + XGMAC_DMA_REGS_BASE;
+
+	xgmac_probe_dt(dev, xgmac);
+
+	edev = &xgmac->netdev;
+	dev->priv = xgmac;
+	edev->priv = xgmac;
+
+	edev->parent = dev;
+	edev->open = xgmac_start;
+	edev->send = xgmac_send;
+	edev->halt = xgmac_stop;
+	edev->recv = xgmac_recv;
+	edev->get_ethaddr = xgmac_read_rom_hwaddr;
+	edev->set_ethaddr = xgmac_write_hwaddr;
+
+	miibus = &xgmac->miibus;
+	miibus->parent = edev->parent;
+	miibus->read = xgmac_mdio_read;
+	miibus->write = xgmac_mdio_write;
+	miibus->priv = xgmac;
+
+	ret = xgmac_phy_reset(dev);
+	if (ret)
+		return ret;
+
+	ret = xgmac_probe_resources_core(xgmac);
+	if (ret < 0) {
+		dev_err(dev, "xgmac_probe_resources_core() failed: %d\n", ret);
+		return ret;
+	}
+
+	ret = xgmac->config->ops->xgmac_probe_resources(dev);
+	if (ret < 0) {
+		dev_err(dev, "xgmac_probe_resources() failed: %d\n", ret);
+		goto err_remove_resources_core;
+	}
+
+	ret = mdiobus_register(miibus);
+	if (ret)
+		return ret;
+
+	return eth_register(edev);
+
+err_remove_resources_core:
+	xgmac_remove_resources_core(xgmac);
+
+	return ret;
+}
+
+void xgmac_remove(struct device *dev)
+{
+	struct xgmac_priv *xgmac = dev->priv;
+
+	eth_unregister(&xgmac->netdev);
+	mdiobus_unregister(&xgmac->miibus);
+
+	xgmac_remove_resources_core(xgmac);
+}
diff --git a/drivers/net/designware_xgmac.h b/drivers/net/designware_xgmac.h
new file mode 100644
index 0000000000000000000000000000000000000000..9f9048427d3bcde01d619575448145ad5243f1dc
--- /dev/null
+++ b/drivers/net/designware_xgmac.h
@@ -0,0 +1,296 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2023 Intel Coporation.
+ */
+
+#include <net.h>
+#include <linux/bitops.h>
+#include <linux/phy.h>
+
+/* Core registers */
+
+#define XGMAC_MAC_REGS_BASE 0x000
+
+struct xgmac_mac_regs {
+	u32 tx_configuration;			/* 0x000 */
+	u32 rx_configuration;			/* 0x004 */
+	u32 mac_packet_filter;			/* 0x008 */
+	u32 unused_00c[(0x070 - 0x00c) / 4];	/* 0x00c */
+	u32 q0_tx_flow_ctrl;			/* 0x070 */
+	u32 unused_070[(0x090 - 0x074) / 4];	/* 0x074 */
+	u32 rx_flow_ctrl;			/* 0x090 */
+	u32 unused_094[(0x0a0 - 0x094) / 4];	/* 0x094 */
+	u32 rxq_ctrl0;				/* 0x0a0 */
+	u32 rxq_ctrl1;				/* 0x0a4 */
+	u32 rxq_ctrl2;				/* 0x0a8 */
+	u32 unused_0ac[(0x0dc - 0x0ac) / 4];	/* 0x0ac */
+	u32 us_tic_counter;			/* 0x0dc */
+	u32 unused_0e0[(0x11c - 0x0e0) / 4];	/* 0x0e0 */
+	u32 hw_feature0;			/* 0x11c */
+	u32 hw_feature1;			/* 0x120 */
+	u32 hw_feature2;			/* 0x124 */
+	u32 hw_feature3;			/* 0x128 */
+	u32 hw_feature4;			/* 0x12c */
+	u32 unused_130[(0x140 - 0x130) / 4];	/* 0x130 */
+	u32 mac_extended_conf;			/* 0x140 */
+	u32 unused_144[(0x200 - 0x144) / 4];	/* 0x144 */
+	u32 mdio_address;			/* 0x200 */
+	u32 mdio_data;				/* 0x204 */
+	u32 mdio_cont_write_addr;		/* 0x208 */
+	u32 mdio_cont_write_data;		/* 0x20c */
+	u32 mdio_cont_scan_port_enable;		/* 0x210 */
+	u32 mdio_intr_status;			/* 0x214 */
+	u32 mdio_intr_enable;			/* 0x218 */
+	u32 mdio_port_cnct_dsnct_status;	/* 0x21c */
+	u32 mdio_clause_22_port;		/* 0x220 */
+	u32 unused_224[(0x300 - 0x224)	/ 4];	/* 0x224 */
+	u32 address0_high;			/* 0x300 */
+	u32 address0_low;			/* 0x304 */
+};
+
+#define XGMAC_TIMEOUT_100MS			100000
+#define XGMAC_MAC_CONF_SS_SHIFT			29
+#define XGMAC_MAC_CONF_SS_SHIFT_MASK		GENMASK(31, 29)
+#define XGMAC_MAC_CONF_SS_10G_XGMII		0
+#define XGMAC_MAC_CONF_SS_2_5G_GMII		2
+#define XGMAC_MAC_CONF_SS_1G_GMII		3
+#define XGMAC_MAC_CONF_SS_100M_MII		4
+#define XGMAC_MAC_CONF_SS_5G_XGMII		5
+#define XGMAC_MAC_CONF_SS_2_5G_XGMII		6
+#define XGMAC_MAC_CONF_SS_2_10M_MII		7
+
+#define XGMAC_MAC_CONF_JD			BIT(16)
+#define XGMAC_MAC_CONF_JE			BIT(8)
+#define XGMAC_MAC_CONF_WD			BIT(7)
+#define XGMAC_MAC_CONF_GPSLCE			BIT(6)
+#define XGMAC_MAC_CONF_CST			BIT(2)
+#define XGMAC_MAC_CONF_ACS			BIT(1)
+#define XGMAC_MAC_CONF_TE			BIT(0)
+#define XGMAC_MAC_CONF_RE			BIT(0)
+
+#define XGMAC_MAC_EXT_CONF_HD			BIT(24)
+
+#define XGMAC_MAC_PACKET_FILTER_RA		BIT(31)
+#define XGMAC_MAC_PACKET_FILTER_PR		BIT(0)
+
+#define XGMAC_MAC_Q0_TX_FLOW_CTRL_PT_SHIFT	16
+#define XGMAC_MAC_Q0_TX_FLOW_CTRL_PT_MASK	GENMASK(15, 0)
+#define XGMAC_MAC_Q0_TX_FLOW_CTRL_TFE		BIT(1)
+
+#define XGMAC_MAC_RX_FLOW_CTRL_RFE		BIT(0)
+#define XGMAC_MAC_RXQ_CTRL0_RXQ0EN_SHIFT	0
+#define XGMAC_MAC_RXQ_CTRL0_RXQ0EN_MASK		GENMASK(1, 0)
+#define XGMAC_MAC_RXQ_CTRL0_RXQ0EN_NOT_ENABLED	0
+#define XGMAC_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_DCB	2
+#define XGMAC_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_AV	1
+
+#define XGMAC_MAC_RXQ_CTRL1_MCBCQEN		BIT(15)
+
+#define XGMAC_MAC_RXQ_CTRL2_PSRQ0_SHIFT		0
+#define XGMAC_MAC_RXQ_CTRL2_PSRQ0_MASK		GENMASK(7, 0)
+
+#define XGMAC_MAC_HW_FEATURE1_TXFIFOSIZE_SHIFT	6
+#define XGMAC_MAC_HW_FEATURE1_TXFIFOSIZE_MASK	GENMASK(4, 0)
+#define XGMAC_MAC_HW_FEATURE1_RXFIFOSIZE_SHIFT	0
+#define XGMAC_MAC_HW_FEATURE1_RXFIFOSIZE_MASK	GENMASK(4, 0)
+
+#define XGMAC_MDIO_SINGLE_CMD_SHIFT		16
+#define XGMAC_MDIO_SINGLE_CMD_ADDR_CMD_READ	3 << XGMAC_MDIO_SINGLE_CMD_SHIFT
+#define XGMAC_MDIO_SINGLE_CMD_ADDR_CMD_WRITE	BIT(16)
+#define XGMAC_MAC_MDIO_ADDRESS_PA_SHIFT		16
+#define XGMAC_MAC_MDIO_ADDRESS_PA_MASK		GENMASK(15, 0)
+#define XGMAC_MAC_MDIO_ADDRESS_DA_SHIFT		21
+#define XGMAC_MAC_MDIO_ADDRESS_CR_SHIFT		19
+#define XGMAC_MAC_MDIO_ADDRESS_CR_100_150	0
+#define XGMAC_MAC_MDIO_ADDRESS_CR_150_250	1
+#define XGMAC_MAC_MDIO_ADDRESS_CR_250_300	2
+#define XGMAC_MAC_MDIO_ADDRESS_CR_300_350	3
+#define XGMAC_MAC_MDIO_ADDRESS_CR_350_400	4
+#define XGMAC_MAC_MDIO_ADDRESS_CR_400_500	5
+#define XGMAC_MAC_MDIO_ADDRESS_SADDR		BIT(18)
+#define XGMAC_MAC_MDIO_ADDRESS_SBUSY		BIT(22)
+#define XGMAC_MAC_MDIO_REG_ADDR_C22P_MASK	GENMASK(4, 0)
+#define XGMAC_MAC_MDIO_DATA_GD_MASK		GENMASK(15, 0)
+
+/* MTL Registers */
+
+#define XGMAC_MTL_REGS_BASE 0x1000
+
+struct xgmac_mtl_regs {
+	u32 mtl_operation_mode;			/* 0x1000 */
+	u32 unused_1004[(0x1030 - 0x1004) / 4];	/* 0x1004 */
+	u32 mtl_rxq_dma_map0;			/* 0x1030 */
+	u32 mtl_rxq_dma_map1;			/* 0x1034 */
+	u32 mtl_rxq_dma_map2;			/* 0x1038 */
+	u32 mtl_rxq_dma_map3;			/* 0x103c */
+	u32 mtl_tc_prty_map0;			/* 0x1040 */
+	u32 mtl_tc_prty_map1;			/* 0x1044 */
+	u32 unused_1048[(0x1100 - 0x1048) / 4]; /* 0x1048 */
+	u32 txq0_operation_mode;		/* 0x1100 */
+	u32 unused_1104;			/* 0x1104 */
+	u32 txq0_debug;				/* 0x1108 */
+	u32 unused_100c[(0x1118 - 0x110c) / 4];	/* 0x110c */
+	u32 txq0_quantum_weight;		/* 0x1118 */
+	u32 unused_111c[(0x1140 - 0x111c) / 4];	/* 0x111c */
+	u32 rxq0_operation_mode;		/* 0x1140 */
+	u32 unused_1144;			/* 0x1144 */
+	u32 rxq0_debug;				/* 0x1148 */
+};
+
+#define XGMAC_MTL_TXQ0_OPERATION_MODE_TQS_SHIFT		16
+#define XGMAC_MTL_TXQ0_OPERATION_MODE_TQS_MASK		GENMASK(8, 0)
+#define XGMAC_MTL_TXQ0_OPERATION_MODE_TXQEN_SHIFT	2
+#define XGMAC_MTL_TXQ0_OPERATION_MODE_TXQEN_ENABLED	2
+#define XGMAC_MTL_TXQ0_OPERATION_MODE_TSF		BIT(1)
+#define XGMAC_MTL_TXQ0_OPERATION_MODE_FTQ		BIT(0)
+
+#define XGMAC_MTL_TXQ0_DEBUG_TXQSTS			BIT(4)
+#define XGMAC_MTL_TXQ0_DEBUG_TRCSTS_SHIFT		1
+#define XGMAC_MTL_TXQ0_DEBUG_TRCSTS_MASK		GENMASK(2, 0)
+#define XGMAC_MTL_TXQ0_DEBUG_TRCSTS_READ_STATE		0x1
+
+#define XGMAC_MTL_RXQ0_OPERATION_MODE_RQS_SHIFT		16
+#define XGMAC_MTL_RXQ0_OPERATION_MODE_RQS_MASK		GENMASK(9, 0)
+#define XGMAC_MTL_RXQ0_OPERATION_MODE_EHFC		BIT(7)
+#define XGMAC_MTL_RXQ0_OPERATION_MODE_RSF		BIT(5)
+
+#define XGMAC_MTL_RXQ0_DEBUG_PRXQ_SHIFT			16
+#define XGMAC_MTL_RXQ0_DEBUG_PRXQ_MASK			GENMASK(14, 0)
+#define XGMAC_MTL_RXQ0_DEBUG_RXQSTS_SHIFT		4
+#define XGMAC_MTL_RXQ0_DEBUG_RXQSTS_MASK		GENMASK(1, 0)
+
+/* DMA Registers */
+
+#define XGMAC_DMA_REGS_BASE 0x3000
+
+struct xgmac_dma_regs {
+	u32 mode;					/* 0x3000 */
+	u32 sysbus_mode;				/* 0x3004 */
+	u32 unused_3008[(0x3100 - 0x3008) / 4];		/* 0x3008 */
+	u32 ch0_control;				/* 0x3100 */
+	u32 ch0_tx_control;				/* 0x3104 */
+	u32 ch0_rx_control;				/* 0x3108 */
+	u32 slot_func_control_status;			/* 0x310c */
+	u32 ch0_txdesc_list_haddress;			/* 0x3110 */
+	u32 ch0_txdesc_list_address;			/* 0x3114 */
+	u32 ch0_rxdesc_list_haddress;			/* 0x3118 */
+	u32 ch0_rxdesc_list_address;			/* 0x311c */
+	/* 0x3120: register undocumented; maybe high address of ch0_txdesc_tail_pointer? */
+	u32 unused_3120;
+	u32 ch0_txdesc_tail_pointer;			/* 0x3124 */
+	/* 0x3128: register undocumented; maybe high address of ch0_rxdesc_tail_pointer? */
+	u32 unused_3128;
+	u32 ch0_rxdesc_tail_pointer;			/* 0x312c */
+	u32 ch0_txdesc_ring_length;			/* 0x3130 */
+	u32 ch0_rxdesc_ring_length;			/* 0x3134 */
+	u32 unused_3138[(0x3160 - 0x3138) / 4];		/* 0x3138 */
+	u32 ch0_status;					/* 0x3160 */
+};
+
+#define XGMAC_DMA_MODE_SWR				BIT(0)
+#define XGMAC_DMA_SYSBUS_MODE_WR_OSR_LMT_SHIFT		24
+#define XGMAC_DMA_SYSBUS_MODE_WR_OSR_LMT_MASK		GENMASK(4, 0)
+#define XGMAC_DMA_SYSBUS_MODE_RD_OSR_LMT_SHIFT		16
+#define XGMAC_DMA_SYSBUS_MODE_RD_OSR_LMT_MASK		GENMASK(4, 0)
+#define XGMAC_DMA_SYSBUS_MODE_AAL			BIT(12)
+#define XGMAC_DMA_SYSBUS_MODE_EAME			BIT(11)
+#define XGMAC_DMA_SYSBUS_MODE_BLEN32			BIT(4)
+#define XGMAC_DMA_SYSBUS_MODE_BLEN16			BIT(3)
+#define XGMAC_DMA_SYSBUS_MODE_BLEN8			BIT(2)
+#define XGMAC_DMA_SYSBUS_MODE_BLEN4			BIT(1)
+#define XGMAC_DMA_SYSBUS_MODE_UNDEF			BIT(0)
+
+#define XGMAC_DMA_CH0_CONTROL_DSL_SHIFT			18
+#define XGMAC_DMA_CH0_CONTROL_PBLX8			BIT(16)
+
+#define XGMAC_DMA_CH0_TX_CONTROL_TXPBL_SHIFT		16
+#define XGMAC_DMA_CH0_TX_CONTROL_TXPBL_MASK		GENMASK(5, 0)
+#define XGMAC_DMA_CH0_TX_CONTROL_OSP			BIT(4)
+#define XGMAC_DMA_CH0_TX_CONTROL_ST			BIT(0)
+
+#define XGMAC_DMA_CH0_RX_CONTROL_RXPBL_SHIFT		16
+#define XGMAC_DMA_CH0_RX_CONTROL_RXPBL_MASK		GENMASK(5, 0)
+#define XGMAC_DMA_CH0_RX_CONTROL_RBSZ_SHIFT		4
+#define XGMAC_DMA_CH0_RX_CONTROL_RBSZ_MASK		GENMASK(10, 0)
+#define XGMAC_DMA_CH0_RX_CONTROL_SR			BIT(0)
+
+/* Descriptors */
+#define XGMAC_DESCRIPTOR_WORDS		4
+#define XGMAC_DESCRIPTOR_SIZE		(XGMAC_DESCRIPTOR_WORDS * 4)
+#define XGMAC_DESCRIPTORS_NUM		8
+#define XGMAC_DESCRIPTOR_ALIGN		64
+#define XGMAC_DESCRIPTORS_SIZE		ALIGN(XGMAC_DESCRIPTORS_NUM * \
+					      XGMAC_DESCRIPTOR_SIZE, XGMAC_DESCRIPTOR_ALIGN)
+#define XGMAC_BUFFER_ALIGN		XGMAC_DESCRIPTOR_ALIGN
+#define XGMAC_MAX_PACKET_SIZE		ALIGN(1568, XGMAC_DESCRIPTOR_ALIGN)
+#define XGMAC_RX_BUFFER_SIZE		(XGMAC_DESCRIPTORS_NUM * XGMAC_MAX_PACKET_SIZE)
+
+#define XGMAC_RDES3_PKT_LENGTH_MASK	GENMASK(13, 0)
+
+struct xgmac_desc {
+	u32 des0;
+	u32 des1;
+	u32 des2;
+	u32 des3;
+};
+
+#define XGMAC_DESC3_OWN		BIT(31)
+#define XGMAC_DESC3_FD		BIT(29)
+#define XGMAC_DESC3_LD		BIT(28)
+
+#define XGMAC_AXI_WIDTH_32	4
+#define XGMAC_AXI_WIDTH_64	8
+#define XGMAC_AXI_WIDTH_128	16
+
+struct xgmac_config {
+	bool reg_access_always_ok;
+	int swr_wait;
+	int config_mac;
+	int config_mac_mdio;
+	unsigned int axi_bus_width;
+	phy_interface_t interface;
+	struct xgmac_ops *ops;
+};
+
+struct xgmac_ops {
+	int (*xgmac_probe_resources)(struct device *dev);
+	int (*xgmac_start_resets)(struct device *dev);
+	int (*xgmac_get_enetaddr)(struct device *dev);
+};
+
+struct xgmac_priv {
+	struct eth_device netdev;
+	struct device *dev;
+	const struct xgmac_config *config;
+	void __iomem *regs;
+	struct xgmac_mac_regs *mac_regs;
+	struct xgmac_mtl_regs *mtl_regs;
+	struct xgmac_dma_regs *dma_regs;
+	struct reset_control *rst;
+	struct reset_control *rst_ocp;
+	struct mii_bus miibus;
+	int phy_addr;
+	phy_interface_t interface;
+
+	u8 macaddr[6];
+
+	u32 reg_offset, reg_shift;
+	struct xgmac_desc *tx_descs, *rx_descs;
+	dma_addr_t tx_descs_phys, rx_descs_phys;
+	dma_addr_t dma_rx_buf_phys[XGMAC_DESCRIPTORS_NUM];
+	void *dma_rx_buf_virt[XGMAC_DESCRIPTORS_NUM];
+	int tx_desc_idx, rx_desc_idx;
+	unsigned int desc_size;
+	unsigned int desc_per_cacheline;
+	bool started;
+	bool reg_access_ok;
+	bool clk_ck_enabled;
+};
+
+int xgmac_probe(struct device *dev);
+void xgmac_remove(struct device *dev);
+void xgmac_flush_desc_generic(void *desc);
+void xgmac_flush_buffer_generic(void *buf, size_t size);
+int xgmac_null_ops(struct device *dev);
+
+extern struct xgmac_config xgmac_socfpga_config;
diff --git a/drivers/net/designware_xgmac_socfpga.c b/drivers/net/designware_xgmac_socfpga.c
new file mode 100644
index 0000000000000000000000000000000000000000..21373c50d9628ab36df65f301fa92f9f1a7cd103
--- /dev/null
+++ b/drivers/net/designware_xgmac_socfpga.c
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *
+ * Copyright (c) 2023, Intel Corporation
+ */
+#include <common.h>
+#include <init.h>
+#include <errno.h>
+#include <malloc.h>
+#include <net.h>
+#include <linux/reset.h>
+#include <linux/phy.h>
+#include <mfd/syscon.h>
+#include <linux/clk.h>
+#include <mach/socfpga/soc64-system-manager.h>
+#include <mach/socfpga/secure_reg_helper.h>
+
+#include "designware_xgmac.h"
+
+#define SOCFPGA_XGMAC_SYSCON_ARG_COUNT 2
+
+static int dwxgmac_socfpga_do_setphy(struct device *dev, u32 modereg)
+{
+	struct xgmac_priv *xgmac = dev_get_priv(dev);
+	u32 modemask = SYSMGR_EMACGRP_CTRL_PHYSEL_MASK;
+	u32 index = (xgmac->reg_offset - SYSMGR_SOC64_EMAC0) >> 2;
+	u32 id = SOCFPGA_SECURE_REG_SYSMGR_SOC64_EMAC0 + index;
+	int ret;
+
+	ret = socfpga_secure_reg_update32(id, modemask, modereg);
+	if (ret) {
+		dev_err(dev, "Failed to set PHY register via SMC call\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int xgmac_probe_resources_socfpga(struct device *dev)
+{
+	struct xgmac_priv *xgmac = dev_get_priv(dev);
+	phy_interface_t interface;
+	int ret;
+	u32 modereg;
+
+	interface = xgmac->interface;
+
+	switch (interface) {
+	case PHY_INTERFACE_MODE_MII:
+	case PHY_INTERFACE_MODE_GMII:
+		modereg = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII;
+		break;
+	case PHY_INTERFACE_MODE_RMII:
+		modereg = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RMII;
+		break;
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		modereg = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII;
+		break;
+	default:
+		dev_err(dev, "Unsupported PHY mode\n");
+		return -EINVAL;
+	}
+
+	/* Get PHY syscon */
+	ret = of_property_read_u32_index(dev->of_node, "altr,sysmgr-syscon",
+					 1, &xgmac->reg_offset);
+	if (ret) {
+		dev_err(dev, "Could not read reg_offset from sysmgr-syscon! Please update the devicetree.\n");
+
+		return -EINVAL;
+	}
+
+	ret = of_property_read_u32_index(dev->of_node, "altr,sysmgr-syscon",
+					 2, &xgmac->reg_shift);
+	if (ret) {
+		dev_err(dev, "Could not read reg_shift from sysmgr-syscon! Please update the devicetree.\n");
+		return -EINVAL;
+	}
+
+	xgmac->rst = reset_control_get(dev, "stmmaceth");
+	if (IS_ERR(xgmac->rst)) {
+		dev_err(dev, "Invalid reset line 'stmmaceth'.\n");
+		return PTR_ERR(xgmac->rst);
+	}
+	xgmac->rst_ocp = reset_control_get(dev, "stmmaceth-ocp");
+	if (IS_ERR(xgmac->rst_ocp)) {
+		dev_err(dev, "Invalid reset line 'stmmaceth-ocp'.\n");
+		return PTR_ERR(xgmac->rst_ocp);
+	}
+
+	reset_control_assert(xgmac->rst_ocp);
+	reset_control_assert(xgmac->rst);
+
+	ret = dwxgmac_socfpga_do_setphy(dev, modereg);
+	if (ret)
+		return ret;
+
+	reset_control_deassert(xgmac->rst_ocp);
+	reset_control_deassert(xgmac->rst);
+
+	return 0;
+}
+
+static int xgmac_get_enetaddr_socfpga(struct device *dev)
+{
+	return -ENOTSUPP;
+}
+
+static int xgmac_start_resets_socfpga(struct device *dev)
+{
+	struct xgmac_priv *xgmac = dev_get_priv(dev);
+
+	reset_control_assert(xgmac->rst);
+	reset_control_assert(xgmac->rst_ocp);
+
+	udelay(2);
+
+	reset_control_deassert(xgmac->rst);
+	reset_control_deassert(xgmac->rst_ocp);
+
+	return 0;
+}
+
+static struct xgmac_ops xgmac_socfpga_ops = {
+	.xgmac_probe_resources = xgmac_probe_resources_socfpga,
+	.xgmac_start_resets = xgmac_start_resets_socfpga,
+	.xgmac_get_enetaddr = xgmac_get_enetaddr_socfpga,
+};
+
+struct xgmac_config __maybe_unused xgmac_socfpga_config = {
+	.reg_access_always_ok = false,
+	.swr_wait = 50,
+	.config_mac = XGMAC_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_DCB,
+	.config_mac_mdio = XGMAC_MAC_MDIO_ADDRESS_CR_350_400,
+	.axi_bus_width = XGMAC_AXI_WIDTH_64,
+	.ops = &xgmac_socfpga_ops
+};
+
+static __maybe_unused struct of_device_id xgmac_socfpga_compatible[] = {
+	{
+		.compatible = "intel,socfpga-dwxgmac",
+		.data = &xgmac_socfpga_config
+	}, {
+		/* sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(of, xgmac_socfpga_compatible);
+
+static struct driver xgmac_socfpga_driver = {
+	.name = "designware-xgmac-socfpga",
+	.probe = xgmac_probe,
+	.remove = xgmac_remove,
+	.of_compatible = DRV_OF_COMPAT(xgmac_socfpga_compatible),
+};
+device_platform_driver(xgmac_socfpga_driver);

-- 
2.46.0



