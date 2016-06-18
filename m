Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.181.95])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEGJS-0000w5-Tv
 for barebox@lists.infradead.org; Sat, 18 Jun 2016 13:29:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 18 Jun 2016 16:28:55 +0300
Message-Id: <1466256538-4067-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/4] mci: imx: Use mci_register() return value for driver
 probe.
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/imx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 2788fb9..4f29ddf 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -519,9 +519,7 @@ static int mxcmci_probe(struct device_d *dev)
 	host->mci.f_min = rate >> 7;
 	host->mci.f_max = rate >> 1;
 
-	mci_register(&host->mci);
-
-	return 0;
+	return mci_register(&host->mci);
 }
 
 static __maybe_unused struct of_device_id mxcmci_compatible[] = {
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
