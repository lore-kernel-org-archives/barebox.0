Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uz5tg-0005gs-Uf
 for barebox@lists.infradead.org; Tue, 16 Jul 2013 14:06:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2013 16:05:57 +0200
Message-Id: <1373983566-27721-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
References: <1373983566-27721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] of: partition: check for valid node
To: barebox@lists.infradead.org

So that users can call the of partition parsers without checking
if they are probed from the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index d69251e..7199eff 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -34,6 +34,9 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	int len;
 	unsigned long flags = 0;
 
+	if (!node)
+		return NULL;
+
 	reg = of_get_property(node, "reg", &len);
 	if (!reg)
 		return NULL;
@@ -67,6 +70,9 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 {
 	struct device_node *n;
 
+	if (!node)
+		return -EINVAL;
+
 	for_each_child_of_node(node, n) {
 		of_parse_partition(cdev, n);
 	}
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
