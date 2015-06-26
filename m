Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z8O6l-0005g7-Dc
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 07:31:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jun 2015 09:31:01 +0200
Message-Id: <1435303867-12889-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
References: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] driver: detect: detect parent devices aswell
To: Barebox List <barebox@lists.infradead.org>

Let device_detect_by_name detect parent devices aswell. We
separate the devname strings by colons and call device_detect()
for each component. This makes it possible for example to

detect nand0.root.ubi.root

With the above detect will be called for nand0, nand0.root, nand0.root.ubi
and nand0.root.ubi.root. The nand0.root detection step will detect the
UBI volume and attach it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 24cb5bc..338bea1 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -113,14 +113,29 @@ int device_detect(struct device_d *dev)
 	return dev->detect(dev);
 }
 
-int device_detect_by_name(const char *devname)
+int device_detect_by_name(const char *__devname)
 {
-	struct device_d *dev = get_device_by_name(devname);
+	char *devname = xstrdup(__devname);
+	char *str = devname;
+	struct device_d *dev;
+	int ret = -ENODEV;
+
+	while (1) {
+		strsep(&str, ".");
+
+		dev = get_device_by_name(devname);
+		if (dev)
+			ret = device_detect(dev);
 
-	if (!dev)
-		return -ENODEV;
+		if (!str)
+			break;
+		else
+			*(str - 1) = '.';
+	}
 
-	return device_detect(dev);
+	free(devname);
+
+	return ret;
 }
 
 static int match(struct driver_d *drv, struct device_d *dev)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
