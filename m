Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC4-0005GZ-9j
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:33:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:20 +0200
Message-Id: <20170331053323.17821-12-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/14] of: partition: only create partition node when
 partitions exist
To: Barebox List <barebox@lists.infradead.org>

With the legacy partition binding we did not modify the device
node when no partition exist, but with the new binding we would
create the "partitions" node with compatible = "fixed-partitions".
Prevent that by catching the absence of partitions early.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 9b96a39edb..2e2ba35e87 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -131,7 +131,7 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 	struct cdev *cdev = ctx, *partcdev;
 	struct device_node *np, *part, *partnode;
 	int ret;
-	int n_cells;
+	int n_cells, n_parts = 0;
 
 	if (of_partition_binding == MTD_OF_BINDING_DONTTOUCH)
 		return 0;
@@ -139,6 +139,13 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 	if (!cdev->device_node)
 		return -EINVAL;
 
+	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
+		n_parts++;
+	}
+
+	if (!n_parts)
+		return 0;
+
 	if (cdev->size >= 0x100000000)
 		n_cells = 2;
 	else
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
