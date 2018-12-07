Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAeF-00017m-As
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:34:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id g189so1345736pgc.5
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:33:57 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:33:43 -0800
Message-Id: <20181207073345.5638-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] mci: omap_hsmmc: Drop explicit devname setup code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop explicit devname setup code. Same setup will be done by
mci_of_parse().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/omap_hsmmc.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index cbc69e408..0cee3ec22 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -625,12 +625,6 @@ static int omap_mmc_probe(struct device_d *dev)
 			hsmmc->mci.devname = pdata->devname;
 	}
 
-	if (dev->device_node) {
-		const char *alias = of_alias_get(dev->device_node);
-		if (alias)
-			hsmmc->mci.devname = xstrdup(alias);
-	}
-
 	mci_of_parse(&hsmmc->mci);
 
 	dev->priv = hsmmc;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
