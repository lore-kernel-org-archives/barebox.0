Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8j9H-00021C-QB
 for barebox@lists.infradead.org; Thu, 11 May 2017 08:08:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 May 2017 10:08:11 +0200
Message-Id: <20170511080811.18032-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: of_find_node_by_devpath: Fix offset in mtd devices
To: Barebox List <barebox@lists.infradead.org>

When a cdev is a mtd device the partition offset must be used from
there, not from the cdev.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_path.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index a5886dffac..334eab841a 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -142,7 +142,10 @@ struct device_node *of_find_node_by_devpath(struct device_node *root, const char
 	 */
 	if (cdev->master) {
 		is_partition = true;
-		part_offset = cdev->offset;
+		if (cdev->mtd)
+			part_offset = cdev->mtd->master_offset;
+		else
+			part_offset = cdev->offset;
 		part_size = cdev->size;
 		pr_debug("%s path %s: is a partition with offset 0x%08llx, size 0x%08llx\n",
 			 __func__, path, part_offset, part_size);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
