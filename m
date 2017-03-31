Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpC4-0005GV-87
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:34:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:11 +0200
Message-Id: <20170331053323.17821-3-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] treewide: Use of_property_write_string() where
 appropriate
To: Barebox List <barebox@lists.infradead.org>

Replace users which use of_set_property() to set a property to a string
with of_property_write_string().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/highbank/init.c |  6 ++----
 arch/arm/cpu/psci.c             |  6 ++----
 arch/sandbox/board/hostfile.c   |  6 ++----
 common/memory.c                 |  2 +-
 common/oftree.c                 |  2 +-
 common/state/state.c            |  5 ++---
 drivers/of/base.c               |  2 +-
 drivers/video/simplefb.c        | 12 ++++--------
 8 files changed, 15 insertions(+), 26 deletions(-)

diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index 577ccc0b74..32e217321a 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -37,14 +37,12 @@ static int hb_fixup(struct device_node *root, void *unused)
 
 	if (!(reg & HB_PWRDOM_STAT_SATA)) {
 		for_each_compatible_node_from(node, root, NULL, "calxeda,hb-ahci")
-			of_set_property(node, "status", "disabled",
-					sizeof("disabled"), 1);
+			of_property_write_string(node, "status", "disabled");
 	}
 
 	if (!(reg & HB_PWRDOM_STAT_EMMC)) {
 		for_each_compatible_node_from(node, root, NULL, "calxeda,hb-sdhci")
-			of_set_property(node, "status", "disabled",
-					sizeof("disabled"), 1);
+			of_property_write_string(node, "status", "disabled");
 	}
 
 	if ((opp_table[0] >> 16) != HB_OPP_VERSION)
diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index d650c23ea2..eafb361a0a 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -204,13 +204,11 @@ static int of_psci_fixup(struct device_node *root, void *unused)
 	if (!psci)
 		return -EINVAL;
 
-	ret = of_set_property(psci, "compatible", "arm,psci-1.0",
-			strlen("arm,psci-1.0") + 1, 1);
+	ret = of_property_write_string(psci, "compatible", "arm,psci-1.0");
 	if (ret)
 		return ret;
 
-	ret = of_set_property(psci, "method", "smc",
-			strlen("smc") + 1, 1);
+	ret = of_property_write_string(psci, "method", "smc");
 	if (ret)
 		return ret;
 
diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index c1a2643bc7..e7d92ea031 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -133,8 +133,7 @@ static int of_hostfile_fixup(struct device_node *root, void *ctx)
 
 	node = of_new_node(root, hf->devname);
 
-	ret = of_set_property(node, "compatible", hostfile_dt_ids->compatible,
-			      strlen(hostfile_dt_ids->compatible) + 1, 1);
+	ret = of_property_write_string(node, "compatible", hostfile_dt_ids->compatible);
 	if (ret)
 		return ret;
 
@@ -146,8 +145,7 @@ static int of_hostfile_fixup(struct device_node *root, void *ctx)
 	if (ret)
 		return ret;
 
-	ret = of_set_property(node, "barebox,filename", hf->filename,
-			      strlen(hf->filename) + 1, 1);
+	ret = of_property_write_string(node, "barebox,filename", hf->filename);
 
 	return ret;
 }
diff --git a/common/memory.c b/common/memory.c
index ad38b00ecb..ff5bdc14e2 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -185,7 +185,7 @@ static int of_memory_fixup(struct device_node *node, void *unused)
 	if (!memnode)
 		return -ENOMEM;
 
-	err = of_set_property(memnode, "device_type", "memory", sizeof("memory"), 1);
+	err = of_property_write_string(memnode, "device_type", "memory");
 	if (err)
 		return err;
 
diff --git a/common/oftree.c b/common/oftree.c
index e98b908738..09a4455a9e 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -128,7 +128,7 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 		return -ENOMEM;
 
 
-	err = of_set_property(node, "bootargs", str, strlen(str) + 1, 1);
+	err = of_property_write_string(node, "bootargs", str);
 
 	return err;
 }
diff --git a/common/state/state.c b/common/state/state.c
index 4020d5e1ea..02bb1bb24a 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -167,9 +167,8 @@ static int state_convert_node_variable(struct state *state,
 
 		if ((conv == STATE_CONVERT_TO_NODE)
 		    || (conv == STATE_CONVERT_FIXUP)) {
-			ret = of_set_property(new_node, "type",
-					      vtype->type_name,
-					      strlen(vtype->type_name) + 1, 1);
+			ret = of_property_write_string(new_node, "type",
+					      vtype->type_name);
 			if (ret)
 				goto out;
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 01ab38907d..6632f4d9dd 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2115,7 +2115,7 @@ int of_device_enable_path(const char *path)
  */
 int of_device_disable(struct device_node *node)
 {
-	return of_set_property(node, "status", "disabled", sizeof("disabled"), 1);
+	return of_property_write_string(node, "status", "disabled");
 }
 
 /**
diff --git a/drivers/video/simplefb.c b/drivers/video/simplefb.c
index 357262988e..a2c59de364 100644
--- a/drivers/video/simplefb.c
+++ b/drivers/video/simplefb.c
@@ -89,9 +89,6 @@ static const struct simplefb_mode *simplefb_find_mode(const struct fb_info *fbi)
 static int simplefb_create_node(struct device_node *root,
 				const struct fb_info *fbi, const char *format)
 {
-	const char *compat = "simple-framebuffer";
-	const char *disabled = "disabled";
-	const char *okay = "okay";
 	struct device_node *node;
 	u32 cells[2];
 	int ret;
@@ -100,12 +97,11 @@ static int simplefb_create_node(struct device_node *root,
 	if (!node)
 		return -ENOMEM;
 
-	ret = of_set_property(node, "status", disabled,
-				strlen(disabled) + 1, 1);
+	ret = of_property_write_string(node, "status", "disabled");
 	if (ret < 0)
 		return ret;
 
-	ret = of_set_property(node, "compatible", compat, strlen(compat) + 1, 1);
+	ret = of_property_write_string(node, "compatible", "simple-framebuffer");
 	if (ret)
 		return ret;
 
@@ -130,14 +126,14 @@ static int simplefb_create_node(struct device_node *root,
 	if (ret < 0)
 		return ret;
 
-	ret = of_set_property(node, "format", format, strlen(format) + 1, 1);
+	ret = of_property_write_string(node, "format", format);
 	if (ret < 0)
 		return ret;
 
 	of_add_reserve_entry((u32)fbi->screen_base,
 			(u32)fbi->screen_base + fbi->screen_size);
 
-	return of_set_property(node, "status", okay, strlen(okay) + 1, 1);
+	return of_property_write_string(node, "status", "okay");
 }
 
 static int simplefb_of_fixup(struct device_node *root, void *ctx)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
