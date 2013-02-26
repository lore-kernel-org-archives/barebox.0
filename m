Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzN-0000cC-2K
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:28 +0100
Message-Id: <1361909936-2665-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/29] of: unflatten: allocate root node explicitly
To: barebox@lists.infradead.org

By doing so of_new_node does not depend on the global root_node
anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index eaaeaf4..e853add 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -890,7 +890,7 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 	const struct fdt_property *fdt_prop;
 	const char *pathp;
 	int depth = 10000;
-	struct device_node *node = NULL, *n;
+	struct device_node *node = NULL, *n, *root = NULL;
 	struct property *p;
 
 	nodeoffset = fdt_path_offset(fdt, "/");
@@ -903,6 +903,10 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 		return -EINVAL;
 	}
 
+	root = of_new_node(NULL, NULL);
+	if (!root)
+		return -ENOMEM;
+
 	while (1) {
 		tag = fdt_next_tag(fdt, nodeoffset, &nextoffset);
 		switch (tag) {
@@ -912,11 +916,14 @@ int of_unflatten_dtb(struct fdt_header *fdt)
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
