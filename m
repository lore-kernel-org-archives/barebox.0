Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUB9y-0008F0-DR
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 07:27:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Apr 2013 09:27:18 +0200
Message-Id: <1366615643-22213-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
References: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] of: parse phandles before probing devices
To: barebox@lists.infradead.org

The phandles have to be parsed completely before registering the devices
from the devicetree. Otherwise drivers can't rely on of_find_node_by_phandle
in their probe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 24 +++++++++++++++++-------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index d22031f..65d8171 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -873,15 +873,8 @@ static int add_of_device_resource(struct device_node *node)
 	u64 address, size;
 	struct resource *res;
 	struct device_d *dev;
-	phandle phandle;
 	int ret;
 
-	ret = of_property_read_u32(node, "phandle", &phandle);
-	if (!ret) {
-		node->phandle = phandle;
-		list_add_tail(&node->phandles, &phandle_list);
-	}
-
 	ret = of_add_memory(node, false);
 	if (ret != -ENXIO)
 		return ret;
@@ -975,6 +968,22 @@ static void __of_probe(struct device_node *node)
 		__of_probe(n);
 }
 
+static void __of_parse_phandles(struct device_node *node)
+{
+	struct device_node *n;
+	phandle phandle;
+	int ret;
+
+	ret = of_property_read_u32(node, "phandle", &phandle);
+	if (!ret) {
+		node->phandle = phandle;
+		list_add_tail(&node->phandles, &phandle_list);
+	}
+
+	list_for_each_entry(n, &node->children, parent_list)
+		__of_parse_phandles(n);
+}
+
 struct device_node *of_chosen;
 const char *of_model;
 
@@ -991,6 +1000,7 @@ int of_probe(void)
 	of_chosen = of_find_node_by_path(root_node, "/chosen");
 	of_property_read_string(root_node, "model", &of_model);
 
+	__of_parse_phandles(root_node);
 	__of_probe(root_node);
 
 	return 0;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
