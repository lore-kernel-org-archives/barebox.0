Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmUfG-0003FO-Pv
 for barebox@lists.infradead.org; Mon, 19 May 2014 21:00:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 May 2014 22:59:43 +0200
Message-Id: <1400533184-668-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
References: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] of: Drop devicetree merge support
To: barebox@lists.infradead.org

I assume I am the only person knowing that barebox is able to
merge devicetrees. This feature seems broken for a while now since
trying to merge devicetress results in:

unflatten: too many end nodes

Remove this feature to save the complexity.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/highbank/init.c |  2 +-
 arch/arm/cpu/dtb.c              |  2 +-
 arch/arm/lib/bootm.c            |  2 +-
 arch/mips/boot/dtb.c            |  2 +-
 commands/of_dump.c              |  2 +-
 commands/oftree.c               |  9 +++------
 common/blspec.c                 |  2 +-
 common/bootm.c                  |  2 +-
 drivers/of/fdt.c                | 44 +++++++++++------------------------------
 include/of.h                    |  2 +-
 10 files changed, 23 insertions(+), 46 deletions(-)

diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index d5d341a..7b4f963 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -76,7 +76,7 @@ static int highbank_mem_init(void)
 	/* load by the firmware at 0x1000 */
 	fdt = IOMEM(FIRMWARE_DTB_BASE);
 
-	root = of_unflatten_dtb(NULL, fdt);
+	root = of_unflatten_dtb(fdt);
 	if (!root) {
 		pr_warn("no dtb found at 0x1000 use default configuration\n");
 		fdt = NULL;
diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
index a5881dd..abc3ccb 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -47,7 +47,7 @@ static int of_arm_init(void)
 		return 0;
 	}
 
