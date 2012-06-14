Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sf9z6-0003lC-35
 for barebox@lists.infradead.org; Thu, 14 Jun 2012 13:21:15 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 14 Jun 2012 15:21:03 +0200
Message-Id: <1339680065-12169-7-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1339680065-12169-1-git-send-email-w.sang@pengutronix.de>
References: <1339680065-12169-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH V2 6/8] arm: mxs: refactor timeout routine for ocotp
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Let's keep the timeout routine in a central place. We will need it more
often when we add write support.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/ocotp.c |   26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 38f9ffd..7f9107a 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -39,13 +39,24 @@ struct ocotp_priv {
 	void __iomem *base;
 };
 
+static int mxs_ocotp_wait_busy(struct ocotp_priv *priv)
+{
+	uint64_t start = get_time_ns();
+
+	/* check both BUSY and ERROR cleared */
+	while (readl(priv->base) & (BM_OCOTP_CTRL_BUSY | BM_OCOTP_CTRL_ERROR))
+		if (is_timeout(start, MSECOND))
+			return -ETIMEDOUT;
+
+	return 0;
+}
+
 static ssize_t mxs_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
 		ulong offset, ulong flags)
 {
 	struct ocotp_priv *priv = cdev->priv;
 	void __iomem *base = priv->base;
 	size_t size = min((ulong)count, cdev->size - offset);
-	uint64_t start;
 	int i;
 
 	/*
@@ -56,11 +67,8 @@ static ssize_t mxs_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	/* try to clear ERROR bit */
 	writel(BM_OCOTP_CTRL_ERROR, base + BIT_CLR);
 
-	/* check both BUSY and ERROR cleared */
-	start = get_time_ns();
-	while (readl(base) & (BM_OCOTP_CTRL_BUSY | BM_OCOTP_CTRL_ERROR))
-		if (is_timeout(start, MSECOND))
-			return -ETIMEDOUT;
+	if (mxs_ocotp_wait_busy(priv))
+		return -ETIMEDOUT;
 
 	/* open OCOTP banks for read */
 	writel(BM_OCOTP_CTRL_RD_BANK_OPEN, base + BIT_SET);
@@ -69,10 +77,8 @@ static ssize_t mxs_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	udelay(1);
 
 	/* poll BUSY bit becoming cleared */
-	start = get_time_ns();
-	while (readl(base) & BM_OCOTP_CTRL_BUSY)
-		if (is_timeout(start, MSECOND))
-			return -ETIMEDOUT;
+	if (mxs_ocotp_wait_busy(priv))
+		return -ETIMEDOUT;
 
 	for (i = 0; i < size; i++)
 		/* When reading bytewise, we need to hop over the SET/CLR/TGL regs */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
