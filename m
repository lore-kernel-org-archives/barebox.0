Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSjI8-0001U7-GG
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 10:43:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Feb 2016 11:43:13 +0100
Message-Id: <1454928193-19306-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] driver: Fix unregister device after device probe failure
To: Barebox List <barebox@lists.infradead.org>
Cc: jbe@pengutronix.de

When a device probe fails the device is removed from the active list.
If then the device is unregistered afterwards it is removed from the
active list again resulting in a crash. To fix this initialize the
devices active list entry when removing it from the active list.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index a70fbb2..c529296 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -101,6 +101,8 @@ int device_probe(struct device_d *dev)
 	}
 
 	list_del(&dev->active);
+	INIT_LIST_HEAD(&dev->active);
+
 	dev_err(dev, "probe failed: %s\n", strerror(-ret));
 
 	return ret;
@@ -258,6 +260,8 @@ static int device_probe_deferred(void)
 
 		list_for_each_entry_safe(dev, tmp, &deferred, active) {
 			list_del(&dev->active);
+			INIT_LIST_HEAD(&dev->active);
+
 			dev_dbg(dev, "re-probe device\n");
 			bus_for_each_driver(dev->bus, drv) {
 				if (match(drv, dev))
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
