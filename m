Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aA5AU-0001ya-5R
 for barebox@lists.infradead.org; Sat, 19 Dec 2015 00:14:38 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Sat, 19 Dec 2015 00:13:59 +0000
Message-ID: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <B38B79F90374414081565DBA9150CE4C@kymetacorp.com>
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
Subject: [PATCH 1/2] of: Add for_each_compatible_node_from iterator
To: barebox <barebox@lists.infradead.org>

The existing iterator for_each_compatible_node() searches for each
compatible node starting from the root of the loaded device tree.
This means it only works on the barebox device tree and not the tree
to be passed to the Linux kernel, which is what an of_fixup would
probably want to use.

This adds for_each_compatible_node_from(), which takes an additional
parameter of a root to search from.  This could be the device tree to
be used for the kernel.  It could also be used to search just a
subtree.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---

It's possible the fixups in cm_cogent_fixup() and hb_fixup() should
be using this.  It's not clear to me if they want to modify the barebox
device tree or the Linux device tree or both.

 include/of.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/of.h b/include/of.h
index e60fe89..e65a8e8 100644
--- a/include/of.h
+++ b/include/of.h
@@ -641,9 +641,13 @@ static inline struct device_node *of_find_node_by_path_or_alias(
 #define for_each_node_by_name_from(dn, root, name) \
 	for (dn = of_find_node_by_name(root, name); dn; \
 	     dn = of_find_node_by_name(dn, name))
-#define for_each_compatible_node(dn, type, compatible) \
-	for (dn = of_find_compatible_node(NULL, type, compatible); dn; \
+/* Iterate over compatible nodes starting from given root */
+#define for_each_compatible_node_from(dn, root, type, compatible) \
+	for (dn = of_find_compatible_node(root, type, compatible); dn; \
 	     dn = of_find_compatible_node(dn, type, compatible))
+/* Iterate over compatible nodes in default device tree */
+#define for_each_compatible_node(dn, type, compatible) \
+        for_each_compatible_node_from(dn, NULL, type, compatible
 static inline struct device_node *of_find_matching_node(
 	struct device_node *from,
 	const struct of_device_id *matches)
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
