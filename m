Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.181.95])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEGJS-0000wE-Tu
 for barebox@lists.infradead.org; Sat, 18 Jun 2016 13:29:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 18 Jun 2016 16:28:56 +0300
Message-Id: <1466256538-4067-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1466256538-4067-1-git-send-email-shc_work@mail.ru>
References: <1466256538-4067-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/4] mci: imx: Add devicetree options parsing by MCI core.
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/imx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 4f29ddf..354daba 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -519,6 +519,8 @@ static int mxcmci_probe(struct device_d *dev)
 	host->mci.f_min = rate >> 7;
 	host->mci.f_max = rate >> 1;
 
+	mci_of_parse(&host->mci);
+
 	return mci_register(&host->mci);
 }
 
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
