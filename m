Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rpgoz-0004cq-FI
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 13:54:03 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 24 Jan 2012 14:53:49 +0100
Message-Id: <1327413231-17495-4-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
References: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] net: fec_imx: enable payload length check and pause frames
To: barebox@lists.infradead.org

Q: "the linux driver add these bits, why not we?"
A: Because nobody activated the bits?

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/net/fec_imx.c |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 15c7a4a..45af78f 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -302,10 +302,8 @@ static int fec_init(struct eth_device *dev)
 
 	if (fec->xcv_type == RMII) {
 		if (cpu_is_mx28()) {
-			rcntl |= FEC_R_CNTRL_RMII_MODE;
-				/* the linux driver add these bits, why not we? */
-				/* | FEC_R_CNTRL_FCE | */
-				/* FEC_R_CNTRL_NO_LGTH_CHECK */
+			rcntl |= FEC_R_CNTRL_RMII_MODE | FEC_R_CNTRL_FCE |
+				FEC_R_CNTRL_NO_LGTH_CHECK;
 		} else {
 			/* disable the gasket and wait */
 			writel(0, fec->regs + FEC_MIIGSK_ENR);
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
