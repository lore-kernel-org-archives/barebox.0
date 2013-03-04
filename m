Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5a-0006XC-MX
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:22 +0100
Message-Id: <1362390820-10333-20-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/37] of: make OFDEVICE a user selectable option
To: barebox@lists.infradead.org

OFDEVICE decides whether or not we compile in support for probing
devices from the devicetree. Let the user decide this explicitly.
This makes the oftree, of_node and of_property commands independent
of devicetree device support since being able to manipulate
devicetrees has nothing to do with probing devices from the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig   |    3 ---
 drivers/Makefile   |    2 +-
 drivers/of/Kconfig |    3 ++-
 include/of.h       |   12 ++++--------
 4 files changed, 7 insertions(+), 13 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index c1454c7..c8f06d8 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -481,7 +481,6 @@ config CMD_GO
 config CMD_OFTREE
 	tristate
 	select OFTREE
-	select OFDEVICE
 	prompt "oftree"
 	help
 	  The oftree command has support for dumping devicetrees and, if
@@ -497,7 +496,6 @@ config CMD_OFTREE_PROBE
 config CMD_OF_PROPERTY
 	tristate
 	select OFTREE
-	select OFDEVICE
 	prompt "of_property"
 	help
 	  The of_property command allows setting and deleting of properties in
@@ -506,7 +504,6 @@ config CMD_OF_PROPERTY
 config CMD_OF_NODE
 	tristate
 	select OFTREE
-	select OFDEVICE
 	prompt "of_node"
 	help
 	  The of_property command allows adding and removing devicetree nodes.
diff --git a/drivers/Makefile b/drivers/Makefile
index f81bf99..03a10fb 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -20,5 +20,5 @@ obj-y	+= misc/
 obj-y	+= dma/
 obj-y  += watchdog/
 obj-y	+= gpio/
-obj-$(CONFIG_OFDEVICE) += of/
+obj-$(CONFIG_OFTREE) += of/
 obj-$(CONFIG_W1) += w1/
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 5e53d25..c30b1c1 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -3,4 +3,5 @@ config OFTREE
 	bool
 
 config OFDEVICE
-	bool
+	select OFTREE
+	bool "Enable probing of devices from the devicetree"
diff --git a/include/of.h b/include/of.h
index 2cd55c0..2234dae 100644
--- a/include/of.h
+++ b/include/of.h
@@ -161,12 +161,13 @@ int of_set_property(struct device_node *node, const char *p, const void *val, in
 		int create);
 struct device_node *of_create_node(struct device_node *root, const char *path);
 
-#ifdef CONFIG_OFDEVICE
+struct device_node *of_get_root_node(void);
+int of_set_root_node(struct device_node *);
+
+#ifdef CONFIG_OFTREE
 int of_parse_partitions(const char *cdevname,
 			    struct device_node *node);
 
-struct device_node *of_get_root_node(void);
-int of_set_root_node(struct device_node *);
 int of_alias_get_id(struct device_node *np, const char *stem);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
@@ -179,11 +180,6 @@ static inline int of_parse_partitions(const char *cdevname,
 	return -EINVAL;
 }
 
-static inline struct device_node *of_get_root_node(void)
-{
-	return NULL;
-}
-
 static inline int of_alias_get_id(struct device_node *np, const char *stem)
 {
 	return -ENOENT;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
