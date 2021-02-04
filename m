Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7cFG-000875-2n
 for barebox@lists.infradead.org; Thu, 04 Feb 2021 10:52:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 Feb 2021 11:50:05 +0100
Message-Id: <20210204105005.30722-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: base: call of_set_root_node() before of_fix_tree()
To: Barebox List <barebox@lists.infradead.org>

This was the original order in the arm code. The mvebu architecture
needs this as it has some early of fixups in the mvebu_mbus code
registered which use of_machine_is_compatible(). This only works
when the root node has been set before running the fixup.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index edb0a8e71a..8759099d74 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1704,8 +1704,8 @@ void barebox_register_of(struct device_node *root)
 	if (root_node)
 		return;
 
-	of_fix_tree(root);
 	of_set_root_node(root);
+	of_fix_tree(root);
 
 	if (IS_ENABLED(CONFIG_OFDEVICE))
 		of_probe();
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
