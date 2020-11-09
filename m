Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc7TN-0004yZ-D8
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 13:44:42 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  9 Nov 2020 14:44:27 +0100
Message-Id: <20201109134430.21156-6-r.czerwinski@pengutronix.de>
In-Reply-To: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
References: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 5/8] ARM: vexpress: convert to board driver
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/vexpress/init.c | 69 +++++++++++++++++++--------------
 1 file changed, 40 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index 946385393f..6ba23bbb62 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -19,9 +19,33 @@
 
 #define V2M_SYS_FLASH	0x03c
 
-static int vexpress_core_init(void)
+static int of_fixup_virtio_mmio(struct device_node *root, void *unused)
+{
+	struct device_node *barebox_root, *np, *parent;
+
+	barebox_root = of_get_root_node();
+	if (root == barebox_root)
+		return 0;
+
+	for_each_compatible_node_from(np, barebox_root, NULL, "virtio,mmio") {
+		if (of_get_parent(np) == barebox_root)
+			parent = root;
+		else
+			parent = of_find_node_by_path_from(root,
+							   of_get_parent(np)->full_name);
+		if (!parent)
+			return -EINVAL;
+
+		of_copy_node(parent, np);
+	}
+
+	return 0;
+}
+
+static int vexpress_probe(struct device_d *dev)
 {
 	char *hostname = "vexpress-unknown";
+	int ret = 0;
 
 	if (amba_is_arm_sp804(IOMEM(0x10011000))) {
 		vexpress_a9_legacy_init();
@@ -42,35 +66,22 @@ static int vexpress_core_init(void)
 
 	barebox_set_hostname(hostname);
 
-	return 0;
-}
-postcore_initcall(vexpress_core_init);
-
-static int of_fixup_virtio_mmio(struct device_node *root, void *unused)
-{
-	struct device_node *barebox_root, *np, *parent;
-
-	barebox_root = of_get_root_node();
-	if (root == barebox_root)
-		return 0;
+	ret = of_register_fixup(of_fixup_virtio_mmio, NULL);
 
-	for_each_compatible_node_from(np, barebox_root, NULL, "virtio,mmio") {
-		if (of_get_parent(np) == barebox_root)
-			parent = root;
-		else
-			parent = of_find_node_by_path_from(root,
-							   of_get_parent(np)->full_name);
-		if (!parent)
-			return -EINVAL;
+	return ret;
+}
 
-		of_copy_node(parent, np);
-	}
+static const struct of_device_id vexpress_of_match[] = {
+	{ .compatible = "arm,vexpress,v2p-ca9" },
+	{ .compatible = "arm,vexpress,v2p-ca15" },
+	{ .compatible = "arm,vexpress" },
+	{ /* Sentinel */},
+};
 
-	return 0;
-}
+static struct driver_d vexpress_board_driver = {
+	.name = "board-vexpress",
+	.probe = vexpress_probe,
+	.of_compatible = vexpress_of_match,
+};
 
-static int of_register_virtio_mmio_fixup(void)
-{
-	return of_register_fixup(of_fixup_virtio_mmio, NULL);
-}
-late_initcall(of_register_virtio_mmio_fixup);
+postcore_platform_driver(vexpress_board_driver);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
