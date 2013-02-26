Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzV-0005YE-KQ
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:53 +0100
Message-Id: <1361909936-2665-27-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 26/29] of: fixup unflattened devicetree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9x5ek/hw_version.c |   31 +++++++------
 arch/ppc/mach-mpc5xxx/cpu.c               |   26 +++++++----
 common/memory.c                           |   48 ++++++--------------
 common/oftree.c                           |   70 +++++++++--------------------
 include/of.h                              |    6 +--
 5 files changed, 72 insertions(+), 109 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 47c640a..2695faa 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -232,26 +232,25 @@ static void at91sam9x5ek_devices_detect_one(const char *name)
 
 #define NODE_NAME_LEN  128
 
-static int cm_cogent_fixup(struct fdt_header *fdt)
+static int cm_cogent_fixup(struct device_node *root)
 {
-	int off, ret;
-	char node_name[NODE_NAME_LEN];
+	int ret;
+	struct device_node *node;
 
-	off = fdt_node_offset_by_compatible(fdt, -1, "atmel,hsmci");
+	of_tree_for_each_node(node, root) {
+		struct device_node *slotnode;
 
-	while (off != -FDT_ERR_NOTFOUND) {
-		off = fdt_subnode_offset(fdt, off, "slot");
-		fdt_get_path(fdt, off, node_name, NODE_NAME_LEN);
-		ret = fdt_setprop(fdt, off, "broken-cd", NULL, 0);
-		if (ret < 0) {
-			pr_err("error %d while adding broken-cd property to node %s\n",
-				ret, node_name);
-			return ret;
-		} else {
-			pr_debug("add broken-cd property to node %s\n", node_name);
-		}
+		if (!of_device_is_compatible(node, "atmel,hsmci"))
+			continue;
 
-		off = fdt_node_offset_by_compatible(fdt, off, "atmel,hsmci");
+		slotnode = of_find_child_by_name(node, "slot");
+		if (!slotnode)
+			continue;
+
+		ret = of_set_property(slotnode, "broken-cd", NULL, 0, 1);
+		if (ret)
+			pr_err("error %d while adding broken-cd property to node %s\n",
+				ret, slotnode->name);
 	}
 
 	return 0;
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 5bbd49a..99f16eb 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -77,17 +77,27 @@ void __noreturn reset_cpu (unsigned long addr)
 /* ------------------------------------------------------------------------- */
 
 #ifdef CONFIG_OFTREE
-static int of_mpc5200_fixup(struct fdt_header *fdt)
+static int of_mpc5200_fixup(struct device_node *root)
 {
-	char *cpu_path = "/cpus/PowerPC,5200@0";
+	struct device_node *node;
+
 	int div = in_8((void*)CFG_MBAR + 0x204) & 0x0020 ? 8 : 4;
 
-	do_fixup_by_path_u32(fdt, cpu_path, "timebase-frequency", get_timebase_clock(), 1);
-	do_fixup_by_path_u32(fdt, cpu_path, "bus-frequency", get_bus_clock(), 1);
-	do_fixup_by_path_u32(fdt, cpu_path, "clock-frequency", get_cpu_clock(), 1);
-	do_fixup_by_path_u32(fdt, "/soc5200@f0000000", "bus-frequency", get_ipb_clock(), 1);
-	do_fixup_by_path_u32(fdt, "/soc5200@f0000000", "system-frequency",
-				get_bus_clock() * div, 1);
+	node = of_find_node_by_path(root, "/cpus/PowerPC,5200@0");
+	if (!node)
+		return -EINVAL;
+
+	of_property_write_u32(node, "timebase-frequency", get_timebase_clock());
+	of_property_write_u32(node, "bus-frequency", get_bus_clock());
+	of_property_write_u32(node, "clock-frequency", get_cpu_clock());
+
+	node = of_find_node_by_path(root, "/soc5200@f0000000");
+	if (!node)
+		return -EINVAL;
+
+	of_property_write_u32(node, "bus-frequency", get_ipb_clock());
+	of_property_write_u32(node, "system-frequency", get_bus_clock() * div);
+
 	return 0;
 }
 
diff --git a/common/memory.c b/common/memory.c
index 81641f0..1d2e3a3 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -165,22 +165,6 @@ int release_sdram_region(struct resource *res)
 #ifdef CONFIG_OFTREE
 
 /*
- * Get cells len in bytes
- *     if #NNNN-cells property is 2 then len is 8
- *     otherwise len is 4
- */
-static int get_cells_len(struct fdt_header *fdt, char *nr_cells_name)
-{
-	const u32 *cell;
-
-	cell = fdt_getprop(fdt, 0, nr_cells_name, NULL);
-	if (cell && *cell == 2)
-		return 8;
-
-	return 4;
-}
-
-/*
  * Write a 4 or 8 byte big endian cell
  */
 static void write_cell(u8 *addr, u64 val, int size)
@@ -193,28 +177,24 @@ static void write_cell(u8 *addr, u64 val, int size)
 	}
 }
 
