Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtZ9B-0007by-Jd
 for barebox@lists.infradead.org; Thu, 19 Dec 2013 08:40:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 95129BF0F0
 for <barebox@lists.infradead.org>; Thu, 19 Dec 2013 08:40:37 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 19 Dec 2013 09:39:37 +0100
Message-Id: <1387442377-27773-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] of: find also nodes by mixture of alias and path
To: barebox@lists.infradead.org

Let of_find_node_by_path_or_alias also find a node starting with an alias
followed by a path like "i2c0/tps@24"

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/of/base.c |   22 +++++++++++++++++++++-
 1 files changed, 21 insertions(+), 1 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index ea2d879..dc3d459 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1378,11 +1378,31 @@ EXPORT_SYMBOL(of_find_node_by_path);
 struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
 		const char *str)
 {
+	struct device_node *ret;
+	char *slash, *alias;
+	size_t len = 0;
+
 	if (*str ==  '/')
 		return of_find_node_by_path_from(root, str);
-	else
+
+	slash = _strchr(str, '/');
+
+	if (!slash)
 		return of_find_node_by_alias(root, str);
 
+	len = slash - str + 1;
+	alias = xmalloc(len);
+	strlcpy(alias, str, len);
+
+	ret = of_find_node_by_alias(root, alias);
+
+	if (!ret)
+		goto out;
+
+	ret = of_find_node_by_path_from(ret, slash);
+out:
+	free(alias);
+	return ret;
 }
 EXPORT_SYMBOL(of_find_node_by_path_or_alias);
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
