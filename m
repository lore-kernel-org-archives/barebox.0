Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XD6QW-0002oy-IS
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 06:34:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Aug 2014 08:34:27 +0200
Message-Id: <1406874867-17094-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of_partition: devfs_add_partition returns an error pointer
To: barebox@lists.infradead.org

Check for the return value of devfs_add_partition with IS_ERR.
Otherwise we dereference a NULL pointer when devfs_add_partition
fails.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index e2ddec5..3dce844 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -21,6 +21,7 @@
 #include <of.h>
 #include <malloc.h>
 #include <linux/mtd/mtd.h>
+#include <linux/err.h>
 #include <nand.h>
 
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
@@ -60,6 +61,9 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	filename = asprintf("%s.%s", cdev->name, partname);
 
 	new = devfs_add_partition(cdev->name, offset, size, flags, filename);
+	if (IS_ERR(new))
+		new = NULL;
+
 	if (new && new->dev)
 		new->dev->device_node = node;
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
