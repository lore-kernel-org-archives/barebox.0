Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5Y-0006Va-9w
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:04 +0100
Message-Id: <1362390820-10333-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/37] of: unflatten: allocate root node explicitly
To: barebox@lists.infradead.org

By doing so of_new_node does not depend on the global root_node
anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index fd9b8e1..d134f1e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -946,7 +946,7 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 	const struct fdt_property *fdt_prop;
 	const char *pathp;
 	int depth = 10000;
-	struct device_node *node = NULL, *n;
+	struct device_node *node = NULL, *n, *root = NULL;
 	struct property *p;
 
 	nodeoffset = fdt_path_offset(fdt, "/");
@@ -959,6 +959,10 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 		return -EINVAL;
 	}
 
+	root = of_new_node(NULL, NULL);
+	if (!root)
+		return -ENOMEM;
+
 	while (1) {
 		tag = fdt_next_tag(fdt, nodeoffset, &nextoffset);
 		switch (tag) {
@@ -968,11 +972,14 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 			if (pathp == NULL)
 				pathp = "/* NULL pointer error */";
 
-			n = of_find_child(node, pathp);
-			if (n) {
-				node = n;
+			if (!node) {
+				node = root;
 			} else {
-				node = of_new_node(node, pathp);
+				if ((n = of_find_child(node, pathp))) {
+					node = n;
+				} else {
+					node = of_new_node(node, pathp);
+				}
 			}
 			break;
 		case FDT_END_NODE:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
