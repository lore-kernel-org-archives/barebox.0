Delivery-date: Thu, 04 Jan 2024 12:24:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLpa-003Syv-1P
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 12:24:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLpY-0006rH-0g
	for lore@pengutronix.de; Thu, 04 Jan 2024 12:24:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NEqMROE/zyGSpqZOk3q0HlkZvDnNWJFW5kDJ79FNBh0=; b=yKzvy9JNRtHiG417elp8+xT/Gl
	JLTfD67Cw3T2bq04gLCacYaggANuurpHIvYwuktw7UZNi/iUM9w1VZM4G9pYr9Al7xQHCfE7a6C1V
	1uch3CUyTYzOlz1tu0FxcDupE8zE6Sp2y/RvwpJhoo+EgzTDyf3tga8vgF9FlJ+ShprozsuyfGXt+
	dPb9yPZjsB5W8ZIkQIg4ru9Ej/Vw4NkM63CmQDnwyMVO1MyExyCsL70pV7UQvbhC2kgapkLFrVj1P
	b1Vo/EsW+hEcwt+qbGeCidgUd0rPlym7OLRyKwI0n6Pt/tU5PB+UoqwkO1UetaUVbcYxtlRV/TBIM
	xaDFKvWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLoN-00Dhbo-2G;
	Thu, 04 Jan 2024 11:22:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLoE-00DhUU-2F
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 11:22:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLoB-0006Xk-6O; Thu, 04 Jan 2024 12:22:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLoA-000Klk-Py; Thu, 04 Jan 2024 12:22:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLoA-0049ln-2E;
	Thu, 04 Jan 2024 12:22:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 12:22:41 +0100
Message-Id: <20240104112241.989839-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104112241.989839-1-s.hauer@pengutronix.de>
References: <20240104112241.989839-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_032247_113003_CA5A73AE 
X-CRM114-Status: GOOD (  31.49  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] net: Add fsl_enetc network driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the fsl_enetc network controller found on several
Layerscape SoCs. The code is originally from U-Boot-2023.10-rc1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v1:
    
    - Use get_unaligned to access unaligned pointers
    - use physical address returned by dma_alloc_coherent()
    - implement struct pci_driver::remove hook
    - do not printf in poller function
    - use write[lwq] to access rx/tx rings to avoid dmb()

 drivers/net/Kconfig          |   9 +
 drivers/net/Makefile         |   1 +
 drivers/net/fsl_enetc.c      | 603 +++++++++++++++++++++++++++++++++++
 drivers/net/fsl_enetc.h      | 252 +++++++++++++++
 drivers/net/fsl_enetc_mdio.c | 127 ++++++++
 5 files changed, 992 insertions(+)
 create mode 100644 drivers/net/fsl_enetc.c
 create mode 100644 drivers/net/fsl_enetc.h
 create mode 100644 drivers/net/fsl_enetc_mdio.c

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index e3571cbb20..430cc6a4e7 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -188,6 +188,15 @@ config DRIVER_NET_FEC_IMX
 	depends on HAS_DMA
 	select PHYLIB
 
+config DRIVER_NET_FSL_ENETC
+	bool "Freescale enetc ethernet driver"
+	select PHYLIB
+	depends on PCI
+	depends on HAS_DMA
+	help
+	  This option enables support for the Freescale enetc core found
+	  on Layerscape SoCs.
+
 config DRIVER_NET_FSL_FMAN
 	bool "Freescale fman ethernet driver"
 	select PHYLIB
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 61dcf60cba..207345cfa3 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -25,6 +25,7 @@ obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
 obj-$(CONFIG_DRIVER_NET_EP93XX)		+= ep93xx.o
 obj-$(CONFIG_DRIVER_NET_ETHOC)		+= ethoc.o
 obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
+obj-$(CONFIG_DRIVER_NET_FSL_ENETC)	+= fsl_enetc.o fsl_enetc_mdio.o
 obj-$(CONFIG_DRIVER_NET_FSL_FMAN)	+= fsl-fman.o
 obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
 obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
