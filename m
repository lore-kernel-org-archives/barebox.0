Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ef9eO-0007t3-AX
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 19:27:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jan 2018 20:26:44 +0100
Message-Id: <20180126192644.5434-3-s.hauer@pengutronix.de>
In-Reply-To: <20180126192644.5434-1-s.hauer@pengutronix.de>
References: <20180126192644.5434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] of: mtd: partition: Use reproducible node names for fixup
To: Barebox List <barebox@lists.infradead.org>

The full names of device nodes are not as stable as we like them
to be. Lately the leading zeroes in the i.MX6 device trees were
removed which led to the result that we can no longer find the
partition nodes in the to be fixed tree. Use reproducible names
to overcome this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index ac20490231..6f9651a9e4 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -130,6 +130,7 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 {
 	struct cdev *cdev = ctx, *partcdev;
 	struct device_node *np, *part, *partnode;
+	char *name;
 	int ret;
 	int n_cells, n_parts = 0;
 
@@ -153,7 +154,9 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 	else
 		n_cells = 1;
 
-	np = of_find_node_by_path_from(root, cdev->device_node->full_name);
+	name = of_get_reproducible_name(cdev->device_node);
+	np = of_find_node_by_reproducible_name(root, name);
+	free(name);
 	if (!np) {
 		dev_err(cdev->dev, "Cannot find nodepath %s, cannot fixup\n",
 				cdev->device_node->full_name);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
