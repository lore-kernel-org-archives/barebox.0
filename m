Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x235.google.com ([2a00:1450:4008:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPK-0004z5-Px
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:40 +0000
Received: by mail-bk0-f53.google.com with SMTP id e11so2220627bkh.12
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:04 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:37 +0200
Message-Id: <1371632991-1504-9-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 08/22] OF: base: rename of_node_disabled to
 of_device_is_available
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

According to ePAPR 1.1 spec, device tree nodes status can be either
"okay", "disabled", "fail", or "fail-sss". Barebox already has a function
to check for "disabled" nodes, while Linux checks for "okay" or "ok".
To synchronize Barebox and Linux OF APIs, rename of_node_disabled to
of_device_is_available and check for "okay" instead of "disabled" as it
also makes "fail"ed devices unavailable.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   26 ++++++++++++++++++++------
 include/of.h      |    6 ++++++
 2 files changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index f822f8d..2176251 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -730,17 +730,31 @@ int of_set_root_node(struct device_node *node)
 	return 0;
 }
 
-static int of_node_disabled(struct device_node *node)
+/**
+ *  of_device_is_available - check if a device is available for use
+ *
+ *  @device: Node to check for availability
+ *
+ *  Returns 1 if the status property is absent or set to "okay" or "ok",
+ *  0 otherwise
+ */
+int of_device_is_available(const struct device_node *device)
 {
-	struct property *p;
+	const char *status;
+	int statlen;
+
+	status = of_get_property(device, "status", &statlen);
+	if (status == NULL)
+		return 1;
 
-	p = of_find_property(node, "status", NULL);
-	if (p) {
-		if (!strcmp("disabled", p->value))
+	if (statlen > 0) {
+		if (!strcmp(status, "okay") || !strcmp(status, "ok"))
 			return 1;
 	}
+
 	return 0;
 }
+EXPORT_SYMBOL(of_device_is_available);
 
 void of_print_nodes(struct device_node *node, int indent)
 {
@@ -934,7 +948,7 @@ static struct device_d *add_of_device(struct device_node *node,
 {
 	const struct property *cp;
 
-	if (of_node_disabled(node))
+	if (!of_device_is_available(node))
 		return NULL;
 
 	cp = of_get_property(node, "compatible", NULL);
diff --git a/include/of.h b/include/of.h
index a56587f..56b7be1 100644
--- a/include/of.h
+++ b/include/of.h
@@ -185,6 +185,7 @@ extern struct property *of_find_property(const struct device_node *np,
 extern struct device_node *of_find_node_by_path_from(struct device_node *from,
 						const char *path);
 extern struct device_node *of_find_node_by_path(const char *path);
+extern int of_device_is_available(const struct device_node *device);
 
 extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
@@ -248,6 +249,11 @@ static inline struct device_node *of_find_node_by_path(const char *path)
 	return NULL;
 }
 
+static inline int of_device_is_available(const struct device_node *device)
+{
+	return 0;
+}
+
 static inline void of_alias_scan(void)
 {
 }
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
