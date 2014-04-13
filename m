Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKSo-0001EM-5A
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:28:51 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id 8E3B918B4250
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:27:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:32 +0200
Message-Id: <1397395668-9325-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 02/18] mmc: tegra: fix typo
To: barebox@lists.infradead.org

Missed OR, so we never enabled failure interrupt
status bits, which prevented the eMMC detect logic
to work properly.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/tegra-sdmmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 64c4550754b9..e4d82197bde7 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -339,7 +339,7 @@ static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
 
 	val = readl(regs + TEGRA_SDMMC_INT_STAT_EN);
 	val &= ~(0xffff);
-	val = (TEGRA_SDMMC_INT_STAT_EN_CMD_COMPLETE |
+	val |= (TEGRA_SDMMC_INT_STAT_EN_CMD_COMPLETE |
 		TEGRA_SDMMC_INT_STAT_EN_XFER_COMPLETE |
 		TEGRA_SDMMC_INT_STAT_EN_DMA_INTERRUPT |
 		TEGRA_SDMMC_INT_STAT_EN_BUFFER_WRITE_READY |
@@ -348,7 +348,7 @@ static int tegra_sdmmc_init(struct mci_host *mci, struct device_d *dev)
 
 	val = readl(regs + TEGRA_SDMMC_INT_SIG_EN);
 	val &= ~(0xffff);
-	val = TEGRA_SDMMC_INT_SIG_EN_XFER_COMPLETE;
+	val |= TEGRA_SDMMC_INT_SIG_EN_XFER_COMPLETE;
 	writel(val, regs + TEGRA_SDMMC_INT_SIG_EN);
 
 	tegra_sdmmc_set_clock(host, 400000);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
