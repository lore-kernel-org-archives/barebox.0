Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdhBK-0000M4-Jp
 for barebox@lists.infradead.org; Thu, 02 Apr 2015 15:37:23 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu,  2 Apr 2015 17:36:51 +0200
Message-Id: <1427989011-26503-2-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1427989011-26503-1-git-send-email-mpa@pengutronix.de>
References: <1427989011-26503-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 2/2] wdog: imx-wd: Disable watchdog powerdown counter
To: barebox@lists.infradead.org

Disable the watchdog powerdown counter at start. Otherwise this may
trigger a reset or poweroff over the WDOG_B line to a PMIC. This counter
is set to 16 seconds after poweron.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 42edfe00d2bc..3479d7b02da7 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -46,6 +46,7 @@ struct imx_wd {
 #define IMX21_WDOG_WCR	0x00 /* Watchdog Control Register */
 #define IMX21_WDOG_WSR	0x02 /* Watchdog Service Register */
 #define IMX21_WDOG_WSTR	0x04 /* Watchdog Status Register  */
+#define IMX21_WDOG_WMCR	0x08 /* Misc Register */
 #define IMX21_WDOG_WCR_WDE	(1 << 2)
 #define IMX21_WDOG_WCR_SRS	(1 << 4)
 #define IMX21_WDOG_WCR_WDA	(1 << 5)
@@ -158,6 +159,11 @@ static int imx21_wd_init(struct imx_wd *priv)
 {
 	imx_watchdog_detect_reset_source(priv);
 
+	/*
+	 * Disable watchdog powerdown counter
+	 */
+	writew(0x0, priv->base + IMX21_WDOG_WMCR);
+
 	return 0;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
