Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5h-0005rW-Ve
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:37 +0100
Message-Id: <1362390820-10333-35-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 34/37] bootm: Pass unflattened devicetree to handlers
To: barebox@lists.infradead.org

This makes it possible to modify the tree in the handlers.
This is necessary because the initrd addresses are only
known inside the handlers, but not to the generic bootm
code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c    |    8 ++------
 arch/ppc/Kconfig        |    1 +
 arch/ppc/lib/ppclinux.c |    8 ++++++++
 commands/bootm.c        |   24 +++++++++---------------
 include/boot.h          |    1 +
 5 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 2a7d0f5..00c4908 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -169,16 +169,12 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
 	}
 
 	if (IS_BUILTIN(CONFIG_OFTREE)) {
-		struct device_node *node;
-
-		node = of_unflatten_dtb(NULL, oftree);
-		if (!node) {
+		data->of_root_node = of_unflatten_dtb(NULL, oftree);
+		if (!data->of_root_node) {
 			pr_err("unable to unflatten devicetree\n");
 			ret = -EINVAL;
 			goto err_free;
 		}
-
-		data->oftree = of_get_fixed_tree(node);
 	} else {
 		data->oftree = oftree;
 	}
diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index d124065..db269dd 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -4,6 +4,7 @@ config PPC
 	select HAS_KALLSYMS
 	select HAS_MODULES
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+	select OFTREE
 	default y
 
 choice
diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index 95dc83b..ef69ead 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -18,6 +18,14 @@ static int do_bootm_linux(struct image_data *data)
 	if (!data->os_res)
 		return -EINVAL;
 
+	data->oftree = of_get_fixed_tree(data->of_root_node);
+	if (!data->oftree) {
+		pr_err("bootm: No devicetree given.\n");
+		return -EINVAL;
+	}
+
+	fdt_add_reserve_map(data->oftree);
+
 	kernel = (void *)(data->os_address + data->os_entry);
 
 	/*
diff --git a/commands/bootm.c b/commands/bootm.c
index 65a75e2..ea5a35b 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -138,9 +138,8 @@ static int bootm_open_initrd_uimage(struct image_data *data)
 static int bootm_open_oftree(struct image_data *data, const char *oftree, int num)
 {
 	enum filetype ft;
-	struct fdt_header *fdt, *fixfdt;
+	struct fdt_header *fdt;
 	size_t size;
-	struct device_node *node;
 
 	printf("Loading devicetree from '%s'\n", oftree);
 
@@ -188,23 +187,14 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 				file_type_to_string(ft));
 	}
 
-	node = of_unflatten_dtb(NULL, fdt);
-	if (!node) {
+	data->of_root_node = of_unflatten_dtb(NULL, fdt);
+	if (!data->of_root_node) {
 		pr_err("unable to unflatten devicetree\n");
 		return -EINVAL;
 	}
 
-	if (bootm_verbose(data) > 1)
-		of_print_nodes(node, 0);
-
-	fixfdt = of_get_fixed_tree(node);
-	if (!fixfdt)
-		return -EINVAL;
-
 	free(fdt);
 
-	data->oftree = fixfdt;
-
 	return 0;
 }
 #endif
@@ -408,10 +398,14 @@ static int do_bootm(int argc, char *argv[])
 		if (ret)
 			goto err_out;
 	} else {
-		data.oftree = of_get_fixed_tree(NULL);
-		if (bootm_verbose(&data) && data.oftree)
+		data.of_root_node = of_get_root_node();
+		if (bootm_verbose(&data) && data.of_root_node)
 			printf("using internal devicetree\n");
 	}
+
+
+	if (bootm_verbose(&data) > 1 && data.of_root_node)
+		of_print_nodes(data.of_root_node, 0);
 #endif
 	if (data.os_address == UIMAGE_SOME_ADDRESS)
 		data.os_address = UIMAGE_INVALID_ADDRESS;
diff --git a/include/boot.h b/include/boot.h
index 3ce0de1..971a403 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -41,6 +41,7 @@ struct image_data {
 
 	unsigned long initrd_address;
 
+	struct device_node *of_root_node;
 	struct fdt_header *oftree;
 
 	int verify;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
