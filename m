Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uozjw-0006ow-8d
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 17:30:46 +0000
Received: by mail-bk0-f48.google.com with SMTP id jf17so1900806bkc.7
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 10:30:22 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 18 Jun 2013 19:29:49 +0200
Message-Id: <1371576607-8090-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 04/22] OF: base: export of_alias_scan
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

To prepare clean-up of OF API, we need to export of_alias_scan.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |    3 ++-
 include/of.h      |   31 ++++++++++++++++++-------------
 2 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 616b93d..f3ed836 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -135,7 +135,7 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
  * the global lookup table with the properties.  It returns the
  * number of alias_prop found, or error code in error case.
  */
-static void of_alias_scan(void)
+void of_alias_scan(void)
 {
 	struct property *pp;
 	struct alias_prop *app, *tmp;
@@ -187,6 +187,7 @@ static void of_alias_scan(void)
 		of_alias_add(ap, np, id, start, len);
 	}
 }
+EXPORT_SYMBOL(of_alias_scan);
 
 /**
  * of_alias_get_id - Get alias id for the given device_node
diff --git a/include/of.h b/include/of.h
index 300b706..8a69793 100644
--- a/include/of.h
+++ b/include/of.h
@@ -178,10 +178,11 @@ const struct of_device_id *of_match_node(const struct of_device_id *matches,
 struct cdev;
 
 #ifdef CONFIG_OFTREE
-int of_parse_partitions(struct cdev *cdev, struct device_node *node);
+extern void of_alias_scan(void);
+extern int of_alias_get_id(struct device_node *np, const char *stem);
+extern const char *of_alias_get(struct device_node *np);
 
-int of_alias_get_id(struct device_node *np, const char *stem);
-const char *of_alias_get(struct device_node *np);
+int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
@@ -196,16 +197,6 @@ static inline int of_parse_partitions(struct cdev *cdev,
 	return -EINVAL;
 }
 
-static inline int of_alias_get_id(struct device_node *np, const char *stem)
-{
-	return -ENOENT;
-}
-
-static inline const char *of_alias_get(struct device_node *np)
-{
-	return NULL;
-}
-
 static inline int of_device_is_stdout_path(struct device_d *dev)
 {
 	return 0;
@@ -230,6 +221,20 @@ static inline struct device_node *of_get_root_node(void)
 {
 	return NULL;
 }
+
+static inline void of_alias_scan(void)
+{
+}
+
+static inline int of_alias_get_id(struct device_node *np, const char *stem)
+{
+	return -ENOSYS;
+}
+
+static inline const char *of_alias_get(struct device_node *np)
+{
+	return NULL;
+}
 #endif
 
 #endif /* __OF_H */
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
