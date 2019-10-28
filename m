Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCk7-0003ra-Mm
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 21:40:13 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 28 Oct 2019 22:39:40 +0100
Message-Id: <20191028213943.32071-4-ahmad@a3f.at>
In-Reply-To: <20191028213943.32071-1-ahmad@a3f.at>
References: <20191028213943.32071-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 3/6] net: add Designware Ethernet QoS for STM32MP
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

We already have Designware NIC support in barebox, but for the DWMAC1000,
the DWMAC4 (also called GMAC4), no support was mainline so far.

The DWMAC4 is different enough that sharing code with the DWMAC1000 is
not really that helpful, because even basics like MDIO registers have
different layout. Instead of coding bit masks and shifts into the driver
data, like Linux does, we'll keep both driver kinds separate.

Nevertheless, we collect functions that are not SoC-specific into a
separate 'library' file.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig            |  21 +-
 drivers/net/Makefile           |   2 +
 drivers/net/designware_eqos.c  | 876 +++++++++++++++++++++++++++++++++
 drivers/net/designware_eqos.h  |  84 ++++
 drivers/net/designware_stm32.c | 245 +++++++++
 5 files changed, 1227 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/designware_eqos.c
 create mode 100644 drivers/net/designware_eqos.h
 create mode 100644 drivers/net/designware_stm32.c

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 57f0b57d64b1..5b66fe84ebf6 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -61,7 +61,7 @@ config DRIVER_NET_DAVINCI_EMAC
 	select PHYLIB
 
 config DRIVER_NET_DESIGNWARE
-	bool "Designware Universal MAC ethernet platform support"
+	bool "Designware Universal MAC1000 ethernet platform support"
 	depends on HAS_DMA
 	select PHYLIB
 	help
@@ -87,6 +87,25 @@ config DRIVER_NET_DESIGNWARE_SOCFPGA
 
 endif
 
+config DRIVER_NET_DESIGNWARE_EQOS
+	bool "Designware Designware Ethernet QoS support"
+	depends on HAS_DMA
+	select PHYLIB
+	select OFTREE
+	help
+	  This option enables support for the Synopsys
+	  Designware Ethernet Quality-of-Service (GMAC4).
+
+if DRIVER_NET_DESIGNWARE_EQOS
+
+config DRIVER_NET_DESIGNWARE_STM32
+	bool "Designware EQOS STM32 driver"
+	select MFD_SYSCON
+	help
+	  This option enables support for the ethernet MAC on the STM32MP platforms.
+
+endif
+
 config DRIVER_NET_DM9K
 	bool "Davicom dm9k[E|A|B] ethernet driver"
 	depends on HAS_DM9000
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index f6a8213613ca..7ecf4e2851ba 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -11,6 +11,8 @@ obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)	+= davinci_emac.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE)	+= designware.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_GENERIC) += designware_generic.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA) += designware_socfpga.o
+obj-$(CONFIG_DRIVER_NET_DESIGNWARE_EQOS) += designware_eqos.o
+obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STM32) += designware_stm32.o
 obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
 obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/regio.o e1000/main.o e1000/eeprom.o
 obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
