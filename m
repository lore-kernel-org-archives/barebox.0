Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHWK-0007DA-0w
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 09:06:17 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 14 Apr 2020 11:06:10 +0200
Message-Id: <20200414090610.9119-1-m.tretter@pengutronix.de>
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
Subject: [PATCH] of: use of_get_child_by_name() to find child node
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Michael Tretter <m.tretter@pengutronix.de>

After iterating the children of a node with for_each_child_of_node(),
the child node will never be NULL. If the node was not found,
overlay_child will always point to the first element in the list, which
might or might not be the node that was searched.

Use the of_get_child_by_name() helper function to find the child node
with the name, which does the right thing and returns NULL if the node
is not found.

Reported-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/of/resolver.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/of/resolver.c b/drivers/of/resolver.c
index 9107c1fbb68c..4f720cf860c2 100644
--- a/drivers/of/resolver.c
+++ b/drivers/of/resolver.c
@@ -160,9 +160,7 @@ static int adjust_local_phandle_references(struct device_node *local_fixups,
 	}
 
 	for_each_child_of_node(local_fixups, child) {
-		for_each_child_of_node(overlay, overlay_child)
-			if (!of_node_cmp(child->name, overlay_child->name))
-				break;
+		overlay_child = of_get_child_by_name(overlay, child->name);
 		if (!overlay_child)
 			return -EINVAL;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
