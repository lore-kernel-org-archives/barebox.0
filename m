Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui0M9-0004Hr-B5
 for barebox@lists.infradead.org; Thu, 30 May 2013 10:45:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 12:44:54 +0200
Message-Id: <1369910694-20991-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369910694-20991-1-git-send-email-s.hauer@pengutronix.de>
References: <1369910694-20991-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] bootm: print Kernel commandline in verbose mode
To: barebox@lists.infradead.org

Without devicetree support we print the Kernel commandline in
verbose mode. Do the same with devicetree boot aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c |  2 ++
 common/oftree.c      | 15 +++++++++++++++
 include/of.h         |  1 +
 3 files changed, 18 insertions(+)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 133e04d..ee27e34 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -91,6 +91,8 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 			of_add_reserve_entry(initrd_start, initrd_end);
 		data->oftree = of_get_fixed_tree(data->of_root_node);
 		fdt_add_reserve_map(data->oftree);
+		if (bootm_verbose(data))
+			of_print_cmdline(data->of_root_node);
 		if (bootm_verbose(data) > 1)
 			of_print_nodes(data->of_root_node, 0);
 	}
diff --git a/common/oftree.c b/common/oftree.c
index 19fed6b..475d418 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -98,6 +98,21 @@ void of_print_property(const void *data, int len)
 	}
 }
 
+void of_print_cmdline(struct device_node *root)
+{
+	struct device_node *node = of_find_node_by_path(root, "/chosen");
+	const char *cmdline;
+
+	if (!node) {
+		printf("commandline: no /chosen node\n");
+		return;
+	}
+
+	cmdline = of_get_property(node, "bootargs", NULL);
+
+	printf("commandline: %s\n", cmdline);
+}
+
 static int of_fixup_bootargs(struct device_node *root)
 {
 	struct device_node *node;
diff --git a/include/of.h b/include/of.h
index 4dcf37e..7bc3cf4 100644
--- a/include/of.h
+++ b/include/of.h
@@ -138,6 +138,7 @@ int of_get_named_gpio(struct device_node *np,
 
 struct device_node *of_find_node_by_phandle(phandle phandle);
 void of_print_property(const void *data, int len);
+void of_print_cmdline(struct device_node *root);
 
 int of_device_is_compatible(const struct device_node *device,
 		const char *compat);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
