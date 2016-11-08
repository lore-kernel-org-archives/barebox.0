Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c46fE-0004gy-C1
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 13:42:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2016 14:41:48 +0100
Message-Id: <20161108134149.3811-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] of: partitions: Support new binding
To: Barebox List <barebox@lists.infradead.org>

The new binding recommends to put the partitions into a subnode
with compatible "fixed-partitions". Add support for this binding.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index b6621f7..bdf5945 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -80,6 +80,13 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 		return -EINVAL;
 
 	for_each_child_of_node(node, n) {
+		if (of_device_is_compatible(n, "fixed-partitions")) {
+			node = n;
+			break;
+		}
+	}
+
+	for_each_child_of_node(node, n) {
 		of_parse_partition(cdev, n);
 	}
 
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
