Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2CC5-0005VA-M8
 for barebox@lists.infradead.org; Thu, 13 Feb 2020 10:58:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2020 11:58:03 +0100
Message-Id: <20200213105803.32096-3-s.hauer@pengutronix.de>
In-Reply-To: <20200213105803.32096-1-s.hauer@pengutronix.de>
References: <20200213105803.32096-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] driver: Call of_clk_set_defaults for each probed device
To: Barebox List <barebox@lists.infradead.org>

So far we only honour the assigned-clocks and assigned-clock-rates
device tree properties for the clock controller nodes. With this patch
we also honour the properties for each device which is done by Linux
as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index eec2a2d8a2..247456a2c6 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -36,6 +36,7 @@
 #include <linux/err.h>
 #include <complete.h>
 #include <pinctrl.h>
+#include <linux/clk/clk-conf.h>
 
 LIST_HEAD(device_list);
 EXPORT_SYMBOL(device_list);
@@ -86,6 +87,7 @@ int device_probe(struct device_d *dev)
 	int ret;
 
 	pinctrl_select_state_default(dev);
+	of_clk_set_defaults(dev->device_node, false);
 
 	list_add(&dev->active, &active);
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
