Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJHY-0005iE-60
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:46:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:46:22 +0200
Message-Id: <1349725584-20509-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] console/of: evaluate linux,stdout-path property
To: barebox@lists.infradead.org

When a linux,stdout-path property is given in the devicetree
activate the corresponding console.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c  |    3 +++
 drivers/of/base.c |   23 +++++++++++++++++++++++
 include/of.h      |    6 ++++++
 3 files changed, 32 insertions(+)

diff --git a/common/console.c b/common/console.c
index 3dd964c..2766981 100644
--- a/common/console.c
+++ b/common/console.c
@@ -161,6 +161,9 @@ int console_register(struct console_device *newcdev)
 	}
 #endif
 
+	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev))
+		activate = 1;
+
 	list_add_tail(&newcdev->list, &console_list);
 
 	while (kfifo_getc(console_output_fifo, &ch) == 0)
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 09785fb..3d26343 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -758,11 +758,15 @@ static void __of_probe(struct device_node *node)
 		__of_probe(n);
 }
 
+struct device_node *of_chosen;
+
 int of_probe(void)
 {
 	if(!root_node)
 		return -ENODEV;
 
+	of_chosen = of_find_node_by_path("/chosen");
+
 	__of_probe(root_node);
 
 	return 0;
@@ -847,3 +851,22 @@ int of_parse_dtb(struct fdt_header *fdt)
 
 	return 0;
 }
+
+int of_device_is_stdout_path(struct device_d *dev)
+{
+	struct device_node *dn;
+	const char *name;
+
+	name = of_get_property(of_chosen, "linux,stdout-path", NULL);
+	if (name == NULL)
+		return 0;
+	dn = of_find_node_by_path(name);
+
+	if (!dn)
+		return 0;
+
+	if (dn == dev->device_node)
+		return 1;
+
+	return 0;
+}
diff --git a/include/of.h b/include/of.h
index 7b6a23a..e6342b6 100644
--- a/include/of.h
+++ b/include/of.h
@@ -114,6 +114,7 @@ int of_parse_partitions(const char *cdevname,
 
 struct device_node *of_get_root_node(void);
 int of_alias_get_id(struct device_node *np, const char *stem);
+int of_device_is_stdout_path(struct device_d *dev);
 #else
 static inline int of_parse_partitions(const char *cdevname,
 					  struct device_node *node)
@@ -130,6 +131,11 @@ static inline int of_alias_get_id(struct device_node *np, const char *stem)
 {
 	return -ENOENT;
 }
+
+static inline int of_device_is_stdout_path(struct device_d *dev)
+{
+	return 0;
+}
 #endif
 
 #endif /* __OF_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
