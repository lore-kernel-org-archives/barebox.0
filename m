Delivery-date: Wed, 28 May 2025 14:19:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl4-001BXn-0X
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:19:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl3-0000bu-6q
	for lore@pengutronix.de; Wed, 28 May 2025 14:19:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/LmVtH5vh2f8V+6IeHiRTUplPl1fGn7I7PLbcy8qJpQ=; b=V/ALmJAr2NYb1QPiA6UZNbUvzc
	wfD5jRxAcQ9K6JDMH9fdb++uYKhO6nuroN7IcDTSR4MtxPjd2bjXeUiIDg4sQAGEYAUD4Ernb5tyf
	khsH3QT3qO8YCb0wyzhaWqn0t4fZf75ahR4wjHW2dNQYo9uTz6nSidGVWMa/E2OC/O19YoPVvbj5Q
	Gzt5OyzfWduLxcAlYX3NFUOTZEqZpE/Ea93VkTjfsqCNTOX0ijFVRztviVC3725d1GCTLkO9VNn9x
	PiOBkFuODEspZZG65KXs9FxcZT3SUBKuLFQkMG7iYe5LZj2QBGsBSO8Vadzyzx9g86R+sd3oPSlpF
	nEL2ic4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFkh-0000000D5P6-0Oop;
	Wed, 28 May 2025 12:19:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEY0-0000000CvyK-0Ol4
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=/LmVtH5vh2f8V+6IeHiRTUplPl1fGn7I7PLbcy8qJpQ=; b=axNGqaK1Cg6zDE5UiJWqz/nqT3
	/6L+ugrZ8GjS1ZBIhF4UZwWuwYsNc5rDcSOZqw5FNv0IqtCPjAbUYTV7q8eVeL5UfF5GVLsUFkmcL
	eQyLJO3TIu1snKDtAYpZtAIlfwi9pKF7laiRF/K4P0AbHDrVq7XXRFrQYv9EwYNblRobrXiFDRxph
	b1EFuLkoDSqMxJ8FTB+pFOjMUYylajlsThGeaUA+acr8ZKKoudk2srXKMNkj6p+iymzpsGrQA6/Bf
	cx26ccu0JuCVO6dQxzpaF7bOs1fONl25WVxDxH/tsNXEb3v1sE71ivQrue0p/3qLy0W5TNF14py1K
	mVUiakqw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXw-0000000DXDt-3Dn7
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:02:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-0001po-Og
	for barebox@lists.infradead.org; Wed, 28 May 2025 13:01:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-000ZhG-1j
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-1Q
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 28 May 2025 12:50:44 +0200
Message-Id: <20250528105046.3270397-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120208_831723_E1D71DC6 
X-CRM114-Status: GOOD (  18.77  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/10] bootm: make fallback to barebox internal tree optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox substituting its own device tree in place of a missing kernel
is often not what the user intended. Add a config option to disable
this, so users notice right away that they didn't supply a kernel device
tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib32/bootm.c      |  2 +-
 arch/arm/lib32/bootu.c      | 11 ++++++++---
 arch/arm/lib32/bootz.c      |  9 ++++++---
 arch/powerpc/lib/ppclinux.c |  2 +-
 common/Kconfig              | 18 ++++++++++++++++++
 common/bootm.c              |  9 +++------
 include/of.h                | 25 +++++++++++++++++++++++--
 7 files changed, 60 insertions(+), 16 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 32af112ae8c8..963c83051de0 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -428,7 +428,7 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data, void **outfdt)
 			pr_err("unable to unflatten devicetree\n");
 			goto err_free;
 		}
-		*outfdt = of_get_fixed_tree(root);
+		*outfdt = of_get_fixed_tree_for_boot(root);
 		if (!*outfdt) {
 			pr_err("Unable to get fixed tree\n");
 			ret = -EINVAL;
diff --git a/arch/arm/lib32/bootu.c b/arch/arm/lib32/bootu.c
index 31c3c56cc597..4b0f495aea5f 100644
--- a/arch/arm/lib32/bootu.c
+++ b/arch/arm/lib32/bootu.c
@@ -1,5 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
+#define pr_fmt(fmt) "bootu: " fmt
+
 #include <common.h>
 #include <command.h>
 #include <fs.h>
@@ -24,9 +26,12 @@ static int do_bootu(int argc, char *argv[])
 	if (!kernel)
 		kernel = (void *)simple_strtoul(argv[1], NULL, 0);
 
-#ifdef CONFIG_OFTREE
-	oftree = of_get_fixed_tree(NULL);
-#endif
+	oftree = of_get_fixed_tree_for_boot(NULL);
+	if (!oftree) {
+		pr_err("No devicetree given.\n");
+		return -EINVAL;
+	}
+
 	ret = of_overlay_load_firmware();
 	if (ret)
 		return ret;
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
index 8e8b0d225ecf..ab275c367711 100644
--- a/arch/arm/lib32/bootz.c
+++ b/arch/arm/lib32/bootz.c
@@ -110,9 +110,12 @@ static int do_bootz(int argc, char *argv[])
 	}
 
 	printf("loaded zImage from %s with size %d\n", argv[1], end);