diff --git a/drivers/net/fsl_enetc.c b/drivers/net/fsl_enetc.c
new file mode 100644
index 0000000000..eb90c526bb
--- /dev/null
+++ b/drivers/net/fsl_enetc.c
@@ -0,0 +1,603 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * ENETC ethernet controller driver
+ * Copyright 2017-2021 NXP
+ */
+#include <common.h>
+#include <dma.h>
+#include <net.h>
+#include <linux/phy.h>
+#include <linux/pci.h>
+#include <io.h>
+#include <linux/mdio.h>
+#include <asm/system.h>
+#include <of_net.h>
+#include <asm/unaligned.h>
+
+#include "fsl_enetc.h"
+
+/* MDIO wrappers, we're using these to drive internal MDIO to get to serdes */
+static __maybe_unused int enetc_mdio_read(struct enetc_priv *priv, int addr, int devad, int reg)
+{
+	struct enetc_mdio_priv mdio_priv;
+
+	mdio_priv.regs_base = priv->port_regs + ENETC_PM_IMDIO_BASE;
+
+	return enetc_mdio_read_priv(&mdio_priv, addr, devad, reg);
+}
+
+static int enetc_mdio_write(struct enetc_priv *priv, int addr, int devad, int reg,
+			    u16 val)
+{
+	struct enetc_mdio_priv mdio_priv;
+	int ret;
+
+	mdio_priv.regs_base = priv->port_regs + ENETC_PM_IMDIO_BASE;
+
+	ret = enetc_mdio_write_priv(&mdio_priv, addr, devad, reg, val);
+
+	return ret;
+}
+
+/* only interfaces that can pin out through serdes have internal MDIO */
+static bool enetc_has_imdio(struct eth_device *edev)
+{
+	struct enetc_priv *priv = edev->priv;
+
+	return !!(enetc_read_port(priv, ENETC_PCAPR0) & ENETC_PCAPRO_MDIO);
+}
+
+/* set up serdes for SGMII */
+static int enetc_init_sgmii(struct eth_device *edev)
+{
+	struct enetc_priv *priv = edev->priv;
+	bool is2500 = false;
+	u16 reg;
+
+	if (!enetc_has_imdio(edev))
+		return 0;
+
+	if (priv->uclass_id == PHY_INTERFACE_MODE_2500BASEX)
+		is2500 = true;
+
+	/*
+	 * Set to SGMII mode, for 1Gbps enable AN, for 2.5Gbps set fixed speed.
+	 * Although fixed speed is 1Gbps, we could be running at 2.5Gbps based
+	 * on PLL configuration.  Setting 1G for 2.5G here is counter intuitive
+	 * but intentional.
+	 */
+	reg = ENETC_PCS_IF_MODE_SGMII;
+	reg |= is2500 ? ENETC_PCS_IF_MODE_SPEED_1G : ENETC_PCS_IF_MODE_SGMII_AN;
+	enetc_mdio_write(priv, ENETC_PCS_PHY_ADDR, MDIO_DEVAD_NONE,
+			 ENETC_PCS_IF_MODE, reg);
+
+	/* Dev ability - SGMII */
+	enetc_mdio_write(priv, ENETC_PCS_PHY_ADDR, MDIO_DEVAD_NONE,
+			 ENETC_PCS_DEV_ABILITY, ENETC_PCS_DEV_ABILITY_SGMII);
+
+	/* Adjust link timer for SGMII */
+	enetc_mdio_write(priv, ENETC_PCS_PHY_ADDR, MDIO_DEVAD_NONE,
+			 ENETC_PCS_LINK_TIMER1, ENETC_PCS_LINK_TIMER1_VAL);
+	enetc_mdio_write(priv, ENETC_PCS_PHY_ADDR, MDIO_DEVAD_NONE,
+			 ENETC_PCS_LINK_TIMER2, ENETC_PCS_LINK_TIMER2_VAL);
+
+	reg = ENETC_PCS_CR_DEF_VAL;
+	reg |= is2500 ? ENETC_PCS_CR_RST : ENETC_PCS_CR_RESET_AN;
+	/* restart PCS AN */
+	enetc_mdio_write(priv, ENETC_PCS_PHY_ADDR, MDIO_DEVAD_NONE,
+			 ENETC_PCS_CR, reg);
+
+	return 0;
+}
+
+/* set up MAC for RGMII */
+static void enetc_init_rgmii(struct eth_device *edev, struct phy_device *phydev)
+{
+	struct enetc_priv *priv = edev->priv;
+	u32 old_val, val;
+
+	old_val = val = enetc_read_port(priv, ENETC_PM_IF_MODE);
+
+	/* disable unreliable RGMII in-band signaling and force the MAC into
+	 * the speed negotiated by the PHY.
+	 */
+	val &= ~ENETC_PM_IF_MODE_AN_ENA;
+
+	if (phydev->speed == SPEED_1000) {
+		val &= ~ENETC_PM_IFM_SSP_MASK;
+		val |= ENETC_PM_IFM_SSP_1000;
+	} else if (phydev->speed == SPEED_100) {
+		val &= ~ENETC_PM_IFM_SSP_MASK;
+		val |= ENETC_PM_IFM_SSP_100;
+	} else if (phydev->speed == SPEED_10) {
+		val &= ~ENETC_PM_IFM_SSP_MASK;
+		val |= ENETC_PM_IFM_SSP_10;
+	}
+
+	if (phydev->duplex == DUPLEX_FULL)
+		val |= ENETC_PM_IFM_FULL_DPX;
+	else
+		val &= ~ENETC_PM_IFM_FULL_DPX;
+
+	if (val == old_val)
+		return;
+
+	enetc_write_port(priv, ENETC_PM_IF_MODE, val);
+}
+
+/* set up MAC configuration for the given interface type */
+static void enetc_setup_mac_iface(struct eth_device *edev,
+				  struct phy_device *phydev)
+{
+	struct enetc_priv *priv = edev->priv;
+	u32 if_mode;
+
+	switch (priv->uclass_id) {
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		enetc_init_rgmii(edev, phydev);
+		break;
+	case PHY_INTERFACE_MODE_USXGMII:
+	case PHY_INTERFACE_MODE_10GBASER:
+		/* set ifmode to (US)XGMII */
+		if_mode = enetc_read_port(priv, ENETC_PM_IF_MODE);
+		if_mode &= ~ENETC_PM_IF_IFMODE_MASK;
+		enetc_write_port(priv, ENETC_PM_IF_MODE, if_mode);
+		break;
+	};
+}
+
+/* set up serdes for SXGMII */
+static int enetc_init_sxgmii(struct eth_device *edev)
+{
+	struct enetc_priv *priv = edev->priv;
+
+	if (!enetc_has_imdio(edev))
+		return 0;
+
+	/* Dev ability - SXGMII */
+	enetc_mdio_write(priv, ENETC_PCS_PHY_ADDR, ENETC_PCS_DEVAD_REPL,
+			 ENETC_PCS_DEV_ABILITY, ENETC_PCS_DEV_ABILITY_SXGMII);
+
+	/* Restart PCS AN */
+	enetc_mdio_write(priv, ENETC_PCS_PHY_ADDR, ENETC_PCS_DEVAD_REPL,
+			 ENETC_PCS_CR,
+			 ENETC_PCS_CR_RST | ENETC_PCS_CR_RESET_AN);
+
+	return 0;
+}
+
+/* Apply protocol specific configuration to MAC, serdes as needed */
+static void enetc_start_pcs(struct eth_device *edev)
+{
+	struct enetc_priv *priv = edev->priv;
+
+	priv->uclass_id = of_get_phy_mode(priv->dev->of_node);
+	if (priv->uclass_id == PHY_INTERFACE_MODE_NA) {
+		dev_dbg(&edev->dev,
+			  "phy-mode property not found, defaulting to SGMII\n");
+		priv->uclass_id = PHY_INTERFACE_MODE_SGMII;
+	}
+
+	switch (priv->uclass_id) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_2500BASEX:
+		enetc_init_sgmii(edev);
+		break;
+	case PHY_INTERFACE_MODE_USXGMII:
+	case PHY_INTERFACE_MODE_10GBASER:
+		enetc_init_sxgmii(edev);
+		break;
+	};
+}
+
+/*
+ * LS1028A is the only part with IERB at this time and there are plans to
+ * change its structure, keep this LS1028A specific for now.
+ */
+#define LS1028A_IERB_BASE		0x1f0800000ULL
+#define LS1028A_IERB_PSIPMAR0(pf, vf)	(LS1028A_IERB_BASE + 0x8000 \
+					 + (pf) * 0x100 + (vf) * 8)
+#define LS1028A_IERB_PSIPMAR1(pf, vf)	(LS1028A_IERB_PSIPMAR0(pf, vf) + 4)
+
+static int enetc_get_hwaddr(struct eth_device *edev, unsigned char *mac)
+{
+        return -EOPNOTSUPP;
+}
+
+static int enetc_ls1028a_write_hwaddr(struct eth_device *edev, const unsigned char *mac)
+{
+	struct enetc_priv *priv = edev->priv;
+	struct pci_dev *pdev = to_pci_dev(priv->dev);
+	const int devfn_to_pf[] = {0, 1, 2, -1, -1, -1, 3};
+	int devfn = PCI_FUNC(pdev->devfn);
+	u32 lower, upper;
+	int pf;
+
+	if (devfn >= ARRAY_SIZE(devfn_to_pf))
+		return 0;
+
+	pf = devfn_to_pf[devfn];
+	if (pf < 0)
+		return 0;
+
+	lower = get_unaligned_le16(mac + 4);
+	upper = get_unaligned_le32(mac);
+
+	out_le32(LS1028A_IERB_PSIPMAR0(pf, 0), upper);
+	out_le32(LS1028A_IERB_PSIPMAR1(pf, 0), lower);
+
+	return 0;
+}
+
+static int enetc_write_hwaddr(struct eth_device *edev, const unsigned char *mac)
+{
+	struct enetc_priv *priv = edev->priv;
+
+	u16 lower = get_unaligned_le16(mac + 4);
+	u32 upper = get_unaligned_le32(mac);
+
+	enetc_write_port(priv, ENETC_PSIPMAR0, upper);
+	enetc_write_port(priv, ENETC_PSIPMAR1, lower);
+
+	return 0;
+}
+
+/* Configure port parameters (# of rings, frame size, enable port) */
+static void enetc_enable_si_port(struct enetc_priv *priv)
+{
+	u32 val;
+
+	/* set Rx/Tx BDR count */
+	val = ENETC_PSICFGR_SET_TXBDR(ENETC_TX_BDR_CNT);
+	val |= ENETC_PSICFGR_SET_RXBDR(ENETC_RX_BDR_CNT);
+	enetc_write_port(priv, ENETC_PSICFGR(0), val);
+	/* set Rx max frame size */
+	enetc_write_port(priv, ENETC_PM_MAXFRM, ENETC_RX_MAXFRM_SIZE);
+	/* enable MAC port */
+	enetc_write_port(priv, ENETC_PM_CC, ENETC_PM_CC_RX_TX_EN);
+	/* enable port */
+	enetc_write_port(priv, ENETC_PMR, ENETC_PMR_SI0_EN);
+	/* set SI cache policy */
+	enetc_write(priv, ENETC_SICAR0,
+		    ENETC_SICAR_RD_CFG | ENETC_SICAR_WR_CFG);
+	/* enable SI */
+	enetc_write(priv, ENETC_SIMR, ENETC_SIMR_EN);
+}
+
+/* returns DMA address for a given buffer index */
+static inline dma_addr_t enetc_rxb_address(struct enetc_priv *priv, int i)
+{
+	return priv->rx_pkg_phys[i];
+}
+
+/*
+ * Setup a single Tx BD Ring (ID = 0):
+ * - set Tx buffer descriptor address
+ * - set the BD count
+ * - initialize the producer and consumer index
+ */
+static void enetc_setup_tx_bdr(struct eth_device *edev)
+{
+	struct enetc_priv *priv = edev->priv;
+	struct bd_ring *tx_bdr = &priv->tx_bdr;
+	u64 tx_bd_add = (u64)priv->enetc_txbd_phys;
+
+	/* used later to advance to the next Tx BD */
+	tx_bdr->bd_count = ENETC_BD_CNT;
+	tx_bdr->next_prod_idx = 0;
+	tx_bdr->next_cons_idx = 0;
+	tx_bdr->cons_idx = priv->regs_base +
+				ENETC_BDR(TX, ENETC_TX_BDR_ID, ENETC_TBCIR);
+	tx_bdr->prod_idx = priv->regs_base +
+				ENETC_BDR(TX, ENETC_TX_BDR_ID, ENETC_TBPIR);
+
+	/* set Tx BD address */
+	enetc_bdr_write(priv, TX, ENETC_TX_BDR_ID, ENETC_TBBAR0,
+			lower_32_bits(tx_bd_add));
+	enetc_bdr_write(priv, TX, ENETC_TX_BDR_ID, ENETC_TBBAR1,
+			upper_32_bits(tx_bd_add));
+	/* set Tx 8 BD count */
+	enetc_bdr_write(priv, TX, ENETC_TX_BDR_ID, ENETC_TBLENR,
+			tx_bdr->bd_count);
+
+	/* reset both producer/consumer indexes */
+	enetc_write_reg(tx_bdr->cons_idx, tx_bdr->next_cons_idx);
+	enetc_write_reg(tx_bdr->prod_idx, tx_bdr->next_prod_idx);
+
+	/* enable TX ring */
+	enetc_bdr_write(priv, TX, ENETC_TX_BDR_ID, ENETC_TBMR, ENETC_TBMR_EN);
+}
+
+/*
+ * Setup a single Rx BD Ring (ID = 0):
+ * - set Rx buffer descriptors address (one descriptor per buffer)
+ * - set buffer size as max frame size
+ * - enable Rx ring
+ * - reset consumer and producer indexes
+ * - set buffer for each descriptor
+ */
+static void enetc_setup_rx_bdr(struct eth_device *edev)
+{
+	struct enetc_priv *priv = edev->priv;
+	struct bd_ring *rx_bdr = &priv->rx_bdr;
+	u64 rx_bd_add = (u64)priv->enetc_rxbd_phys;
+	int i;
+
+	/* used later to advance to the next BD produced by ENETC HW */
+	rx_bdr->bd_count = ENETC_BD_CNT;
+	rx_bdr->next_prod_idx = 0;
+	rx_bdr->next_cons_idx = 0;
+	rx_bdr->cons_idx = priv->regs_base +
+				ENETC_BDR(RX, ENETC_RX_BDR_ID, ENETC_RBCIR);
+	rx_bdr->prod_idx = priv->regs_base +
+				ENETC_BDR(RX, ENETC_RX_BDR_ID, ENETC_RBPIR);
+
+	/* set Rx BD address */
+	enetc_bdr_write(priv, RX, ENETC_RX_BDR_ID, ENETC_RBBAR0,
+			lower_32_bits(rx_bd_add));
+	enetc_bdr_write(priv, RX, ENETC_RX_BDR_ID, ENETC_RBBAR1,
+			upper_32_bits(rx_bd_add));
+	/* set Rx BD count (multiple of 8) */
+	enetc_bdr_write(priv, RX, ENETC_RX_BDR_ID, ENETC_RBLENR,
+			rx_bdr->bd_count);
+	/* set Rx buffer  size */
+	enetc_bdr_write(priv, RX, ENETC_RX_BDR_ID, ENETC_RBBSR, PKTSIZE);
+
+	/* fill Rx BD */
+	memset(priv->enetc_rxbd, 0,
+	       rx_bdr->bd_count * sizeof(union enetc_rx_bd));
+
+	for (i = 0; i < rx_bdr->bd_count; i++) {
+		priv->rx_pkg[i] = dma_alloc(PKTSIZE);
+		priv->rx_pkg_phys[i] = dma_map_single(priv->dev, priv->rx_pkg[i],
+						      PKTSIZE, DMA_FROM_DEVICE);
+		priv->enetc_rxbd[i].w.addr = priv->rx_pkg_phys[i];
+	}
+
+	/* reset producer (ENETC owned) and consumer (SW owned) index */
+	enetc_write_reg(rx_bdr->cons_idx, rx_bdr->next_cons_idx);
+	enetc_write_reg(rx_bdr->prod_idx, rx_bdr->next_prod_idx);
+
+	/* enable Rx ring */
+	enetc_bdr_write(priv, RX, ENETC_RX_BDR_ID, ENETC_RBMR, ENETC_RBMR_EN);
+}
+
+/*
+ * Start ENETC interface:
+ * - perform FLR
+ * - enable access to port and SI registers
+ * - set mac address
+ * - setup TX/RX buffer descriptors
+ * - enable Tx/Rx rings
+ */
+static int enetc_start(struct eth_device *edev)
+{
+	struct enetc_priv *priv = edev->priv;
+	struct pci_dev *pdev = to_pci_dev(priv->dev);
+	u32 t;
+	int ret, interface;
+
+	/* reset and enable the PCI device */
+	pci_flr(pdev);
+
+	pci_read_config_dword(pdev, PCI_COMMAND, &t);
+	pci_write_config_dword(pdev, PCI_COMMAND, t | PCI_COMMAND_MASTER | PCI_COMMAND_MEMORY);
+
+	interface = of_get_phy_mode(priv->dev->of_node);
+
+	ret = phy_device_connect(edev, NULL, 0, NULL, 0, interface);
+	if (ret)
+		return ret;
+
+	enetc_enable_si_port(priv);
+
+	/* setup Tx/Rx buffer descriptors */
+	enetc_setup_tx_bdr(edev);
+	enetc_setup_rx_bdr(edev);
+
+	enetc_setup_mac_iface(edev, priv->phy);
+
+	return 0;
+}
+
+/*
+ * Stop the network interface:
+ * - just quiesce it, we can wipe all configuration as _start starts from
+ * scratch each time
+ */
+static void enetc_stop(struct eth_device *edev)
+{
+	struct enetc_priv *priv = edev->priv;
+	struct pci_dev *pdev = to_pci_dev(priv->dev);
+	u32 t;
+
+	/* FLR is sufficient to quiesce the device */
+	pci_flr(pdev);
+
+	/* leave the BARs accessible after we stop, this is needed to use
+	 * internal MDIO in command line.
+	 */
+	pci_read_config_dword(pdev, PCI_COMMAND, &t);
+	pci_write_config_dword(pdev, PCI_COMMAND, t | PCI_COMMAND_MEMORY);
+}
+
+/*
+ * ENETC transmit packet:
+ * - check if Tx BD ring is full
+ * - set buffer/packet address (dma address)
+ * - set final fragment flag
+ * - try while producer index equals consumer index or timeout
+ */
+static int enetc_send(struct eth_device *edev, void *packet, int length)
+{
+	struct enetc_priv *priv = edev->priv;
+	struct bd_ring *txr = &priv->tx_bdr;
+	int ret;
+	u32 pi, ci;
+	dma_addr_t dma;
+	u64 start;
+
+	pi = txr->next_prod_idx;
+	ci = enetc_read_reg(txr->cons_idx) & ENETC_BDR_IDX_MASK;
+	/* Tx ring is full when */
+	if (((pi + 1) % txr->bd_count) == ci) {
+		dev_err(&edev->dev, "Tx BDR full\n");
+		return -ETIMEDOUT;
+	}
+
+	dev_vdbg(&edev->dev, "TxBD[%d]send: pkt_len=%d, buff @0x%x%08x\n", pi, length,
+		  upper_32_bits((u64)packet), lower_32_bits((u64)packet));
+
+	dma = dma_map_single(priv->dev, packet, length, DMA_TO_DEVICE);
+
+	/* prepare Tx BD */
+	memset(&priv->enetc_txbd[pi], 0x0, sizeof(struct enetc_tx_bd));
+	priv->enetc_txbd[pi].addr = cpu_to_le64(dma);
+	priv->enetc_txbd[pi].buf_len = cpu_to_le16(length);
+	priv->enetc_txbd[pi].frm_len = cpu_to_le16(length);
+	priv->enetc_txbd[pi].flags = cpu_to_le16(ENETC_TXBD_FLAGS_F);
+
+	dmb();
+
+	/* send frame: increment producer index */
+	pi = (pi + 1) % txr->bd_count;
+	txr->next_prod_idx = pi;
+	enetc_write_reg(txr->prod_idx, pi);
+
+	start = get_time_ns();
+
+	while (1) {
+		if (is_timeout(start, 100 * USECOND)) {
+			ret = -ETIMEDOUT;
+			break;
+		}
+
+		if (pi == (enetc_read_reg(txr->cons_idx) & ENETC_BDR_IDX_MASK)) {
+			ret = 0;
+			break;
+		}
+	}
+
+	dma_unmap_single(priv->dev, dma, length, DMA_TO_DEVICE);
+
+	return ret;
+}
+
+/*
+ * Receive frame:
+ * - wait for the next BD to get ready bit set
+ * - clean up the descriptor
+ * - move on and indicate to HW that the cleaned BD is available for Rx
+ */
+static int enetc_recv(struct eth_device *edev)
+{
+	struct enetc_priv *priv = edev->priv;
+	struct bd_ring *rxr = &priv->rx_bdr;
+	int pi = rxr->next_prod_idx;
+	int ci = rxr->next_cons_idx;
+	u32 status;
+	void *pkg;
+	int len;
+
+	status = le32_to_cpu(priv->enetc_rxbd[pi].r.lstatus);
+
+	/* check if current BD is ready to be consumed */
+	if (!ENETC_RXBD_STATUS_R(status))
+		return 0;
+
+	dmb();
+
+	len = le16_to_cpu(priv->enetc_rxbd[pi].r.buf_len);
+
+	dev_dbg(&edev->dev, "RxBD[%d]: len=%d err=%d pkt=0x%p\n", pi, len,
+		  ENETC_RXBD_STATUS_ERRORS(status), pkg);
+
+	dma_sync_single_for_cpu(priv->dev, priv->rx_pkg_phys[pi], PKTSIZE, DMA_FROM_DEVICE);
+	net_receive(edev, priv->rx_pkg[pi], len);
+	dma_sync_single_for_device(priv->dev, priv->rx_pkg_phys[pi], PKTSIZE, DMA_FROM_DEVICE);
+
+	/* BD clean up and advance to next in ring */
+	memset(&priv->enetc_rxbd[pi], 0, sizeof(union enetc_rx_bd));
+	priv->enetc_rxbd[pi].w.addr = priv->rx_pkg_phys[pi];
+	rxr->next_prod_idx = (pi + 1) % rxr->bd_count;
+	ci = (ci + 1) % rxr->bd_count;
+	rxr->next_cons_idx = ci;
+	dmb();
+	/* free up the slot in the ring for HW */
+	enetc_write_reg(rxr->cons_idx, ci);
+
+	return 0;
+}
+
+static int enetc_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+{
+	struct device *dev = &pdev->dev;
+	struct enetc_priv *priv;
+	struct eth_device *edev;
+
+	pci_enable_device(pdev);
+	pci_set_master(pdev);
+
+	priv = xzalloc(sizeof(*priv));
+	priv->dev = dev;
+
+	priv->enetc_txbd = dma_alloc_coherent(sizeof(struct enetc_tx_bd) * ENETC_BD_CNT,
+					      &priv->enetc_txbd_phys);
+	priv->enetc_rxbd = dma_alloc_coherent(sizeof(union enetc_rx_bd) * ENETC_BD_CNT,
+					      &priv->enetc_rxbd_phys);
+
+	if (!priv->enetc_txbd || !priv->enetc_rxbd)
+		return -ENOMEM;
+
+	/* initialize register */
+	priv->regs_base = pci_iomap(pdev, 0);
+	if (!priv->regs_base) {
+		dev_err(dev, "failed to map BAR0\n");
+		return -EINVAL;
+	}
+
+	edev = &priv->edev;
+	dev->priv = priv;
+	edev->priv = priv;
+	edev->open = enetc_start;
+	edev->send = enetc_send;
+	edev->recv = enetc_recv;
+	edev->halt = enetc_stop;
+	edev->get_ethaddr = enetc_get_hwaddr;
+
+	if (of_machine_is_compatible("fsl,ls1028a"))
+		edev->set_ethaddr = enetc_ls1028a_write_hwaddr;
+	else
+		edev->set_ethaddr = enetc_write_hwaddr;
+
+	edev->parent = dev;
+
+	priv->port_regs = priv->regs_base + ENETC_PORT_REGS_OFF;
+
+	enetc_start_pcs(&priv->edev);
+
+	return eth_register(edev);
+}
+
+static void enetc_remove(struct pci_dev *pdev)
+{
+	struct enetc_priv *priv = pdev->dev.priv;
+
+	enetc_stop(&priv->edev);
+}
+
+static DEFINE_PCI_DEVICE_TABLE(enetc_pci_tbl) = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, PCI_DEVICE_ID_ENETC_ETH) },
+        { },
+};
+
+static struct pci_driver enetc_eth_driver = {
+        .name = "fsl_enetc",
+        .id_table = enetc_pci_tbl,
+        .probe = enetc_probe,
+        .remove = enetc_remove,
+};
+device_pci_driver(enetc_eth_driver);
diff --git a/drivers/net/fsl_enetc.h b/drivers/net/fsl_enetc.h
new file mode 100644
index 0000000000..dc59325ae7
--- /dev/null
+++ b/drivers/net/fsl_enetc.h
@@ -0,0 +1,252 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * ENETC ethernet controller driver
+ * Copyright 2017-2021 NXP
+ */
+
+#ifndef _ENETC_H
+#define _ENETC_H
+
+#include <linux/bitops.h>
+
+/* PCI function IDs */
+#define PCI_DEVICE_ID_ENETC_ETH		0xE100
+#define PCI_DEVICE_ID_ENETC_MDIO	0xEE01
+
+/* ENETC Ethernet controller registers */
+/* Station interface register offsets */
+#define ENETC_SIMR		0x000
+#define  ENETC_SIMR_EN		BIT(31)
+#define ENETC_SICAR0		0x040
+/* write cache cfg: snoop, no allocate, data & BD coherent */
+#define  ENETC_SICAR_WR_CFG	0x6767
+/* read cache cfg: coherent copy, look up, don't alloc in cache */
+#define  ENETC_SICAR_RD_CFG	0x27270000
+#define ENETC_SIROCT		0x300
+#define ENETC_SIRFRM		0x308
+#define ENETC_SITOCT		0x320
+#define ENETC_SITFRM		0x328
+
+/* Rx/Tx Buffer Descriptor Ring registers */
+enum enetc_bdr_type {TX, RX};
+#define ENETC_BDR(type, n, off)	(0x8000 + (type) * 0x100 + (n) * 0x200 + (off))
+#define ENETC_BDR_IDX_MASK	0xffff
+
+/* Rx BDR reg offsets */
+#define ENETC_RBMR		0x00
+#define  ENETC_RBMR_EN		BIT(31)
+#define ENETC_RBBSR		0x08
+/* initial consumer index for Rx BDR */
+#define ENETC_RBCIR		0x0c
+#define ENETC_RBBAR0		0x10
+#define ENETC_RBBAR1		0x14
+#define ENETC_RBPIR		0x18
+#define ENETC_RBLENR		0x20
+
+/* Tx BDR reg offsets */
+#define ENETC_TBMR		0x00
+#define  ENETC_TBMR_EN		BIT(31)
+#define ENETC_TBBAR0		0x10
+#define ENETC_TBBAR1		0x14
+#define ENETC_TBPIR		0x18
+#define ENETC_TBCIR		0x1c
+#define ENETC_TBLENR		0x20
+
+/* Port registers offset */
+#define ENETC_PORT_REGS_OFF		0x10000
+
+/* Port registers */
+#define ENETC_PMR			0x0000
+#define  ENETC_PMR_SI0_EN		BIT(16)
+#define ENETC_PSIPMMR			0x0018
+#define ENETC_PSIPMAR0			0x0100
+#define ENETC_PSIPMAR1			0x0104
+#define ENETC_PCAPR0			0x0900
+#define  ENETC_PCAPRO_MDIO		BIT(11)
+#define ENETC_PSICFGR(n)		(0x0940 + (n) * 0x10)
+#define  ENETC_PSICFGR_SET_TXBDR(val)	((val) & 0xff)
+#define  ENETC_PSICFGR_SET_RXBDR(val)	(((val) & 0xff) << 16)
+/* MAC configuration */
+#define ENETC_PM_CC			0x8008
+#define  ENETC_PM_CC_DEFAULT		0x0810
+#define  ENETC_PM_CC_RX_TX_EN		0x8813
+#define ENETC_PM_MAXFRM			0x8014
+#define  ENETC_RX_MAXFRM_SIZE		PKTSIZE
+#define ENETC_PM_IMDIO_BASE		0x8030
+#define ENETC_PM_IF_MODE		0x8300
+#define  ENETC_PM_IF_MODE_RG		BIT(2)
+#define  ENETC_PM_IF_MODE_AN_ENA	BIT(15)
+#define  ENETC_PM_IFM_SSP_MASK		GENMASK(14, 13)
+#define  ENETC_PM_IFM_SSP_1000		(2 << 13)
+#define  ENETC_PM_IFM_SSP_100		(0 << 13)
+#define  ENETC_PM_IFM_SSP_10		(1 << 13)
+#define  ENETC_PM_IFM_FULL_DPX		BIT(12)
+#define  ENETC_PM_IF_IFMODE_MASK	GENMASK(1, 0)
+
+/* buffer descriptors count must be multiple of 8 and aligned to 128 bytes */
+#define ENETC_BD_CNT		128
+#define ENETC_BD_ALIGN		128
+
+/* single pair of Rx/Tx rings */
+#define ENETC_RX_BDR_CNT	1
+#define ENETC_TX_BDR_CNT	1
+#define ENETC_RX_BDR_ID		0
+#define ENETC_TX_BDR_ID		0
+
+/* Tx buffer descriptor */
+struct enetc_tx_bd {
+	__le64 addr;
+	__le16 buf_len;
+	__le16 frm_len;
+	__le16 err_csum;
+	__le16 flags;
+} __packed;
+
+#define ENETC_TXBD_FLAGS_F	BIT(15)
+#define ENETC_POLL_TRIES	32000
+
+/* Rx buffer descriptor */
+union enetc_rx_bd {
+	/* SW provided BD format */
+	struct {
+		__le64 addr;
+		u8 reserved[8];
+	} w;
+
+	/* ENETC returned BD format */
+	struct {
+		__le16 inet_csum;
+		__le16 parse_summary;
+		__le32 rss_hash;
+		__le16 buf_len;
+		__le16 vlan_opt;
+		union {
+			struct {
+				__le16 flags;
+				__le16 error;
+			} __packed;
+			__le32 lstatus;
+		};
+	} r;
+} __packed;
+
+#define ENETC_RXBD_STATUS_R(status)		(((status) >> 30) & 0x1)
+#define ENETC_RXBD_STATUS_F(status)		(((status) >> 31) & 0x1)
+#define ENETC_RXBD_STATUS_ERRORS(status)	(((status) >> 16) & 0xff)
+#define ENETC_RXBD_STATUS(flags)		((flags) << 16)
+
+/* Tx/Rx ring info */
+struct bd_ring {
+	void *cons_idx;
+	void *prod_idx;
+	/* next BD index to use */
+	int next_prod_idx;
+	int next_cons_idx;
+	int bd_count;
+};
+
+/* ENETC private structure */
+struct enetc_priv {
+	struct eth_device edev;
+	struct device *dev;
+
+	struct enetc_tx_bd *enetc_txbd;
+	union enetc_rx_bd *enetc_rxbd;
+
+	dma_addr_t rx_pkg_phys[ENETC_BD_CNT];
+	dma_addr_t enetc_txbd_phys;
+	dma_addr_t enetc_rxbd_phys;
+
+	void *rx_pkg[ENETC_BD_CNT];
+
+	void __iomem *regs_base; /* base ENETC registers */
+	void __iomem *port_regs; /* base ENETC port registers */
+
+	/* Rx/Tx buffer descriptor rings info */
+	struct bd_ring tx_bdr;
+	struct bd_ring rx_bdr;
+
+	int uclass_id;
+	struct phy_device *phy;
+};
+
+/* register accessors */
+#define enetc_read_reg(x)	readl((x))
+#define enetc_write_reg(x, val)	writel((val), (x))
+#define enetc_read(priv, off)	enetc_read_reg((priv)->regs_base + (off))
+#define enetc_write(priv, off, v) \
+			enetc_write_reg((priv)->regs_base + (off), v)
+
+/* port register accessors */
+#define enetc_port_regs(priv, off) ((priv)->port_regs + (off))
+#define enetc_read_port(priv, off) \
+			enetc_read_reg(enetc_port_regs((priv), (off)))
+#define enetc_write_port(priv, off, v) \
+			enetc_write_reg(enetc_port_regs((priv), (off)), v)
+
+/* BDR register accessors, see ENETC_BDR() */
+#define enetc_bdr_read(priv, t, n, off) \
+			enetc_read(priv, ENETC_BDR(t, n, off))
+#define enetc_bdr_write(priv, t, n, off, val) \
+			enetc_write(priv, ENETC_BDR(t, n, off), val)
+
+/* PCS / internal SoC PHY ID, it defaults to 0 on all interfaces */
+#define ENETC_PCS_PHY_ADDR	0
+
+/* PCS registers */
+#define ENETC_PCS_CR			0x00
+#define  ENETC_PCS_CR_RESET_AN		0x1200
+#define  ENETC_PCS_CR_DEF_VAL		0x0140
+#define  ENETC_PCS_CR_RST		BIT(15)
+#define ENETC_PCS_DEV_ABILITY		0x04
+#define  ENETC_PCS_DEV_ABILITY_SGMII	0x4001
+#define  ENETC_PCS_DEV_ABILITY_SXGMII	0x5001
+#define ENETC_PCS_LINK_TIMER1		0x12
+#define  ENETC_PCS_LINK_TIMER1_VAL	0x06a0
+#define ENETC_PCS_LINK_TIMER2		0x13
+#define  ENETC_PCS_LINK_TIMER2_VAL	0x0003
+#define ENETC_PCS_IF_MODE		0x14
+#define  ENETC_PCS_IF_MODE_SGMII	BIT(0)
+#define  ENETC_PCS_IF_MODE_SGMII_AN	BIT(1)
+#define  ENETC_PCS_IF_MODE_SPEED_1G	BIT(3)
+
+/* PCS replicator block for USXGMII */
+#define ENETC_PCS_DEVAD_REPL		0x1f
+
+#define ENETC_PCS_REPL_LINK_TIMER_1	0x12
+#define  ENETC_PCS_REPL_LINK_TIMER_1_DEF	0x0003
+#define ENETC_PCS_REPL_LINK_TIMER_2	0x13
+#define  ENETC_PCS_REPL_LINK_TIMER_2_DEF	0x06a0
+
+/* ENETC external MDIO registers */
+#define ENETC_MDIO_BASE		0x1c00
+#define ENETC_MDIO_CFG		0x00
+#define  ENETC_EMDIO_CFG_C22	0x00809508
+#define  ENETC_EMDIO_CFG_C45	0x00809548
+#define  ENETC_EMDIO_CFG_RD_ER	BIT(1)
+#define  ENETC_EMDIO_CFG_BSY	BIT(0)
+#define ENETC_MDIO_CTL		0x04
+#define  ENETC_MDIO_CTL_READ	BIT(15)
+#define ENETC_MDIO_DATA		0x08
+#define ENETC_MDIO_STAT		0x0c
+
+#define ENETC_MDIO_READ_ERR	0xffff
+
+struct enetc_mdio_priv {
+	void __iomem *regs_base;
+	struct mii_bus bus;
+};
+
+/*
+ * these functions are implemented by ENETC_MDIO and are re-used by ENETC driver
+ * to drive serdes / internal SoC PHYs
+ */
+int enetc_mdio_read_priv(struct enetc_mdio_priv *priv, int addr, int devad,
+			 int reg);
+int enetc_mdio_write_priv(struct enetc_mdio_priv *priv, int addr, int devad,
+			  int reg, u16 val);
+
+/* sets up primary MAC addresses in DT/IERB */
+void fdt_fixup_enetc_mac(void *blob);
+
+#endif /* _ENETC_H */
diff --git a/drivers/net/fsl_enetc_mdio.c b/drivers/net/fsl_enetc_mdio.c
new file mode 100644
index 0000000000..773d4afd52
--- /dev/null
+++ b/drivers/net/fsl_enetc_mdio.c
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * ENETC ethernet controller driver
+ * Copyright 2019 NXP
+ */
+
+#include <common.h>
+#include <net.h>
+#include <linux/phy.h>
+#include <linux/pci.h>
+#include <io.h>
+#include <linux/mdio.h>
+
+#include "fsl_enetc.h"
+
+static void enetc_mdio_wait_bsy(struct enetc_mdio_priv *priv)
+{
+	int to = 10000;
+
+	while ((enetc_read(priv, ENETC_MDIO_CFG) & ENETC_EMDIO_CFG_BSY) &&
+	       --to)
+		cpu_relax();
+}
+
+int enetc_mdio_read_priv(struct enetc_mdio_priv *priv, int addr, int devad,
+			 int reg)
+{
+	if (devad == MDIO_DEVAD_NONE)
+		enetc_write(priv, ENETC_MDIO_CFG, ENETC_EMDIO_CFG_C22);
+	else
+		enetc_write(priv, ENETC_MDIO_CFG, ENETC_EMDIO_CFG_C45);
+	enetc_mdio_wait_bsy(priv);
+
+	if (devad == MDIO_DEVAD_NONE) {
+		enetc_write(priv, ENETC_MDIO_CTL, ENETC_MDIO_CTL_READ |
+			    (addr << 5) | reg);
+	} else {
+		enetc_write(priv, ENETC_MDIO_CTL, (addr << 5) + devad);
+		enetc_mdio_wait_bsy(priv);
+
+		enetc_write(priv, ENETC_MDIO_STAT, reg);
+		enetc_mdio_wait_bsy(priv);
+
+		enetc_write(priv, ENETC_MDIO_CTL, ENETC_MDIO_CTL_READ |
+			    (addr << 5) | devad);
+	}
+
+	enetc_mdio_wait_bsy(priv);
+	if (enetc_read(priv, ENETC_MDIO_CFG) & ENETC_EMDIO_CFG_RD_ER)
+		return ENETC_MDIO_READ_ERR;
+
+	return enetc_read(priv, ENETC_MDIO_DATA);
+}
+
+int enetc_mdio_write_priv(struct enetc_mdio_priv *priv, int addr, int devad,
+			  int reg, u16 val)
+{
+	if (devad == MDIO_DEVAD_NONE)
+		enetc_write(priv, ENETC_MDIO_CFG, ENETC_EMDIO_CFG_C22);
+	else
+		enetc_write(priv, ENETC_MDIO_CFG, ENETC_EMDIO_CFG_C45);
+	enetc_mdio_wait_bsy(priv);
+
+	if (devad != MDIO_DEVAD_NONE) {
+		enetc_write(priv, ENETC_MDIO_CTL, (addr << 5) + devad);
+		enetc_write(priv, ENETC_MDIO_STAT, reg);
+	} else {
+		enetc_write(priv, ENETC_MDIO_CTL, (addr << 5) + reg);
+	}
+	enetc_mdio_wait_bsy(priv);
+
+	enetc_write(priv, ENETC_MDIO_DATA, val);
+	enetc_mdio_wait_bsy(priv);
+
+	return 0;
+}
+
+static int enetc_mdio_read(struct mii_bus *bus, int addr, int reg)
+{
+	struct enetc_mdio_priv *priv = bus->priv;
+
+	return enetc_mdio_read_priv(priv, addr, MDIO_DEVAD_NONE, reg);
+}
+
+static int enetc_mdio_write(struct mii_bus *bus, int addr, int reg, u16 val)
+{
+	struct enetc_mdio_priv *priv = bus->priv;
+
+	return enetc_mdio_write_priv(priv, addr, MDIO_DEVAD_NONE, reg, val);
+}
+
+static int enetc_mdio_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+{
+	struct enetc_mdio_priv *priv;
+
+	pci_enable_device(pdev);
+	pci_set_master(pdev);
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->regs_base = pci_iomap(pdev, 0);
+	if (!priv->regs_base) {
+		dev_err(&pdev->dev, "failed to map BAR0\n");
+		return -EINVAL;
+	}
+
+	priv->regs_base += ENETC_MDIO_BASE;
+
+	priv->bus.read = enetc_mdio_read;
+	priv->bus.write = enetc_mdio_write;
+	priv->bus.parent = &pdev->dev;
+	priv->bus.priv = priv;
+
+	return mdiobus_register(&priv->bus);
+}
+
+static DEFINE_PCI_DEVICE_TABLE(enetc_mdio_pci_tbl) = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, PCI_DEVICE_ID_ENETC_MDIO) },
+        { },
+};
+
+static struct pci_driver enetc_mdio_driver = {
+        .name = "fsl_enetc_mdio",
+        .id_table = enetc_mdio_pci_tbl,
+        .probe = enetc_mdio_probe,
+};
+device_pci_driver(enetc_mdio_driver);
-- 
2.39.2



