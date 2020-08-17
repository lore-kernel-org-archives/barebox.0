Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7c88-0002x7-W1
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 10:12:41 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 17 Aug 2020 12:12:38 +0200
Message-Id: <20200817101238.12427-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] fixup! of: base: register DT root as device
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Move new virtual device out of *.of name space, to avoid possible
collisions.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 9e49158e61..222d72947e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2144,7 +2144,7 @@ static void of_platform_device_create_root(struct device_node *np)
 	dev = xzalloc(sizeof(*dev));
 	dev->id = DEVICE_ID_SINGLE;
 	dev->device_node = np;
-	dev_set_name(dev, "machine.of");
+	dev_set_name(dev, "machine");
 
 	ret = platform_device_register(dev);
 	if (ret)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
