Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH7Hu-0001po-CW
 for barebox@lists.infradead.ORg; Thu, 07 Jan 2016 09:55:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1aH7HY-0003lG-Po
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 10:55:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  7 Jan 2016 10:55:00 +0100
Message-Id: <1452160500-696-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] usb: chipidea-imx: check return value of regulator_get()
To: barebox@lists.infradead.org

From: David Jander <david@protonic.nl>

The VBUS regulator is optional for the chipidea-imx glue, so it must
be checked if regulator_get provided a valid regulator handle before
trying to enable the regulator.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
lst: reworded commit message
---
 drivers/usb/imx/chipidea-imx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index ae307183bc1f..a1c36cf6445d 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -242,7 +242,8 @@ static int imx_chipidea_probe(struct device_d *dev)
 
 	ci->vbus = regulator_get(dev, "vbus");
 
-	regulator_enable(ci->vbus);
+	if (!IS_ERR(ci->vbus))
+		regulator_enable(ci->vbus);
 
 	base = dev_request_mem_region(dev, 0);
 	if (IS_ERR(base))
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
