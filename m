Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SRfFO-0006CA-Pb
 for barebox@lists.infradead.org; Tue, 08 May 2012 07:54:17 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue,  8 May 2012 09:54:00 +0200
Message-Id: <1336463641-27219-8-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1336463641-27219-1-git-send-email-w.sang@pengutronix.de>
References: <1336463641-27219-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 7/8] arm: mxs: use consistent naming for #defines for ocotp
To: barebox@lists.infradead.org

Will the code more readable, especially since future additions are
planned.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/ocotp.c |   17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 7f9107a..f18d066 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -28,11 +28,12 @@
 
 #define DRIVERNAME "ocotp"
 
-#define OCOTP_WORD_OFFSET		0x20
+#define OCOTP_CTRL			0x0
+#  define OCOTP_CTRL_BUSY		(1 << 8)
+#  define OCOTP_CTRL_ERROR		(1 << 9)
+#  define OCOTP_CTRL_RD_BANK_OPEN	(1 << 12)
 
-#define BM_OCOTP_CTRL_BUSY		(1 << 8)
-#define BM_OCOTP_CTRL_ERROR		(1 << 9)
-#define BM_OCOTP_CTRL_RD_BANK_OPEN	(1 << 12)
+#define OCOTP_WORD_OFFSET		0x20
 
 struct ocotp_priv {
 	struct cdev cdev;
@@ -44,7 +45,7 @@ static int mxs_ocotp_wait_busy(struct ocotp_priv *priv)
 	uint64_t start = get_time_ns();
 
 	/* check both BUSY and ERROR cleared */
-	while (readl(priv->base) & (BM_OCOTP_CTRL_BUSY | BM_OCOTP_CTRL_ERROR))
+	while (readl(priv->base + OCOTP_CTRL) & (OCOTP_CTRL_BUSY | OCOTP_CTRL_ERROR))
 		if (is_timeout(start, MSECOND))
 			return -ETIMEDOUT;
 
@@ -65,13 +66,13 @@ static ssize_t mxs_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	 */
 
 	/* try to clear ERROR bit */
-	writel(BM_OCOTP_CTRL_ERROR, base + BIT_CLR);
+	writel(OCOTP_CTRL_ERROR, base + OCOTP_CTRL + BIT_CLR);
 
 	if (mxs_ocotp_wait_busy(priv))
 		return -ETIMEDOUT;
 
 	/* open OCOTP banks for read */
-	writel(BM_OCOTP_CTRL_RD_BANK_OPEN, base + BIT_SET);
+	writel(OCOTP_CTRL_RD_BANK_OPEN, base + OCOTP_CTRL + BIT_SET);
 
 	/* approximately wait 32 hclk cycles */
 	udelay(1);
@@ -86,7 +87,7 @@ static ssize_t mxs_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
 				(((i + offset) & 0xfc) << 2) + ((i + offset) & 3));
 
 	/* close banks for power saving */
-	writel(BM_OCOTP_CTRL_RD_BANK_OPEN, base + BIT_CLR);
+	writel(OCOTP_CTRL_RD_BANK_OPEN, base + OCOTP_CTRL + BIT_CLR);
 
 	return size;
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
