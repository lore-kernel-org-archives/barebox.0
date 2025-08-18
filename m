Delivery-date: Mon, 18 Aug 2025 20:31:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dY-001yUo-0o
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dT-0003yz-6i
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JSJ8RZYgvOJrn6SBOzUtW+5eR3dLaTaG0qpatsNmhP0=; b=BGcMm5IQuMDEedhY1B9czUThpt
	MRlpWTtDnkHdaKfqH+osiVXnCbg7P8ZkuBpr7eGcPRid3LlwOLJbrKswVM29T5kTJwy9jPiXja4A6
	dkyYzoD4gQDNksZRN3fwgJIBsDqQLI7slSW2NY+W9KZDYnWLpwMBBtzIr+1X8UPM6zv8wuYo6ZEx1
	Z5U/M3zw4pcosYO4A7wN0mB2LojUHE7vznlpLPGX6Yf8/7S4SP/Tz81ezPOsc4WZmpBwRAMekKXsz
	3HfmNKMqkGD/ItCAgnGhhtsVDO/yyxfqSmT+BrKFoXoKMQKzQAD6n5c2D+GKZrjTNdtf77aQrXAxE
	+5lw8Scg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4ck-00000008LL7-18j8;
	Mon, 18 Aug 2025 18:30:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uR-00000008F35-3r3L
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:42 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uQ-0003aK-Jy; Mon, 18 Aug 2025 19:44:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-1-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_104440_284774_2E3E3F04 
X-CRM114-Status: GOOD (  36.80  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/15] of: sync of_*_phandle_with_args with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current of_parse_phandle_with_args() logic was ported from Linux a
long time ago by commits:
 - 58f3457f4f03 ("of: add devicetree probing support") and
 - 511ba46157d8 ("OF: base: import parse phandle functions from Linux OF
   API")

Commit f114b0479a22 ("of: base: don't try to read cells_name property if
no cells_name set") adapted the logic to make it compatible with current
mainline device-trees.

This commits syncs the complete of_*_phandle_with_args() family with the
current Linux implementation instead of doing further adaptions to the
old Linux based logic. This ensures that the of_*_phandle_with_args()
family is compatible with the mainline provided device-trees.

Furthermore it prepares the code base to add new of_parse_phandle_* from
Linux more easily.

The main changes are:
 - __of_parse_phandle_with_args() was made public and the accessors like
   of_parse_phandle_with_args() are now static inline functions.
 - The open coded parsing logic was replaced by an iterator based logic
   (struct of_phandle_iterator and its accessors).
 - Some bugfixes

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/base.c | 280 +++++++++++++++++++++++++++++++++++-------------------
 include/of.h      | 121 ++++++++++++++++++++++-
 2 files changed, 300 insertions(+), 101 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index eb1f0b44f22d2e68e22f055aa1327f498214b4bb..f1ab1811158fdc9191c8c62186b34e79660a47f9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1678,117 +1678,182 @@ struct device_node *of_parse_phandle(const struct device_node *np,
 }
 EXPORT_SYMBOL(of_parse_phandle);
 
-/**
- * of_parse_phandle_with_args() - Find a node pointed by phandle in a list
- * @np:		pointer to a device tree node containing a list
- * @list_name:	property name that contains a list
- * @cells_name:	property name that specifies phandles' arguments count
- * @index:	index of a phandle to parse out
- * @out_args:	optional pointer to output arguments structure (will be filled)
- *
- * This function is useful to parse lists of phandles and their arguments.
- * Returns 0 on success and fills out_args, on error returns appropriate
- * errno value.
- *
- * Example:
- *
- * phandle1: node1 {
- * 	#list-cells = <2>;
- * }
- *
- * phandle2: node2 {
- * 	#list-cells = <1>;
- * }
- *
- * node3 {
- * 	list = <&phandle1 1 2 &phandle2 3>;
- * }
- *
- * To get a device_node of the `node2' node you may call this:
- * of_parse_phandle_with_args(node3, "list", "#list-cells", 1, &args);
- */
-static int __of_parse_phandle_with_args(const struct device_node *np,
-					const char *list_name,
-					const char *cells_name, int index,
-					struct of_phandle_args *out_args)
+int of_phandle_iterator_init(struct of_phandle_iterator *it,
+		const struct device_node *np,
+		const char *list_name,
+		const char *cells_name,
+		int cell_count)
 {
-	const __be32 *list, *list_end;
-	int rc = 0, size, cur_index = 0;
-	uint32_t count = 0;
-	struct device_node *node = NULL;
-	phandle phandle;
+	const __be32 *list;
+	int size;
+
+	memset(it, 0, sizeof(*it));
+
+	/*
+	 * one of cell_count or cells_name must be provided to determine the
+	 * argument length.
+	 */
+	if (cell_count < 0 && !cells_name)
+		return -EINVAL;
 
-	/* Retrieve the phandle list property */
 	list = of_get_property(np, list_name, &size);
 	if (!list)
 		return -ENOENT;
-	list_end = list + size / sizeof(*list);
 
-	/* Loop over the phandles until all the requested entry is found */
-	while (list < list_end) {
-		rc = -EINVAL;
-		count = 0;
+	it->cells_name = cells_name;
+	it->cell_count = cell_count;
+	it->parent = np;
+	it->list_end = list + size / sizeof(*list);
+	it->phandle_end = list;
+	it->cur = list;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_phandle_iterator_init);
+
+int of_phandle_iterator_next(struct of_phandle_iterator *it)
+{
+	uint32_t count = 0;
+
+	if (it->node) {
+		of_node_put(it->node);
+		it->node = NULL;
+	}
+
+	if (!it->cur || it->phandle_end >= it->list_end)
+		return -ENOENT;
+
+	it->cur = it->phandle_end;
+
+	/* If phandle is 0, then it is an empty entry with no arguments. */
+	it->phandle = be32_to_cpup(it->cur++);
+
+	if (it->phandle) {
 
 		/*
-		 * If phandle is 0, then it is an empty entry with no
-		 * arguments.  Skip forward to the next entry.
+		 * Find the provider node and parse the #*-cells property to
+		 * determine the argument length.
 		 */
-		phandle = be32_to_cpup(list++);
-		if (phandle) {
-			/*
-			 * Find the provider node and parse the #*-cells
-			 * property to determine the argument length
-			 */
-			node = of_find_node_by_phandle(phandle);
-			if (!node) {
-				pr_err("%pOF: could not find phandle\n", np);
-				goto err;
-			}
-			if (cells_name &&
-			    of_property_read_u32(node, cells_name, &count)) {
-				pr_err("%pOF: could not get %s for %pOF\n",
-					 np, cells_name, node);
+		it->node = of_find_node_by_phandle(it->phandle);
+
+		if (it->cells_name) {
+			if (!it->node) {
+				pr_err("%pOF: could not find phandle %d\n",
+				       it->parent, it->phandle);
 				goto err;
 			}
 
-			/*
-			 * Make sure that the arguments actually fit in the
-			 * remaining property data length
-			 */
-			if (list + count > list_end) {
-				pr_err("%pOF: arguments longer than property\n", np);
-				goto err;
+			if (of_property_read_u32(it->node, it->cells_name,
+						 &count)) {
+				/*
+				 * If both cell_count and cells_name is given,
+				 * fall back to cell_count in absence
+				 * of the cells_name property
+				 */
+				if (it->cell_count >= 0) {
+					count = it->cell_count;
+				} else {
+					pr_err("%pOF: could not get %s for %pOF\n",
+					       it->parent,
+					       it->cells_name,
+					       it->node);
+					goto err;
+				}
 			}
+		} else {
+			count = it->cell_count;
 		}
 
 		/*
-		 * All of the error cases above bail out of the loop, so at
+		 * Make sure that the arguments actually fit in the remaining
+		 * property data length
+		 */
+		if (it->cur + count > it->list_end) {
+			if (it->cells_name)
+				pr_err("%pOF: %s = %d found %td\n",
+					it->parent, it->cells_name,
+					count, it->list_end - it->cur);
+			else
+				pr_err("%pOF: phandle %s needs %d, found %td\n",
+					it->parent, of_node_full_name(it->node),
+					count, it->list_end - it->cur);
+			goto err;
+		}
+	}
+
+	it->phandle_end = it->cur + count;
+	it->cur_count = count;
+
+	return 0;
+
+err:
+	if (it->node) {
+		of_node_put(it->node);
+		it->node = NULL;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(of_phandle_iterator_next);
+
+int of_phandle_iterator_args(struct of_phandle_iterator *it,
+			     uint32_t *args,
+			     int size)
+{
+	int i, count;
+
+	count = it->cur_count;
+
+	if (WARN_ON(size < count))
+		count = size;
+
+	for (i = 0; i < count; i++)
+		args[i] = be32_to_cpup(it->cur++);
+
+	return count;
+}
+
+int __of_parse_phandle_with_args(const struct device_node *np,
+				 const char *list_name,
+				 const char *cells_name,
+				 int cell_count, int index,
+				 struct of_phandle_args *out_args)
+{
+	struct of_phandle_iterator it;
+	int rc, cur_index = 0;
+
+	if (index < 0)
+		return -EINVAL;
+
+	/* Loop over the phandles until all the requested entry is found */
+	of_for_each_phandle(&it, rc, np, list_name, cells_name, cell_count) {
+		/*
+		 * All of the error cases bail out of the loop, so at
 		 * this point, the parsing is successful. If the requested
 		 * index matches, then fill the out_args structure and return,
 		 * or return -ENOENT for an empty entry.
 		 */
 		rc = -ENOENT;
 		if (cur_index == index) {
-			if (!phandle)
+			if (!it.phandle)
 				goto err;
 
 			if (out_args) {
-				int i;
-				if (WARN_ON(count > MAX_PHANDLE_ARGS))
-					count = MAX_PHANDLE_ARGS;
-				out_args->np = node;
-				out_args->args_count = count;
-				for (i = 0; i < count; i++)
-					out_args->args[i] =
-						be32_to_cpup(list++);
+				int c;
+
+				c = of_phandle_iterator_args(&it,
+							     out_args->args,
+							     MAX_PHANDLE_ARGS);
+				out_args->np = it.node;
+				out_args->args_count = c;
+			} else {
+				of_node_put(it.node);
 			}
 
 			/* Found it! return success */
 			return 0;
 		}
 
-		node = NULL;
-		list += count;
 		cur_index++;
 	}
 
@@ -1796,23 +1861,13 @@ static int __of_parse_phandle_with_args(const struct device_node *np,
 	 * Unlock node before returning result; will be one of:
 	 * -ENOENT : index is for empty phandle
 	 * -EINVAL : parsing error on data
-	 * [1..n]  : Number of phandle (count mode; when index = -1)
 	 */
-	rc = index < 0 ? cur_index : -ENOENT;
+
  err:
+	of_node_put(it.node);
 	return rc;
 }
-
-int of_parse_phandle_with_args(const struct device_node *np,
-		const char *list_name, const char *cells_name, int index,
-		struct of_phandle_args *out_args)
-{
-	if (index < 0)
-		return -EINVAL;
-	return __of_parse_phandle_with_args(np, list_name, cells_name,
-					index, out_args);
-}
-EXPORT_SYMBOL(of_parse_phandle_with_args);
+EXPORT_SYMBOL(__of_parse_phandle_with_args);
 
 /**
  * of_count_phandle_with_args() - Find the number of phandles references in a property
@@ -1820,7 +1875,7 @@ EXPORT_SYMBOL(of_parse_phandle_with_args);
  * @list_name:	property name that contains a list
  * @cells_name:	property name that specifies phandles' arguments count
  *
- * Returns the number of phandle + argument tuples within a property. It
+ * Return: The number of phandle + argument tuples within a property. It
  * is a typical pattern to encode a list of phandle and variable
  * arguments into a single property. The number of arguments is encoded
  * by a property in the phandle-target node. For example, a gpios
@@ -1829,11 +1884,40 @@ EXPORT_SYMBOL(of_parse_phandle_with_args);
  * determined by the #gpio-cells property in the node pointed to by the
  * phandle.
  */
-int of_count_phandle_with_args(const struct device_node *np,
-			const char *list_name, const char *cells_name)
+int of_count_phandle_with_args(const struct device_node *np, const char *list_name,
+				const char *cells_name)
 {
-	return __of_parse_phandle_with_args(np, list_name, cells_name,
-					-1, NULL);
+	struct of_phandle_iterator it;
+	int rc, cur_index = 0;
+
+	/*
+	 * If cells_name is NULL we assume a cell count of 0. This makes
+	 * counting the phandles trivial as each 32bit word in the list is a
+	 * phandle and no arguments are to consider. So we don't iterate through
+	 * the list but just use the length to determine the phandle count.
+	 */
+	if (!cells_name) {
+		const __be32 *list;
+		int size;
+
+		list = of_get_property(np, list_name, &size);
+		if (!list)
+			return -ENOENT;
+
+		return size / sizeof(*list);
+	}
+
+	rc = of_phandle_iterator_init(&it, np, list_name, cells_name, -1);
+	if (rc)
+		return rc;
+
+	while ((rc = of_phandle_iterator_next(&it)) == 0)
+		cur_index += 1;
+
+	if (rc != -ENOENT)
+		return rc;
+
+	return cur_index;
 }
 EXPORT_SYMBOL(of_count_phandle_with_args);
 
diff --git a/include/of.h b/include/of.h
index fa2401fc8ded42e51d6706de5a01b1c97899a696..0ffc09e079a8af097e77e855791439a7aba93f2a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -52,6 +52,23 @@ struct of_phandle_args {
 	uint32_t args[MAX_PHANDLE_ARGS];
 };
 
+struct of_phandle_iterator {
+	/* Common iterator information */
+	const char *cells_name;
+	int cell_count;
+	const struct device_node *parent;
+
+	/* List size information */
+	const __be32 *list_end;
+	const __be32 *phandle_end;
+
+	/* Current position state */
+	const __be32 *cur;
+	uint32_t cur_count;
+	phandle phandle;
+	struct device_node *node;
+};
+
 #define OF_MAX_RESERVE_MAP	16
 struct of_reserve_map {
 	uint64_t start[OF_MAX_RESERVE_MAP];
@@ -134,6 +151,9 @@ extern int of_bus_n_addr_cells(struct device_node *np);
 extern int of_n_addr_cells(struct device_node *np);
 extern int of_bus_n_size_cells(struct device_node *np);
 extern int of_n_size_cells(struct device_node *np);
+extern int __of_parse_phandle_with_args(const struct device_node *np,
+	const char *list_name, const char *cells_name, int cell_count,
+	int index, struct of_phandle_args *out_args);
 extern bool of_node_name_eq(const struct device_node *np, const char *name);
 extern size_t of_node_has_prefix(const struct device_node *np, const char *prefix);
 
@@ -299,12 +319,69 @@ extern struct device_node *of_parse_phandle_from(const struct device_node *np,
 					    struct device_node *root,
 					    const char *phandle_name,
 					    int index);
-extern int of_parse_phandle_with_args(const struct device_node *np,
-	const char *list_name, const char *cells_name, int index,
-	struct of_phandle_args *out_args);
+/**
+ * of_parse_phandle_with_args() - Find a node pointed by phandle in a list
+ * @np:		pointer to a device tree node containing a list
+ * @list_name:	property name that contains a list
+ * @cells_name:	property name that specifies phandles' arguments count
+ * @index:	index of a phandle to parse out
+ * @out_args:	optional pointer to output arguments structure (will be filled)
+ *
+ * This function is useful to parse lists of phandles and their arguments.
+ * Returns 0 on success and fills out_args, on error returns appropriate
+ * errno value.
+ *
+ * Caller is responsible to call of_node_put() on the returned out_args->np
+ * pointer.
+ *
+ * Example::
+ *
+ *  phandle1: node1 {
+ *	#list-cells = <2>;
+ *  };
+ *
+ *  phandle2: node2 {
+ *	#list-cells = <1>;
+ *  };
+ *
+ *  node3 {
+ *	list = <&phandle1 1 2 &phandle2 3>;
+ *  };
+ *
+ * To get a device_node of the ``node2`` node you may call this:
+ * of_parse_phandle_with_args(node3, "list", "#list-cells", 1, &args);
+ */
+static inline int of_parse_phandle_with_args(const struct device_node *np,
+					     const char *list_name,
+					     const char *cells_name,
+					     int index,
+					     struct of_phandle_args *out_args)
+{
+	int cell_count = -1;
+
+	/* If cells_name is NULL we assume a cell count of 0 */
+	if (!cells_name)
+		cell_count = 0;
+
+	return __of_parse_phandle_with_args(np, list_name, cells_name,
+					    cell_count, index, out_args);
+}
+
 extern int of_count_phandle_with_args(const struct device_node *np,
 	const char *list_name, const char *cells_name);
 
+/* phandle iterator functions */
+extern int of_phandle_iterator_init(struct of_phandle_iterator *it,
+				    const struct device_node *np,
+				    const char *list_name,
+				    const char *cells_name,
+				    int cell_count);
+
+extern int of_phandle_iterator_next(struct of_phandle_iterator *it);
+extern int of_phandle_iterator_args(struct of_phandle_iterator *it,
+				    uint32_t *args,
+				    int size);
+
 extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern int of_alias_get_id_from(struct device_node *root, struct device_node *np,
@@ -752,6 +829,16 @@ static inline int of_property_read_string_helper(const struct device_node *np,
 	return -ENOSYS;
 }
 
+static inline int __of_parse_phandle_with_args(const struct device_node *np,
+					       const char *list_name,
+					       const char *cells_name,
+					       int cell_count,
+					       int index,
+					       struct of_phandle_args *out_args)
+{
+	return -ENOSYS;
+}
+
 static inline const __be32 *of_prop_next_u32(const struct property *prop,
 					const __be32 *cur, u32 *pu)
 {
@@ -826,6 +913,27 @@ static inline int of_count_phandle_with_args(const struct device_node *np,
 	return -ENOSYS;
 }
 
+static inline int of_phandle_iterator_init(struct of_phandle_iterator *it,
+					   const struct device_node *np,
+					   const char *list_name,
+					   const char *cells_name,
+					   int cell_count)
+{
+	return -ENOSYS;
+}
+
+static inline int of_phandle_iterator_next(struct of_phandle_iterator *it)
+{
+	return -ENOSYS;
+}
+
+static inline int of_phandle_iterator_args(struct of_phandle_iterator *it,
+					   uint32_t *args,
+					   int size)
+{
+	return 0;
+}
+
 static inline struct device_node *of_find_node_by_path_from(
 	struct device_node *from, const char *path)
 {
@@ -1230,6 +1338,13 @@ static inline int of_property_read_s32(const struct device_node *np,
 	return of_property_read_u32(np, propname, (u32*) out_value);
 }
 
+#define of_for_each_phandle(it, err, np, ln, cn, cc)			\
+	for (of_phandle_iterator_init((it), (np), (ln), (cn), (cc)),	\
+	     err = of_phandle_iterator_next(it);			\
+	     err == 0;							\
+	     err = of_phandle_iterator_next(it))
+
+
 /**
  * of_property_read_u64_array - Find and read an array of 64 bit integers
  * from a property.

-- 
2.39.5