-static int of_memory_fixup(struct fdt_header *fdt)
+static int of_memory_fixup(struct device_node *node)
 {
 	struct memory_bank *bank;
-	int err, nodeoffset;
+	int err;
 	int addr_cell_len, size_cell_len, len = 0;
+	struct device_node *memnode;
 	u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
 
-	/* update, or add and update /memory node */
-	nodeoffset = fdt_get_path_or_create(fdt, "/memory");
-	if (nodeoffset < 0)
-		return nodeoffset;
+	memnode = of_create_node(node, "/memory");
+	if (!memnode)
+		return -ENOMEM;
 
-	err = fdt_setprop(fdt, nodeoffset, "device_type", "memory",
-			sizeof("memory"));
-	if (err < 0) {
-		printf("WARNING: could not set %s %s.\n", "device_type",
-				fdt_strerror(err));
+	err = of_set_property(memnode, "device_type", "memory", sizeof("memory"), 1);
+	if (err)
 		return err;
-	}
 
-	addr_cell_len = get_cells_len(fdt, "#address-cells");
-	size_cell_len = get_cells_len(fdt, "#size-cells");
+	addr_cell_len = of_n_addr_cells(memnode) * 4;
+	size_cell_len = of_n_size_cells(memnode) * 4;
 
 	for_each_memory_bank(bank) {
 		write_cell(tmp + len, bank->start, addr_cell_len);
@@ -223,12 +203,12 @@ static int of_memory_fixup(struct fdt_header *fdt)
 		len += size_cell_len;
 	}
 
-	err = fdt_setprop(fdt, nodeoffset, "reg", tmp, len);
-	if (err < 0) {
-		printf("WARNING: could not set %s %s.\n",
-				"reg", fdt_strerror(err));
+	err = of_set_property(memnode, "reg", tmp, len, 1);
+	if (err) {
+		pr_err("could not set reg %s.\n", strerror(-err));
 		return err;
 	}
+
 	return 0;
 }
 
diff --git a/common/oftree.c b/common/oftree.c
index b616b59..abbb7bd 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -246,26 +246,24 @@ int fdt_get_path_or_create(struct fdt_header *fdt, const char *path)
 	return nodeoffset;
 }
 
-static int of_fixup_bootargs(struct fdt_header *fdt)
+static int of_fixup_bootargs(struct device_node *root)
 {
-	int nodeoffset;
+	struct device_node *node;
 	const char *str;
 	int err;
 
-	nodeoffset = fdt_get_path_or_create(fdt, "/chosen");
-	if (nodeoffset < 0)
-		return nodeoffset;
-
 	str = linux_bootargs_get();
-	if (str) {
-		err = fdt_setprop(fdt, nodeoffset,
-				"bootargs", str, strlen(str)+1);
-		if (err < 0)
-			printf("WARNING: could not set bootargs %s.\n",
-					fdt_strerror(err));
-        }
+	if (!str)
+		return 0;
 
-	return 0;
+	node = of_create_node(root, "/chosen");
+	if (!node)
+		return -ENOMEM;
+
+
+	err = of_set_property(node, "bootargs", str, strlen(str) + 1, 1);
+
+	return err;
 }
 
 static int of_register_bootargs_fixup(void)
