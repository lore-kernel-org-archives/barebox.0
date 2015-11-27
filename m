Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a2Ig2-0000lm-0l
 for barebox@lists.infradead.org; Fri, 27 Nov 2015 13:03:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E0DCBA00424
 for <barebox@lists.infradead.org>; Fri, 27 Nov 2015 14:03:03 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 27 Nov 2015 14:02:32 +0100
Message-Id: <1448629352-10702-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] wdog: imx-wd: Fix imx soc reset
To: barebox@lists.infradead.org

From: Christian Hemp <c.hemp@phytec.de>

On i.MX6 boards the reset command doesn't work, after the commit "wdog:
imx-wd: watchdog cannot be disabled again". This commit doesn't allow
negative values, but the imx reset handler passes -1 to the
imx21_watchdog_set_timeout function for a reset in 0.5 seconds.
This patch allows -1 as timeout to set the watchdog to 0.5 seconds.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
Hi,

I'm sending this patch on behalf of Christian Hemp. The patch fixes a
regression currently in the next branch.

Best regards,
	Stefan Christ
---
 drivers/watchdog/imxwd.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index bb0d2db..1952548 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -97,14 +97,17 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, int timeout)
 
 	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
 
-	if (timeout < 0 || timeout > 128)
+	if (timeout < -1 || timeout > 128)
 		return -EINVAL;
 
 	if (timeout == 0) /* bit 2 (WDE) cannot be set to 0 again */
 		return -ENOSYS;
 
-	val = ((timeout * 2 - 1) << 8) | IMX21_WDOG_WCR_SRS |
-		IMX21_WDOG_WCR_WDA;
+	if (timeout > 0)
+		val = ((timeout * 2 - 1) << 8) | IMX21_WDOG_WCR_SRS |
+			IMX21_WDOG_WCR_WDA;
+	else
+		val = 0;
 
 	writew(val, priv->base + IMX21_WDOG_WCR);
 	writew(IMX21_WDOG_WCR_WDE | val, priv->base + IMX21_WDOG_WCR);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
