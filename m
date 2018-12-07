Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAeE-00017i-9X
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:34:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id i12so1522667pfo.7
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:33:55 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:33:42 -0800
Message-Id: <20181207073345.5638-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] mci: dw_mmc: Drop explicit devname setup code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop explicit devname setup code. Same setup will be done by
mci_of_parse().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/dw_mmc.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index e4c550c3e..f035317ef 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -602,9 +602,6 @@ static int dw_mmc_probe(struct device_d *dev)
 		host->mci.host_caps &= ~MMC_CAP_BIT_DATA_MASK;
 		host->mci.host_caps |= pdata->bus_width_caps;
 	} else if (dev->device_node) {
-		const char *alias = of_alias_get(dev->device_node);
-		if (alias)
-			host->mci.devname = xstrdup(alias);
 		of_property_read_u32(dev->device_node, "dw-mshc-ciu-div",
 				&host->ciu_div);
 	}
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
