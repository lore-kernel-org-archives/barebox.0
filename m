Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x231.google.com ([2a00:1450:4013:c00::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuVp1-0001nG-H3
 for barebox@lists.infradead.org; Wed, 03 Jul 2013 22:46:48 +0000
Received: by mail-ee0-f49.google.com with SMTP id b57so386572eek.8
 for <barebox@lists.infradead.org>; Wed, 03 Jul 2013 15:46:25 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu,  4 Jul 2013 00:46:17 +0200
Message-Id: <1372891578-1871-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372891578-1871-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372891578-1871-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 2/3] OF: base: fix infinite loop in of_find_compatible_node
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

of_find_compatible_node suffers from infinite looping, because it
does not check for root node of the tree iterated over. This adds a
check for parent pointer of last tested iterator entry, which is
NULL for the root node.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Hiroki Nishimoto <hiroki.nishimoto.if@gmail.com>
---
 drivers/of/base.c |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index df71e8c..25f2e96 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -335,9 +335,13 @@ struct device_node *of_find_compatible_node(struct device_node *from,
 	if (!from)
 		from = root_node;
 
-	of_tree_for_each_node(np, from)
+	of_tree_for_each_node(np, from) {
 		if (of_device_is_compatible(np, compatible))
 			return np;
+		/* check for root node */
+		if (!np->parent)
+			break;
+	}
 
 	return NULL;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
