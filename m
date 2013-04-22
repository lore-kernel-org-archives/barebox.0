Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUB9q-0008Cm-G7
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 07:27:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Apr 2013 09:27:23 +0200
Message-Id: <1366615643-22213-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
References: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] of: partitions: create bb device for nand flashes
To: barebox@lists.infradead.org

For nand flashes automatically create a bb device for each partion.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index a78466b..2d70cf5 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -21,6 +21,7 @@
 #include <of.h>
 #include <malloc.h>
 #include <linux/mtd/mtd.h>
+#include <nand.h>
 
 int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 {
@@ -56,6 +57,9 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 
 		devfs_add_partition(cdev->name, offset, size, flags, filename);
 
+		if (cdev->mtd && cdev->mtd->type == MTD_NANDFLASH)
+			dev_add_bb_dev(filename, NULL);
+
 		free(filename);
 	}
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
