Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dKJLV-0007me-UF
 for barebox@lists.infradead.org; Mon, 12 Jun 2017 07:01:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1568FA00340
 for <barebox@lists.infradead.org>; Mon, 12 Jun 2017 09:01:38 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Mon, 12 Jun 2017 09:00:35 +0200
Message-Id: <1497250835-34583-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] watchdog: i.MX: fix i.MX6 reset
To: barebox@lists.infradead.org

According to the Errata ERR004346 (WDOG: WDOG SRS bit requires to be written
twice), add another two writes to ensure there must be at least two
writes happen in the same one 32kHz clock period.
Without this two additional writes, the system will not reset always.

Tested with i.MX6Quad and i.MX6 UltraLite

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/watchdog/imxwd.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index b920c72..0617fc6 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -134,6 +134,10 @@ static void imx21_soc_reset(struct imx_wd *priv)
 		val |= IMX21_WDOG_WCR_WDA; /* do not assert ext-reset */
 
 	writew(val, priv->base + IMX21_WDOG_WCR);
+
+	/* Two additional writes due to errata ERR004346 */
+	writew(val, priv->base + IMX21_WDOG_WCR);
+	writew(val, priv->base + IMX21_WDOG_WCR);
 }
 
 static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
