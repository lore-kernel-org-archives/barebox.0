Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lETR6-0000p0-K1
 for barebox@lists.infradead.org; Tue, 23 Feb 2021 08:52:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Feb 2021 09:52:49 +0100
Message-Id: <20210223085249.29780-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] of: fdt: Add root name checks during unflattening
To: Barebox List <barebox@lists.infradead.org>

In a valid dtb the root node must have an empty name. Also, every other
node name must be non empty. Add additional checks for this for better
protection against invalid dtbs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/fdt.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index a31e2c348a..d98913e54a 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -184,10 +184,21 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, bool constprops
 				goto err;
 			}
 
-			if (!node)
+			if (!node) {
+				/* The root node must have an empty name */
+				if (*pathp) {
+					ret = -EINVAL;
+					goto err;
+				}
 				node = root;
-			else
+			} else {
+				/* Only the root node may have an empty name */
+				if (!*pathp) {
+					ret = -EINVAL;
+					goto err;
+				}
 				node = of_new_node(node, pathp);
+			}
 
 			dt_struct = dt_struct_advance(&f, dt_struct,
 					sizeof(struct fdt_node_header) + len + 1);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
