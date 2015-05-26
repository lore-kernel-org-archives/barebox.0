Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxD7m-00046H-Im
 for barebox@lists.infradead.org; Tue, 26 May 2015 11:34:23 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 13:33:57 +0200
Message-Id: <1432640037-31754-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] fixup! state: add fixup to copy state from barebox to kernel
 device tree
To: barebox@lists.infradead.org

During of_state_fixup() we have to write the #address-cells and #size-cells
property of the node we're copying the data to, not the "root" node of the
device tree we're working on.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/state.c b/common/state.c
index cc0e168a7b99..655c9a63e333 100644
--- a/common/state.c
+++ b/common/state.c
@@ -737,11 +737,11 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 		goto out;
 
 	/* address-cells + size-cells */
-	ret = of_property_write_u32(root, "#address-cells", 1);
+	ret = of_property_write_u32(new_node, "#address-cells", 1);
 	if (ret)
 		goto out;
 
-	ret = of_property_write_u32(root, "#size-cells", 1);
+	ret = of_property_write_u32(new_node, "#size-cells", 1);
 	if (ret)
 		goto out;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
