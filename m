Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZaj-00030v-RZ
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 10:28:11 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon,  4 Nov 2019 11:28:06 +0100
Message-Id: <20191104102806.8044-2-m.felsch@pengutronix.de>
In-Reply-To: <20191104102806.8044-1-m.felsch@pengutronix.de>
References: <20191104102806.8044-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v2 2/2] mfd: da9063: fix watchdog ping execution
To: barebox@lists.infradead.org, a.fatoum@pengutronix.de

The watchdog resets the system if the watchdog gets pinged to fast.
Between each watchdog ping must be a pause of at least 200ms. This
commit fixes that by rejecting two fast requests.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

after the a discussion we decided to change the busy wait behaviour. Now
the driver won't wait and reject the ping-request immediately to ensure
the cool down phase.

Regards,
  Marco

 drivers/mfd/da9063.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index 4d459c7f18..b1e4116906 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -14,6 +14,7 @@
  */
 
 #include <common.h>
+#include <clock.h>
 #include <driver.h>
 #include <gpio.h>
 #include <restart.h>
@@ -33,6 +34,7 @@ struct da9063 {
 	struct i2c_client	*client1;
 	struct device_d		*dev;
 	unsigned int		timeout;
+	uint64_t		last_ping;
 };
 
 /* forbidden/impossible value; timeout will be set to this value initially to
@@ -237,6 +239,14 @@ static int da9063_watchdog_ping(struct da9063 *priv)
 	int ret;
 	u8 val;
 
+	/*
+	 * The watchdog has a cool down phase of 200ms and if we ping to fast
+	 * the da9062/3 resets the system. Reject those requests has a maximum
+	 * failure of 10% if the watchdog timeout is set to 2.048s.
+	 */
+	if ((int64_t)(priv->last_ping + 200 * MSECOND - get_time_ns()) > 0)
+		return 0;
+
 	dev_dbg(priv->dev, "ping\n");
 
 	/* reset watchdog timer; register is self clearing */
@@ -245,6 +255,8 @@ static int da9063_watchdog_ping(struct da9063 *priv)
 	if (ret < 0)
 		return ret;
 
+	priv->last_ping = get_time_ns();
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
