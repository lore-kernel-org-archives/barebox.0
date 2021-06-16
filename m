Delivery-date: Wed, 16 Jun 2021 08:34:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8V-0000FZ-I1
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 08:34:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8T-0000Es-60
	for lore@pengutronix.de; Wed, 16 Jun 2021 08:34:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1t5k3T9HMHLF/V+sbnCMu7jLl88uYalQuf77fX4LUMs=; b=A2Tzg+1qlMAwna
	bNdfyzlq5sj04zFJUQeGpdLCPfAquNjrFs7Z+PYy8qeQnMj1/2Gh1FrT11/IZEyt60PToOeubhwQR
	9Qhs0cqQb1OROu9eDiFomfoqwhFbMSSnuV4cSTJBcSNmTAnQALz35KugNIjtxE75yFmu9YTqoZ1+e
	Xt+u04Mxko2vuMPCdD4DWZeMDuUQZa4AlUveX15hsbNx6H3pTeh89+esxU03j9A/nlXaFzHD9QKrF
	ScDwe7w7VyfxZkdWMtC18WmVqlxu4z0USKqaquY6wivfz7jDLPTRBMkZbrUKAf3RVQRzXCcdSHuop
	zsbVLNmwjesNPqtgacrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltP7B-0055xZ-3a; Wed, 16 Jun 2021 06:33:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltP6m-0055oA-65
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 06:33:07 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6i-0008Ie-AJ
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:33:00 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6h-00049p-L2
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:32:59 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 16 Jun 2021 08:32:43 +0200
Message-Id: <20210616063246.14900-7-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
References: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_233304_479442_FC778788 
X-CRM114-Status: GOOD (  21.66  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 07/10] of: of_firmware: add support for fpga bridges
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add support for potentially defined FPGA-bridges in the overlay.

While at it also add support for loading the firmware directly via a
path instead of 'needing' an overlay for that.
The direct loading will be done with the existent firmwareload command.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

---

v2->v3 - basprintf -> plain 'compatible = "fpga-region"'
       - assign root in if-clause
---
 drivers/of/Makefile      |   3 +-
 drivers/of/of_firmware.c | 129 +++++++++++++++++++++++++++++++++++++--
 include/of.h             |  23 +++++--
 3 files changed, 142 insertions(+), 13 deletions(-)

diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index b6847752d247..6199c9791f52 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -6,4 +6,5 @@ obj-y += partition.o
 obj-y += of_net.o
 obj-$(CONFIG_MTD) += of_mtd.o
 obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
-obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
+obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o
+obj-$(CONFIG_FIRMWARE) += of_firmware.o
diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
index 096f84572e63..26864a6a13ef 100644
--- a/drivers/of/of_firmware.c
+++ b/drivers/of/of_firmware.c
@@ -4,12 +4,52 @@
  */
 #include <common.h>
 #include <firmware.h>
+#include <fpga-bridge.h>
 #include <of.h>
 
 struct overlay_info {
 	const char *firmware_path;
 };
 
+#ifdef CONFIG_FPGA_BRIDGE
+static int of_get_bridges(struct device_node *region, struct list_head *bridges)
+{
+	struct device_node *br, *parent_br = NULL;
+	int i, ret;
+
+	/* If parent is a bridge, add to list */
+	ret = fpga_bridge_get_to_list(region->parent, bridges);
+	if (!ret) {
+		parent_br = region->parent;
+		pr_debug("Add %s to list of bridges\n", parent_br->name);
+	}
+
+	for (i = 0; ; i++) {
+		br = of_parse_phandle(region, "fpga-bridges", i);
+		if (!br)
+			break;
+
+		/* If parent bridge is in list, skip it. */
+		if (br == parent_br)
+			continue;
+
+		/* If node is a bridge, get it and add to list */
+		ret = fpga_bridge_get_to_list(br, bridges);
+		if (ret)
+			return ret;
+
+		pr_debug("Add %s to list of bridges\n", br->name);
+	}
+
+	return 0;
+}
+#else
+static int of_get_bridges(struct device_node *np, struct list_head *br)
+{
+	return 0;
+}
+#endif
+
 static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 {
 	struct device_node *mgr_node;
@@ -25,6 +65,35 @@ static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 	return NULL;
 }
 
