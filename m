Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgtB7-0001E1-RC
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:53:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:52:53 +0200
Message-Id: <1369644775-29887-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
References: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] of: Add of_alias_get function
To: barebox@lists.infradead.org

This is used to retrieve the name of the alias for a given
devicenode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 13 +++++++++++++
 include/of.h      |  6 ++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index e2a8bb5..b58a19b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -212,6 +212,19 @@ int of_alias_get_id(struct device_node *np, const char *stem)
 }
 EXPORT_SYMBOL_GPL(of_alias_get_id);
 
+const char *of_alias_get(struct device_node *np)
+{
+	struct property *pp;
+
+	list_for_each_entry(pp, &of_aliases->properties, list) {
+		if (!strcmp(np->full_name, pp->value))
+			return pp->name;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(of_alias_get);
+
 u64 of_translate_address(struct device_node *node, const __be32 *in_addr)
 {
 	struct property *p;
diff --git a/include/of.h b/include/of.h
index a804ec4..6c75cbd 100644
--- a/include/of.h
+++ b/include/of.h
@@ -178,6 +178,7 @@ struct cdev;
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 
 int of_alias_get_id(struct device_node *np, const char *stem);
+const char *of_alias_get(struct device_node *np);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
@@ -197,6 +198,11 @@ static inline int of_alias_get_id(struct device_node *np, const char *stem)
 	return -ENOENT;
 }
 
+static inline const char *of_alias_get(struct device_node *np)
+{
+	return NULL;
+}
+
 static inline int of_device_is_stdout_path(struct device_d *dev)
 {
 	return 0;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
