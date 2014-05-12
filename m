Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjkJx-0004Ip-Jc
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:06:48 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id A6A5518B4279
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 09:04:58 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 09:07:54 +0200
Message-Id: <1399878486-16086-14-git-send-email-dev@lynxeye.de>
In-Reply-To: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
References: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 13/25] mci: tegra: apply pad autocalibration on T30
To: barebox@lists.infradead.org

Needed for SD cards connected to sdmmc1 or sdmmc3
to work properly.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/tegra-sdmmc.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 0ea0b5c..6345157 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -59,6 +59,14 @@
 #define TEGRA_SDMMC_INT_SIG_EN				0x038
 #define  TEGRA_SDMMC_INT_SIG_EN_XFER_COMPLETE		(1 << 1)
 
+#define TEGRA_SDMMC_SDMEMCOMPPADCTRL			0x1e0
+#define  TEGRA_SDMMC_SDMEMCOMPPADCTRL_VREF_SEL_SHIFT	0
+
+#define TEGRA_SDMMC_AUTO_CAL_CONFIG			0x1e4
+#define  TEGRA_SDMMC_AUTO_CAL_CONFIG_PU_OFFSET_SHIFT	0
+#define  TEGRA_SDMMC_AUTO_CAL_CONFIG_PD_OFFSET_SHIFT	8
+#define  TEGRA_SDMMC_AUTO_CAL_CONFIG_ENABLE		(1 << 29)
+
 struct tegra_sdmmc_host {
 	struct mci_host		mci;
 	void __iomem		*regs;
@@ -333,6 +341,23 @@ static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
 	val |= TEGRA_SDMMC_PWR_CNTL_33_V | TEGRA_SDMMC_PWR_CNTL_SD_BUS;
 	writel(val, regs + TEGRA_SDMMC_PWR_CNTL);
 
+	/* sdmmc1 and sdmmc3 on T30 need a bit of padctrl init */
+	if (of_device_is_compatible(mci->hw_dev->device_node,
+			"nvidia,tegra30-sdhci") &&
+			((u32)regs == 0x78000000 || (u32)regs == 78000400)) {
+		val = readl(regs + TEGRA_SDMMC_SDMEMCOMPPADCTRL);
+		val &= 0xfffffff0;
+		val |= 0x7 << TEGRA_SDMMC_SDMEMCOMPPADCTRL_VREF_SEL_SHIFT;
+		writel(val, regs + TEGRA_SDMMC_SDMEMCOMPPADCTRL);
+
+		val = readl(regs + TEGRA_SDMMC_AUTO_CAL_CONFIG);
+		val &= 0xffff0000;
+		val |= (0x62 << TEGRA_SDMMC_AUTO_CAL_CONFIG_PU_OFFSET_SHIFT) |
+		       (0x70 << TEGRA_SDMMC_AUTO_CAL_CONFIG_PD_OFFSET_SHIFT) |
+		       TEGRA_SDMMC_AUTO_CAL_CONFIG_ENABLE;
+		writel(val, regs + TEGRA_SDMMC_AUTO_CAL_CONFIG);
+	}
+
 	/* setup signaling */
 	writel(0xffffffff, regs + TEGRA_SDMMC_INT_STAT_EN);
 	writel(0xffffffff, regs + TEGRA_SDMMC_INT_SIG_EN);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
