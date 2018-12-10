Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWMrM-0008Hd-4S
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 14:48:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gWMrA-00063X-Gj
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 15:48:24 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Dec 2018 15:48:24 +0100
Message-Id: <20181210144824.4172-2-l.stach@pengutronix.de>
In-Reply-To: <20181210144824.4172-1-l.stach@pengutronix.de>
References: <20181210144824.4172-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] backlight: rave-sp: init all brightness to default level
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/rave-sp-backlight.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/rave-sp-backlight.c b/drivers/video/rave-sp-backlight.c
index 3a20def661ce..877a5feeb627 100644
--- a/drivers/video/rave-sp-backlight.c
+++ b/drivers/video/rave-sp-backlight.c
@@ -47,7 +47,7 @@ static int rave_sp_backlight_probe(struct device_d *dev)
 	bd = xzalloc(sizeof(*bd));
 	bd->dev.priv = dev->parent->priv;
 	bd->dev.parent = dev;
-	bd->brightness_default = 50;
+	bd->brightness = bd->brightness_cur = bd->brightness_default = 50;
 	bd->brightness_max = 100;
 	bd->brightness_set = rave_sp_backlight_set;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
