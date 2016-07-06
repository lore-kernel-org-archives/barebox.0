Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKtaz-00073Q-Ft
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 20:38:58 +0000
Received: by mail-lf0-x243.google.com with SMTP id a2so23244102lfe.3
 for <barebox@lists.infradead.org>; Wed, 06 Jul 2016 13:38:36 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  6 Jul 2016 23:38:25 +0300
Message-Id: <1467837506-32177-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1467837506-32177-1-git-send-email-antonynpavlov@gmail.com>
References: <1467837506-32177-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] of: base: import of_get_cpu_node() from linux-v4.7-rc2
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/of/base.c | 86 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      | 10 +++++++
 2 files changed, 96 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3099c91..1e6c33d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -380,6 +380,92 @@ const void *of_get_property(const struct device_node *np, const char *name,
 }
 EXPORT_SYMBOL(of_get_property);
 
+/*
+ * arch_match_cpu_phys_id - Match the given logical CPU and physical id
+ *
+ * @cpu: logical cpu index of a core/thread
+ * @phys_id: physical identifier of a core/thread
+ *
+ * Returns true if the physical identifier and the logical cpu index
+ * correspond to the same core/thread, false otherwise.
+ */
+static bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
+{
+	return (u32)phys_id == cpu;
+}
+
+/**
+ * Checks if the given "prop_name" property holds the physical id of the
+ * core/thread corresponding to the logical cpu 'cpu'. If 'thread' is not
+ * NULL, local thread number within the core is returned in it.
+ */
+static bool __of_find_n_match_cpu_property(struct device_node *cpun,
+			const char *prop_name, int cpu, unsigned int *thread)
+{
+	const __be32 *cell;
+	int ac, prop_len, tid;
+	u64 hwid;
+
+	ac = of_n_addr_cells(cpun);
+	cell = of_get_property(cpun, prop_name, &prop_len);
+	if (!cell || !ac)
+		return false;
+	prop_len /= sizeof(*cell) * ac;
+	for (tid = 0; tid < prop_len; tid++) {
+		hwid = of_read_number(cell, ac);
+		if (arch_match_cpu_phys_id(cpu, hwid)) {
+			if (thread)
+				*thread = tid;
+			return true;
+		}
+		cell += ac;
+	}
+	return false;
+}
+
+/*
+ * arch_find_n_match_cpu_physical_id - See if the given device node is
+ * for the cpu corresponding to logical cpu 'cpu'.  Return true if so,
+ * else false.  If 'thread' is non-NULL, the local thread number within the
+ * core is returned in it.
+ */
+static bool arch_find_n_match_cpu_physical_id(struct device_node *cpun,
+					      int cpu, unsigned int *thread)
+{
+	return __of_find_n_match_cpu_property(cpun, "reg", cpu, thread);
+}
+
+/**
+ * of_get_cpu_node - Get device node associated with the given logical CPU
+ *
+ * @cpu: CPU number(logical index) for which device node is required
+ * @thread: if not NULL, local thread number within the physical core is
+ *          returned
+ *
+ * The main purpose of this function is to retrieve the device node for the
+ * given logical CPU index. It should be used to initialize the of_node in
+ * cpu device. Once of_node in cpu device is populated, all the further
+ * references can use that instead.
+ *
+ * CPU logical to physical index mapping is architecture specific and is built
+ * before booting secondary cores. This function uses arch_match_cpu_phys_id
+ * which can be overridden by architecture specific implementation.
+ *
+ * Returns a node pointer for the logical cpu with refcount incremented, use
+ * of_node_put() on it when done. Returns NULL if not found.
+ */
+struct device_node *of_get_cpu_node(int cpu, unsigned int *thread)
+{
+	struct device_node *cpun;
+
+	for_each_node_by_type(cpun, "cpu") {
+		if (arch_find_n_match_cpu_physical_id(cpun, cpu, thread))
+			return cpun;
+	}
+	return NULL;
+}
+EXPORT_SYMBOL(of_get_cpu_node);
+
 /** Checks if the given "compat" string matches one of the strings in
  * the device's "compatible" property
  */
diff --git a/include/of.h b/include/of.h
index 8c8f57a..ed6e870 100644
--- a/include/of.h
+++ b/include/of.h
@@ -111,6 +111,7 @@ extern struct property *of_find_property(const struct device_node *np,
 					const char *name, int *lenp);
 extern const void *of_get_property(const struct device_node *np,
 				const char *name, int *lenp);
+extern struct device_node *of_get_cpu_node(int cpu, unsigned int *thread);
 
 extern int of_set_property(struct device_node *node, const char *p,
 			const void *val, int len, int create);
@@ -347,6 +348,12 @@ static inline const void *of_get_property(const struct device_node *np,
 	return NULL;
 }
 
+static inline struct device_node *of_get_cpu_node(int cpu,
+					unsigned int *thread)
+{
+	return NULL;
+}
+
 static inline int of_set_property(struct device_node *node, const char *p,
 			const void *val, int len, int create)
 {
@@ -639,6 +646,9 @@ static inline struct device_node *of_find_node_by_path_or_alias(
 #define for_each_node_by_name(dn, name) \
 	for (dn = of_find_node_by_name(NULL, name); dn; \
 	     dn = of_find_node_by_name(dn, name))
+#define for_each_node_by_type(dn, type) \
+	for (dn = of_find_node_by_type(NULL, type); dn; \
+	     dn = of_find_node_by_type(dn, type))
 #define for_each_node_by_name_from(dn, root, name) \
 	for (dn = of_find_node_by_name(root, name); dn; \
 	     dn = of_find_node_by_name(dn, name))
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
