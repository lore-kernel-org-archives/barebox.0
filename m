Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5Vmt-0004eG-UQ
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 08:02:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jul 2014 10:02:10 +0200
Message-Id: <1405065733-31407-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405065733-31407-1-git-send-email-s.hauer@pengutronix.de>
References: <1405065733-31407-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] console: Allow persistent device names
To: barebox@lists.infradead.org

Add a devname field to struct console_device so that the device
name can be set by the driver. This makes it possible to have
persistent device names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c  | 10 ++++++++--
 include/console.h |  2 ++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index aa9e3ce..f982366 100644
--- a/common/console.c
+++ b/common/console.c
@@ -170,8 +170,14 @@ int console_register(struct console_device *newcdev)
 	if (initialized == CONSOLE_UNINITIALIZED)
 		console_init_early();
 
-	dev->id = DEVICE_ID_DYNAMIC;
-	strcpy(dev->name, "cs");
+	if (newcdev->devname) {
+		dev->id = DEVICE_ID_SINGLE;
+		strcpy(dev->name, newcdev->devname);
+	} else {
+		dev->id = DEVICE_ID_DYNAMIC;
+		strcpy(dev->name, "cs");
+	}
+
 	if (newcdev->dev)
 		dev->parent = newcdev->dev;
 	platform_device_register(dev);
diff --git a/include/console.h b/include/console.h
index 6da0199..7535a56 100644
--- a/include/console.h
+++ b/include/console.h
@@ -44,6 +44,8 @@ struct console_device {
 	void (*flush)(struct console_device *cdev);
 	int (*set_mode)(struct console_device *cdev, enum console_mode mode);
 
+	char *devname;
+
 	struct list_head list;
 
 	unsigned char f_active;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
