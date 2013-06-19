Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x231.google.com ([2a00:1450:4008:c01::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPa-0008L2-FU
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:44 +0000
Received: by mail-bk0-f49.google.com with SMTP id mz10so2211705bkb.8
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:08 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:44 +0200
Message-Id: <1371632991-1504-16-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 15/22] OF: base: import of_parse_phandle from Linux OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports of_parse_phandle from Linux OF API.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |   23 +++++++++++++++++++++++
 include/of.h      |   10 ++++++++++
 2 files changed, 33 insertions(+), 0 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index d58ba4d..486758b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -839,6 +839,29 @@ int of_property_write_u32_array(struct device_node *np,
 }
 
 /**
+ * of_parse_phandle - Resolve a phandle property to a device_node pointer
+ * @np: Pointer to device node holding phandle property
+ * @phandle_name: Name of property holding a phandle value
+ * @index: For properties holding a table of phandles, this is the index into
+ *         the table
+ *
+ * Returns the device_node pointer found or NULL.
+ */
+struct device_node *of_parse_phandle(const struct device_node *np,
+				     const char *phandle_name, int index)
+{
+	const __be32 *phandle;
+	int size;
+
+	phandle = of_get_property(np, phandle_name, &size);
+	if ((!phandle) || (size < sizeof(*phandle) * (index + 1)))
+		return NULL;
+
+	return of_find_node_by_phandle(be32_to_cpup(phandle + index));
+}
+EXPORT_SYMBOL(of_parse_phandle);
+
+/**
  * of_parse_phandles_with_args - Find a node pointed by phandle in a list
  * @np:		pointer to a device tree node containing a list
  * @list_name:	property name that contains a list
diff --git a/include/of.h b/include/of.h
index d94527d..4f5470a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -216,6 +216,10 @@ extern int of_property_match_string(struct device_node *np,
 extern int of_property_count_strings(struct device_node *np,
 				     const char *propname);
 
+extern struct device_node *of_parse_phandle(const struct device_node *np,
+					    const char *phandle_name,
+					    int index);
+
 extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern const char *of_alias_get(struct device_node *np);
@@ -348,6 +352,12 @@ static inline int of_property_count_strings(struct device_node *np,
 	return -ENOSYS;
 }
 
+static inline struct device_node *of_parse_phandle(const struct device_node *np,
+					    const char *phandle_name, int index)
+{
+	return NULL;
+}
+
 static inline struct device_node *of_find_node_by_path_from(
 	struct device_node *from, const char *path)
 {
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
