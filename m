Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZoSSE-0001CO-Rs
 for barebox@lists.infradead.org; Tue, 20 Oct 2015 08:39:37 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 20 Oct 2015 10:39:06 +0200
Message-Id: <1445330352-30153-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
References: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 2/8] of_path: add of_find_path_by_phandle()
To: barebox@lists.infradead.org

This patch adds the function of_find_path_by_phandle(), which is similar to
of_find_path(), but it takes a phandle not a barebox path description.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/of/of_path.c | 22 ++++++++++++++++++++++
 include/of.h         |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index b3ef26c6a50d..dae7eb628acb 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -149,6 +149,28 @@ int __of_find_path(struct device_node *node, const char *propname, char **outpat
 }
 
 /**
+ * of_find_path_by_phandle - translate a phanle in the devicetree to a
+ *                           barebox device path
+ *
+ * @node: the node containing the phandle pointing to the device tree node
+ * @phandle: the phandle pointing to the devicetree node
+ * @outpath: if this function returns 0 outpath will contain the path belonging
+ *           to the input path description. Must be freed with free().
+ * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if available
+ *
+ */
+int of_find_path_by_phandle(struct device_node *node, const char *phandle, char **outpath, unsigned flags)
+{
+	struct device_node *rnode;
+
+	rnode = of_parse_phandle(node, phandle, 0);
+	if (!rnode)
+		return -EINVAL;
+
+	return __of_find_path(rnode, NULL, outpath, flags);
+}
+
+/**
  * of_find_path - translate a path description in the devicetree to a barebox
  *                path
  *
diff --git a/include/of.h b/include/of.h
index e0ebc39b742d..c1c17e70b389 100644
--- a/include/of.h
+++ b/include/of.h
@@ -246,6 +246,7 @@ void of_add_memory_bank(struct device_node *node, bool dump, int r,
 struct device_d *of_find_device_by_node_path(const char *path);
 #define OF_FIND_PATH_FLAGS_BB 1		/* return .bb device if available */
 int of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags);
+int of_find_path_by_phandle(struct device_node *node, const char *phandle, char **outpath, unsigned flags);
 int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
 int of_unregister_fixup(int (*fixup)(struct device_node *, void *), void *context);
 struct device_node *of_find_node_by_alias(struct device_node *root,
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
