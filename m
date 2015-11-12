Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zwqqd-0002Xt-N5
 for barebox@lists.infradead.org; Thu, 12 Nov 2015 12:19:28 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 01CE8A002CE
 for <barebox@lists.infradead.org>; Thu, 12 Nov 2015 13:19:26 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Thu, 12 Nov 2015 13:18:55 +0100
Message-Id: <1447330735-7568-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] wdog: imx-wd: watchdog cannot be disabled again
To: barebox@lists.infradead.org

The i.MX21/i.MX6 watchdog cannot be disabled after it was activated.
Bit 2 (WDE) cannot be set to 0 again. Notify the user about that by
returning -ENOSYS.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 drivers/watchdog/imxwd.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index dd11a62..bb0d2db 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -97,14 +97,14 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, int timeout)
 
 	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
 
-	if (!timeout || timeout > 128)
+	if (timeout < 0 || timeout > 128)
 		return -EINVAL;
 
-	if (timeout > 0)
-		val = ((timeout * 2 - 1) << 8) | IMX21_WDOG_WCR_SRS |
-			IMX21_WDOG_WCR_WDA;
-	else
-		val = 0;
+	if (timeout == 0) /* bit 2 (WDE) cannot be set to 0 again */
+		return -ENOSYS;
+
+	val = ((timeout * 2 - 1) << 8) | IMX21_WDOG_WCR_SRS |
+		IMX21_WDOG_WCR_WDA;
 
 	writew(val, priv->base + IMX21_WDOG_WCR);
 	writew(IMX21_WDOG_WCR_WDE | val, priv->base + IMX21_WDOG_WCR);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
