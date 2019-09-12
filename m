Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KZS-0001Yh-I0
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 08:35:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Sep 2019 10:35:03 +0200
Message-Id: <20190912083505.4162-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] of: Fix memory hole in of_find_node_by_reproducible_name()
To: Barebox List <barebox@lists.infradead.org>

of_get_reproducible_name() returns an allocated string, so we must free
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 838f530f85..22077fa397 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2306,9 +2306,17 @@ struct device_node *of_find_node_by_reproducible_name(struct device_node *from,
 {
 	struct device_node *np;
 
-	of_tree_for_each_node_from(np, from)
-		if (!of_node_cmp(of_get_reproducible_name(np), name))
+	of_tree_for_each_node_from(np, from) {
+		char *rep = of_get_reproducible_name(np);
+		int res;
+
+		res = of_node_cmp(rep, name);
+
+		free(rep);
+
+		if (!res)
 			return np;
+	}
 	return NULL;
 }
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
