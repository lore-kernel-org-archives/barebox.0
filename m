Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvPG-00056f-LX
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:34:04 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 314B218B4287
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:33 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:13 +0200
Message-Id: <1401827717-6420-27-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 26/30] mci: tegra: add Tegra124 compatible
To: barebox@lists.infradead.org

The controller is similar enough to the ones found
on earlier generation SoCs to not need any additional
changes.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/tegra-sdmmc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 62cf730..08b9dac 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -481,6 +481,8 @@ static int tegra_sdmmc_probe(struct device_d *dev)
 
 static __maybe_unused struct of_device_id tegra_sdmmc_compatible[] = {
 	{
+		.compatible = "nvidia,tegra124-sdhci",
+	}, {
 		.compatible = "nvidia,tegra30-sdhci",
 	}, {
 		.compatible = "nvidia,tegra20-sdhci",
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
