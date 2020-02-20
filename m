Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ffG-0006cp-Nf
 for barebox@lists.infradead.org; Thu, 20 Feb 2020 06:50:28 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 20 Feb 2020 07:50:05 +0100
Message-Id: <20200220065005.1387198-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 1/2] of: demote symbol copy error from warning to info
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

An overlay might not contain a symbol node, in case it only adds new
nodes to the device tree. Reword the error message and switch it from
warning to info.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/of/overlay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index de79e05cbc..9c1d5b5bcb 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -173,7 +173,7 @@ int of_overlay_apply_tree(struct device_node *root,
 	/* Copy symbols from resolved overlay to base device tree */
 	err = of_overlay_apply_symbols(root, resolved);
 	if (err)
-		pr_warn("failed to copy symbols from overlay");
+		pr_info("could not copy symbols from overlay\n");
 
 	/* Copy nodes and properties from resolved overlay to root */
 	for_each_child_of_node(resolved, fragment) {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
