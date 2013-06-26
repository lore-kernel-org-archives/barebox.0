Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrkEV-0005PV-Gz
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 07:33:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 09:33:13 +0200
Message-Id: <1372231996-1042-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372231996-1042-1-git-send-email-s.hauer@pengutronix.de>
References: <1372231996-1042-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] driver: implement device_detect_by_name function
To: barebox@lists.infradead.org

It becomes a common pattern for boards to find a device and
call device_detect on it. Add a convenience wrapper for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 10 ++++++++++
 include/driver.h      |  1 +
 2 files changed, 11 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 810d001..16b7f06 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -100,6 +100,16 @@ int device_detect(struct device_d *dev)
 	return dev->detect(dev);
 }
 
+int device_detect_by_name(const char *devname)
+{
+	struct device_d *dev = get_device_by_name(devname);
+
+	if (!dev)
+		return -ENODEV;
+
+	return device_detect(dev);
+}
+
 static int match(struct driver_d *drv, struct device_d *dev)
 {
 	int ret;
diff --git a/include/driver.h b/include/driver.h
index 8b3af4d..b18318f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -159,6 +159,7 @@ int device_probe(struct device_d *dev);
 
 /* detect devices attached to this device (cards, disks,...) */
 int device_detect(struct device_d *dev);
+int device_detect_by_name(const char *devname);
 
 /* Unregister a device. This function can fail, e.g. when the device
  * has children.
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
