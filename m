Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSsmq-0000sc-MJ
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 19:47:26 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 1450626C2005
 for <barebox@lists.infradead.org>; Tue,  3 Mar 2015 20:46:29 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Mar 2015 20:46:17 +0100
Message-Id: <1425411983-24732-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
References: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 05/11] mci: tegra: handle mmc aliases
To: barebox@lists.infradead.org

This allows to have fixed device names for the SDMMC
controllers.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/tegra-sdmmc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 0e23d6f..c8924ed 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -409,7 +409,10 @@ static int tegra_sdmmc_detect(struct device_d *dev)
 static void tegra_sdmmc_parse_dt(struct tegra_sdmmc_host *host)
 {
 	struct device_node *np = host->mci.hw_dev->device_node;
+	const char *alias = of_alias_get(np);
 
+	if (alias)
+		host->mci.devname = xstrdup(alias);
 	host->gpio_cd = of_get_named_gpio(np, "cd-gpios", 0);
 	host->gpio_pwr = of_get_named_gpio(np, "power-gpios", 0);
 	mci_of_parse(&host->mci);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