-	root = of_unflatten_dtb(NULL, fdt);
+	root = of_unflatten_dtb(fdt);
 	if (root) {
 		of_set_root_node(root);
 		if (IS_ENABLED(CONFIG_OFDEVICE))
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 8035468..1d69052 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -215,7 +215,7 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 	}
 
 	if (IS_BUILTIN(CONFIG_OFTREE)) {
-		data->of_root_node = of_unflatten_dtb(NULL, oftree);
+		data->of_root_node = of_unflatten_dtb(oftree);
 		if (!data->of_root_node) {
 			pr_err("unable to unflatten devicetree\n");
 			ret = -EINVAL;
diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index c1962bf..23d8979 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -48,7 +48,7 @@ static int of_mips_init(void)
 	if (root)
 		return 0;
 
-	root = of_unflatten_dtb(NULL, __dtb_start);
+	root = of_unflatten_dtb(__dtb_start);
 	if (root) {
 		pr_debug("using internal DTB\n");
 		of_set_root_node(root);
diff --git a/commands/of_dump.c b/commands/of_dump.c
index 0ed47bb..1aefcc7 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -63,7 +63,7 @@ static int do_of_dump(int argc, char *argv[])
 			return -errno;
 		}
 
-		root = of_unflatten_dtb(NULL, fdt);
+		root = of_unflatten_dtb(fdt);
 
 		free(fdt);
 
diff --git a/commands/oftree.c b/commands/oftree.c
index db31d59..2c45b93 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -51,7 +51,7 @@ static int do_oftree(int argc, char *argv[])
 	int save = 0;
 	int free_of = 0;
 	int ret;
-	struct device_node *n, *root;
+	struct device_node *root;
 
 	while ((opt = getopt(argc, argv, "pfl:s:")) > 0) {
 		switch (opt) {
@@ -130,16 +130,13 @@ static int do_oftree(int argc, char *argv[])
 			goto out;
 		}
 
-		n = of_get_root_node();
-
-		root = of_unflatten_dtb(n, fdt);
+		root = of_unflatten_dtb(fdt);
 		if (IS_ERR(root))
 			ret = PTR_ERR(root);
 		else
 			ret = 0;
 
-		if (!n)
-			ret = of_set_root_node(root);
+		ret = of_set_root_node(root);
 
 		if (ret) {
 			printf("parse oftree: %s\n", strerror(-ret));
diff --git a/common/blspec.c b/common/blspec.c
index f165b77..9314eea 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -281,7 +281,7 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 		goto out;
 	}
 
-	root = of_unflatten_dtb(NULL, fdt);
+	root = of_unflatten_dtb(fdt);
 	if (IS_ERR(root)) {
 		ret = PTR_ERR(root);
 		goto out;
diff --git a/common/bootm.c b/common/bootm.c
index 12d3ee0..b250bd1 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -297,7 +297,7 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 		return -EINVAL;
 	}
 
-	data->of_root_node = of_unflatten_dtb(NULL, fdt);
+	data->of_root_node = of_unflatten_dtb(fdt);
 	if (!data->of_root_node) {
 		pr_err("unable to unflatten devicetree\n");
 		free(fdt);
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 3dc5d47..8e4c775 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -54,20 +54,20 @@ static inline char *dt_string(struct fdt_header *f, char *strstart, uint32_t ofs
  * Parse a flat device tree binary blob and return a pointer to the
  * unflattened tree.
  */
-struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
+struct device_node *of_unflatten_dtb(void *infdt)
 {
 	const void *nodep;	/* property node pointer */
 	uint32_t tag;		/* tag */
 	int  len;		/* length of the property */
 	const struct fdt_property *fdt_prop;
 	const char *pathp, *name;
-	struct device_node *node = NULL;
+	struct device_node *root, *node = NULL;
 	struct property *p;
 	uint32_t dt_struct;
 	struct fdt_node_header *fnh;
 	void *dt_strings;
 	struct fdt_header f;
-	int ret, merge = 0;
+	int ret;
 	unsigned int maxlen;
 	struct fdt_header *fdt = infdt;
 
@@ -100,14 +100,9 @@ struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
 	dt_struct = f.off_dt_struct;
 	dt_strings = (void *)fdt + f.off_dt_strings;
 
-	if (root) {
-		pr_debug("unflatten: merging into existing tree\n");
-		merge = 1;
-	} else {
-		root = of_new_node(NULL, NULL);
-		if (!root)
-			return ERR_PTR(-ENOMEM);
-	}
+	root = of_new_node(NULL, NULL);
+	if (!root)
+		return ERR_PTR(-ENOMEM);
 
 	while (1) {
 		tag = be32_to_cpu(*(uint32_t *)(infdt + dt_struct));
@@ -132,15 +127,10 @@ struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
 				goto err;
 			}
 
-			if (!node) {
+			if (!node)
 				node = root;
-			} else {
-				if (merge)
-					node = of_get_child_by_name(node,
-								    pathp);
-				if (!merge || !node)
-					node = of_new_node(node, pathp);
-			}
+			else
+				node = of_new_node(node, pathp);
 
 			break;
 
@@ -179,19 +169,9 @@ struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
 				goto err;
 			}
 
-			p = NULL;
-			if (merge)
-				p = of_find_property(node, name, NULL);
-			if (merge && p) {
-				free(p->value);
-				p->value = xzalloc(len);
-				p->length = len;
-				memcpy(p->value, nodep, len);
-			} else {
-				p = of_new_property(node, name, nodep, len);
-				if (!strcmp(name, "phandle") && len == 4)
-					node->phandle = be32_to_cpup(p->value);
-			}
+			p = of_new_property(node, name, nodep, len);
+			if (!strcmp(name, "phandle") && len == 4)
+				node->phandle = be32_to_cpup(p->value);
 
 			break;
 
diff --git a/include/of.h b/include/of.h
index 3183428..e6993fd 100644
--- a/include/of.h
+++ b/include/of.h
@@ -98,7 +98,7 @@ void of_print_cmdline(struct device_node *root);
 void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
-struct device_node *of_unflatten_dtb(struct device_node *root, void *fdt);
+struct device_node *of_unflatten_dtb(void *fdt);
 
 struct cdev;
 
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
