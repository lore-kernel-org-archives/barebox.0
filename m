Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKpD8-0006fu-GQ
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 11:39:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Oct 2012 13:39:47 +0200
Message-Id: <1349609991-26567-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
References: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] driver: print error message when probe fails
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 6c8fd05..7bb3ab4 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -77,6 +77,8 @@ int get_free_deviceid(const char *name_template)
 
 static int match(struct driver_d *drv, struct device_d *dev)
 {
+	int ret;
+
 	if (dev->driver)
 		return -1;
 
@@ -84,8 +86,11 @@ static int match(struct driver_d *drv, struct device_d *dev)
 
 	if (dev->bus->match(dev, drv))
 		goto err_out;
-	if (dev->bus->probe(dev))
+	ret = dev->bus->probe(dev);
+	if (ret) {
+		dev_err(dev, "probe failed: %s\n", strerror(-ret));
 		goto err_out;
+	}
 
 	list_add(&dev->active, &active);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
