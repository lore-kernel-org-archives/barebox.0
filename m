Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x233.google.com ([2a00:1450:4013:c00::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuWKQ-0000oT-7p
 for barebox@lists.infradead.org; Wed, 03 Jul 2013 23:19:14 +0000
Received: by mail-ee0-f51.google.com with SMTP id e52so399820eek.24
 for <barebox@lists.infradead.org>; Wed, 03 Jul 2013 16:18:48 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu,  4 Jul 2013 01:18:41 +0200
Message-Id: <1372893521-4890-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH] OF: base: fix iterator in of_get_next_available_child
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

of_get_next_available_child does not iterate but always tries the
same node over and over again. This first prepares the entry and
then uses list_for_each_entry_continue, instead of for_each_child_of_node
before.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Note: This should be the last iterator fix required. I have tested all
for_each_ helpers. Thanks for Hiroki for reporting this and the initial
quick fix.

Unfortunately, I found this one after I sent the patch set.

Cc: barebox@lists.infradead.org
Cc: Hiroki Nishimoto <hiroki.nishimoto.if@gmail.com>
---
 drivers/of/base.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0500c86..8c6dbcf 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1352,7 +1352,8 @@ EXPORT_SYMBOL(of_get_parent);
 struct device_node *of_get_next_available_child(const struct device_node *node,
 	struct device_node *prev)
 {
-	for_each_child_of_node(node, prev)
+	prev = list_prepare_entry(prev, &node->children, parent_list);
+	list_for_each_entry_continue(prev, &node->children, parent_list)
 		if (of_device_is_available(prev))
 			return prev;
 	return NULL;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
