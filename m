Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40P0-0007zI-7X
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:41:53 +0100
Message-Id: <20190313094202.14901-7-s.hauer@pengutronix.de>
In-Reply-To: <20190313094202.14901-1-s.hauer@pengutronix.de>
References: <20190313094202.14901-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/15] watchdog: imx: Add register accessor functions
To: Barebox List <barebox@lists.infradead.org>

In preparation of adding big endian support in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 38 ++++++++++++++++++++++++--------------
 1 file changed, 24 insertions(+), 14 deletions(-)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 8dba662392..e2c3b9f96e 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -66,6 +66,16 @@ struct imx_wd {
 /* valid for i.MX27, i.MX31, always '0' on i.MX25, i.MX35, i.MX51 */
 #define WSTR_COLDSTART	(1 << 4)
 
+static void imxwd_write(struct imx_wd *priv, int reg, uint16_t val)
+{
+	writew(val, priv->base + reg);
+}
+
+static uint16_t imxwd_read(struct imx_wd *priv, int reg)
+{
+	return readw(priv->base + reg);
+}
+
 static int imx1_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
 {
 	u16 val;
@@ -73,18 +83,18 @@ static int imx1_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
 	dev_dbg(priv->dev, "%s: %d\n", __func__, timeout);
 
 	if (!timeout) {
-		writew(IMX1_WDOG_WCR_WHALT, priv->base + IMX1_WDOG_WCR);
+		imxwd_write(priv, IMX1_WDOG_WCR, IMX1_WDOG_WCR_WHALT);
 		return 0;
 	}
 
 	val = (timeout * 2 - 1) << 8;
 
-	writew(val, priv->base + IMX1_WDOG_WCR);
-	writew(IMX1_WDOG_WCR_WDE | val, priv->base + IMX1_WDOG_WCR);
+	imxwd_write(priv, IMX1_WDOG_WCR, val);
+	imxwd_write(priv, IMX1_WDOG_WCR, IMX1_WDOG_WCR_WDE | val);
 
 	/* Write Service Sequence */
-	writew(0x5555, priv->base + IMX1_WDOG_WSR);
-	writew(0xaaaa, priv->base + IMX1_WDOG_WSR);
+	imxwd_write(priv, IMX1_WDOG_WSR, 0x5555);
+	imxwd_write(priv, IMX1_WDOG_WSR, 0xaaaa);
 
 	return 0;
 }
@@ -113,13 +123,13 @@ static int imx21_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
 	 * set time and some write once bits first prior enabling the
 	 * watchdog according to the datasheet
 	 */
-	writew(val, priv->base + IMX21_WDOG_WCR);
+	imxwd_write(priv, IMX21_WDOG_WCR, val);
 
-	writew(IMX21_WDOG_WCR_WDE | val, priv->base + IMX21_WDOG_WCR);
+	imxwd_write(priv, IMX21_WDOG_WCR, IMX21_WDOG_WCR_WDE | val);
 
 	/* Write Service Sequence */
-	writew(0x5555, priv->base + IMX21_WDOG_WSR);
-	writew(0xaaaa, priv->base + IMX21_WDOG_WSR);
+	imxwd_write(priv, IMX21_WDOG_WSR, 0x5555);
+	imxwd_write(priv, IMX21_WDOG_WSR, 0xaaaa);
 
 	return 0;
 }
@@ -134,11 +144,11 @@ static void imx21_soc_reset(struct imx_wd *priv)
 	else
 		val |= IMX21_WDOG_WCR_WDA; /* do not assert ext-reset */
 
-	writew(val, priv->base + IMX21_WDOG_WCR);
+	imxwd_write(priv, IMX21_WDOG_WCR, val);
 
 	/* Two additional writes due to errata ERR004346 */
-	writew(val, priv->base + IMX21_WDOG_WCR);
-	writew(val, priv->base + IMX21_WDOG_WCR);
+	imxwd_write(priv, IMX21_WDOG_WCR, val);
+	imxwd_write(priv, IMX21_WDOG_WCR, val);
 }
 
 static int imx_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
@@ -161,7 +171,7 @@ static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst)
 
 static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
 {
-	u16 val = readw(priv->base + IMX21_WDOG_WSTR);
+	u16 val = imxwd_read(priv, IMX21_WDOG_WSTR);
 	int priority = RESET_SOURCE_DEFAULT_PRIORITY;
 
 	if (reset_source_get() == RESET_WDG)
@@ -192,7 +202,7 @@ static int imx21_wd_init(struct imx_wd *priv)
 	/*
 	 * Disable watchdog powerdown counter
 	 */
-	writew(0x0, priv->base + IMX21_WDOG_WMCR);
+	imxwd_write(priv, IMX21_WDOG_WMCR, 0x0);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
