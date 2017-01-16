Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002kL-0S
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:50:57 +0100
Message-Id: <20170116105108.13617-13-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/23] of: partitions: force "partitions" subnode
To: Barebox List <barebox@lists.infradead.org>

The binding states that a subnode containing partition subnodes
should have the name "partitions". Enforce this so that we do not
parse nodes with other names which may have partition descriptions
for other disks.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index bdf594562..8c2aef232 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -74,16 +74,16 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 
 int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 {
-	struct device_node *n;
+	struct device_node *n, *subnode;
 
 	if (!node)
 		return -EINVAL;
 
-	for_each_child_of_node(node, n) {
-		if (of_device_is_compatible(n, "fixed-partitions")) {
-			node = n;
-			break;
-		}
+	subnode = of_get_child_by_name(node, "partitions");
+	if (subnode) {
+		if (!of_device_is_compatible(subnode, "fixed-partitions"))
+			return -EINVAL;
+		node = subnode;
 	}
 
 	for_each_child_of_node(node, n) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
