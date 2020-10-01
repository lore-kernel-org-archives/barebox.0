Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNtFb-00024G-Ee
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 07:43:40 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Oct 2020 09:43:36 +0200
Message-Id: <20201001074337.23430-4-a.fatoum@pengutronix.de>
In-Reply-To: <20201001074337.23430-1-a.fatoum@pengutronix.de>
References: <20201001074337.23430-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/5] net: macb: fix wrong return values on some errors
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Coccinelle detected that the IS_ERR and ERR_PTR are mismatched.
Fix it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/macb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 4850e60c49ab..e3e039f67988 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -731,7 +731,7 @@ static int macb_probe(struct device_d *dev)
 
 	if (hclk_name) {
 		macb->hclk = clk_get(dev, pclk_name);
-		if (IS_ERR(macb->pclk)) {
+		if (IS_ERR(macb->hclk)) {
 			dev_err(dev, "no hclk\n");
 			return PTR_ERR(macb->hclk);
 		}
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
