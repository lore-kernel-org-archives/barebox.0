Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZJIT-0005cN-Sr
 for barebox@lists.infradead.org; Tue, 08 Sep 2015 13:50:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Sep 2015 15:50:30 +0200
Message-Id: <1441720230-19670-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of_fix_tree: Print error message
To: Barebox List <barebox@lists.infradead.org>

When a of_fixup handler fails add a meaningful error message so
that the user gets a clue what might have gone wrong.

Suggested-by: Enrico Joerns <ejo@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/oftree.c b/common/oftree.c
index f75d7b4..cafe46c 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -189,8 +189,11 @@ int of_fix_tree(struct device_node *node)
 
 	list_for_each_entry(of_fixup, &of_fixup_list, list) {
 		ret = of_fixup->fixup(node, of_fixup->context);
-		if (ret)
+		if (ret) {
+			pr_err("Failed to fixup node in %pS: %s\n",
+					of_fixup->fixup, strerror(-ret));
 			return ret;
+		}
 	}
 
 	return 0;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
