Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFqH-0007Ph-6w
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 10:00:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Dec 2019 11:00:34 +0100
Message-Id: <20191209100034.16755-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Revert "mci: core: make mci_register -EPROBE_DEFER sensitive"
To: Barebox List <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>

The patch does the right thing: When a regulator can't be found and
-EPROBE_DEFER is returned we forward it. However, we have several boards
in the tree which do not have any driver for the regulator, but still
work because the regulator is enabled by default or by board code.

Revert this patch until a solution for these board is found.

This reverts commit 2e16c52ea277dd002235835a10f349233c31d965.
---
 drivers/mci/mci-core.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 9e39cbbb55..67257bcd18 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1819,10 +1819,6 @@ int mci_register(struct mci_host *host)
 
 	host->supply = regulator_get(host->hw_dev, "vmmc");
 	if (IS_ERR(host->supply)) {
-		if (host->supply == ERR_PTR(-EPROBE_DEFER)) {
-			ret = -EPROBE_DEFER;
-			goto err_free;
-		}
 		dev_err(&mci->dev, "Failed to get 'vmmc' regulator.\n");
 		host->supply = NULL;
 	}
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
