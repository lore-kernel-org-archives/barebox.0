Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUuDf-0001rT-4a
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 07:34:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Apr 2013 09:34:18 +0200
Message-Id: <1366788859-11565-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366788859-11565-1-git-send-email-s.hauer@pengutronix.de>
References: <1366788859-11565-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mci: imx-esdhc: remove cache snoop register access
To: barebox@lists.infradead.org

Remove some leftover from former powerpc support which has no
relevance for i.MX based esdhc controllers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 8c2695c..f4fdac8 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -61,14 +61,11 @@ struct fsl_esdhc {
 	u32	fevt;
 	char	reserved2[168];
 	u32	hostver;
-	char	reserved3[780];
-	u32	scr;
 };
 
 struct fsl_esdhc_host {
 	struct mci_host		mci;
 	struct fsl_esdhc __iomem	*regs;
-	u32			no_snoop;
 	unsigned long		cur_clock;
 	struct device_d		*dev;
 	struct clk		*clk;
@@ -454,10 +451,6 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	int timeout = 1000;
 	int ret = 0;
 
-	/* Enable cache snooping */
-	if (host && !host->no_snoop)
-		esdhc_write32(&regs->scr, 0x00000040);
-
 	/* Reset the entire host controller */
 	esdhc_write32(&regs->sysctl, SYSCTL_RSTA);
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
