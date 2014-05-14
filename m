Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg4o-0000Et-PN
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:46:59 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 2C93C18B425D
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:00 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:32 +0200
Message-Id: <1400100352-13002-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 05/25] mci: tegra: add reset control
To: barebox@lists.infradead.org

Enable the driver to reset the device itself.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/tegra-sdmmc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index e4d82197bde7..0ea0b5ca4a92 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -28,6 +28,7 @@
 #include <mci.h>
 #include <of_gpio.h>
 #include <linux/clk.h>
+#include <linux/reset.h>
 
 #include "sdhci.h"
 
@@ -62,6 +63,7 @@ struct tegra_sdmmc_host {
 	struct mci_host		mci;
 	void __iomem		*regs;
 	struct clk		*clk;
+	struct reset_control	*reset;
 	int			gpio_cd, gpio_pwr;
 };
 #define to_tegra_sdmmc_host(mci) container_of(mci, struct tegra_sdmmc_host, mci)
@@ -400,6 +402,10 @@ static int tegra_sdmmc_probe(struct device_d *dev)
 	if (IS_ERR(host->clk))
 		return PTR_ERR(host->clk);
 
+	host->reset = reset_control_get(dev, NULL);
+	if (IS_ERR(host->reset))
+		return PTR_ERR(host->reset);
+
 	host->regs = dev_request_mem_region(dev, 0);
 	if (!host->regs) {
 		dev_err(dev, "could not get iomem region\n");
@@ -430,6 +436,9 @@ static int tegra_sdmmc_probe(struct device_d *dev)
 	}
 
 	clk_enable(host->clk);
+	reset_control_assert(host->reset);
+	udelay(2);
+	reset_control_deassert(host->reset);
 
 	mci->init = tegra_sdmmc_init;
 	mci->card_present = tegra_sdmmc_card_present;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
