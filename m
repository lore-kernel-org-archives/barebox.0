Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBsWJ-0006xa-Sk
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 02:22:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id y11-v6so8501809plt.3
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2018 19:22:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Oct 2018 19:21:17 -0700
Message-Id: <20181015022125.24020-15-andrew.smirnov@gmail.com>
In-Reply-To: <20181015022125.24020-1-andrew.smirnov@gmail.com>
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 14/22] of: Port latest of_device_make_bus_id()
 implementation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Code implementing of_device_make_bus_id() in Barebox uses rather old
implementation from Linux kernel and has a very significan limitation
in that it will produce identical names for different DT nodes that
happen to have the same node name as well as "reg" property.

One such example, that tirggered this change, is "switch@0" nodes that
can be found in dts/src/arm/vf610-zii-dev-rev-c.dts

This commit replaces original code with the current Linux kernel
implementation that traverses DT hierarchy from leaf node to its root
concatenating node names in the process.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/of/platform.c | 80 ++++++++++++-------------------------------
 1 file changed, 22 insertions(+), 58 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 4fd3ce2b7..17052f419 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -43,71 +43,35 @@ EXPORT_SYMBOL(of_find_device_by_node);
  * of_device_make_bus_id - Use the device node data to assign a unique name
  * @dev: pointer to device structure that is linked to a device tree node
  *
- * This routine will first try using either the dcr-reg or the reg property
- * value to derive a unique name.  As a last resort it will use the node
- * name followed by a unique number.
+ * This routine will first try using the translated bus address to
+ * derive a unique name. If it cannot, then it will prepend names from
+ * parent nodes until a unique name can be derived.
  */
 static void of_device_make_bus_id(struct device_d *dev)
 {
-	static int bus_no_reg_magic;
-	struct device_node *np = dev->device_node;
-	const __be32 *reg, *addrp;
+	struct device_node *node = dev->device_node;
+	const __be32 *reg;
 	u64 addr;
-	char *name, *at;
-
-	name = xstrdup(np->name);
-	at = strchr(name, '@');
-	if (at)
-		*at = '\0';
-
-#ifdef CONFIG_PPC_DCR
-	/*
-	 * If it's a DCR based device, use 'd' for native DCRs
-	 * and 'D' for MMIO DCRs.
-	 */
-	reg = of_get_property(np, "dcr-reg", NULL);
-	if (reg) {
-#ifdef CONFIG_PPC_DCR_NATIVE
-		dev_set_name(dev, "d%x.%s", *reg, name);
-#else /* CONFIG_PPC_DCR_NATIVE */
-		u64 addr = of_translate_dcr_address(np, *reg, NULL);
-		if (addr != OF_BAD_ADDR) {
-			dev_set_name(dev, "D%llx.%s",
-				     (unsigned long long)addr, name);
-			free(name);
-			return;
-		}
-#endif /* !CONFIG_PPC_DCR_NATIVE */
-	}
-#endif /* CONFIG_PPC_DCR */
-
-	/*
-	 * For MMIO, get the physical address
-	 */
-	reg = of_get_property(np, "reg", NULL);
-	if (reg) {
-		if (of_can_translate_address(np)) {
-			addr = of_translate_address(np, reg);
-		} else {
-			addrp = of_get_address(np, 0, NULL, NULL);
-			if (addrp)
-				addr = of_read_number(addrp, 1);
-			else
-				addr = OF_BAD_ADDR;
-		}
-		if (addr != OF_BAD_ADDR) {
-			dev_set_name(dev, "%llx.%s",
-				     (unsigned long long)addr, name);
-			free(name);
+
+	/* Construct the name, using parent nodes if necessary to ensure uniqueness */
+	while (node->parent) {
+		/*
+		 * If the address can be translated, then that is as much
+		 * uniqueness as we need. Make it the first component and return
+		 */
+		reg = of_get_property(node, "reg", NULL);
+		if (reg && (addr = of_translate_address(node, reg)) != OF_BAD_ADDR) {
+			dev_set_name(dev, dev->name ? "%llx.%s:%s" : "%llx.%s",
+				     (unsigned long long)addr, node->name,
+				     dev->name);
 			return;
 		}
-	}
 
-	/*
-	 * No BusID, use the node name and add a globally incremented counter
-	 */
-	dev_set_name(dev, "%s.%d", name, bus_no_reg_magic++);
-	free(name);
+		/* format arguments only used if dev_name() resolves to NULL */
+		dev_set_name(dev, dev->name ? "%s:%s" : "%s",
+			     kbasename(node->full_name), dev->name);
+		node = node->parent;
+	}
 }
 
 /**
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
