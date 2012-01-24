Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rpgp0-00087X-3h
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 13:54:03 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 24 Jan 2012 14:53:51 +0100
Message-Id: <1327413231-17495-6-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 5/5] net: fec_imx: configure FEC for 10Mbit when necessary
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/net/fec_imx.c |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 45af78f..653b488 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -373,6 +373,17 @@ static int fec_open(struct eth_device *edev)
 		ret = miidev_wait_aneg(&fec->miidev);
 		if (ret)
 			return ret;
+
+		ret = miidev_get_status(&fec->miidev);
+		if (ret < 0)
+			return ret;
+
+		if (ret & MIIDEV_STATUS_IS_10MBIT) {
+			u32 rcntl = readl(fec->regs + FEC_R_CNTRL);
+			rcntl |= FEC_R_CNTRL_RMII_10T;
+			writel(rcntl, fec->regs + FEC_R_CNTRL);
+		}
+
 		miidev_print_status(&fec->miidev);
 	}
 
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
