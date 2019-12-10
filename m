Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegn1-00023F-2b
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 14:47:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id d73so260350wmd.1
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 06:47:02 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 10 Dec 2019 15:46:57 +0100
Message-Id: <20191210144657.18973-1-h.feurstein@gmail.com>
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
Subject: [PATCH 1/1] mci: imx-esdhc: fix termination of statement
To: barebox@lists.infradead.org
Cc: Hubert Feurstein <h.feurstein@gmail.com>

Use semicolon instead of comma to terminate statement.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/mci/imx-esdhc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index db3450a26..4f9fe2996 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -697,7 +697,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->mci.card_present = esdhc_card_present;
 	host->mci.hw_dev = dev;
 
-	dev->detect = fsl_esdhc_detect,
+	dev->detect = fsl_esdhc_detect;
 
 	rate = clk_get_rate(host->clk);
 	host->mci.f_min = rate >> 12;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
