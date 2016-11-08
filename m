Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c46fE-0004gz-CD
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 13:42:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2016 14:41:49 +0100
Message-Id: <20161108134149.3811-2-s.hauer@pengutronix.de>
In-Reply-To: <20161108134149.3811-1-s.hauer@pengutronix.de>
References: <20161108134149.3811-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] of: of_find_path: Add support for new partition binding
To: Barebox List <barebox@lists.infradead.org>

The partitions now may be in a subnode of the actual device node.
Eventually go another step up in the hierarchy if required.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_path.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 8e1931f..1f5106d 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -56,7 +56,12 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 
 	dev = of_find_device_by_node_path(node->full_name);
 	if (!dev) {
-		dev = of_find_device_by_node_path(node->parent->full_name);
+		struct device_node *devnode = node->parent;
+
+		if (of_device_is_compatible(devnode, "fixed-partitions"))
+			devnode = devnode->parent;
+
+		dev = of_find_device_by_node_path(devnode->full_name);
 		if (!dev)
 			return -ENODEV;
 	}
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
