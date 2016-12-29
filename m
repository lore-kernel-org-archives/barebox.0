Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp53.i.mail.ru ([94.100.177.113])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cMUn8-0004Qb-6W
 for barebox@lists.infradead.org; Thu, 29 Dec 2016 07:06:23 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 29 Dec 2016 10:05:46 +0300
Message-Id: <1482995146-19535-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1482995146-19535-1-git-send-email-shc_work@mail.ru>
References: <1482995146-19535-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] mci: omap: Add devicetree options parsing by MCI core.
To: barebox@lists.infradead.org

This patch adds a callback to parsing devicetree options for MMC:
bus-width, etc..

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/omap_hsmmc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 180afb1..cbc69e4 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -631,6 +631,8 @@ static int omap_mmc_probe(struct device_d *dev)
 			hsmmc->mci.devname = xstrdup(alias);
 	}
 
+	mci_of_parse(&hsmmc->mci);
+
 	dev->priv = hsmmc;
 	dev->detect = omap_mmc_detect,
 
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
