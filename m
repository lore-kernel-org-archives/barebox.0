Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQRU-0007Dk-HS
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:28:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:28:26 +0200
Message-Id: <1334500111-26382-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
References: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] device: make singular devices possible
To: barebox@lists.infradead.org

Currently all devices have an id meaning that all devicenames
end with a number. This patch adds a DEVICE_ID_SINGLE to make
it ppossible to register a device without an id assigned to
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |    7 +++++--
 include/driver.h      |    5 +++++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index a2674d6..2d206f9 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -103,7 +103,7 @@ int register_device(struct device_d *new_device)
 {
 	struct driver_d *drv;
 
-	if (new_device->id < 0) {
+	if (new_device->id == DEVICE_ID_DYNAMIC) {
 		new_device->id = get_free_deviceid(new_device->name);
 	} else {
 		if (get_device_by_name_id(new_device->name, new_device->id)) {
@@ -302,7 +302,10 @@ const char *dev_id(const struct device_d *dev)
 {
 	static char buf[MAX_DRIVER_NAME + 16];
 
-	snprintf(buf, sizeof(buf), FORMAT_DRIVER_NAME_ID, dev->name, dev->id);
+	if (dev->id != DEVICE_ID_SINGLE)
+		snprintf(buf, sizeof(buf), FORMAT_DRIVER_NAME_ID, dev->name, dev->id);
+	else
+		snprintf(buf, sizeof(buf), "%s", dev->name);
 
 	return buf;
 }
diff --git a/include/driver.h b/include/driver.h
index 3762027..4efa964 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -126,6 +126,11 @@ struct driver_d {
 #define RW_SIZE(x)      (x)
 #define RW_SIZE_MASK    0x7
 
+/* dynamically assign the next free id */
+#define DEVICE_ID_DYNAMIC	-1
+/* do not use an id (only one device available */
+#define DEVICE_ID_SINGLE	-2
+
 /* Register devices and drivers.
  */
 int register_driver(struct driver_d *);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
