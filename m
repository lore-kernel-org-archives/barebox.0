Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSsmq-0000rv-LA
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 19:47:26 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 91A4026C2001
 for <barebox@lists.infradead.org>; Tue,  3 Mar 2015 20:46:27 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Mar 2015 20:46:13 +0100
Message-Id: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 01/11] of: make of_alias_get work on all types of DT paths
To: barebox@lists.infradead.org

of_alias_get assumed that a DT path is always the full node path,
whic is not necessarily the case, as there are other valid path
descriptions. All of them are handled by of_find_node_by_path.

As there is already a preparsed list with all DT aliases that handles
this case properly we can simply reuse that one.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/of/base.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index af10fd1..b77d879 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -227,11 +227,11 @@ EXPORT_SYMBOL_GPL(of_alias_get_id);
 
 const char *of_alias_get(struct device_node *np)
 {
-	struct property *pp;
+	struct alias_prop *app;
 
-	list_for_each_entry(pp, &of_aliases->properties, list) {
-		if (!of_node_cmp(np->full_name, pp->value))
-			return pp->name;
+	list_for_each_entry(app, &aliases_lookup, link) {
+		if (np == app->np)
+			return app->alias;
 	}
 
 	return NULL;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