+static int of_load_firmware(struct device_node *target, const char *path)
+{
+	struct list_head bridge_list;
+	struct firmware_mgr *mgr;
+	int err;
+
+	mgr = of_node_get_mgr(target);
+	if (!mgr)
+		return -EINVAL;
+
+	pr_debug("Found firmware manager @%s\n", target->name);
+
+	INIT_LIST_HEAD(&bridge_list);
+
+	of_get_bridges(target, &bridge_list);
+
+	fpga_bridges_disable(&bridge_list);
+
+	pr_debug("Loading %s to %s\n", path, target->name);
+
+	err = firmwaremgr_load_file(mgr, path);
+
+	fpga_bridges_enable(&bridge_list);
+
+	fpga_bridges_put(&bridge_list);
+
+	return err;
+}
+
 static int load_firmware(struct device_node *target,
 			 struct device_node *fragment, void *data)
 {
@@ -33,7 +102,6 @@ static int load_firmware(struct device_node *target,
 	const char *firmware_path = info->firmware_path;
 	char *firmware;
 	int err;
-	struct firmware_mgr *mgr;
 
 	err = of_property_read_string(fragment,
 				      "firmware-name", &firmware_name);
@@ -46,21 +114,70 @@ static int load_firmware(struct device_node *target,
 	if (!target)
 		return -EINVAL;
 
-	mgr = of_node_get_mgr(target);
-	if (!mgr)
-		return -EINVAL;
-
 	firmware = basprintf("%s/%s", firmware_path, firmware_name);
 	if (!firmware)
 		return -ENOMEM;
 
-	err = firmwaremgr_load_file(mgr, firmware);
+	err = of_load_firmware(target, firmware);
 
 	free(firmware);
 
 	return err;
 }
 
+int of_firmware_load_file(const char *path, const char *compatible,
+			  const char *search_path, const char *firmware)
+{
+	struct overlay_info info = {
+		.firmware_path = search_path,
+	};
+	struct device_node *target;
+	struct device_node *node;
+	struct device_node *root;
+
+	if (!compatible)
+		compatible = "fpga-region";
+
+	/*
+	 * firmware-name not specified. Use load_firmware function to get it from
+	 * the devicetree. This allows loading firmware to multiple devices.
+	 */
+	if (!firmware && !path) {
+		int err;
+
+		pr_debug("No firmware specified. Searching devicetree for %s\n", compatible);
+		for_each_compatible_node(node, NULL, compatible) {
+			pr_debug("Load firmware from %s\n", node->name);
+			err = load_firmware(node, node, &info);
+			if (err == -ENOMEM)
+				return err;
+		}
+
+		return 0;
+	}
+
+	if (path) {
+		root = of_get_root_node();
+
+		target = of_find_node_by_path_or_alias(root, path);
+		if (!target) {
+			pr_debug("Cannot find nodepath %s\n", path);
+			return -ENOENT;
+		}
+	} else {
+		target = of_find_compatible_node(NULL, NULL, compatible);
+		if (!target) {
+			pr_debug("No node matching %s found\n", compatible);
+			return -ENOSYS;
+		}
+	}
+	
+	if (!firmware)
+		return load_firmware(target, target, &info);
+
+	return of_load_firmware(target, firmware);
+}
+
 int of_firmware_load_overlay(struct device_node *overlay, const char *path)
 {
 	struct overlay_info info = {
diff --git a/include/of.h b/include/of.h
index 645f429bdeed..3c922bdb1414 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1020,6 +1020,23 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 	return node;
 }
 
+#ifdef CONFIG_FIRMWARE
+int of_firmware_load_file(const char *path, const char *compatible,
+			  const char *search_path, const char *firmware);
+int of_firmware_load_overlay(struct device_node *overlay, const char *path);
+#else
+static inline int of_firmware_load_file(const char *path, const char *compatible,
+					const char *search_path, const char *firmware)
+{
+	return -ENOSYS;
+}
+
+static inline int of_firmware_load_overlay(const char *path)
+{
+	return -ENOSYS;
+}
+#endif
+
 #ifdef CONFIG_OF_OVERLAY
 struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay);
@@ -1032,7 +1049,6 @@ int of_process_overlay(struct device_node *root,
 				   struct device_node *overlay, void *data),
 		    void *data);
 
-int of_firmware_load_overlay(struct device_node *overlay, const char *path);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -1059,11 +1075,6 @@ static inline int of_process_overlay(struct device_node *root,
 {
 	return -ENOSYS;
 }
-
-static inline int of_firmware_load_overlay(struct device_node *overlay, const char *path)
-{
-	return -ENOSYS;
-}
 #endif
 
 #endif /* __OF_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

