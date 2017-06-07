Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dIYVP-0006kI-Iv
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 10:48:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dIYT8-0002oq-GM
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 12:45:42 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dIYT8-00037A-9X
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 12:45:42 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed,  7 Jun 2017 12:45:42 +0200
Message-Id: <20170607104542.11900-1-jbe@pengutronix.de>
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
Subject: [PATCH] i.MX/WD: setup the watchdog according to its datasheet
To: barebox@lists.infradead.org

From earlier SoCs like the i.MX21 up to i.MX7 their datasheets states
after reset the watchdog timer has to be set first prior enabling the
watchdog itself. This change do it this way.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index b920c7234..5cc178f3e 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -114,6 +114,12 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
 	if (priv->ext_reset)
 		val |= IMX21_WDOG_WCR_WDT;
 
+	/*
+	 * set time and some write once bits first prior enabling the
+	 * watchdog according to the datasheet
+	 */
+	writew(val, priv->base + IMX21_WDOG_WCR);
+
 	writew(IMX21_WDOG_WCR_WDE | val, priv->base + IMX21_WDOG_WCR);
 
 	/* Write Service Sequence */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
