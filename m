Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVClE-0007UJ-14
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 11:58:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kVClC-0007DR-Lh
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 13:58:30 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kVClC-0000dO-7B
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 13:58:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 21 Oct 2020 13:58:05 +0200
Message-Id: <20201021115813.31645-3-m.felsch@pengutronix.de>
In-Reply-To: <20201021115813.31645-1-m.felsch@pengutronix.de>
References: <20201021115813.31645-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v3 02/10] of: platform: remove check of already added devices
To: barebox@lists.infradead.org

This check is a relict of the early barebox device tree days, where
devices were added by machine and/or board code too. The check ensured
too not populate the same device twice. Nowadays _real_ hardware devices
(devices with hardware resources) which are not auto enumerable should
only be added using the device tree. Remove the check to cleanup the
code and to remove looping over each device every time
of_platform_device_create() is called instead of keeping it for legacy
boards/machines. Those legacy boards/machines should be converted
instead.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:

v3:
- new patch
---
 drivers/of/platform.c | 31 +------------------------------
 1 file changed, 1 insertion(+), 30 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 21c7cce1a5..51781798c6 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -101,7 +101,7 @@ struct device_d *of_platform_device_create(struct device_node *np,
 	struct device_d *dev;
 	struct resource *res = NULL, temp_res;
 	resource_size_t resinval;
-	int i, j, ret, num_reg = 0, match;
+	int i, ret, num_reg = 0;
 
 	if (!of_device_is_available(np))
 		return NULL;
@@ -121,35 +121,6 @@ struct device_d *of_platform_device_create(struct device_node *np,
 				return NULL;
 			}
 		}
-
-		/*
-		 * A device may already be registered as platform_device.
-		 * Instead of registering the same device again, just
-		 * add this node to the existing device.
-		 */
-		for_each_device(dev) {
-			if (!dev->resource)
-				continue;
-
-			for (i = 0, match = 0; i < num_reg; i++)
-				for (j = 0; j < dev->num_resources; j++)
-					if (dev->resource[j].start ==
-						res[i].start &&
-					    dev->resource[j].end ==
-						res[i].end) {
-						match++;
-						break;
-					}
-
-			/* check if all address resources match */
-			if (match == num_reg) {
-				debug("connecting %s to %s\n",
-					np->name, dev_name(dev));
-				dev->device_node = np;
-				free(res);
-				return dev;
-			}
-		}
 	}
 
 	/* setup generic device info */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
