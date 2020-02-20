Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ffO-0006g5-2a
 for barebox@lists.infradead.org; Thu, 20 Feb 2020 06:50:35 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 20 Feb 2020 07:50:07 +0100
Message-Id: <20200220065005.1387198-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20200220065005.1387198-1-r.czerwinski@pengutronix.de>
References: <20200220065005.1387198-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/2] of: add missing newline to pr_warn
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add a missing newline to the pr_warn call while applying the overlays.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/of/overlay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 9c1d5b5bcb..593be39428 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -179,7 +179,7 @@ int of_overlay_apply_tree(struct device_node *root,
 	for_each_child_of_node(resolved, fragment) {
 		err = of_overlay_apply_fragment(root, fragment);
 		if (err)
-			pr_warn("failed to apply %s", fragment->name);
+			pr_warn("failed to apply %s\n", fragment->name);
 	}
 
 	of_delete_node(resolved);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
