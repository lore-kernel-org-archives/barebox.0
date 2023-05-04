Delivery-date: Thu, 04 May 2023 10:19:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBQ-004LNi-M6
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBN-0001zw-NM
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GC/D5fuyLT0XzjUO6CAPEDOz6IB8BjBT4ZxhABiRL7o=; b=3YNlt5ZIeYiKTN4P3OEFv9nJ/q
	p00P8PIowutEFve6+oah0WHRG+qHyc1M3E+fAqiuGsizoXzzL+4rHHdfv0HL1agFpuwu81ZIQv894
	goP25eYFYVb/q2naPsC3NsXg8FHm147ki+0tpngKON+cJHr50zsDU1EluynmcKd/nXpn/dMG0muU1
	flyPlQhBngdmYElc9Q70KuILJEfoxYl2+iMDczoOBunfq/sP7oaa8UAd3piojCkuIIHl8Q5q5qmsu
	hiDY8+XLbyacc3IvaxcSt8toAojiVm7CFp16+0Ccsdfghp6Io1rzPfajvDa8O8sboVBQNPbW6EY4X
	xVoe0Qkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUA5-0074ZK-2T;
	Thu, 04 May 2023 08:18:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puU9w-0074Sj-1v
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:17:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0001Fp-5H; Thu, 04 May 2023 10:17:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9s-0011Ef-Bl; Thu, 04 May 2023 10:17:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9r-001Hbe-7W; Thu, 04 May 2023 10:17:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:39 +0200
Message-Id: <20230504081745.305841-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_011752_806675_BF066628 
X-CRM114-Status: GOOD (  26.13  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/18] pci: designware: add rockchip support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add support for the PCIe controller found on Rockchip RK3568 and RK3588
SoCs. Based on Linux-6.3-rc7.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig |   1 +
 drivers/pci/Kconfig            |   7 +
 drivers/pci/Makefile           |   1 +
 drivers/pci/pcie-dw-rockchip.c | 299 +++++++++++++++++++++++++++++++++
 4 files changed, 308 insertions(+)
 create mode 100644 drivers/pci/pcie-dw-rockchip.c

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 0bce83ecee..6f32a440a1 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -45,6 +45,7 @@ config ARCH_RK3399PRO
 config ARCH_RK3568
 	bool
 	select ARCH_ROCKCHIP_V8
+	select HW_HAS_PCI
 
 comment "select Rockchip boards:"
 
diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
index e7ce6a8c45..32a9e831b9 100644
--- a/drivers/pci/Kconfig
+++ b/drivers/pci/Kconfig
@@ -55,6 +55,13 @@ config PCI_LAYERSCAPE
 	select OF_PCI
 	select PCI
 
+config PCI_ROCKCHIP
+	bool "Rockchip PCIe controller"
+	depends on ARCH_ROCKCHIP
+	select PCIE_DW
+	select OF_PCI
+	select PCI
+
 config PCI_EFI
 	bool "EFI PCI protocol"
 	depends on EFI_BOOTUP
diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index deed79601d..9249bffecb 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -13,3 +13,4 @@ obj-$(CONFIG_PCI_IMX6) += pci-imx6.o
 obj-$(CONFIG_PCI_LAYERSCAPE) += pci-layerscape.o
 obj-$(CONFIG_PCI_EFI) += pci-efi.o
 obj-$(CONFIG_PCI_ECAM_GENERIC) += pci-ecam-generic.o
