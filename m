Delivery-date: Fri, 17 May 2024 09:49:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sL4-0014Fi-2L
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 09:49:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sL3-000860-Qn
	for lore@pengutronix.de; Fri, 17 May 2024 09:49:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hYl889wOy2oOOxH1s+pItNq9yiSYu4yppj4FfwBqNbA=; b=FgGy/6YTucfxTTIfBjsVAdzrw2
	SPbPQMrE71JDDoiP8DAPMrHvF3mq/DC83LZYqWOdjVM8lj9DQK2qmO9qyzDngeCy/w1KeDOqJF7kG
	xUHeEu09J0hTWmeobeYsSbPAJvpmf+XzCW9P+j+qp8GVXKOF37LP/b3ZWBydpIV6k4MkP1pSnHU/b
	UcvnTlYHOeLvA7cs9lOd5NqwICZo3upz0sVSbDRP8ULB4tjmk+O/XLMWvHqJlobEkvRsxfU/Ej9CT
	2KVoZdRpkUdTp9PuDOZ0//Y24IZ6lxSutvVngt7+cl/QD5SX+qnxsdOBlGjJSfmNMIpKqUoNO9l4o
	hZ6ohIrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKe-000000076z9-0le7;
	Fri, 17 May 2024 07:48:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKJ-000000076hY-1Kl4
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 07:48:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-0007Oz-C3; Fri, 17 May 2024 09:48:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKG-001q0T-Vh; Fri, 17 May 2024 09:48:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKG-003DkZ-2t;
	Fri, 17 May 2024 09:48:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 09:48:18 +0200
Message-Id: <20240517074824.767767-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_004827_498737_98FE75A7 
X-CRM114-Status: GOOD (  14.28  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] of: free unflattened overlays after application
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_unflatten_dtb allocates an unflattened tree and of_overlay_apply_tree
copies it into another tree. The unflattened tree is then usually
leaked. Add a function that takes care of these two steps and then frees
the tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boards/riscvemu/board.c |  4 +---
 common/boards/qemu-virt/board.c    |  8 +++-----
 drivers/of/overlay.c               | 12 ++++++++++++
 include/of.h                       |  8 ++++++++
 test/self/regulator.c              |  7 +++----
 5 files changed, 27 insertions(+), 12 deletions(-)

diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
index afd6608ac522..a81e0baaaf0a 100644
--- a/arch/riscv/boards/riscvemu/board.c
+++ b/arch/riscv/boards/riscvemu/board.c
@@ -38,12 +38,10 @@ extern char __dtbo_riscvemu_sram_start[];
 static int riscvemu_probe(struct device *dev)
 {
 	struct device_node *of_chosen;
-	struct device_node *overlay;
 	struct riscvemu_priv *priv;
 	u64 start;
 
-	overlay = of_unflatten_dtb(__dtbo_riscvemu_sram_start, INT_MAX);
-	of_overlay_apply_tree(dev->of_node, overlay);
+	of_overlay_apply_dtbo(dev->of_node, __dtbo_riscvemu_sram_start);
 	/* of_probe() will happen later at of_populate_initcall */
 
 	if (IS_ENABLED(CONFIG_CMD_TUTORIAL))
diff --git a/common/boards/qemu-virt/board.c b/common/boards/qemu-virt/board.c
index 4f2f7374c56a..9882b0c31a3c 100644
--- a/common/boards/qemu-virt/board.c
+++ b/common/boards/qemu-virt/board.c
@@ -54,7 +54,7 @@ BAREBOX_DEEP_PROBE_ENABLE(virt_of_match);
 static int virt_board_driver_init(void)
 {
 	struct device_node *root = of_get_root_node();
-	struct device_node *flash, *overlay, *pubkey;
+	struct device_node *flash, *pubkey;
 	const struct of_device_id *id;
 	void (*init)(void);
 
@@ -72,10 +72,8 @@ static int virt_board_driver_init(void)
 	 * configurations, where the first flash bank is secure-world only
 	 */
 	flash = of_find_node_by_path(PARTS_TARGET_PATH_STR);
-	if (flash && of_device_is_available(flash)) {
-		overlay = of_unflatten_dtb(__dtbo_qemu_virt_flash_start, INT_MAX);
-		of_overlay_apply_tree(root, overlay);
-	}
+	if (flash && of_device_is_available(flash))
+		of_overlay_apply_dtbo(root, __dtbo_qemu_virt_flash_start);
 
 	pubkey = of_unflatten_dtb(__dtb_fitimage_pubkey_start, INT_MAX);
 	of_merge_nodes(root, pubkey);
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 73c7a91db9b5..91b88c3f1b57 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -334,6 +334,18 @@ int of_overlay_apply_file(struct device_node *root, const char *filename,
 	return ret;
 }
 
+int of_overlay_apply_dtbo(struct device_node *root, const void *dtbo)
+{
+	struct device_node *overlay;
+	int ret;
+
+	overlay = of_unflatten_dtb(dtbo, INT_MAX);
+	ret = of_overlay_apply_tree(root, overlay);
+	of_delete_node(overlay);
+
+	return ret;
+}
+
 static int of_overlay_fixup(struct device_node *root, void *data)
 {
 	struct device_node *overlay = data;
diff --git a/include/of.h b/include/of.h
index f99cff5cf54a..55f2c0cbdedf 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1311,6 +1311,8 @@ int of_overlay_apply_tree(struct device_node *root,
 			  struct device_node *overlay);
 int of_overlay_apply_file(struct device_node *root, const char *filename,
 			  bool filter);
+int of_overlay_apply_dtbo(struct device_node *root,
+			  const void *dtbo);
 int of_register_overlay(struct device_node *overlay);
 int of_process_overlay(struct device_node *root,
 		    struct device_node *overlay,
@@ -1342,6 +1344,12 @@ static inline int of_overlay_apply_file(struct device_node *root,
 	return -ENOSYS;
 }
 
+static inline int of_overlay_apply_dtbo(struct device_node *root,
+					const void *dtbo)
+{
+	return -ENOSYS;
+}
+
 static inline int of_register_overlay(struct device_node *overlay)
 {
 	return -ENOSYS;
diff --git a/test/self/regulator.c b/test/self/regulator.c
index bcbcbe33e12f..d009a610f5f4 100644
--- a/test/self/regulator.c
+++ b/test/self/regulator.c
@@ -166,7 +166,6 @@ static struct device *dev;
 static void test_regulator(void)
 {
 	extern char __dtbo_test_regulator_start[];
-	struct device_node *overlay;
 	int ret;
 
 	if (!dev) {
@@ -174,10 +173,10 @@ static void test_regulator(void)
 		if (ret)
 			return;
 
-		overlay = of_unflatten_dtb(__dtbo_test_regulator_start, INT_MAX);
-		if (WARN_ON(IS_ERR(overlay)))
+		ret = of_overlay_apply_dtbo(of_get_root_node(), __dtbo_test_regulator_start);
+		if (WARN_ON(ret))
 			return;
-		of_overlay_apply_tree(of_get_root_node(), overlay);
+
 		of_probe();
 
 		dev = of_find_device_by_node_path("/regulator-self-test-pmic");
-- 
2.39.2