new file mode 100644
index 000000000000..a49239e0573e
--- /dev/null
+++ b/drivers/net/designware_eqos.c
@@ -0,0 +1,876 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2016, NVIDIA CORPORATION.
+ * Copyright (c) 2019, Ahmad Fatoum, Pengutronix
+ *
+ * Portions based on U-Boot's rtl8169.c and dwc_eth_qos.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <dma.h>
+#include <net.h>
+#include <of_net.h>
+#include <linux/iopoll.h>
+#include <linux/time.h>
+#include <linux/sizes.h>
+
+#include "designware_eqos.h"
+
+/* Core registers */
+
+#define EQOS_MAC_REGS_BASE 0x000
+struct eqos_mac_regs {
+	u32 config;				/* 0x000 */
+	u32 ext_config;				/* 0x004 */
+	u32 unused_004[(0x070 - 0x008) / 4];	/* 0x008 */
+	u32 q0_tx_flow_ctrl;			/* 0x070 */
+	u32 unused_070[(0x090 - 0x074) / 4];	/* 0x074 */
+	u32 rx_flow_ctrl;			/* 0x090 */
+	u32 unused_094;				/* 0x094 */
+	u32 txq_prty_map0;			/* 0x098 */
+	u32 unused_09c;				/* 0x09c */
+	u32 rxq_ctrl0;				/* 0x0a0 */
+	u32 unused_0a4;				/* 0x0a4 */
+	u32 rxq_ctrl2;				/* 0x0a8 */
+	u32 unused_0ac[(0x0dc - 0x0ac) / 4];	/* 0x0ac */
+	u32 us_tic_counter;			/* 0x0dc */
+	u32 unused_0e0[(0x11c - 0x0e0) / 4];	/* 0x0e0 */
+	u32 hw_feature0;			/* 0x11c */
+	u32 hw_feature1;			/* 0x120 */
+	u32 hw_feature2;			/* 0x124 */
+	u32 unused_128[(0x200 - 0x128) / 4];	/* 0x128 */
+	u32 mdio_address;			/* 0x200 */
+	u32 mdio_data;				/* 0x204 */
+	u32 unused_208[(0x300 - 0x208) / 4];	/* 0x208 */
+	u32 macaddr0hi;				/* 0x300 */
+	u32 macaddr0lo;				/* 0x304 */
+};
+
+#define EQOS_MAC_CONFIGURATION_GPSLCE			BIT(23)
+#define EQOS_MAC_CONFIGURATION_CST			BIT(21)
+#define EQOS_MAC_CONFIGURATION_ACS			BIT(20)
+#define EQOS_MAC_CONFIGURATION_WD			BIT(19)
+#define EQOS_MAC_CONFIGURATION_JD			BIT(17)
+#define EQOS_MAC_CONFIGURATION_JE			BIT(16)
+#define EQOS_MAC_CONFIGURATION_PS			BIT(15)
+#define EQOS_MAC_CONFIGURATION_FES			BIT(14)
+#define EQOS_MAC_CONFIGURATION_DM			BIT(13)
+#define EQOS_MAC_CONFIGURATION_TE			BIT(1)
+#define EQOS_MAC_CONFIGURATION_RE			BIT(0)
+
+#define EQOS_MAC_Q0_TX_FLOW_CTRL_PT_SHIFT		16
+#define EQOS_MAC_Q0_TX_FLOW_CTRL_PT_MASK		0xffff
+#define EQOS_MAC_Q0_TX_FLOW_CTRL_TFE			BIT(1)
+
+#define EQOS_MAC_RX_FLOW_CTRL_RFE			BIT(0)
+
+#define EQOS_MAC_TXQ_PRTY_MAP0_PSTQ0_SHIFT		0
+#define EQOS_MAC_TXQ_PRTY_MAP0_PSTQ0_MASK		0xff
+
+#define EQOS_MAC_RXQ_CTRL2_PSRQ0_SHIFT			0
+#define EQOS_MAC_RXQ_CTRL2_PSRQ0_MASK			0xff
+
+#define EQOS_MAC_HW_FEATURE1_TXFIFOSIZE_SHIFT		6
+#define EQOS_MAC_HW_FEATURE1_TXFIFOSIZE_MASK		0x1f
+#define EQOS_MAC_HW_FEATURE1_RXFIFOSIZE_SHIFT		0
+#define EQOS_MAC_HW_FEATURE1_RXFIFOSIZE_MASK		0x1f
+
+#define EQOS_MTL_REGS_BASE 0xd00
+struct eqos_mtl_regs {
+	u32 txq0_operation_mode;			/* 0xd00 */
+	u32 unused_d04;				/* 0xd04 */
+	u32 txq0_debug;				/* 0xd08 */
+	u32 unused_d0c[(0xd18 - 0xd0c) / 4];	/* 0xd0c */
+	u32 txq0_quantum_weight;			/* 0xd18 */
+	u32 unused_d1c[(0xd30 - 0xd1c) / 4];	/* 0xd1c */
+	u32 rxq0_operation_mode;			/* 0xd30 */
+	u32 unused_d34;				/* 0xd34 */
+	u32 rxq0_debug;				/* 0xd38 */
+};
+
+#define EQOS_MTL_TXQ0_OPERATION_MODE_TQS_SHIFT		16
+#define EQOS_MTL_TXQ0_OPERATION_MODE_TQS_MASK		0x1ff
+#define EQOS_MTL_TXQ0_OPERATION_MODE_TXQEN_SHIFT	2
+#define EQOS_MTL_TXQ0_OPERATION_MODE_TXQEN_MASK		3
+#define EQOS_MTL_TXQ0_OPERATION_MODE_TXQEN_ENABLED	2
+#define EQOS_MTL_TXQ0_OPERATION_MODE_TSF		BIT(1)
+#define EQOS_MTL_TXQ0_OPERATION_MODE_FTQ		BIT(0)
+
+#define EQOS_MTL_TXQ0_DEBUG_TXQSTS			BIT(4)
+#define EQOS_MTL_TXQ0_DEBUG_TRCSTS_SHIFT		1
+#define EQOS_MTL_TXQ0_DEBUG_TRCSTS_MASK			3
+
+#define EQOS_MTL_RXQ0_OPERATION_MODE_RQS_SHIFT		20
+#define EQOS_MTL_RXQ0_OPERATION_MODE_RQS_MASK		0x3ff
+#define EQOS_MTL_RXQ0_OPERATION_MODE_RFD_SHIFT		14
+#define EQOS_MTL_RXQ0_OPERATION_MODE_RFD_MASK		0x3f
+#define EQOS_MTL_RXQ0_OPERATION_MODE_RFA_SHIFT		8
+#define EQOS_MTL_RXQ0_OPERATION_MODE_RFA_MASK		0x3f
+#define EQOS_MTL_RXQ0_OPERATION_MODE_EHFC		BIT(7)
+#define EQOS_MTL_RXQ0_OPERATION_MODE_RSF		BIT(5)
+
+#define EQOS_MTL_RXQ0_DEBUG_PRXQ_SHIFT			16
+#define EQOS_MTL_RXQ0_DEBUG_PRXQ_MASK			0x7fff
+#define EQOS_MTL_RXQ0_DEBUG_RXQSTS_SHIFT		4
+#define EQOS_MTL_RXQ0_DEBUG_RXQSTS_MASK			3
+
+#define EQOS_DMA_REGS_BASE 0x1000
+struct eqos_dma_regs {
+	u32 mode;				/* 0x1000 */
+	u32 sysbus_mode;			/* 0x1004 */
+	u32 unused_1008[(0x1100 - 0x1008) / 4];	/* 0x1008 */
+	u32 ch0_control;			/* 0x1100 */
+	u32 ch0_tx_control;			/* 0x1104 */
+	u32 ch0_rx_control;			/* 0x1108 */
+	u32 unused_110c;			/* 0x110c */
+	u32 ch0_txdesc_list_haddress;		/* 0x1110 */
+	u32 ch0_txdesc_list_address;		/* 0x1114 */
+	u32 ch0_rxdesc_list_haddress;		/* 0x1118 */
+	u32 ch0_rxdesc_list_address;		/* 0x111c */
+	u32 ch0_txdesc_tail_pointer;		/* 0x1120 */
+	u32 unused_1124;			/* 0x1124 */
+	u32 ch0_rxdesc_tail_pointer;		/* 0x1128 */
+	u32 ch0_txdesc_ring_length;		/* 0x112c */
+	u32 ch0_rxdesc_ring_length;		/* 0x1130 */
+};
+
+#define EQOS_DMA_MODE_SWR				BIT(0)
+
+#define EQOS_DMA_SYSBUS_MODE_RD_OSR_LMT_SHIFT		16
+#define EQOS_DMA_SYSBUS_MODE_RD_OSR_LMT_MASK		0xf
+#define EQOS_DMA_SYSBUS_MODE_EAME			BIT(11)
+#define EQOS_DMA_SYSBUS_MODE_BLEN16			BIT(3)
+#define EQOS_DMA_SYSBUS_MODE_BLEN8			BIT(2)
+#define EQOS_DMA_SYSBUS_MODE_BLEN4			BIT(1)
+
+#define EQOS_DMA_CH0_CONTROL_PBLX8			BIT(16)
+
+#define EQOS_DMA_CH0_TX_CONTROL_TXPBL_SHIFT		16
+#define EQOS_DMA_CH0_TX_CONTROL_TXPBL_MASK		0x3f
+#define EQOS_DMA_CH0_TX_CONTROL_OSP			BIT(4)
+#define EQOS_DMA_CH0_TX_CONTROL_ST			BIT(0)
+
+#define EQOS_DMA_CH0_RX_CONTROL_RXPBL_SHIFT		16
+#define EQOS_DMA_CH0_RX_CONTROL_RXPBL_MASK		0x3f
+#define EQOS_DMA_CH0_RX_CONTROL_RBSZ_SHIFT		1
+#define EQOS_DMA_CH0_RX_CONTROL_RBSZ_MASK		0x3fff
+#define EQOS_DMA_CH0_RX_CONTROL_SR			BIT(0)
+
+/* Descriptors */
+
+#define EQOS_DESCRIPTOR_WORDS	4
+#define EQOS_DESCRIPTOR_SIZE	(EQOS_DESCRIPTOR_WORDS * 4)
+/* We assume ARCH_DMA_MINALIGN >= 16; 16 is the EQOS HW minimum */
+#define EQOS_DESCRIPTOR_ALIGN	64
+#define EQOS_DESCRIPTORS_TX	4
+#define EQOS_DESCRIPTORS_RX	4
+#define EQOS_DESCRIPTORS_NUM	(EQOS_DESCRIPTORS_TX + EQOS_DESCRIPTORS_RX)
+#define EQOS_DESCRIPTORS_SIZE	ALIGN(EQOS_DESCRIPTORS_NUM * \
+				      EQOS_DESCRIPTOR_SIZE, EQOS_DESCRIPTOR_ALIGN)
+#define EQOS_BUFFER_ALIGN	EQOS_DESCRIPTOR_ALIGN
+#define EQOS_MAX_PACKET_SIZE	ALIGN(1568, EQOS_DESCRIPTOR_ALIGN)
+
+struct eqos_desc {
+	u32 des0; /* PA of buffer 1 or TSO header */
+	u32 des1; /* PA of buffer 2 with descriptor rings */
+	u32 des2; /* Length, VLAN, Timestamps, Interrupts */
+	u32 des3; /* All other flags */
+};
+
+#define EQOS_DESC3_OWN		BIT(31)
+#define EQOS_DESC3_FD		BIT(29)
+#define EQOS_DESC3_LD		BIT(28)
+#define EQOS_DESC3_BUF1V	BIT(24)
+
+#define EQOS_MDIO_ADDR(reg)		((addr << 21) & GENMASK(25, 21))
+#define EQOS_MDIO_REG(reg)		((reg << 16) & GENMASK(20, 16))
+#define EQOS_MDIO_CLK_CSR(clk_csr)	((clk_csr << 8) & GENMASK(11, 8))
+
+#define MII_BUSY		(1 << 0)
+
+static int eqos_mdio_wait_idle(struct eqos *eqos)
+{
+	u32 idle;
+	return readl_poll_timeout(&eqos->mac_regs->mdio_address, idle,
+				  !(idle & MII_BUSY), 10 * USEC_PER_MSEC);
+}
+
+static int eqos_mdio_read(struct mii_bus *bus, int addr, int reg)
+{
+	struct eqos *eqos = bus->priv;
+	u32 miiaddr;
+	int ret;
+
+	ret = eqos_mdio_wait_idle(eqos);
+	if (ret) {
+		eqos_err(eqos, "MDIO not idle at entry\n");
+		return ret;
+	}
+
+	miiaddr = readl(&eqos->mac_regs->mdio_address);
+	miiaddr &= EQOS_MDIO_ADDR_SKAP | EQOS_MDIO_ADDR_C45E;
+	miiaddr |= EQOS_MDIO_ADDR_GOC_READ << EQOS_MDIO_ADDR_GOC_SHIFT;
+
+	miiaddr |= EQOS_MDIO_CLK_CSR(eqos->ops->clk_csr);
+	miiaddr |= EQOS_MDIO_ADDR(addr) | EQOS_MDIO_REG(reg);
+	miiaddr |= MII_BUSY;
+
+	writel(miiaddr, &eqos->mac_regs->mdio_address);
+
+	udelay(eqos->ops->mdio_wait_us);
+
+	ret = eqos_mdio_wait_idle(eqos);
+	if (ret) {
+		eqos_err(eqos, "MDIO read didn't complete\n");
+		return ret;
+	}
+
+	return readl(&eqos->mac_regs->mdio_data) & 0xffff;
+}
+
+static int eqos_mdio_write(struct mii_bus *bus, int addr, int reg, u16 val)
+{
+	struct eqos *eqos = bus->priv;
+	u32 miiaddr = 0;
+	int ret;
+
+	ret = eqos_mdio_wait_idle(eqos);
+	if (ret) {
+		eqos_err(eqos, "MDIO not idle at entry\n");
+		return ret;
+	}
+
+	miiaddr = readl(&eqos->mac_regs->mdio_address);
+	miiaddr &= EQOS_MDIO_ADDR_SKAP | EQOS_MDIO_ADDR_C45E;
+	miiaddr |= EQOS_MDIO_ADDR_GOC_WRITE << EQOS_MDIO_ADDR_GOC_SHIFT;
+
+	miiaddr |= EQOS_MDIO_CLK_CSR(eqos->ops->clk_csr);
+	miiaddr |= EQOS_MDIO_ADDR(addr) | EQOS_MDIO_REG(reg);
+	miiaddr |= MII_BUSY;
+
+	writel(val, &eqos->mac_regs->mdio_data);
+	writel(addr, &eqos->mac_regs->mdio_address);
+
+	udelay(eqos->ops->mdio_wait_us);
+
+	ret = eqos_mdio_wait_idle(eqos);
+	if (ret) {
+		eqos_err(eqos, "MDIO read didn't complete\n");
+		return ret;
+	}
+
+	/* Needed as a fix for ST-Phy */
+	eqos_mdio_read(bus, addr, reg);
+	return 0;
+}
+
+
+static inline void eqos_set_full_duplex(struct eqos *eqos)
+{
+	setbits_le32(&eqos->mac_regs->config, EQOS_MAC_CONFIGURATION_DM);
+}
+
+static inline void eqos_set_half_duplex(struct eqos *eqos)
+{
+	clrbits_le32(&eqos->mac_regs->config, EQOS_MAC_CONFIGURATION_DM);
+
+	/* WAR: Flush TX queue when switching to half-duplex */
+	setbits_le32(&eqos->mtl_regs->txq0_operation_mode,
+		     EQOS_MTL_TXQ0_OPERATION_MODE_FTQ);
+}
+
+static inline void eqos_set_gmii_speed(struct eqos *eqos)
+{
+	clrbits_le32(&eqos->mac_regs->config,
+		     EQOS_MAC_CONFIGURATION_PS | EQOS_MAC_CONFIGURATION_FES);
+}
+
+static inline void eqos_set_mii_speed_100(struct eqos *eqos)
+{
+	setbits_le32(&eqos->mac_regs->config,
+		     EQOS_MAC_CONFIGURATION_PS | EQOS_MAC_CONFIGURATION_FES);
+}
+
+static inline void eqos_set_mii_speed_10(struct eqos *eqos)
+{
+	clrsetbits_le32(&eqos->mac_regs->config,
+			EQOS_MAC_CONFIGURATION_FES, EQOS_MAC_CONFIGURATION_PS);
+}
+
+void eqos_adjust_link(struct eth_device *edev)
+{
+	struct eqos *eqos = edev->priv;
+	unsigned speed = edev->phydev->speed;
+
+	if (edev->phydev->duplex)
+		eqos_set_full_duplex(eqos);
+	else
+		eqos_set_half_duplex(eqos);
+
+	switch (speed) {
+	case SPEED_1000:
+		eqos_set_gmii_speed(eqos);
+		break;
+	case SPEED_100:
+		eqos_set_mii_speed_100(eqos);
+		break;
+	case SPEED_10:
+		eqos_set_mii_speed_10(eqos);
+		break;
+	default:
+		eqos_warn(eqos, "invalid speed %d\n", speed);
+		return;
+	}
+}
+
+int eqos_get_ethaddr(struct eth_device *edev, unsigned char *mac)
+{
+	return -EOPNOTSUPP;
+}
+
+int eqos_set_ethaddr(struct eth_device *edev, const unsigned char *mac)
+{
+	struct eqos *eqos = edev->priv;
+	__le32 mac_hi, mac_lo;
+
+	memcpy(eqos->macaddr, mac, ETH_ALEN);
+
+	/* Update the MAC address */
+	memcpy(&mac_hi, &mac[4], 2);
+	memcpy(&mac_lo, &mac[0], 4);
+
+	__raw_writel(mac_hi, &eqos->mac_regs->macaddr0hi);
+	__raw_writel(mac_lo, &eqos->mac_regs->macaddr0lo);
+
+	return 0;
+}
+
+/* Get PHY out of power saving mode.  If this is needed elsewhere then
+ * consider making it part of phy-core and adding a resume method to
+ * the phy device ops.  */
+static int phy_resume(struct phy_device *phydev)
+{
+	int bmcr;
+
+	bmcr = phy_read(phydev, MII_BMCR);
+	if (bmcr < 0)
+		return bmcr;
+
+	if (bmcr & BMCR_PDOWN) {
+		bmcr &= ~BMCR_PDOWN;
+		return phy_write(phydev, MII_BMCR, bmcr);
+	}
+
+	return 0;
+}
+
+int eqos_start(struct eth_device *edev)
+{
+	struct eqos *eqos = edev->priv;
+	u32 val, tx_fifo_sz, rx_fifo_sz, tqs, rqs, pbl;
+	unsigned long last_rx_desc;
+	unsigned long rate;
+	u32 mode_set;
+	int ret;
+	int i;
+
+	setbits_le32(&eqos->dma_regs->mode, EQOS_DMA_MODE_SWR);
+
+	ret = readl_poll_timeout(&eqos->dma_regs->mode, mode_set,
+				 !(mode_set & EQOS_DMA_MODE_SWR),
+				 100 * USEC_PER_MSEC);
+	if (ret) {
+		eqos_err(eqos, "EQOS_DMA_MODE_SWR stuck: 0x%08x\n", mode_set);
+		return ret;
+	}
+
+	/* Reset above clears MAC address */
+	eqos_set_ethaddr(edev, eqos->macaddr);
+
+	/* Required for accurate time keeping with EEE counters */
+	rate = eqos->ops->get_csr_clk_rate(eqos);
+
+	val = (rate / USEC_PER_SEC) - 1; /* -1 because the data sheet says so */
+	writel(val, &eqos->mac_regs->us_tic_counter);
+
+	ret = phy_device_connect(edev, &eqos->miibus, eqos->phy_addr,
+				 eqos->ops->adjust_link, 0, eqos->interface);
+	if (ret)
+		return ret;
+
+	/* Before we reset the mac, we must insure the PHY is not powered down
+	 * as the dw controller needs all clock domains to be running, including
+	 * the PHY clock, to come out of a mac reset.  */
+	ret = phy_resume(edev->phydev);
+	if (ret)
+		return ret;
+
+	/* Configure MTL */
+
+	/* Enable Store and Forward mode for TX */
+	/* Program Tx operating mode */
+	setbits_le32(&eqos->mtl_regs->txq0_operation_mode,
+		     EQOS_MTL_TXQ0_OPERATION_MODE_TSF |
+		     (EQOS_MTL_TXQ0_OPERATION_MODE_TXQEN_ENABLED <<
+		      EQOS_MTL_TXQ0_OPERATION_MODE_TXQEN_SHIFT));
+
+	/* Transmit Queue weight */
+	writel(0x10, &eqos->mtl_regs->txq0_quantum_weight);
+
+	/* Enable Store and Forward mode for RX, since no jumbo frame */
+	setbits_le32(&eqos->mtl_regs->rxq0_operation_mode,
+		     EQOS_MTL_RXQ0_OPERATION_MODE_RSF);
+
+	/* Transmit/Receive queue fifo size; use all RAM for 1 queue */
+	val = readl(&eqos->mac_regs->hw_feature1);
+	tx_fifo_sz = (val >> EQOS_MAC_HW_FEATURE1_TXFIFOSIZE_SHIFT) &
+		EQOS_MAC_HW_FEATURE1_TXFIFOSIZE_MASK;
+	rx_fifo_sz = (val >> EQOS_MAC_HW_FEATURE1_RXFIFOSIZE_SHIFT) &
+		EQOS_MAC_HW_FEATURE1_RXFIFOSIZE_MASK;
+
+	/*
+	 * r/tx_fifo_sz is encoded as log2(n / 128). Undo that by shifting.
+	 * r/tqs is encoded as (n / 256) - 1.
+	 */
+	tqs = (128 << tx_fifo_sz) / 256 - 1;
+	rqs = (128 << rx_fifo_sz) / 256 - 1;
+
+	clrsetbits_le32(&eqos->mtl_regs->txq0_operation_mode,
+			EQOS_MTL_TXQ0_OPERATION_MODE_TQS_MASK <<
+			EQOS_MTL_TXQ0_OPERATION_MODE_TQS_SHIFT,
+			tqs << EQOS_MTL_TXQ0_OPERATION_MODE_TQS_SHIFT);
+
+	clrsetbits_le32(&eqos->mtl_regs->rxq0_operation_mode,
+			EQOS_MTL_RXQ0_OPERATION_MODE_RQS_MASK <<
+			EQOS_MTL_RXQ0_OPERATION_MODE_RQS_SHIFT,
+			rqs << EQOS_MTL_RXQ0_OPERATION_MODE_RQS_SHIFT);
+
+	/* Flow control used only if each channel gets 4KB or more FIFO */
+	if (rqs >= ((SZ_4K / 256) - 1)) {
+		u32 rfd, rfa;
+
+		setbits_le32(&eqos->mtl_regs->rxq0_operation_mode,
+			     EQOS_MTL_RXQ0_OPERATION_MODE_EHFC);
+
+		/*
+		 * Set Threshold for Activating Flow Contol space for min 2
+		 * frames ie, (1500 * 1) = 1500 bytes.
+		 *
+		 * Set Threshold for Deactivating Flow Contol for space of
+		 * min 1 frame (frame size 1500bytes) in receive fifo
+		 */
+		if (rqs == ((SZ_4K / 256) - 1)) {
+			/*
+			 * This violates the above formula because of FIFO size
+			 * limit therefore overflow may occur inspite of this.
+			 */
+			rfd = 0x3;	/* Full-3K */
+			rfa = 0x1;	/* Full-1.5K */
+		} else if (rqs == ((SZ_8K / 256) - 1)) {
+			rfd = 0x6;	/* Full-4K */
+			rfa = 0xa;	/* Full-6K */
+		} else if (rqs == ((16384 / 256) - 1)) {
+			rfd = 0x6;	/* Full-4K */
+			rfa = 0x12;	/* Full-10K */
+		} else {
+			rfd = 0x6;	/* Full-4K */
+			rfa = 0x1E;	/* Full-16K */
+		}
+
+		clrsetbits_le32(&eqos->mtl_regs->rxq0_operation_mode,
+				(EQOS_MTL_RXQ0_OPERATION_MODE_RFD_MASK <<
+				 EQOS_MTL_RXQ0_OPERATION_MODE_RFD_SHIFT) |
+				(EQOS_MTL_RXQ0_OPERATION_MODE_RFA_MASK <<
+				 EQOS_MTL_RXQ0_OPERATION_MODE_RFA_SHIFT),
+				(rfd <<
+				 EQOS_MTL_RXQ0_OPERATION_MODE_RFD_SHIFT) |
+				(rfa <<
+				 EQOS_MTL_RXQ0_OPERATION_MODE_RFA_SHIFT));
+	}
+
+	/* Configure MAC */
+
+	clrsetbits_le32(&eqos->mac_regs->rxq_ctrl0,
+			EQOS_MAC_RXQ_CTRL0_RXQ0EN_MASK <<
+			EQOS_MAC_RXQ_CTRL0_RXQ0EN_SHIFT,
+			eqos->ops->config_mac <<
+			EQOS_MAC_RXQ_CTRL0_RXQ0EN_SHIFT);
+
+	/* Set TX flow control parameters */
+	/* Set Pause Time */
+	setbits_le32(&eqos->mac_regs->q0_tx_flow_ctrl,
+		     0xffff << EQOS_MAC_Q0_TX_FLOW_CTRL_PT_SHIFT);
+	/* Assign priority for TX flow control */
+	clrbits_le32(&eqos->mac_regs->txq_prty_map0,
+		     EQOS_MAC_TXQ_PRTY_MAP0_PSTQ0_MASK <<
+		     EQOS_MAC_TXQ_PRTY_MAP0_PSTQ0_SHIFT);
+	/* Assign priority for RX flow control */
+	clrbits_le32(&eqos->mac_regs->rxq_ctrl2,
+		     EQOS_MAC_RXQ_CTRL2_PSRQ0_MASK <<
+		     EQOS_MAC_RXQ_CTRL2_PSRQ0_SHIFT);
+	/* Enable flow control */
+	setbits_le32(&eqos->mac_regs->q0_tx_flow_ctrl,
+		     EQOS_MAC_Q0_TX_FLOW_CTRL_TFE);
+	setbits_le32(&eqos->mac_regs->rx_flow_ctrl,
+		     EQOS_MAC_RX_FLOW_CTRL_RFE);
+
+	clrsetbits_le32(&eqos->mac_regs->config,
+			EQOS_MAC_CONFIGURATION_GPSLCE |
+			EQOS_MAC_CONFIGURATION_WD |
+			EQOS_MAC_CONFIGURATION_JD |
+			EQOS_MAC_CONFIGURATION_JE,
+			EQOS_MAC_CONFIGURATION_CST |
+			EQOS_MAC_CONFIGURATION_ACS);
+
+	/* Configure DMA */
+
+	/* Enable OSP mode */
+	setbits_le32(&eqos->dma_regs->ch0_tx_control,
+		     EQOS_DMA_CH0_TX_CONTROL_OSP);
+
+	/* RX buffer size. Must be a multiple of bus width */
+	clrsetbits_le32(&eqos->dma_regs->ch0_rx_control,
+			EQOS_DMA_CH0_RX_CONTROL_RBSZ_MASK <<
+			EQOS_DMA_CH0_RX_CONTROL_RBSZ_SHIFT,
+			EQOS_MAX_PACKET_SIZE <<
+			EQOS_DMA_CH0_RX_CONTROL_RBSZ_SHIFT);
+
+	setbits_le32(&eqos->dma_regs->ch0_control,
+		     EQOS_DMA_CH0_CONTROL_PBLX8);
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
+	clrsetbits_le32(&eqos->dma_regs->ch0_tx_control,
+			EQOS_DMA_CH0_TX_CONTROL_TXPBL_MASK <<
+			EQOS_DMA_CH0_TX_CONTROL_TXPBL_SHIFT,
+			pbl << EQOS_DMA_CH0_TX_CONTROL_TXPBL_SHIFT);
+
+	clrsetbits_le32(&eqos->dma_regs->ch0_rx_control,
+			EQOS_DMA_CH0_RX_CONTROL_RXPBL_MASK <<
+			EQOS_DMA_CH0_RX_CONTROL_RXPBL_SHIFT,
+			8 << EQOS_DMA_CH0_RX_CONTROL_RXPBL_SHIFT);
+
+	/* DMA performance configuration */
+	val = (2 << EQOS_DMA_SYSBUS_MODE_RD_OSR_LMT_SHIFT) |
+		EQOS_DMA_SYSBUS_MODE_EAME | EQOS_DMA_SYSBUS_MODE_BLEN16 |
+		EQOS_DMA_SYSBUS_MODE_BLEN8 | EQOS_DMA_SYSBUS_MODE_BLEN4;
+	writel(val, &eqos->dma_regs->sysbus_mode);
+
+	/* Set up descriptors */
+
+	eqos->tx_currdescnum = eqos->rx_currdescnum = 0;
+
+	for (i = 0; i < EQOS_DESCRIPTORS_RX; i++) {
+		struct eqos_desc *rx_desc = &eqos->rx_descs[i];
+
+		writel(EQOS_DESC3_BUF1V | EQOS_DESC3_OWN, &rx_desc->des3);
+	}
+
+	writel(0, &eqos->dma_regs->ch0_txdesc_list_haddress);
+	writel((ulong)eqos->tx_descs, &eqos->dma_regs->ch0_txdesc_list_address);
+	writel(EQOS_DESCRIPTORS_TX - 1,
+	       &eqos->dma_regs->ch0_txdesc_ring_length);
+
+	writel(0, &eqos->dma_regs->ch0_rxdesc_list_haddress);
+	writel((ulong)eqos->rx_descs, &eqos->dma_regs->ch0_rxdesc_list_address);
+	writel(EQOS_DESCRIPTORS_RX - 1,
+	       &eqos->dma_regs->ch0_rxdesc_ring_length);
+
+	/* Enable everything */
+
+	setbits_le32(&eqos->mac_regs->config,
+		     EQOS_MAC_CONFIGURATION_TE | EQOS_MAC_CONFIGURATION_RE);
+
+	setbits_le32(&eqos->dma_regs->ch0_tx_control,
+		     EQOS_DMA_CH0_TX_CONTROL_ST);
+	setbits_le32(&eqos->dma_regs->ch0_rx_control,
+		     EQOS_DMA_CH0_RX_CONTROL_SR);
+
+	/* TX tail pointer not written until we need to TX a packet */
+	/*
+	 * Point RX tail pointer at last descriptor. Ideally, we'd point at the
+	 * first descriptor, implying all descriptors were available. However,
+	 * that's not distinguishable from none of the descriptors being
+	 * available.
+	 */
+	last_rx_desc = (ulong)&eqos->rx_descs[(EQOS_DESCRIPTORS_RX - 1)];
+	writel(last_rx_desc, &eqos->dma_regs->ch0_rxdesc_tail_pointer);
+
+	barrier();
+
+	eqos->started = true;
+
+	return 0;
+}
+
+void eqos_stop(struct eth_device *edev)
+{
+	struct eqos *eqos = edev->priv;
+	int i;
+
+	if (!eqos->started)
+		return;
+
+	eqos->started = false;
+
+	barrier();
+
+	/* Disable TX DMA */
+	clrbits_le32(&eqos->dma_regs->ch0_tx_control,
+		     EQOS_DMA_CH0_TX_CONTROL_ST);
+
+	/* Wait for TX all packets to drain out of MTL */
+	for (i = 0; i < 1000000; i++) {
+		u32 val = readl(&eqos->mtl_regs->txq0_debug);
+		u32 trcsts = (val >> EQOS_MTL_TXQ0_DEBUG_TRCSTS_SHIFT) &
+			EQOS_MTL_TXQ0_DEBUG_TRCSTS_MASK;
+		u32 txqsts = val & EQOS_MTL_TXQ0_DEBUG_TXQSTS;
+		if ((trcsts != 1) && (!txqsts))
+			break;
+	}
+
+	/* Turn off MAC TX and RX */
+	clrbits_le32(&eqos->mac_regs->config,
+		     EQOS_MAC_CONFIGURATION_TE | EQOS_MAC_CONFIGURATION_RE);
+
+	/* Wait for all RX packets to drain out of MTL */
+	for (i = 0; i < 1000000; i++) {
+		u32 val = readl(&eqos->mtl_regs->rxq0_debug);
+		u32 prxq = (val >> EQOS_MTL_RXQ0_DEBUG_PRXQ_SHIFT) &
+			EQOS_MTL_RXQ0_DEBUG_PRXQ_MASK;
+		u32 rxqsts = (val >> EQOS_MTL_RXQ0_DEBUG_RXQSTS_SHIFT) &
+			EQOS_MTL_RXQ0_DEBUG_RXQSTS_MASK;
+		if ((!prxq) && (!rxqsts))
+			break;
+	}
+
+	/* Turn off RX DMA */
+	clrbits_le32(&eqos->dma_regs->ch0_rx_control,
+		     EQOS_DMA_CH0_RX_CONTROL_SR);
+}
+
+static int eqos_send(struct eth_device *edev, void *packet, int length)
+{
+	struct eqos *eqos = edev->priv;
+	struct device_d *dev = &eqos->netdev.dev;
+	struct eqos_desc *tx_desc;
+	dma_addr_t dma;
+	u32 des3;
+	int ret;
+
+	tx_desc = &eqos->tx_descs[eqos->tx_currdescnum];
+	eqos->tx_currdescnum++;
+	eqos->tx_currdescnum %= EQOS_DESCRIPTORS_TX;
+
+	dma = dma_map_single(dev, packet, length, DMA_TO_DEVICE);
+	if (dma_mapping_error(dev, dma))
+		return -EFAULT;
+
+	tx_desc->des0 = (unsigned long)dma;
+	tx_desc->des1 = 0;
+	tx_desc->des2 = length;
+	/*
+	 * Make sure the compiler doesn't reorder the _OWN write below, before
+	 * the writes to the rest of the descriptor.
+	 */
+	barrier();
+
+	writel(EQOS_DESC3_OWN | EQOS_DESC3_FD | EQOS_DESC3_LD | length, &tx_desc->des3);
+	writel((ulong)(tx_desc + 1), &eqos->dma_regs->ch0_txdesc_tail_pointer);
+
+	ret = readl_poll_timeout(&tx_desc->des3, des3,
+				  !(des3 & EQOS_DESC3_OWN),
+				  100 * USEC_PER_MSEC);
+
+	dma_unmap_single(dev, dma, length, DMA_TO_DEVICE);
+
+	if (ret == -ETIMEDOUT)
+		eqos_dbg(eqos, "TX timeout\n");
+
+	return ret;
+}
+
+static int eqos_recv(struct eth_device *edev)
+{
+	struct eqos *eqos = edev->priv;
+	struct eqos_desc *rx_desc;
+	void *frame;
+	int length;
+
+	rx_desc = &eqos->rx_descs[eqos->rx_currdescnum];
+	if (readl(&rx_desc->des3) & EQOS_DESC3_OWN)
+		return 0;
+
+	frame = phys_to_virt(rx_desc->des0);
+	length = rx_desc->des3 & 0x7fff;
+
+	dma_sync_single_for_cpu((unsigned long)frame, length, DMA_FROM_DEVICE);
+	net_receive(edev, frame, length);
+	dma_sync_single_for_device((unsigned long)frame, length, DMA_FROM_DEVICE);
+
+	rx_desc->des0 = (unsigned long)frame;
+	rx_desc->des1 = 0;
+	rx_desc->des2 = 0;
+	/*
+	 * Make sure that if HW sees the _OWN write below, it will see all the
+	 * writes to the rest of the descriptor too.
+	 */
+	rx_desc->des3 |= EQOS_DESC3_BUF1V;
+	rx_desc->des3 |= EQOS_DESC3_OWN;
+	barrier();
+
+	writel((ulong)rx_desc, &eqos->dma_regs->ch0_rxdesc_tail_pointer);
+
+	eqos->rx_currdescnum++;
+	eqos->rx_currdescnum %= EQOS_DESCRIPTORS_RX;
+
+	return 0;
+}
+
+static int eqos_init_resources(struct eqos *eqos)
+{
+	struct device_d *dev = eqos->netdev.parent;
+	int ret = -ENOMEM;
+	void *descs;
+	void *p;
+	int i;
+
+	descs = dma_alloc_coherent(EQOS_DESCRIPTORS_SIZE, DMA_ADDRESS_BROKEN);
+	if (!descs)
+		goto err;
+
+	eqos->tx_descs = (struct eqos_desc *)descs;
+	eqos->rx_descs = (eqos->tx_descs + EQOS_DESCRIPTORS_TX);
+
+	p = dma_alloc(EQOS_DESCRIPTORS_RX * EQOS_MAX_PACKET_SIZE);
+	if (!p)
+		goto err_free_desc;
+
+	for (i = 0; i < EQOS_DESCRIPTORS_RX; i++) {
+		struct eqos_desc *rx_desc = &eqos->rx_descs[i];
+		dma_addr_t dma;
+
+		dma = dma_map_single(dev, p, EQOS_MAX_PACKET_SIZE, DMA_FROM_DEVICE);
+		if (dma_mapping_error(dev, dma)) {
+			ret = -EFAULT;
+			goto err_free_rx_bufs;
+		}
+
+		rx_desc->des0 = dma;
+
+		p += EQOS_MAX_PACKET_SIZE;
+	}
+
+	return 0;
+
+err_free_rx_bufs:
+	dma_free(phys_to_virt(eqos->rx_descs[0].des0));
+err_free_desc:
+	dma_free_coherent(descs, 0, EQOS_DESCRIPTORS_SIZE);
+err:
+
+	return ret;
+}
+
+static int eqos_init(struct device_d *dev, struct eqos *eqos)
+{
+	int ret;
+
+	ret = eqos_init_resources(eqos);
+	if (ret) {
+		dev_err(dev, "eqos_init_resources() failed: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	if (eqos->ops->init)
+		ret = eqos->ops->init(dev, eqos);
+
+	return ret;
+}
+
+static void eqos_probe_dt(struct device_d *dev, struct eqos *eqos)
+{
+	struct device_node *child;
+
+	eqos->interface = of_get_phy_mode(dev->device_node);
+	eqos->phy_addr = -1;
+
+	/* Set MDIO bus device node, if present. */
+	for_each_child_of_node(dev->device_node, child) {
+		if (of_device_is_compatible(child, "snps,dwmac-mdio") ||
+		    (child->name && !of_node_cmp(child->name, "mdio"))) {
+			eqos->miibus.dev.device_node = child;
+			break;
+		}
+	}
+}
+
+int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
+{
+	struct mii_bus *miibus;
+	struct resource *iores;
+	struct eqos *eqos;
+	struct eth_device *edev;
+	int ret;
+
+	eqos = xzalloc(sizeof(*eqos));
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	eqos->regs = IOMEM(iores->start);
+
+	eqos->mac_regs = eqos->regs + EQOS_MAC_REGS_BASE;
+	eqos->mtl_regs = eqos->regs + EQOS_MTL_REGS_BASE;
+	eqos->dma_regs = eqos->regs + EQOS_DMA_REGS_BASE;
+	eqos->ops = ops;
+	eqos->priv = priv;
+
+	eqos_probe_dt(dev, eqos);
+
+	edev = &eqos->netdev;
+
+	dev->priv = edev->priv = eqos;
+
+	edev->parent = dev;
+	edev->open = ops->start;
+	edev->send = eqos_send;
+	edev->recv = eqos_recv;
+	edev->halt = ops->stop;
+	edev->get_ethaddr = ops->get_ethaddr;
+	edev->set_ethaddr = ops->set_ethaddr;
+
+	miibus = &eqos->miibus;
+	miibus->parent = edev->parent;
+	miibus->read = eqos_mdio_read;
+	miibus->write = eqos_mdio_write;
+	miibus->priv = eqos;
+
+	ret = eqos_init(dev, eqos);
+	if (ret)
+		return ret;
+
+	ret = mdiobus_register(miibus);
+	if (ret)
+		return ret;
+
+	return eth_register(edev);
+}
+
+void eqos_remove(struct device_d *dev)
+{
+	struct eqos *eqos = dev->priv;
+
+	mdiobus_unregister(&eqos->miibus);
+
+	dma_free(phys_to_virt(eqos->rx_descs[0].des0));
+	dma_free_coherent(eqos->tx_descs, 0, EQOS_DESCRIPTORS_SIZE);
+}
diff --git a/drivers/net/designware_eqos.h b/drivers/net/designware_eqos.h
new file mode 100644
index 000000000000..969a524c0a95
--- /dev/null
+++ b/drivers/net/designware_eqos.h
@@ -0,0 +1,84 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#ifndef __EQOS_H_
+#define __EQOS_H_
+
+struct eqos;
+struct eth_device;
+
+struct eqos_ops {
+	int (*init)(struct device_d *dev, struct eqos *priv);
+	int (*start)(struct eth_device *edev);
+	void (*stop)(struct eth_device *edev);
+	int (*get_ethaddr)(struct eth_device *dev, unsigned char *mac);
+	int (*set_ethaddr)(struct eth_device *edev, const unsigned char *mac);
+	void (*adjust_link)(struct eth_device *edev);
+	unsigned long (*get_csr_clk_rate)(struct eqos *);
+
+	bool enh_desc;
+	int mdio_wait_us;
+
+#define EQOS_MAC_RXQ_CTRL0_RXQ0EN_SHIFT		0
+#define EQOS_MAC_RXQ_CTRL0_RXQ0EN_MASK		3
+#define EQOS_MAC_RXQ_CTRL0_RXQ0EN_NOT_ENABLED	0
+#define EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_DCB	2
+#define EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_AV	1
+	unsigned clk_csr;
+
+#define EQOS_MDIO_ADDR_CR_20_35			2
+#define EQOS_MDIO_ADDR_CR_250_300		5
+#define EQOS_MDIO_ADDR_SKAP			BIT(4)
+#define EQOS_MDIO_ADDR_GOC_SHIFT		2
+#define EQOS_MDIO_ADDR_GOC_READ			3
+#define EQOS_MDIO_ADDR_GOC_WRITE		1
+#define EQOS_MDIO_ADDR_C45E			BIT(1)
+	unsigned config_mac;
+};
+
+struct eqos_desc;
+struct eqos_dma_regs;
+struct eqos_mac_regs;
+struct eqos_mtl_regs;
+
+struct eqos {
+	struct eth_device netdev;
+	struct mii_bus miibus;
+
+	u8 macaddr[6];
+
+	u32 tx_currdescnum, rx_currdescnum;
+
+	struct eqos_desc *tx_descs, *rx_descs;
+
+	void __iomem *regs;
+	struct eqos_mac_regs __iomem *mac_regs;
+	struct eqos_dma_regs __iomem *dma_regs;
+	struct eqos_mtl_regs __iomem *mtl_regs;
+
+	int phy_addr;
+	phy_interface_t interface;
+
+	const struct eqos_ops *ops;
+	void *priv;
+	bool started;
+};
+
+struct device_d;
+int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv);
+void eqos_remove(struct device_d *dev);
+int eqos_reset(struct eqos *priv);
+
+int eqos_get_ethaddr(struct eth_device *edev, unsigned char *mac);
+int eqos_set_ethaddr(struct eth_device *edev, const unsigned char *mac);
+int eqos_start(struct eth_device *edev);
+void eqos_stop(struct eth_device *edev);
+void eqos_adjust_link(struct eth_device *edev);
+
+#define eqos_dbg(eqos, ...) dev_dbg(&eqos->netdev.dev, __VA_ARGS__)
+#define eqos_warn(eqos, ...) dev_warn(&eqos->netdev.dev, __VA_ARGS__)
+#define eqos_err(eqos, ...) dev_err(&eqos->netdev.dev, __VA_ARGS__)
+
+#endif
diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
new file mode 100644
index 000000000000..5b087ad5a371
--- /dev/null
+++ b/drivers/net/designware_stm32.c
@@ -0,0 +1,245 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2016, NVIDIA CORPORATION.
+ * Copyright (c) 2019, Ahmad Fatoum, Pengutronix
+ *
+ * Portions based on U-Boot's rtl8169.c and dwc_eth_qos.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <net.h>
+#include <linux/clk.h>
+#include <mfd/syscon.h>
+
+#include "designware_eqos.h"
+
+#define SYSCFG_PMCR_ETH_CLK_SEL		BIT(16)
+#define SYSCFG_PMCR_ETH_REF_CLK_SEL	BIT(17)
+
+/*  Ethernet PHY interface selection in register SYSCFG Configuration
+ *------------------------------------------
+ * src	 |BIT(23)| BIT(22)| BIT(21)|BIT(20)|
+ *------------------------------------------
+ * MII   |   0	 |   0	  |   0    |   1   |
+ *------------------------------------------
+ * GMII  |   0	 |   0	  |   0    |   0   |
+ *------------------------------------------
+ * RGMII |   0	 |   0	  |   1	   |  n/a  |
+ *------------------------------------------
+ * RMII  |   1	 |   0	  |   0	   |  n/a  |
+ *------------------------------------------
+ */
+#define SYSCFG_PMCR_ETH_SEL_MII		BIT(20)
+#define SYSCFG_PMCR_ETH_SEL_RGMII	BIT(21)
+#define SYSCFG_PMCR_ETH_SEL_RMII	BIT(23)
+#define SYSCFG_PMCR_ETH_SEL_GMII	0
+#define SYSCFG_MCU_ETH_SEL_MII		0
+#define SYSCFG_MCU_ETH_SEL_RMII		1
+
+/* Descriptors */
+
+#define SYSCFG_MCU_ETH_MASK		BIT(23)
+#define SYSCFG_MP1_ETH_MASK		GENMASK(23, 16)
+#define SYSCFG_PMCCLRR_OFFSET		0x40
+
+struct eqos_stm32 {
+	struct clk_bulk_data *clks;
+	int num_clks;
+	struct regmap *regmap;
+	u32 mode_reg;
+	int eth_clk_sel_reg;
+	int eth_ref_clk_sel_reg;
+};
+
+static inline struct eqos_stm32 *to_stm32(struct eqos *eqos)
+{
+	return eqos->priv;
+}
+
+enum { CLK_STMMACETH, CLK_MAX_RX, CLK_MAX_TX, CLK_SYSCFG,  };
+static const struct clk_bulk_data stm32_clks[] = {
+	[CLK_STMMACETH] = { .id = "stmmaceth" },
+	[CLK_MAX_RX]    = { .id = "mac-clk-rx" },
+	[CLK_MAX_TX]    = { .id = "mac-clk-tx" },
+	[CLK_SYSCFG]    = { .id = "syscfg-clk" },
+};
+
+static unsigned long eqos_get_csr_clk_rate_stm32(struct eqos *eqos)
+{
+	return clk_get_rate(to_stm32(eqos)->clks[CLK_STMMACETH].clk);
+}
+
+static int eqos_set_mode_stm32(struct eqos_stm32 *priv, phy_interface_t interface)
+{
+	u32 val, reg = priv->mode_reg;
+	int ret;
+
+	switch (interface) {
+	case PHY_INTERFACE_MODE_MII:
+		val = SYSCFG_PMCR_ETH_SEL_MII;
+		break;
+	case PHY_INTERFACE_MODE_GMII:
+		val = SYSCFG_PMCR_ETH_SEL_GMII;
+		if (priv->eth_clk_sel_reg)
+			val |= SYSCFG_PMCR_ETH_CLK_SEL;
+		break;
+	case PHY_INTERFACE_MODE_RMII:
+		val = SYSCFG_PMCR_ETH_SEL_RMII;
+		if (priv->eth_ref_clk_sel_reg)
+			val |= SYSCFG_PMCR_ETH_REF_CLK_SEL;
+		break;
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		val = SYSCFG_PMCR_ETH_SEL_RGMII;
+		if (priv->eth_clk_sel_reg)
+			val |= SYSCFG_PMCR_ETH_CLK_SEL;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	/* Need to update PMCCLRR (clear register) */
+	ret = regmap_write(priv->regmap, reg + SYSCFG_PMCCLRR_OFFSET,
+			   SYSCFG_MP1_ETH_MASK);
+	if (ret)
+		return -EIO;
+
+	/* Update PMCSETR (set register) */
+	regmap_update_bits(priv->regmap, reg, GENMASK(23, 16), val);
+
+	return 0;
+}
+
+static int eqos_init_stm32(struct device_d *dev, struct eqos *eqos)
+{
+	struct device_node *np = dev->device_node;
+	struct eqos_stm32 *priv = to_stm32(eqos);
+	struct clk_bulk_data *eth_ck;
+	int ret;
+
+	/* Gigabit Ethernet 125MHz clock selection. */
+	priv->eth_clk_sel_reg = of_property_read_bool(np, "st,eth-clk-sel");
+
+	/* Ethernet 50Mhz RMII clock selection */
+	priv->eth_ref_clk_sel_reg =
+		of_property_read_bool(np, "st,eth-ref-clk-sel");
+
+	priv->regmap = syscon_regmap_lookup_by_phandle(dev->device_node,
+						       "st,syscon");
+	if (IS_ERR(priv->regmap)) {
+		dev_err(dev, "Could not get st,syscon node\n");
+		return PTR_ERR(priv->regmap);
+	}
+
+	ret = of_property_read_u32_index(dev->device_node, "st,syscon",
+					 1, &priv->mode_reg);
+	if (ret) {
+		dev_err(dev, "Can't get sysconfig mode offset (%s)\n",
+			strerror(-ret));
+		return -EINVAL;
+	}
+
+	ret = eqos_set_mode_stm32(priv, eqos->interface);
+	if (ret)
+		dev_warn(dev, "Configuring syscfg failed: %s\n", strerror(-ret));
+
+	priv->num_clks = ARRAY_SIZE(stm32_clks) + 1;
+	priv->clks = xmalloc(priv->num_clks * sizeof(*priv->clks));
+	memcpy(priv->clks, stm32_clks, sizeof stm32_clks);
+
+	ret = clk_bulk_get(dev, ARRAY_SIZE(stm32_clks), priv->clks);
+	if (ret) {
+		dev_err(dev, "Failed to get clks: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	eth_ck = &priv->clks[ARRAY_SIZE(stm32_clks)];
+	eth_ck->id = "eth-ck";
+	eth_ck->clk = clk_get(dev, eth_ck->id);
+	if (IS_ERR(eth_ck->clk)) {
+		priv->num_clks--;
+		dev_dbg(dev, "No phy clock provided. Continuing without.\n");
+	}
+
+	return 0;
+
+}
+
+static int eqos_start_stm32(struct eth_device *edev)
+{
+	struct eqos *eqos = edev->priv;
+	struct eqos_stm32 *priv = to_stm32(eqos);
+	int ret;
+
+	ret = clk_bulk_enable(priv->num_clks, priv->clks);
+	if (ret < 0) {
+		eqos_err(eqos, "clk_bulk_enable() failed: %s\n",
+			 strerror(-ret));
+		return ret;
+	}
+
+	udelay(10);
+
+	ret = eqos_start(edev);
+	if (ret)
+		goto err_stop_clks;
+
+	return 0;
+
+err_stop_clks:
+	clk_bulk_disable(priv->num_clks, priv->clks);
+
+	return ret;
+}
+
+static void eqos_stop_stm32(struct eth_device *edev)
+{
+	struct eqos_stm32 *priv = to_stm32(edev->priv);
+
+	clk_bulk_disable(priv->num_clks, priv->clks);
+}
+
+// todo split!
+static struct eqos_ops stm32_ops = {
+	.init = eqos_init_stm32,
+	.get_ethaddr = eqos_get_ethaddr,
+	.set_ethaddr = eqos_set_ethaddr,
+	.start = eqos_start_stm32,
+	.stop = eqos_stop_stm32,
+	.adjust_link = eqos_adjust_link,
+	.get_csr_clk_rate = eqos_get_csr_clk_rate_stm32,
+
+	.mdio_wait_us = 10 * USEC_PER_MSEC,
+	.clk_csr = EQOS_MDIO_ADDR_CR_250_300,
+	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_AV,
+};
+
+static int eqos_probe_stm32(struct device_d *dev)
+{
+	return eqos_probe(dev, &stm32_ops, xzalloc(sizeof(struct eqos_stm32)));
+}
+
+static void eqos_remove_stm32(struct device_d *dev)
+{
+	struct eqos_stm32 *priv = to_stm32(dev->priv);
+
+	eqos_remove(dev);
+
+	clk_bulk_put(priv->num_clks, priv->clks);
+}
+
+static const struct of_device_id eqos_stm32_ids[] = {
+	{ .compatible = "st,stm32mp1-dwmac" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d eqos_stm32_driver = {
+	.name = "eqos-stm32",
+	.probe = eqos_probe_stm32,
+	.remove	= eqos_remove_stm32,
+	.of_compatible = DRV_OF_COMPAT(eqos_stm32_ids),
+};
+device_platform_driver(eqos_stm32_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