@@ -275,13 +273,13 @@ static int of_register_bootargs_fixup(void)
 late_initcall(of_register_bootargs_fixup);
 
 struct of_fixup {
-	int (*fixup)(struct fdt_header *);
+	int (*fixup)(struct device_node *);
 	struct list_head list;
 };
 
 static LIST_HEAD(of_fixup_list);
 
-int of_register_fixup(int (*fixup)(struct fdt_header *))
+int of_register_fixup(int (*fixup)(struct device_node *))
 {
 	struct of_fixup *of_fixup = xzalloc(sizeof(*of_fixup));
 
@@ -296,13 +294,13 @@ int of_register_fixup(int (*fixup)(struct fdt_header *))
  * Apply registered fixups for the given fdt. The fdt must have
  * enough free space to apply the fixups.
  */
-int of_fix_tree(struct fdt_header *fdt)
+int of_fix_tree(struct device_node *node)
 {
 	struct of_fixup *of_fixup;
 	int ret;
 
 	list_for_each_entry(of_fixup, &of_fixup_list, list) {
-		ret = of_fixup->fixup(fdt);
+		ret = of_fixup->fixup(node);
 		if (ret)
 			return ret;
 	}
@@ -325,8 +323,6 @@ int of_fix_tree(struct fdt_header *fdt)
 struct fdt_header *of_get_fixed_tree(struct device_node *node)
 {
 	int ret;
-	void *fixfdt, *internalfdt = NULL;
-	int size, align;
 	struct fdt_header *fdt;
 
 	if (!node) {
@@ -335,35 +331,13 @@ struct fdt_header *of_get_fixed_tree(struct device_node *node)
 			return NULL;
 	}
 
-	fdt = internalfdt = of_flatten_dtb(node);
-	if (!fdt)
-		return NULL;
-
-	size = fdt_totalsize(fdt);
-
-	/*
-	 * ARM Linux uses a single 1MiB section (with 1MiB alignment)
-	 * for mapping the devicetree, so we are not allowed to cross
-	 * 1MiB boundaries.
-	 */
-	align = 1 << fls(size + OFTREE_SIZE_INCREASE - 1);
-
-	fixfdt = xmemalign(align, size + OFTREE_SIZE_INCREASE);
-	ret = fdt_open_into(fdt, fixfdt, size + OFTREE_SIZE_INCREASE);
-
-	free(internalfdt);
-
+	ret = of_fix_tree(node);
 	if (ret)
-		goto out_free;
-
-	ret = of_fix_tree(fixfdt);
-	if (ret)
-		goto out_free;
-
-	return fixfdt;
+		return NULL;
 
-out_free:
-	free(fixfdt);
+	fdt = of_flatten_dtb(node);
+	if (!fdt)
+		return NULL;
 
-	return NULL;
+	return fdt;
 }
diff --git a/include/of.h b/include/of.h
index 21e5687..66b9fde 100644
--- a/include/of.h
+++ b/include/of.h
@@ -7,9 +7,6 @@
 
 int fdt_print(struct fdt_header *working_fdt, const char *pathp);
 
-int of_fix_tree(struct fdt_header *fdt);
-int of_register_fixup(int (*fixup)(struct fdt_header *));
-
 int fdt_find_and_setprop(struct fdt_header *fdt, const char *node, const char *prop,
 			 const void *val, int len, int create);
 void do_fixup_by_path(struct fdt_header *fdt, const char *path, const char *prop,
@@ -51,6 +48,9 @@ struct of_device_id {
 
 struct driver_d;
 
+int of_fix_tree(struct device_node *);
+int of_register_fixup(int (*fixup)(struct device_node *));
+
 int of_match(struct device_d *dev, struct driver_d *drv);
 
 int of_n_addr_cells(struct device_node *np);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
