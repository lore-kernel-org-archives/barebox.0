Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tteb9-0000q2-Us
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:21 +0100
Message-Id: <1357910676-4231-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/16] of: make of_get_fixed_tree more universally usable
To: barebox@lists.infradead.org

Currently the bootm code uses of_fix_tree to apply the fixups
to the devicetree given on the command line. This function assumes
that there is enough space for the fixups available. Also on ARM
we have to make sure the tree does not cross 1Mib boundaries.

This patch moves the space allocation and alignment ensurance
to of_get_fixed_tree and uses it in bootm. This is the first
step for making of_get_fixed_tree the single point of devicetree
handling in barebox.
of_get_fixed_tree now takes an argument of the input fdt. If it is
given, this one is used, otherwise an internal oftree is used which
will be created in subsequent patches.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootu.c |    2 +-
 arch/arm/lib/bootz.c |    2 +-
 commands/bootm.c     |   32 ++++++++------------------------
 common/oftree.c      |   50 +++++++++++++++++++++++++++++++++++++++++++++-----
 include/of.h         |    2 +-
 5 files changed, 56 insertions(+), 32 deletions(-)

diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
index 75e0de3..fdb0362 100644
--- a/arch/arm/lib/bootu.c
+++ b/arch/arm/lib/bootu.c
@@ -23,7 +23,7 @@ static int do_bootu(int argc, char *argv[])
 		kernel = (void *)simple_strtoul(argv[1], NULL, 0);
 
 #ifdef CONFIG_OFTREE
-	oftree = of_get_fixed_tree();
+	oftree = of_get_fixed_tree(NULL);
 #endif
 
 	start_linux(kernel, 0, 0, 0, oftree);
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index 9f5b3b4..e32a77b 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -109,7 +109,7 @@ static int do_bootz(int argc, char *argv[])
 
 	printf("loaded zImage from %s with size %d\n", argv[1], end);
 #ifdef CONFIG_OFTREE
-	oftree = of_get_fixed_tree();
+	oftree = of_get_fixed_tree(NULL);
 #endif
 
 	start_linux(zimage, swap, 0, 0, oftree);
diff --git a/commands/bootm.c b/commands/bootm.c
index 483e6a1..d8b8469 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -139,9 +139,7 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 {
 	enum filetype ft;
 	struct fdt_header *fdt, *fixfdt;
-	int ret;
 	size_t size;
-	unsigned int align;
 
 	if (bootm_verbose(data))
 		printf("Loading oftree from '%s'\n", oftree);
@@ -190,36 +188,18 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 				file_type_to_string(ft));
 	}
 
-	/*
-	 * ARM Linux uses a single 1MiB section (with 1MiB alignment)
-	 * for mapping the devicetree, so we are not allowed to cross
-	 * 1MiB boundaries.
-	 */
-	align = 1 << fls(size + OFTREE_SIZE_INCREASE - 1);
-
-	fixfdt = xmemalign(align, size + OFTREE_SIZE_INCREASE);
-	memcpy(fixfdt, fdt, size);
-
-
-	ret = fdt_open_into(fdt, fixfdt, size + OFTREE_SIZE_INCREASE);
+	fixfdt = of_get_fixed_tree(fdt);
+	if (!fixfdt)
+		return -EINVAL;
 
 	free(fdt);
 
-	if (ret) {
-		printf("unable to parse %s\n", oftree);
-		return -ENODEV;
-	}
-
-	ret = of_fix_tree(fixfdt);
-	if (ret)
-		return ret;
-
 	if (bootm_verbose(data) > 1)
 		fdt_print(fixfdt, "/");
 
 	data->oftree = fixfdt;
 
-	return ret;
+	return 0;
 }
 #endif
 
@@ -420,6 +400,10 @@ static int do_bootm(int argc, char *argv[])
 		ret = bootm_open_oftree(&data, oftree, oftree_num);
 		if (ret)
 			goto err_out;
+	} else {
+		data.oftree = of_get_fixed_tree(NULL);
+		if (bootm_verbose(&data) && data.oftree)
+			printf("using internal devicetree\n");
 	}
 #endif
 	if (data.os_address == UIMAGE_SOME_ADDRESS)
diff --git a/common/oftree.c b/common/oftree.c
index 3e8c6f8..0dd6d5c 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -294,6 +294,10 @@ int of_register_fixup(int (*fixup)(struct fdt_header *))
 	return 0;
 }
 
+/*
+ * Apply registered fixups for the given fdt. The fdt must have
+ * enough free space to apply the fixups.
+ */
 int of_fix_tree(struct fdt_header *fdt)
 {
 	struct of_fixup *of_fixup;
@@ -308,14 +312,50 @@ int of_fix_tree(struct fdt_header *fdt)
 	return 0;
 }
 
-struct fdt_header *of_get_fixed_tree(void)
+/*
+ * The size by which we increase the dtb to have space for additional
+ * fixups. Ideally this would be done by libfdt automatically
+ */
+#define OFTREE_SIZE_INCREASE 0x8000
+
+/*
+ * Get the fixed fdt. This function uses the fdt input pointer
+ * if provided or the barebox internal devicetree if not.
+ * It increases the size of the tree and applies the registered
+ * fixups.
+ */
+struct fdt_header *of_get_fixed_tree(struct fdt_header *fdt)
 {
 	int ret;
+	void *fixfdt;
+	int size, align;
 
-	if (!barebox_fdt)
+	if (!fdt)
 		return NULL;
-	ret = of_fix_tree(barebox_fdt);
+
+	size = fdt_totalsize(fdt);
+
+	/*
+	 * ARM Linux uses a single 1MiB section (with 1MiB alignment)
+	 * for mapping the devicetree, so we are not allowed to cross
+	 * 1MiB boundaries.
+	 */
+	align = 1 << fls(size + OFTREE_SIZE_INCREASE - 1);
+
+	fixfdt = xmemalign(align, size + OFTREE_SIZE_INCREASE);
+	ret = fdt_open_into(fdt, fixfdt, size + OFTREE_SIZE_INCREASE);
+
 	if (ret)
-		return NULL;
-	return barebox_fdt;
+		goto out_free;
+
+	ret = of_fix_tree(fixfdt);
+	if (ret)
+		goto out_free;
+
+	return fixfdt;
+
+out_free:
+	free(fixfdt);
+
+	return NULL;
 }
diff --git a/include/of.h b/include/of.h
index 58b4590..3999ded 100644
--- a/include/of.h
+++ b/include/of.h
@@ -9,7 +9,7 @@ extern struct fdt_header *barebox_fdt;
 
 int fdt_print(struct fdt_header *working_fdt, const char *pathp);
 
-struct fdt_header *of_get_fixed_tree(void);
+struct fdt_header *of_get_fixed_tree(struct fdt_header *fdt);
 int of_fix_tree(struct fdt_header *fdt);
 int of_register_fixup(int (*fixup)(struct fdt_header *));
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
