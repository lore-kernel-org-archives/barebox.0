Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtUa-0001J3-KD
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:26:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:25:32 +0100
Message-Id: <1392287135-445-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
References: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] mtd: Only call of_parse_partitions when the mtd has a
 parent
To: barebox@lists.infradead.org

mtd->parent is optional so we can't derefence mtd->parent->device_node
without checking mtd->parent.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index e4def2a..ecdd6c7 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -407,7 +407,9 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	}
 
 	devfs_create(&mtd->cdev);
-	of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
+
+	if (mtd->parent)
+		of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
 
 	list_for_each_entry(hook, &mtd_register_hooks, hook)
 		if (hook->add_mtd_device)
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
