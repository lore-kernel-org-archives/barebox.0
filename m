Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qssof-00069N-MY
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 08:46:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 10:46:32 +0200
Message-Id: <1313397992-3065-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] devinfo: beautify output
To: barebox@lists.infradead.org

Files associated to a device showed up in a long list. Instead,
print them in seperate lines and also show offset/size information

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |   27 ++++++++++++++-------------
 1 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index b8b2f39..0b80103 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -283,32 +283,33 @@ void devices_shutdown(void)
 }
 
 #ifdef CONFIG_CMD_DEVINFO
-static int do_devinfo_subtree(struct device_d *dev, int depth, char edge)
+static int do_devinfo_subtree(struct device_d *dev, int depth)
 {
 	struct device_d *child;
 	struct cdev *cdev;
 	int i;
 
 	for (i = 0; i < depth; i++)
-		printf("|    ");
+		printf("     ");
 
-	printf("%c----%s", edge, dev_name(dev));
+	printf("`---- %s", dev_name(dev));
 	if (!list_empty(&dev->cdevs)) {
-		printf(" (");
+		printf("\n");
 		list_for_each_entry(cdev, &dev->cdevs, devices_list) {
-			printf("%s", cdev->name);
-			if (!list_is_last(&cdev->devices_list, &dev->cdevs))
-				printf(", ");
+			for (i = 0; i < depth + 1; i++)
+				printf("     ");
+			printf("`---- 0x%08lx-0x%08lx: /dev/%s\n",
+					cdev->offset,
+					cdev->offset + cdev->size - 1,
+					cdev->name);
 		}
-		printf(")");
+	} else {
+		printf("\n");
 	}
-	printf("\n");
 
 	if (!list_empty(&dev->children)) {
 		device_for_each_child(dev, child) {
-			do_devinfo_subtree(child, depth + 1,
-					list_is_last(&child->sibling,
-						&dev->children) ? '`' : '|');
+			do_devinfo_subtree(child, depth + 1);
 		}
 	}
 
@@ -328,7 +329,7 @@ static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
 
 		for_each_device(dev) {
 			if (!dev->parent)
-				do_devinfo_subtree(dev, 0, '|');
+				do_devinfo_subtree(dev, 0);
 		}
 
 		printf("\ndrivers:\n");
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