+obj-$(CONFIG_PCI_ROCKCHIP) += pcie-dw-rockchip.o
diff --git a/drivers/pci/pcie-dw-rockchip.c b/drivers/pci/pcie-dw-rockchip.c
new file mode 100644
index 0000000000..e82047b388
--- /dev/null
+++ b/drivers/pci/pcie-dw-rockchip.c
@@ -0,0 +1,299 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCIe host controller driver for Rockchip SoCs.
+ *
+ * Copyright (C) 2021 Rockchip Electronics Co., Ltd.
+ *		http://www.rock-chips.com
+ *
+ * Author: Simon Xue <xxm@rock-chips.com>
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <abort.h>
+#include <malloc.h>
+#include <io.h>
+#include <init.h>
+#include <gpio.h>
+#include <asm/mmu.h>
+#include <of_gpio.h>
+#include <of_device.h>
+#include <linux/clk.h>
+#include <linux/kernel.h>
+#include <of_address.h>
+#include <of_pci.h>
+#include <gpiod.h>
+#include <linux/pci.h>
+#include <linux/phy/phy.h>
+#include <linux/reset.h>
+#include <linux/sizes.h>
+#include <linux/bitfield.h>
+
+#include "pcie-designware.h"
+
+/*
+ * The upper 16 bits of PCIE_CLIENT_CONFIG are a write
+ * mask for the lower 16 bits.
+ */
+#define HIWORD_UPDATE(mask, val) (((mask) << 16) | (val))
+#define HIWORD_UPDATE_BIT(val)	HIWORD_UPDATE(val, val)
+#define HIWORD_DISABLE_BIT(val)	HIWORD_UPDATE(val, ~val)
+
+#define PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
+#define PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
+#define PCIE_SMLH_LINKUP		BIT(16)
+#define PCIE_RDLH_LINKUP		BIT(17)
+#define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
+#define PCIE_L0S_ENTRY			0x11
+#define PCIE_CLIENT_GENERAL_CONTROL	0x0
+#define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
+#define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
+#define PCIE_CLIENT_GENERAL_DEBUG	0x104
+#define PCIE_CLIENT_HOT_RESET_CTRL	0x180
+#define PCIE_CLIENT_LTSSM_STATUS	0x300
+#define PCIE_LTSSM_ENABLE_ENHANCE	BIT(4)
+#define PCIE_LTSSM_STATUS_MASK		GENMASK(5, 0)
+
+struct rockchip_pcie {
+	struct dw_pcie			pci;
+	void __iomem			*apb_base;
+	struct phy			*phy;
+	struct clk_bulk_data		*clks;
+	unsigned int			clk_cnt;
+	struct reset_control		*rst;
+	int				rst_gpio;
+	struct regulator                *vpcie3v3;
+	struct irq_domain		*irq_domain;
+};
+
+static inline struct rockchip_pcie *to_rockchip_pcie(struct dw_pcie *dw)
+{
+	return container_of(dw, struct rockchip_pcie, pci);
+}
+
+static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
+					     u32 reg)
+{
+	return readl_relaxed(rockchip->apb_base + reg);
+}
+
+static void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip,
+						u32 val, u32 reg)
+{
+	writel_relaxed(val, rockchip->apb_base + reg);
+}
+
+static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
+{
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
+				 PCIE_CLIENT_GENERAL_CONTROL);
+}
+
+static int rockchip_pcie_link_up(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	u32 val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
+
+	if ((val & PCIE_LINKUP) == PCIE_LINKUP &&
+	    (val & PCIE_LTSSM_STATUS_MASK) == PCIE_L0S_ENTRY)
+		return 1;
+
+	return 0;
+}
+
+static int rockchip_pcie_start_link(struct dw_pcie *pci)
+{
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+
+	/* Reset device */
+	gpio_set_value(rockchip->rst_gpio, 0);
+
+	rockchip_pcie_enable_ltssm(rockchip);
+
+	/*
+	 * PCIe requires the refclk to be stable for 100µs prior to releasing
+	 * PERST. See table 2-4 in section 2.6.2 AC Specifications of the PCI
+	 * Express Card Electromechanical Specification, 1.1. However, we don't
+	 * know if the refclk is coming from RC's PHY or external OSC. If it's
+	 * from RC, so enabling LTSSM is the just right place to release #PERST.
+	 * We need more extra time as before, rather than setting just
+	 * 100us as we don't know how long should the device need to reset.
+	 */
+	mdelay(100);
+	gpio_set_value(rockchip->rst_gpio, 1);
+
+	return 0;
+}
+
+static int rockchip_pcie_host_init(struct pcie_port *pp)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
+	u32 val = HIWORD_UPDATE_BIT(PCIE_LTSSM_ENABLE_ENHANCE);
+
+	/* LTSSM enable control mode */
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+
+	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_RC_MODE,
+				 PCIE_CLIENT_GENERAL_CONTROL);
+
+	dw_pcie_setup_rc(pp);
+	rockchip_pcie_start_link(pci);
+
+	return 0;
+}
+
+static const struct dw_pcie_host_ops rockchip_pcie_host_ops = {
+	.host_init = rockchip_pcie_host_init,
+};
+
+static int rockchip_pcie_clk_init(struct rockchip_pcie *rockchip)
+{
+	struct device *dev = rockchip->pci.dev;
+	int ret;
+
+	ret = clk_bulk_get_all(dev, &rockchip->clks);
+	if (ret < 0)
+		return ret;
+
+	rockchip->clk_cnt = ret;
+
+	return clk_bulk_enable(rockchip->clk_cnt, rockchip->clks);
+}
+
+static int rockchip_pcie_resource_get(struct device *dev,
+				      struct rockchip_pcie *rockchip)
+{
+	struct resource *r;
+
+	r = dev_request_mem_resource_by_name(dev, "apb");
+	if (IS_ERR(r))
+		return PTR_ERR(r);
+	rockchip->apb_base = IOMEM(r->start);
+
+
+	r = dev_request_mem_resource_by_name(dev, "dbi");
+	if (IS_ERR(r))
+		return PTR_ERR(r);
+	rockchip->pci.dbi_base = IOMEM(r->start);
+
+	rockchip->rst_gpio = gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
+	if (rockchip->rst_gpio < 0 && rockchip->rst_gpio != -ENOENT)
+		return rockchip->rst_gpio;
+
+	rockchip->rst = reset_control_array_get(dev);
+	if (IS_ERR(rockchip->rst))
+		return dev_err_probe(dev, PTR_ERR(rockchip->rst),
+				     "failed to get reset lines\n");
+
+	return 0;
+}
+
+static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
+{
+	struct device *dev = rockchip->pci.dev;
+	int ret;
+
+	rockchip->phy = phy_get(dev, "pcie-phy");
+	if (IS_ERR(rockchip->phy))
+		return dev_err_probe(dev, PTR_ERR(rockchip->phy),
+				     "missing PHY\n");
+
+	ret = phy_init(rockchip->phy);
+	if (ret < 0)
+		return ret;
+
+	ret = phy_power_on(rockchip->phy);
+	if (ret)
+		phy_exit(rockchip->phy);
+
+	return ret;
+}
+
+static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
+{
+	phy_exit(rockchip->phy);
+	phy_power_off(rockchip->phy);
+}
+
+static const struct dw_pcie_ops dw_pcie_ops = {
+	.link_up = rockchip_pcie_link_up,
+};
+
+static int rockchip_pcie_probe(struct device *dev)
+{
+	struct rockchip_pcie *rockchip;
+	struct pcie_port *pp;
+	int ret;
+
+	rockchip = xzalloc(sizeof(*rockchip));
+	if (!rockchip)
+		return -ENOMEM;
+
+	rockchip->pci.dev = dev;
+	rockchip->pci.ops = &dw_pcie_ops;
+
+	pp = &rockchip->pci.pp;
+	pp->ops = &rockchip_pcie_host_ops;
+
+	ret = rockchip_pcie_resource_get(dev, rockchip);
+	if (ret)
+		return ret;
+
+	ret = reset_control_assert(rockchip->rst);
+	if (ret)
+		return ret;
+
+	/* DON'T MOVE ME: must be enable before PHY init */
+	rockchip->vpcie3v3 = regulator_get(dev, "vpcie3v3");
+	if (IS_ERR(rockchip->vpcie3v3)) {
+		if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
+			return dev_err_probe(dev, PTR_ERR(rockchip->vpcie3v3),
+					"failed to get vpcie3v3 regulator\n");
+		rockchip->vpcie3v3 = NULL;
+	} else {
+		ret = regulator_enable(rockchip->vpcie3v3);
+		if (ret) {
+			dev_err(dev, "failed to enable vpcie3v3 regulator\n");
+			return ret;
+		}
+	}
+
+	ret = rockchip_pcie_phy_init(rockchip);
+	if (ret)
+		goto disable_regulator;
+
+	ret = reset_control_deassert(rockchip->rst);
+	if (ret)
+		goto deinit_phy;
+
+	ret = rockchip_pcie_clk_init(rockchip);
+	if (ret)
+		goto deinit_phy;
+
+	ret = dw_pcie_host_init(pp);
+	if (!ret)
+		return 0;
+
+	clk_bulk_disable(rockchip->clk_cnt, rockchip->clks);
+deinit_phy:
+	rockchip_pcie_phy_deinit(rockchip);
+disable_regulator:
+	if (rockchip->vpcie3v3)
+		regulator_disable(rockchip->vpcie3v3);
+
+	return ret;
+}
+
+static const struct of_device_id rockchip_pcie_of_match[] = {
+	{ .compatible = "rockchip,rk3568-pcie", },
+	{ .compatible = "rockchip,rk3588-pcie", },
+	{},
+};
+
+static struct driver rockchip_pcie_driver = {
+        .name = "rockchip-dw-pcie",
+        .of_compatible = DRV_OF_COMPAT(rockchip_pcie_of_match),
+        .probe = rockchip_pcie_probe,
+};
+device_platform_driver(rockchip_pcie_driver);
-- 
2.39.2



