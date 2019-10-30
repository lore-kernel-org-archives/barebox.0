Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrP0-0001AC-LG
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 17:04:59 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 30 Oct 2019 18:04:55 +0100
Message-Id: <20191030170455.31973-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] of: of_path: fix return in case of EPROBE_DEFER
To: abbotti@mev.co.uk, barebox@lists.infradead.org

As said in commit 82eb3dff10 ("of_path: handle no driver for device")
this case happens if the driver isn't probed yet. So we should return
-EPROBE_DEFER to signal that.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/of_path.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index f8bbf2cba1..5c3a020345 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -83,7 +83,7 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 	}
 
 	if (dev->bus && !dev->driver)
-		return -ENODEV;
+		return -EPROBE_DEFER;
 
 	device_detect(dev);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
