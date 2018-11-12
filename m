Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gMEzV-00023p-3k
 for barebox@lists.infradead.org; Mon, 12 Nov 2018 16:23:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gMEzJ-0003bY-MV
 for barebox@lists.infradead.org; Mon, 12 Nov 2018 17:22:57 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 12 Nov 2018 17:22:56 +0100
Message-Id: <20181112162257.2209-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] video: ipuv3: use closest fractional divider
To: barebox@lists.infradead.org

Currently the divider is always rounded down, which may lead to a
rather big overshoot of the display clock. Try to match the clock
better by rounding to closest.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipu-di.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/ipu-di.c b/drivers/video/imx-ipu-v3/ipu-di.c
index b6e64fe16a85..5751c678b28e 100644
--- a/drivers/video/imx-ipu-v3/ipu-di.c
+++ b/drivers/video/imx-ipu-v3/ipu-di.c
@@ -140,10 +140,7 @@ static int ipu_di_clk_calc_div(unsigned long inrate, unsigned long outrate)
 	int div;
 
 	tmp *= 16;
-
-	do_div(tmp, outrate);
-
-	div = tmp;
+	div = DIV_ROUND_CLOSEST(tmp, outrate);
 
 	if (div < 0x10)
 		div = 0x10;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
