Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCkA-0004G7-AQ
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 21:40:12 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 28 Oct 2019 22:39:41 +0100
Message-Id: <20191028213943.32071-5-ahmad@a3f.at>
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
Subject: [PATCH v2 4/6] net: eqos: extend Designware Ethernet QoS for Tegra
 186 support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The U-Boot dwc_eth_qos driver ported in the previous commit had support
for both the Tegra 186/194 and STM32MP variants of the EQOS IP.

The barebox Tegra supported doesn't include the 186, but as the driver
was nevertheless ported along with the rest, lets include it in the
source tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/Kconfig               |   6 +
 drivers/net/Makefile              |   1 +
 drivers/net/designware_tegra186.c | 347 ++++++++++++++++++++++++++++++
 3 files changed, 354 insertions(+)
 create mode 100644 drivers/net/designware_tegra186.c

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 5b66fe84ebf6..62e522a302ad 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -104,6 +104,12 @@ config DRIVER_NET_DESIGNWARE_STM32
 	help
 	  This option enables support for the ethernet MAC on the STM32MP platforms.
 
+config DRIVER_NET_DESIGNWARE_TEGRA186
+	bool "Designware Universal MAC ethernet driver for Tegra 186 platforms"
+	select RESET_CONTROLLER
+	help
+	  This option enables support for the ethernet MAC on the Tegra186 & 194.
+
 endif
 
 config DRIVER_NET_DM9K
diff --git a/drivers/net/Makefile b/drivers/net/Makefile
index 7ecf4e2851ba..656d45a868a5 100644
--- a/drivers/net/Makefile
+++ b/drivers/net/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_DRIVER_NET_DESIGNWARE_GENERIC) += designware_generic.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA) += designware_socfpga.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_EQOS) += designware_eqos.o
 obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STM32) += designware_stm32.o
