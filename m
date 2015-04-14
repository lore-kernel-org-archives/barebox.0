Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yhv7b-000355-RG
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 07:19:00 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 14 Apr 2015 09:18:35 +0200
Message-Id: <1428995915-26349-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] environment: remove unused code
To: barebox@lists.infradead.org

This patch removes the LIST_HEAD of_partition_list and a struct definition from
the code. This was present but unused, since the file was added to barebox.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/of/barebox.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 224674240e7c..0220bc6b3123 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -26,15 +26,6 @@
 #include <envfs.h>
 #include <linux/mtd/mtd.h>
 
-struct of_partition {
-	struct list_head list;
-	char *nodepath;
-	struct device_d *dev;
-	struct device_node *of_partitions;
-};
-
-static LIST_HEAD(of_partition_list);
-
 static int environment_probe(struct device_d *dev)
 {
 	char *path;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
