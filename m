Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAeC-00017h-Od
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:34:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id b85so1533252pfc.3
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:33:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:33:41 -0800
Message-Id: <20181207073345.5638-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181207073345.5638-1-andrew.smirnov@gmail.com>
References: <20181207073345.5638-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] mci: tegra-sdmmc: Drop explicit devname setup code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop explicit devname setup code. Same setup will be done by
mci_of_parse().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/tegra-sdmmc.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index e465d891a..4c4791807 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -411,10 +411,7 @@ static int tegra_sdmmc_detect(struct device_d *dev)
 static void tegra_sdmmc_parse_dt(struct tegra_sdmmc_host *host)
 {
 	struct device_node *np = host->mci.hw_dev->device_node;
-	const char *alias = of_alias_get(np);
 
-	if (alias)
-		host->mci.devname = xstrdup(alias);
 	host->gpio_cd = of_get_named_gpio(np, "cd-gpios", 0);
 	host->gpio_pwr = of_get_named_gpio(np, "power-gpios", 0);
 	mci_of_parse(&host->mci);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
