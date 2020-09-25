Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLjju-0000is-Il
 for barebox@lists.infradead.org; Fri, 25 Sep 2020 09:10:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Sep 2020 11:09:59 +0200
Message-Id: <20200925090959.19151-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] of: Add common device tree register function
To: Barebox List <barebox@lists.infradead.org>
Cc: Marco Felsch <mfe@pengutronix.de>

The different architectures duplicate some code around unflattening and
registering the device tree. Add common functions to reduce this
duplication.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/dtb.c       |  8 +-------
 arch/kvx/lib/dtb.c       | 12 +-----------
 arch/mips/boot/dtb.c     |  8 +-------
 arch/openrisc/lib/dtb.c  |  8 +-------
 arch/riscv/boot/dtb.c    | 14 +-------------
 arch/sandbox/board/dtb.c |  5 +----
 drivers/of/base.c        | 28 ++++++++++++++++++++++++++++
 include/of.h             |  2 ++
 8 files changed, 36 insertions(+), 49 deletions(-)

diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
index 8094eebf07..35f251d99a 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -26,13 +26,7 @@ static int of_arm_init(void)
 		return 0;
 	}
 
-	root = of_unflatten_dtb(fdt);
-	if (!IS_ERR(root)) {
-		of_set_root_node(root);
-		of_fix_tree(root);
-		if (IS_ENABLED(CONFIG_OFDEVICE))
-			of_probe();
-	}
+	barebox_register_fdt(fdt);
 
 	return 0;
 }
diff --git a/arch/kvx/lib/dtb.c b/arch/kvx/lib/dtb.c
index 17dcab197f..54ffddaf0a 100644
--- a/arch/kvx/lib/dtb.c
+++ b/arch/kvx/lib/dtb.c
@@ -12,17 +12,7 @@ static int of_kvx_init(void)
 	int ret;
 	struct device_node *root;
 
-	root = of_unflatten_dtb(boot_dtb);
-	if (IS_ERR(root)) {
-		ret = PTR_ERR(root);
-		panic("Failed to parse DTB: %d\n", ret);
-	}
-
-	ret = of_set_root_node(root);
-	if (ret)
-		panic("Failed to set of root node\n");
-
-	of_probe();
+	barebox_register_fdt(boot_dtb);
 
 	return 0;
 }
diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index 5e316270f6..2aff4adbe7 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -42,13 +42,7 @@ static int of_mips_init(void)
 	if (!fdt)
 		fdt = __dtb_start;
 
-	root = of_unflatten_dtb(fdt);
-	if (!IS_ERR(root)) {
-		pr_debug("using internal DTB\n");
-		of_set_root_node(root);
-		if (IS_ENABLED(CONFIG_OFDEVICE))
-			of_probe();
-	}
+	barebox_register_fdt(fdt);
 
 	return 0;
 }
diff --git a/arch/openrisc/lib/dtb.c b/arch/openrisc/lib/dtb.c
index 2dd8e4e014..61cf35ddf3 100644
--- a/arch/openrisc/lib/dtb.c
+++ b/arch/openrisc/lib/dtb.c
@@ -28,13 +28,7 @@ static int of_openrisc_init(void)
 	if (root)
 		return 0;
 
-	root = of_unflatten_dtb(__dtb_start);
-	if (!IS_ERR(root)) {
-		pr_debug("using internal DTB\n");
-		of_set_root_node(root);
-		if (IS_ENABLED(CONFIG_OFDEVICE))
-			of_probe();
-	}
+	barebox_register_fdt(__dtb_start);
 
 	return 0;
 }
diff --git a/arch/riscv/boot/dtb.c b/arch/riscv/boot/dtb.c
index 5d73413a43..b9b68fc7f2 100644
--- a/arch/riscv/boot/dtb.c
+++ b/arch/riscv/boot/dtb.c
@@ -18,19 +18,7 @@ extern char __dtb_start[];
 
 static int of_riscv_init(void)
 {
-	struct device_node *root;
-
-	root = of_get_root_node();
-	if (root)
-		return 0;
-
-	root = of_unflatten_dtb(__dtb_start);
-	if (!IS_ERR(root)) {
-		pr_debug("using internal DTB\n");
-		of_set_root_node(root);
-		if (IS_ENABLED(CONFIG_OFDEVICE))
-			of_probe();
-	}
+	barebox_register_fdt(__dtb_start);
 
 	return 0;
 }
diff --git a/arch/sandbox/board/dtb.c b/arch/sandbox/board/dtb.c
index d11bde0249..da24521992 100644
--- a/arch/sandbox/board/dtb.c
+++ b/arch/sandbox/board/dtb.c
@@ -54,10 +54,7 @@ static int of_sandbox_init(void)
 	if (IS_ERR(root))
 		return PTR_ERR(root);
 
-	of_set_root_node(root);
-	of_fix_tree(root);
-	if (IS_ENABLED(CONFIG_OFDEVICE))
-		of_probe();
+	barebox_register_of(root);
 
 	return 0;
 }
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0a2632f963..6e2fb8b281 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1567,6 +1567,34 @@ int of_set_root_node(struct device_node *node)
 	return 0;
 }
 
+void barebox_register_of(struct device_node *root)
+{
+	if (root_node)
+		return;
+
+	of_fix_tree(root);
+	of_set_root_node(root);
+
+	if (IS_ENABLED(CONFIG_OFDEVICE))
+		of_probe();
+}
+
+void barebox_register_fdt(const void *dtb)
+{
+	struct device_node *root;
+
+	if (root_node)
+		return;
+
+	root = of_unflatten_dtb(dtb);
+	if (IS_ERR(root)) {
+		pr_err("Cannot unflatten dtb: %s\n", strerrorp(root));
+		return;
+	}
+
+	barebox_register_of(root);
+}
+
 /**
  *  of_device_is_available - check if a device is available for use
  *
diff --git a/include/of.h b/include/of.h
index d548e51789..1b3ceaff40 100644
--- a/include/of.h
+++ b/include/of.h
@@ -252,6 +252,8 @@ extern int of_modalias_node(struct device_node *node, char *modalias, int len);
 
 extern struct device_node *of_get_root_node(void);
 extern int of_set_root_node(struct device_node *node);
+extern void barebox_register_of(struct device_node *root);
+extern void barebox_register_fdt(const void *dtb);
 
 extern struct device_d *of_platform_device_create(struct device_node *np,
 						struct device_d *parent);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