-#ifdef CONFIG_OFTREE
-	oftree = of_get_fixed_tree(NULL);
-#endif
+	oftree = of_get_fixed_tree_for_boot(NULL);
+	if (!oftree) {
+		printf("No devicetree given.\n");
+		return -EINVAL;
+	}
+
 	ret = of_overlay_load_firmware();
 	if (ret)
 		return ret;
diff --git a/arch/powerpc/lib/ppclinux.c b/arch/powerpc/lib/ppclinux.c
index 6b00c2ee5756..564086482e5f 100644
--- a/arch/powerpc/lib/ppclinux.c
+++ b/arch/powerpc/lib/ppclinux.c
@@ -60,7 +60,7 @@ static int do_bootm_linux(struct image_data *data)
 	if (ret)
 		return ret;
 
-	fdt = of_get_fixed_tree(data->of_root_node);
+	fdt = of_get_fixed_tree_for_boot(data->of_root_node);
 	if (!fdt) {
 		pr_err("bootm: No devicetree given.\n");
 		return -EINVAL;
diff --git a/common/Kconfig b/common/Kconfig
index 0a7d9aee3abe..da19cb8d9980 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -642,6 +642,24 @@ config BOOTM_OFTREE
 
 	  -o DTS  specify device tree
 
+config BOOTM_OFTREE_FALLBACK
+	def_bool y
+	# We intentionally don't depend on BOOTM_OFTREE, because many boards
+	# don't enable it and instead rely on OFTREE being selected...
+	depends on BOOTM && HAVE_ARCH_BOOTM_OFTREE && OFTREE
+	prompt "pass along barebox' own DT as fallback"
+	help
+	  Say y here to substitute in the barebox device tree, when no kernel
+	  device tree was supplied. If unsure, say n.
+
+	  It's recommended to boot a kernel with the device tree that was
+	  shipped with it as DT binding breakage is not an infrequent
+	  occurrence.
+
+	  This especially applies to A/B boot setups, where each kernel
+	  should have its own DT, so fallback restores the system cleanly
+	  to the old state.
+
 config BOOTM_UIMAGE
 	def_bool y
 	prompt "support the legacy uImage format"
diff --git a/common/bootm.c b/common/bootm.c
index 4aebc8a66abd..b98dc2715914 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -484,14 +484,11 @@ void *bootm_get_devicetree(struct image_data *data)
 		}
 
 	} else {
-		struct device_node *root = of_get_root_node();
-
-		if (!root)
+		data->of_root_node = of_dup_root_node_for_boot();
+		if (!data->of_root_node)
 			return NULL;
 
-		data->of_root_node = of_dup(root);
-
-		if (bootm_verbose(data) > 1 && data->of_root_node)
+		if (bootm_verbose(data) > 1)
 			printf("using internal devicetree\n");
 	}
 
diff --git a/include/of.h b/include/of.h
index e46d410d3651..a9bd37fdca2f 100644
--- a/include/of.h
+++ b/include/of.h
@@ -80,8 +80,6 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
 
 struct fdt_header *fdt_get_tree(void);
 
-struct fdt_header *of_get_fixed_tree(const struct device_node *node);
-
 /* Helper to read a big number; size is in cells (not bytes) */
 static inline u64 of_read_number(const __be32 *cell, int size)
 {
@@ -325,6 +323,7 @@ extern const char *of_parse_phandle_and_get_alias_from(struct device_node *root,
 						       int index);
 
 extern struct device_node *of_get_root_node(void);
+extern struct fdt_header *of_get_fixed_tree(const struct device_node *node);
 extern int of_set_root_node(struct device_node *node);
 extern int barebox_register_of(struct device_node *root);
 extern int barebox_register_fdt(const void *dtb);
@@ -467,6 +466,11 @@ static inline struct device_node *of_get_root_node(void)
 	return NULL;
 }
 
+static inline struct fdt_header *of_get_fixed_tree(const struct device_node *node)
+{
+	return NULL;
+}
+
 static inline int of_set_root_node(struct device_node *node)
 {
 	return -ENOSYS;
@@ -1354,6 +1358,23 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 	return node;
 }
 
+
+static inline struct fdt_header *of_get_fixed_tree_for_boot(const struct device_node *node)
+{
+	if (!IS_ENABLED(CONFIG_BOOTM_OFTREE_FALLBACK) && !node)
+		return NULL;
+
+	return of_get_fixed_tree(node);
+}
+
+static inline struct device_node *of_dup_root_node_for_boot(void)
+{
+	if (!IS_ENABLED(CONFIG_BOOTM_OFTREE_FALLBACK))
+		return NULL;
+
+	return of_dup(of_get_root_node());
+}
+
 struct of_overlay_filter {
 	bool (*filter_filename)(struct of_overlay_filter *, const char *filename);
 	bool (*filter_content)(struct of_overlay_filter *, struct device_node *);
-- 
2.39.5



