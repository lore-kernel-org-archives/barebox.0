Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF3-0005vi-PA
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:05 +0200
Message-Id: <20200506081716.20143-2-s.hauer@pengutronix.de>
In-Reply-To: <20200506081716.20143-1-s.hauer@pengutronix.de>
References: <20200506081716.20143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/13] net: fec_imx: Return with an error when mandatory clock
 is missing
To: Barebox List <barebox@lists.infradead.org>

When a mandatory clock is missing we have to return with an error. Just
breaking out of the loop results in ignoring the error.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 585cdcb24c..772f930f0d 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -716,7 +716,7 @@ static int fec_clk_get(struct fec_priv *fec)
 		if (IS_ERR(fec->clk[i])) {
 			err = PTR_ERR(fec->clk[i]);
 			fec_clk_put(fec);
-			break;
+			return err;
 		}
 	}
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
