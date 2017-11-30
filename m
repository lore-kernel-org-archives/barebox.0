Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKMWN-0001du-JH
 for barebox@lists.infradead.ORG; Thu, 30 Nov 2017 10:56:49 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 30 Nov 2017 11:56:20 +0100
Message-Id: <20171130105620.10126-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] of: base: use root_node compatible as suggestion for a
 hostname
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

on some SoCs we can use generic PLL and RAM initialization. In this
cases we create board file only to provide a host name.
With this patch host name will be created from device tree compatible.
For example:
 compatible = "board_vendor,board", "chip_vendor,soc"
the host name will be:
 "board"

This function will not overwrite a host name which is already set by
board or machine code.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/misc.c     |  7 +++++++
 drivers/of/base.c | 32 ++++++++++++++++++++++++++++++++
 include/common.h  |  1 +
 include/of.h      |  1 +
 4 files changed, 41 insertions(+)

diff --git a/common/misc.c b/common/misc.c
index c5d3704c82..0888f1f4f6 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -187,6 +187,13 @@ const char *barebox_get_hostname(void)
 }
 EXPORT_SYMBOL(barebox_get_hostname);
 
+void barebox_set_hostname_no_overwrite(const char *__hostname)
+{
+	if (!barebox_get_hostname())
+		barebox_set_hostname(__hostname);
+}
+EXPORT_SYMBOL(barebox_set_hostname_no_overwrite);
+
 BAREBOX_MAGICVAR_NAMED(global_hostname, global.hostname,
 		"shortname of the board. Also used as hostname for DHCP requests");
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index eabbf3d957..6a582177bf 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2360,3 +2360,35 @@ int of_graph_port_is_available(struct device_node *node)
 	return available;
 }
 EXPORT_SYMBOL(of_graph_port_is_available);
+
+/**
+ * of_get_machine_compatible - get first compatible string from the root node.
+ *
+ * Returns the string or NULL.
+ */
+const char *of_get_machine_compatible(void)
+{
+	struct property *prop;
+	const char *name, *p;
+
+	if (!root_node)
+		return NULL;
+
+	prop = of_find_property(root_node, "compatible", NULL);
+	name = of_prop_next_string(prop, NULL);
+
+	p = strchr(name, ',');
+	return p ? p + 1 : name;
+}
+EXPORT_SYMBOL(of_get_machine_compatible);
+
+static int of_init_hostname(void)
+{
+	const char *name;
+
+	name = of_get_machine_compatible();
+	barebox_set_hostname_no_overwrite(name ?: "barebox");
+
+	return 0;
+}
+late_initcall(of_init_hostname);
diff --git a/include/common.h b/include/common.h
index dd7445e9b6..a9b8610af8 100644
--- a/include/common.h
+++ b/include/common.h
@@ -139,6 +139,7 @@ const char *barebox_get_model(void);
 void barebox_set_model(const char *);
 const char *barebox_get_hostname(void);
 void barebox_set_hostname(const char *);
+void barebox_set_hostname_no_overwrite(const char *);
 
 #if defined(CONFIG_MIPS)
 #include <asm/addrspace.h>
diff --git a/include/of.h b/include/of.h
index 18a423241b..edcc854f7b 100644
--- a/include/of.h
+++ b/include/of.h
@@ -148,6 +148,7 @@ extern struct device_node *of_copy_node(struct device_node *parent,
 				const struct device_node *other);
 extern void of_delete_node(struct device_node *node);
 
+extern const char *of_get_machine_compatible(void);
 extern int of_machine_is_compatible(const char *compat);
 extern int of_device_is_compatible(const struct device_node *device,
 		const char *compat);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
