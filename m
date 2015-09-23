Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zelu6-0005cW-Lx
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 15:24:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 17:23:56 +0200
Message-Id: <1443021836-10430-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of_fix_tree: fo not fail when fixup fails
To: Barebox List <barebox@lists.infradead.org>

When a device tree fixup fails it is worth printing a warning, but
we should not fail booting.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index cafe46c..d408f14 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -189,11 +189,9 @@ int of_fix_tree(struct device_node *node)
 
 	list_for_each_entry(of_fixup, &of_fixup_list, list) {
 		ret = of_fixup->fixup(node, of_fixup->context);
-		if (ret) {
-			pr_err("Failed to fixup node in %pS: %s\n",
+		if (ret)
+			pr_warn("Failed to fixup node in %pS: %s\n",
 					of_fixup->fixup, strerror(-ret));
-			return ret;
-		}
 	}
 
 	return 0;
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
