Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x232.google.com ([2a00:1450:4008:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uozpo-00077X-8A
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 17:36:55 +0000
Received: by mail-bk0-f50.google.com with SMTP id ik8so1941823bkc.9
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 10:36:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 18 Jun 2013 19:30:01 +0200
Message-Id: <1371576607-8090-17-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 16/22] OF: base: import parse phandle functions from Linux OF
 API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports of_parse_phandle_with_args and of_count_phandle_with_args
from Linux OF API. The slightly different of_parse_phandles_with_args
is removed and all users are converted to reflect the API change.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c              |  188 +++++++++++++++++++++++++---------------
 drivers/of/gpio.c              |    9 +-
 drivers/usb/imx/chipidea-imx.c |   11 +--
 include/of.h                   |   30 ++++++-
 4 files changed, 151 insertions(+), 87 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index e729a65..a3a9aac 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -862,17 +862,16 @@ struct device_node *of_parse_phandle(const struct device_node *np,
 EXPORT_SYMBOL(of_parse_phandle);
 
 /**
- * of_parse_phandles_with_args - Find a node pointed by phandle in a list
+ * of_parse_phandle_with_args() - Find a node pointed by phandle in a list
  * @np:		pointer to a device tree node containing a list
  * @list_name:	property name that contains a list
  * @cells_name:	property name that specifies phandles' arguments count
  * @index:	index of a phandle to parse out
- * @out_node:	optional pointer to device_node struct pointer (will be filled)
- * @out_args:	optional pointer to arguments pointer (will be filled)
+ * @out_args:	optional pointer to output arguments structure (will be filled)
  *
  * This function is useful to parse lists of phandles and their arguments.
- * Returns 0 on success and fills out_node and out_args, on error returns
- * appropriate errno value.
+ * Returns 0 on success and fills out_args, on error returns appropriate
+ * errno value.
  *
  * Example:
  *
@@ -889,92 +888,139 @@ EXPORT_SYMBOL(of_parse_phandle);
  * }
  *
  * To get a device_node of the `node2' node you may call this:
- * of_parse_phandles_with_args(node3, "list", "#list-cells", 2, &node2, &args);
+ * of_parse_phandle_with_args(node3, "list", "#list-cells", 1, &args);
  */
-int of_parse_phandles_with_args(struct device_node *np, const char *list_name,
-				const char *cells_name, int index,
-				struct device_node **out_node,
-				const void **out_args)
-{
-	int ret = -EINVAL;
-	const __be32 *list;
-	const __be32 *list_end;
-	int size;
-	int cur_index = 0;
+static int __of_parse_phandle_with_args(const struct device_node *np,
+					const char *list_name,
+					const char *cells_name, int index,
+					struct of_phandle_args *out_args)
+{
+	const __be32 *list, *list_end;
+	int rc = 0, size, cur_index = 0;
+	uint32_t count = 0;
 	struct device_node *node = NULL;
-	const void *args = NULL;
+	phandle phandle;
 
+	/* Retrieve the phandle list property */
 	list = of_get_property(np, list_name, &size);
-	if (!list) {
-		ret = -ENOENT;
-		goto err0;
-	}
+	if (!list)
+		return -ENOENT;
 	list_end = list + size / sizeof(*list);
 
+	/* Loop over the phandles until all the requested entry is found */
 	while (list < list_end) {
-		const __be32 *cells;
-		phandle phandle;
+		rc = -EINVAL;
+		count = 0;
 
+		/*
+		 * If phandle is 0, then it is an empty entry with no
+		 * arguments.  Skip forward to the next entry.
+		 */
 		phandle = be32_to_cpup(list++);
-		args = list;
-
-		/* one cell hole in the list = <>; */
-		if (!phandle)
-			goto next;
-
-		node = of_find_node_by_phandle(phandle);
-		if (!node) {
-			pr_debug("%s: could not find phandle %d\n",
-				 np->full_name, phandle);
-			goto err0;
+		if (phandle) {
+			/*
+			 * Find the provider node and parse the #*-cells
+			 * property to determine the argument length
+			 */
+			node = of_find_node_by_phandle(phandle);
+			if (!node) {
+				pr_err("%s: could not find phandle\n",
+					 np->full_name);
+				goto err;
+			}
+			if (of_property_read_u32(node, cells_name, &count)) {
+				pr_err("%s: could not get %s for %s\n",
+					 np->full_name, cells_name,
+					 node->full_name);
+				goto err;
+			}
+
+			/*
+			 * Make sure that the arguments actually fit in the
+			 * remaining property data length
+			 */
+			if (list + count > list_end) {
+				pr_err("%s: arguments longer than property\n",
+					 np->full_name);
+				goto err;
+			}
 		}
 
-		cells = of_get_property(node, cells_name, &size);
-		if (!cells || size != sizeof(*cells)) {
-			pr_debug("%s: could not get %s for %s\n",
-				 np->full_name, cells_name, node->full_name);
-			goto err1;
-		}
-
-		list += be32_to_cpup(cells);
-		if (list > list_end) {
-			pr_debug("%s: insufficient arguments length\n",
-				 np->full_name);
-			goto err1;
+		/*
+		 * All of the error cases above bail out of the loop, so at
+		 * this point, the parsing is successful. If the requested
+		 * index matches, then fill the out_args structure and return,
+		 * or return -ENOENT for an empty entry.
+		 */
+		rc = -ENOENT;
+		if (cur_index == index) {
+			if (!phandle)
+				goto err;
+
+			if (out_args) {
+				int i;
+				if (WARN_ON(count > MAX_PHANDLE_ARGS))
+					count = MAX_PHANDLE_ARGS;
+				out_args->np = node;
+				out_args->args_count = count;
+				for (i = 0; i < count; i++)
+					out_args->args[i] =
+						be32_to_cpup(list++);
+			}
+
+			/* Found it! return success */
+			return 0;
 		}
-next:
-		if (cur_index == index)
-			break;
 
 		node = NULL;
-		args = NULL;
+		list += count;
 		cur_index++;
 	}
 
-	if (!node) {
-		/*
-		 * args w/o node indicates that the loop above has stopped at
-		 * the 'hole' cell. Report this differently.
-		 */
-		if (args)
-			ret = -EEXIST;
-		else
-			ret = -ENOENT;
-		goto err0;
-	}
+	/*
+	 * Unlock node before returning result; will be one of:
+	 * -ENOENT : index is for empty phandle
+	 * -EINVAL : parsing error on data
+	 * [1..n]  : Number of phandle (count mode; when index = -1)
+	 */
+	rc = index < 0 ? cur_index : -ENOENT;
+ err:
+	return rc;
+}
 
-	if (out_node)
-		*out_node = node;
-	if (out_args)
-		*out_args = args;
+int of_parse_phandle_with_args(const struct device_node *np,
+		const char *list_name, const char *cells_name, int index,
+		struct of_phandle_args *out_args)
+{
+	if (index < 0)
+		return -EINVAL;
+	return __of_parse_phandle_with_args(np, list_name, cells_name,
+					index, out_args);
+}
+EXPORT_SYMBOL(of_parse_phandle_with_args);
 
-	return 0;
-err1:
-err0:
-	pr_debug("%s failed with status %d\n", __func__, ret);
-	return ret;
+/**
+ * of_count_phandle_with_args() - Find the number of phandles references in a property
+ * @np:		pointer to a device tree node containing a list
+ * @list_name:	property name that contains a list
+ * @cells_name:	property name that specifies phandles' arguments count
+ *
+ * Returns the number of phandle + argument tuples within a property. It
+ * is a typical pattern to encode a list of phandle and variable
+ * arguments into a single property. The number of arguments is encoded
+ * by a property in the phandle-target node. For example, a gpios
+ * property would contain a list of GPIO specifies consisting of a
+ * phandle and 1 or more arguments. The number of arguments are
+ * determined by the #gpio-cells property in the node pointed to by the
+ * phandle.
+ */
+int of_count_phandle_with_args(const struct device_node *np,
+			const char *list_name, const char *cells_name)
+{
+	return __of_parse_phandle_with_args(np, list_name, cells_name,
+					-1, NULL);
 }
-EXPORT_SYMBOL(of_parse_phandles_with_args);
+EXPORT_SYMBOL(of_count_phandle_with_args);
 
 /**
  * of_machine_is_compatible - Test root of device tree for a given compatible value
diff --git a/drivers/of/gpio.c b/drivers/of/gpio.c
index 83b72c0..87b9c0c 100644
--- a/drivers/of/gpio.c
+++ b/drivers/of/gpio.c
@@ -9,17 +9,16 @@ int of_get_named_gpio(struct device_node *np,
                                    const char *propname, int index)
 {
 	int ret;
-	struct device_node *gpio_np;
-	const void *gpio_spec;
+	struct of_phandle_args out_args;
 
-	ret = of_parse_phandles_with_args(np, propname, "#gpio-cells", index,
-					  &gpio_np, &gpio_spec);
+	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
+					index, &out_args);
 	if (ret) {
 		pr_debug("%s: can't parse gpios property: %d\n", __func__, ret);
 		return -EINVAL;
 	}
 
-	ret = gpio_get_num(gpio_np->device, be32_to_cpup(gpio_spec));
+	ret = gpio_get_num(out_args.np->device, outargs.args[0]);
 	if (ret < 0)
 		return ret;
 
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 32b05aa..ee7c010 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -62,16 +62,15 @@ static int imx_chipidea_port_post_init(void *drvdata)
 
 static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 {
-	const void *out_args;
-	struct device_node *usbmisc_np;
+	struct of_phandle_args out_args;
 	enum usb_dr_mode mode;
 	enum usb_phy_interface phymode;
 
-	of_parse_phandles_with_args(ci->dev->device_node, "fsl,usbmisc",
-			"#index-cells", 0, &usbmisc_np, &out_args);
-
-	ci->portno = be32_to_cpup(out_args);
+	if (of_parse_phandle_with_args(ci->dev->device_node, "fsl,usbmisc",
+					"#index-cells", 0, &out_args))
+		return -ENODEV;
 
+	ci->portno = out_args.args[0];
 	ci->flags = MXC_EHCI_MODE_UTMI_8BIT;
 
 	mode = of_usb_get_dr_mode(ci->dev->device_node, NULL);
diff --git a/include/of.h b/include/of.h
index 81df5a6..51ecf4d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -42,6 +42,13 @@ struct of_device_id {
 	unsigned long data;
 };
 
+#define MAX_PHANDLE_ARGS 8
+struct of_phandle_args {
+	struct device_node *np;
+	int args_count;
+	uint32_t args[MAX_PHANDLE_ARGS];
+};
+
 #define OF_MAX_RESERVE_MAP	16
 struct of_reserve_map {
 	uint64_t start[OF_MAX_RESERVE_MAP];
@@ -120,11 +127,6 @@ static inline int of_property_write_u32(struct device_node *np,
 const void *of_get_property(const struct device_node *np, const char *name,
 			 int *lenp);
 
-int of_parse_phandles_with_args(struct device_node *np, const char *list_name,
-				const char *cells_name, int index,
-				struct device_node **out_node,
-				const void **out_args);
-
 int of_get_named_gpio(struct device_node *np,
                                    const char *propname, int index);
 
@@ -217,6 +219,11 @@ extern int of_property_count_strings(struct device_node *np,
 extern struct device_node *of_parse_phandle(const struct device_node *np,
 					    const char *phandle_name,
 					    int index);
+extern int of_parse_phandle_with_args(const struct device_node *np,
+	const char *list_name, const char *cells_name, int index,
+	struct of_phandle_args *out_args);
+extern int of_count_phandle_with_args(const struct device_node *np,
+	const char *list_name, const char *cells_name);
 
 extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
@@ -352,6 +359,19 @@ static inline struct device_node *of_parse_phandle(const struct device_node *np,
 	return NULL;
 }
 
+static inline int of_parse_phandle_with_args(const struct device_node *np,
+		const char *list_name, const char *cells_name, int index,
+		struct of_phandle_args *out_args)
+{
+	return -ENOSYS;
+}
+
+static inline int of_count_phandle_with_args(const struct device_node *np,
+				const char *list_name, const char *cells_name)
+{
+	return -ENOSYS;
+}
+
 static inline struct device_node *of_find_node_by_path(const char *path)
 {
 	return NULL;
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
