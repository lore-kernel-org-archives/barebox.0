Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1extPv-00074E-9Y
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 11:57:32 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 19 Mar 2018 12:57:14 +0100
Message-Id: <20180319115714.1238-1-p.zabel@pengutronix.de>
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
Subject: [PATCH] reset-source: pass reset reason to kernel via device tree
To: barebox@lists.infradead.org

Add a device tree fixup that adds a /chosen/barebox-reset-reason string
property to the device tree chosen node. It can be read under Linux in
/sys/firmware/devicetree/base/chosen/barebox-reset-reason.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 Documentation/user/reset-reason.rst |  3 +++
 common/reset_source.c               | 22 ++++++++++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/Documentation/user/reset-reason.rst b/Documentation/user/reset-reason.rst
index 26d37f86dd..26022ba6d7 100644
--- a/Documentation/user/reset-reason.rst
+++ b/Documentation/user/reset-reason.rst
@@ -45,3 +45,6 @@ The following values can help to detect the reason why the bootloader runs:
 It depends on your board/SoC and its features if the hardware is able to detect
 these reset reasons. Most of the time only ``POR`` and ``RST`` are supported
 but often ``WDG`` as well.
+
+The reset reason is passed to the kernel via the device tree property string
+``/chosen/barebox-reset-reason``.
diff --git a/common/reset_source.c b/common/reset_source.c
index 06e2ca85f5..e14ba3fc16 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -77,3 +77,25 @@ unsigned int of_get_reset_source_priority(struct device_node *node)
 
 	return priority;
 }
+
+#ifdef CONFIG_OFTREE
+static int reset_source_of_fixup(struct device_node *root, void *context)
+{
+	struct device_node *node;
+
+	node = of_create_node(root, "/chosen");
+	if (!node)
+		return -ENOMEM;
+
+	return of_property_write_string(node, "barebox-reset-reason",
+			reset_src_names[reset_source]);
+}
+
+static int reset_source_register_of_fixup(void)
+{
+	of_register_fixup(reset_source_of_fixup, NULL);
+
+	return 0;
+}
+late_initcall(reset_source_register_of_fixup);
+#endif
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
