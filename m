Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dShzT-000611-93
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 10:57:06 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  5 Jul 2017 12:56:34 +0200
Message-Id: <20170705105637.4484-5-s.trumtrar@pengutronix.de>
In-Reply-To: <20170705105637.4484-1-s.trumtrar@pengutronix.de>
References: <20170705105637.4484-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 5/8] of: of_path: find device via partuuid
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

When a node is compatible to a fixed-partitions, support searching the
corresponding device via the partuuid, if it is specified in the devicetree.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/of/of_path.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 334eab841a01..e53041b0a16c 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -56,11 +56,26 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 
 	dev = of_find_device_by_node_path(node->full_name);
 	if (!dev) {
+		int ret;
+		const char *uuid;
 		struct device_node *devnode = node->parent;
 
-		if (of_device_is_compatible(devnode, "fixed-partitions"))
+		if (of_device_is_compatible(devnode, "fixed-partitions")) {
 			devnode = devnode->parent;
 
+			/* when partuuid is specified short-circuit the search for the cdev */
+			ret = of_property_read_string(node, "partuuid", &uuid);
+			if (!ret) {
+				cdev = cdev_by_partuuid(uuid);
+				if (!cdev)
+					return -ENODEV;
+
+				*outpath = basprintf("/dev/%s", cdev->name);
+
+				return 0;
+			}
+		}
+
 		dev = of_find_device_by_node_path(devnode->full_name);
 		if (!dev)
 			return -ENODEV;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
