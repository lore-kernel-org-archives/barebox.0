Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXkxM-0006BX-Qe
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 06:26:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Mar 2015 07:25:52 +0100
Message-Id: <1426573554-14478-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] driver: fix device remove order
To: Barebox List <barebox@lists.infradead.org>

The active list is supposed to collect active devices in the
opposite order they are probed. This is used to remove the
devices in the correct order in devices_shutdown. The order
is wrong though when in a drivers probe function other devices
are registered. To get the order right we have to add the new
device to the active list before it is probed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 3363b56..453966b 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -85,14 +85,15 @@ int device_probe(struct device_d *dev)
 
 	pinctrl_select_state_default(dev);
 
+	list_add(&dev->active, &active);
+
 	ret = dev->bus->probe(dev);
 	if (ret) {
+		list_del(&dev->active);
 		dev_err(dev, "probe failed: %s\n", strerror(-ret));
 		return ret;
 	}
 
-	list_add(&dev->active, &active);
-
 	return 0;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
