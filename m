Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta4Lj-0001AU-GR
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 12:51:48 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 00B64DC397D
 for <barebox@lists.infradead.org>; Sun, 18 Nov 2012 13:59:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 18 Nov 2012 13:49:39 +0100
Message-Id: <1353242985-7539-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121118124627.GE8327@game.jcrosoft.org>
References: <20121118124627.GE8327@game.jcrosoft.org>
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
Subject: [PATCH 1/7] driver: introduce device_probe to manully probe a device
To: barebox@lists.infradead.org

This will expect a driver to be specified
This is needed by the phylib the probe the generic phy if not driver found

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/driver.c |   23 +++++++++++++++++------
 include/driver.h      |    5 +++++
 2 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index dc2df91..1f4031a 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -75,6 +75,21 @@ int get_free_deviceid(const char *name_template)
 	};
 }
 
+int device_probe(struct device_d *dev)
+{
+	int ret;
+
+	ret = dev->bus->probe(dev);
+	if (ret) {
+		dev_err(dev, "probe failed: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	list_add(&dev->active, &active);
+
+	return 0;
+}
+
 static int match(struct driver_d *drv, struct device_d *dev)
 {
 	int ret;
@@ -86,13 +101,9 @@ static int match(struct driver_d *drv, struct device_d *dev)
 
 	if (dev->bus->match(dev, drv))
 		goto err_out;
-	ret = dev->bus->probe(dev);
-	if (ret) {
-		dev_err(dev, "probe failed: %s\n", strerror(-ret));
+	ret = device_probe(dev);
+	if (ret)
 		goto err_out;
-	}
-
-	list_add(&dev->active, &active);
 
 	return 0;
 err_out:
diff --git a/include/driver.h b/include/driver.h
index f8d815c..a085981 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -148,6 +148,11 @@ struct driver_d {
 int register_driver(struct driver_d *);
 int register_device(struct device_d *);
 
+/* manualy probe a device
+ * the driver need to be specified
+ */
+int device_probe(struct device_d *dev);
+
 /* Unregister a device. This function can fail, e.g. when the device
  * has children.
  */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
