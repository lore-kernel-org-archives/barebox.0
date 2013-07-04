Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UudVd-0008LQ-Lx
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 06:59:19 +0000
Date: Thu, 4 Jul 2013 08:58:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130704065853.GS516@pengutronix.de>
References: <1372891578-1871-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372891578-1871-2-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372891578-1871-2-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 1/3] OF: base: fix infinite loop in of_find_node_by_name
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Hi Sebastian, NISHIMOTO Hiroki,

On Thu, Jul 04, 2013 at 12:46:16AM +0200, Sebastian Hesselbarth wrote:
> of_find_node_by_name suffers from infinite looping, because it
> does not check for root node of the tree iterated over. This adds a
> check for parent pointer of last tested iterator entry, which is
> NULL for the root node.
> 

How about the following which adds the check to the iterator instead of
repeating it in the users.

Sascha

8<---------------------------------------------------------------

From 3f361661e5446b0592f137a50efc4b275f426b41 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 4 Jul 2013 08:52:10 +0200
Subject: [PATCH] OF: base: fix inifinite looping in node iterators

of_find_node_by_name suffers from infinite looping, because it
does not check for root node of the tree iterated over. This
fixes this by checking for node->parent to determine whether
the last node has been reached.
Since of_tree_for_each_node does not iterate over the whole tree,
but only over the remaining nodes, rename it to
of_tree_for_each_node_from.

Reported-by: NISHIMOTO Hiroki <hiroki.nishimoto.if@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 63ff647..74d4748 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -33,8 +33,17 @@
  * have a dedicated list head, the start node (usually the root
  * node) will not be iterated over.
  */
-#define of_tree_for_each_node(node, root) \
-	list_for_each_entry(node, &root->list, list)
+static inline struct device_node *of_next_node(struct device_node *node)
+{
+	struct device_node *next;
+
+	next = list_first_entry(&node->list, struct device_node, list);
+
+	return next->parent ? next : NULL;
+}
+
+#define of_tree_for_each_node_from(node, from) \
+	for (node = of_next_node(from); node; node = of_next_node(node))
 
 /**
  * struct alias_prop - Alias property in 'aliases' node
@@ -337,7 +346,7 @@ struct device_node *of_find_node_by_name(struct device_node *from,
 	if (!from)
 		from = root_node;
 
-	of_tree_for_each_node(np, from)
+	of_tree_for_each_node_from(np, from)
 		if (np->name && !of_node_cmp(np->name, name))
 			return np;
 
@@ -367,7 +376,7 @@ struct device_node *of_find_compatible_node(struct device_node *from,
 	if (!from)
 		from = root_node;
 
-	of_tree_for_each_node(np, from)
+	of_tree_for_each_node_from(np, from)
 		if (of_device_is_compatible(np, compatible))
 			return np;
 
@@ -391,7 +400,7 @@ struct device_node *of_find_node_with_property(struct device_node *from,
 {
 	struct device_node *np;
 
-	of_tree_for_each_node(np, from) {
+	of_tree_for_each_node_from(np, from) {
 		struct property *pp = of_find_property(np, prop_name, NULL);
 		if (pp)
 			return np;
@@ -447,7 +456,7 @@ struct device_node *of_find_matching_node_and_match(struct device_node *from,
 	if (!from)
 		from = root_node;
 
-	of_tree_for_each_node(np, from) {
+	of_tree_for_each_node_from(np, from) {
 		const struct of_device_id *m = of_match_node(matches, np);
 		if (m) {
 			if (match)
-- 
1.8.3.2

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
