Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPe-0003ny-DD
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:31 +0100
Message-Id: <20171201112256.20196-3-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-1-s.hauer@pengutronix.de>
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/27] driver: Add device_detect_all() function
To: Barebox List <barebox@lists.infradead.org>

Add a device_detect_all function to detect all devices and use it
in the detect command. This makes the functionality reusable in other
code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/detect.c     | 4 +---
 drivers/base/driver.c | 8 ++++++++
 include/driver.h      | 1 +
 3 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/commands/detect.c b/commands/detect.c
index d68d738453..48bab4d020 100644
--- a/commands/detect.c
+++ b/commands/detect.c
@@ -54,9 +54,7 @@ static int do_detect(int argc, char *argv[])
 	}
 
 	if (option_all) {
-		for_each_device(dev)
-			device_detect(dev);
-
+		device_detect_all();
 		return 0;
 	}
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 83260990af..c43a4bde2a 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -140,6 +140,14 @@ int device_detect_by_name(const char *__devname)
 	return ret;
 }
 
+void device_detect_all(void)
+{
+	struct device_d *dev;
+
+	for_each_device(dev)
+		device_detect(dev);
+}
+
 static int match(struct driver_d *drv, struct device_d *dev)
 {
 	int ret;
diff --git a/include/driver.h b/include/driver.h
index 8617872053..e571fbbec5 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -134,6 +134,7 @@ int device_probe(struct device_d *dev);
 /* detect devices attached to this device (cards, disks,...) */
 int device_detect(struct device_d *dev);
 int device_detect_by_name(const char *devname);
+void device_detect_all(void);
 
 /* Unregister a device. This function can fail, e.g. when the device
  * has children.
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
