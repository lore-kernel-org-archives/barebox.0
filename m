Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9TOU-0006gy-SQ
 for barebox@lists.infradead.org; Fri, 20 Apr 2018 10:35:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1f9TOH-0006we-7T
 for barebox@lists.infradead.org; Fri, 20 Apr 2018 12:35:41 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 20 Apr 2018 12:35:41 +0200
Message-Id: <20180420103541.26772-1-l.stach@pengutronix.de>
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
Subject: [PATCH] video: tc358767: don't link AUX i2c adapter to parent OF node
To: barebox@lists.infradead.org

Otherwise the i2c core will try to populate the TC358767 child nodes
as i2c devices, which is wrong.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/tc358767.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index d4749b15c7a1..125e8236c153 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -1413,7 +1413,6 @@ static int tc_probe(struct device_d *dev)
 	tc->adapter.master_xfer = tc_aux_i2c_xfer;
 	tc->adapter.nr = -1; /* any free */
 	tc->adapter.dev.parent = dev;
-	tc->adapter.dev.device_node = dev->device_node;
 	/* Add I2C adapter */
 	ret = i2c_add_numbered_adapter(&tc->adapter);
 	if (ret < 0) {
-- 
2.16.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