+obj-$(CONFIG_DRIVER_NET_DESIGNWARE_TEGRA186) += designware_tegra186.o
 obj-$(CONFIG_DRIVER_NET_DM9K)		+= dm9k.o
 obj-$(CONFIG_DRIVER_NET_E1000)		+= e1000/regio.o e1000/main.o e1000/eeprom.o
 obj-$(CONFIG_DRIVER_NET_ENC28J60)	+= enc28j60.o
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
new file mode 100644
index 000000000000..58484d4095dc
--- /dev/null
+++ b/drivers/net/designware_tegra186.c
@@ -0,0 +1,347 @@
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
+#include <gpio.h>
+#include <of_gpio.h>
+#include <linux/clk.h>
+#include <net.h>
+#include <linux/reset.h>
+
+#include "designware_eqos.h"
+
+/* These registers are Tegra186-specific */
+#define EQOS_TEGRA186_REGS_BASE 0x8800
+struct eqos_tegra186_regs {
+	uint32_t sdmemcomppadctrl;			/* 0x8800 */
+	uint32_t auto_cal_config;			/* 0x8804 */
+	uint32_t unused_8808;				/* 0x8808 */
+	uint32_t auto_cal_status;			/* 0x880c */
+};
+
+#define EQOS_SDMEMCOMPPADCTRL_PAD_E_INPUT_OR_E_PWRD	BIT(31)
+
+#define EQOS_AUTO_CAL_CONFIG_START			BIT(31)
+#define EQOS_AUTO_CAL_CONFIG_ENABLE			BIT(29)
+
+#define EQOS_AUTO_CAL_STATUS_ACTIVE			BIT(31)
+
+struct eqos_tegra186 {
+	struct clk_bulk_data *clks;
+	int num_clks;
+	struct reset_control	*rst;
+	struct eqos_tegra186_regs __iomem *tegra186_regs;
+	int phy_reset_gpio;
+};
+
+static inline struct eqos_tegra186 *to_tegra186(struct eqos *eqos)
+{
+	return eqos->priv;
+}
+
+enum { CLK_SLAVE_BUS, CLK_MASTER_BUS, CLK_RX, CLK_PTP_REF, CLK_TX };
+static const struct clk_bulk_data tegra186_clks[] = {
+	[CLK_SLAVE_BUS]  = { .id = "slave_bus" },
+	[CLK_MASTER_BUS] = { .id = "master_bus" },
+	[CLK_RX]         = { .id = "rx" },
+	[CLK_PTP_REF]    = { .id = "ptp_ref" },
+	[CLK_TX]         = { .id = "tx" },
+};
+
+static int eqos_clks_set_rate_tegra186(struct eqos_tegra186 *priv)
+{
+	return clk_set_rate(priv->clks[CLK_PTP_REF].clk, 125 * 1000 * 1000);
+}
+
+static int eqos_reset_tegra186(struct eqos_tegra186 *priv, bool reset)
+{
+	int ret;
+
+	if (reset) {
+		reset_control_assert(priv->rst);
+		gpio_set_value(priv->phy_reset_gpio, 1);
+		return 0;
+	}
+
+	gpio_set_value(priv->phy_reset_gpio, 1);
+
+	udelay(2);
+
+	gpio_set_value(priv->phy_reset_gpio, 0);
+
+	ret = reset_control_assert(priv->rst);
+	if (ret < 0)
+		return ret;
+
+	udelay(2);
+
+	return reset_control_deassert(priv->rst);
+}
+
+static int eqos_calibrate_pads_tegra186(struct eqos *eqos)
+{
+	struct eqos_tegra186 *priv = to_tegra186(eqos);
+	u32 active;
+	int ret;
+
+	setbits_le32(&priv->tegra186_regs->sdmemcomppadctrl,
+		     EQOS_SDMEMCOMPPADCTRL_PAD_E_INPUT_OR_E_PWRD);
+
+	udelay(1);
+
+	setbits_le32(&priv->tegra186_regs->auto_cal_config,
+		     EQOS_AUTO_CAL_CONFIG_START | EQOS_AUTO_CAL_CONFIG_ENABLE);
+
+	ret = readl_poll_timeout(&priv->tegra186_regs->auto_cal_status, active,
+				 active & EQOS_AUTO_CAL_STATUS_ACTIVE,
+				 10000);
+	if (ret) {
+		eqos_err(eqos, "calibrate didn't start\n");
+		goto failed;
+	}
+
+	ret = readl_poll_timeout(&priv->tegra186_regs->auto_cal_status, active,
+				 !(active & EQOS_AUTO_CAL_STATUS_ACTIVE),
+				 10000);
+	if (ret) {
+		eqos_err(eqos, "calibrate didn't finish\n");
+		goto failed;
+	}
+
+failed:
+	clrbits_le32(&priv->tegra186_regs->sdmemcomppadctrl,
+		     EQOS_SDMEMCOMPPADCTRL_PAD_E_INPUT_OR_E_PWRD);
+
+	return ret;
+}
+
+static int eqos_calibrate_link_tegra186(struct eqos *eqos, unsigned speed)
+{
+	struct eqos_tegra186 *priv = to_tegra186(eqos);
+	int ret = 0;
+	unsigned long rate;
+	bool calibrate;
+
+	switch (speed) {
+	case SPEED_1000:
+		rate = 125 * 1000 * 1000;
+		calibrate = true;
+		break;
+	case SPEED_100:
+		rate = 25 * 1000 * 1000;
+		calibrate = true;
+		break;
+	case SPEED_10:
+		rate = 2.5 * 1000 * 1000;
+		calibrate = false;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (calibrate) {
+		ret = eqos_calibrate_pads_tegra186(eqos);
+		if (ret)
+			return ret;
+	} else {
+		clrbits_le32(&priv->tegra186_regs->auto_cal_config,
+			     EQOS_AUTO_CAL_CONFIG_ENABLE);
+	}
+
+	ret = clk_set_rate(priv->clks[CLK_TX].clk, rate);
+	if (ret < 0) {
+		eqos_err(eqos, "clk_set_rate(tx_clk, %lu) failed: %d\n", rate, ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static unsigned long eqos_get_csr_clk_rate_tegra186(struct eqos *eqos)
+{
+	return clk_get_rate(to_tegra186(eqos)->clks[CLK_SLAVE_BUS].clk);
+}
+
+static int eqos_set_ethaddr_tegra186(struct eth_device *edev, const unsigned char *mac)
+{
+	struct eqos *eqos = edev->priv;
+
+	/*
+	 * This function may be called before start() or after stop(). At that
+	 * time, on at least some configurations of the EQoS HW, all clocks to
+	 * the EQoS HW block will be stopped, and a reset signal applied. If
+	 * any register access is attempted in this state, bus timeouts or CPU
+	 * hangs may occur. This check prevents that.
+	 *
+	 * A simple solution to this problem would be to not implement
+	 * write_hwaddr(), since start() always writes the MAC address into HW
+	 * anyway. However, it is desirable to implement write_hwaddr() to
+	 * support the case of SW that runs subsequent to U-Boot which expects
+	 * the MAC address to already be programmed into the EQoS registers,
+	 * which must happen irrespective of whether the U-Boot user (or
+	 * scripts) actually made use of the EQoS device, and hence
+	 * irrespective of whether start() was ever called.
+	 *
+	 * Note that this requirement by subsequent SW is not valid for
+	 * Tegra186, and is likely not valid for any non-PCI instantiation of
+	 * the EQoS HW block. This function is implemented solely as
+	 * future-proofing with the expectation the driver will eventually be
+	 * ported to some system where the expectation above is true.
+	 */
+
+	if (!eqos->started) {
+		memcpy(eqos->macaddr, mac, 6);
+		return 0;
+	}
+
+	return eqos_set_ethaddr(edev, mac);
+}
+
+static int eqos_init_tegra186(struct device_d *dev, struct eqos *eqos)
+{
+	struct eqos_tegra186 *priv = to_tegra186(eqos);
+	int phy_reset;
+	int ret;
+
+	priv->tegra186_regs = IOMEM(eqos->regs + EQOS_TEGRA186_REGS_BASE);
+
+	priv->rst = reset_control_get(dev, "eqos");
+	if (IS_ERR(priv->rst)) {
+		ret = PTR_ERR(priv->rst);
+		dev_err(dev, "reset_get_by_name(rst) failed: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
+	if (gpio_is_valid(phy_reset)) {
+		ret = gpio_request(phy_reset, "phy-reset");
+		if (ret)
+			goto release_res;
+
+		priv->phy_reset_gpio = phy_reset;
+	}
+
+	priv->clks = xmemdup(tegra186_clks, sizeof(tegra186_clks));
+	priv->num_clks = ARRAY_SIZE(tegra186_clks);
+
+	return 0;
+
+release_res:
+	reset_control_put(priv->rst);
+	return ret;
+}
+
+static int eqos_start_tegra186(struct eth_device *edev)
+{
+	struct eqos *eqos = edev->priv;
+	struct eqos_tegra186 *priv = to_tegra186(eqos);
+	int ret;
+
+	ret = clk_bulk_enable(priv->num_clks, priv->clks);
+	if (ret < 0) {
+		eqos_err(eqos, "clk_bulk_enable() failed: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	ret = eqos_clks_set_rate_tegra186(priv);
+	if (ret < 0) {
+		eqos_err(eqos, "clks_set_rate() failed: %s\n", strerror(-ret));
+		goto err;
+	}
+
+	eqos_reset_tegra186(priv, false);
+	if (ret < 0) {
+		eqos_err(eqos, "reset(0) failed: %s\n", strerror(-ret));
+		goto err_stop_clks;
+	}
+
+	udelay(10);
+
+	ret = eqos_start(edev);
+	if (ret)
+		goto err_stop_resets;
+
+	return 0;
+
+err_stop_resets:
+	eqos_reset_tegra186(priv, true);
+err_stop_clks:
+	clk_bulk_disable(priv->num_clks, priv->clks);
+err:
+	return ret;
+}
+
+
+static void eqos_stop_tegra186(struct eth_device *edev)
+{
+	struct eqos_tegra186 *priv = to_tegra186(edev->priv);
+
+	eqos_reset_tegra186(priv, true);
+
+	clk_bulk_disable(priv->num_clks, priv->clks);
+}
+
+static void eqos_adjust_link_tegra186(struct eth_device *edev)
+{
+	struct eqos *eqos = edev->priv;
+	unsigned speed = edev->phydev->speed;
+	int ret;
+
+	eqos_adjust_link(edev);
+
+	ret = eqos_calibrate_link_tegra186(eqos, speed);
+	if (ret < 0) {
+		eqos_err(eqos, "eqos_calibrate_link_tegra186() failed: %d\n", ret);
+		return;
+	}
+}
+
+static const struct eqos_ops tegra186_ops = {
+	.init = eqos_init_tegra186,
+	.get_ethaddr = eqos_get_ethaddr,
+	.set_ethaddr = eqos_set_ethaddr_tegra186,
+	.start = eqos_start_tegra186,
+	.stop = eqos_stop_tegra186,
+	.adjust_link = eqos_adjust_link_tegra186,
+	.get_csr_clk_rate = eqos_get_csr_clk_rate_tegra186,
+
+	.mdio_wait_us = 10,
+	.clk_csr = EQOS_MDIO_ADDR_CR_20_35,
+	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_DCB,
+};
+
+static int eqos_probe_tegra186(struct device_d *dev)
+{
+	return eqos_probe(dev, &tegra186_ops, xzalloc(sizeof(struct eqos_tegra186)));
+}
+
+static void eqos_remove_tegra186(struct device_d *dev)
+{
+	struct eqos_tegra186 *priv = to_tegra186(dev->priv);
+
+	eqos_remove(dev);
+
+	clk_bulk_put(priv->num_clks, priv->clks);
+
+	gpio_free(priv->phy_reset_gpio);
+	reset_control_put(priv->rst);
+}
+
+static const struct of_device_id eqos_tegra186_ids[] = {
+	{ .compatible = "nvidia,tegra186-eqos" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d eqos_tegra186_driver = {
+	.name = "eqos-tegra186",
+	.probe = eqos_probe_tegra186,
+	.remove	= eqos_remove_tegra186,
+	.of_compatible = DRV_OF_COMPAT(eqos_tegra186_ids),
+};
+device_platform_driver(eqos_tegra186_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
