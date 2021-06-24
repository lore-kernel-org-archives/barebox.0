Delivery-date: Thu, 24 Jun 2021 10:55:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL8X-0007HQ-A3
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:55:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL8U-0001pj-Fs
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:55:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chRmcBdSqsih7ttjhA2w/11jOqLtmJf3UqBC8iTr24c=; b=hhgATwC3fOdZTu
	LEXFZ2DwyE9/ZFSbxI2ezv1ZU9pGBCAouqCX4D8MSpgSpiJUJQyJvzjbB1Oeb7Y1fSPkV2JGKnzKX
	/6MepBMHlqCYoia4F7+CmoHLRl3iKmBzA9v2g+8FzGoFro/pzYBirL6dF1rha/3a5KbjlsZ8EopcZ
	shBtBWGMfhyzBiFLAMTvBS2OVUnjhMpkepCMv9won0fyPGhkB0iKo9NM/uh++lglR8R3uYs7lW6pi
	8wLlfc1drr3J+ubKgg/ooC37fMER0U6jKjnssreFb88w6+tljoTtUAMSIleDBRdRtwVd/nz9N+9bo
	pGsWxFwZJDAFHZpQOP2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL70-00DXpM-9S; Thu, 24 Jun 2021 08:53:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL63-00DXFW-8S
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL61-0000sR-EE; Thu, 24 Jun 2021 10:52:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000c4-CC; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:18 +0200
Message-Id: <20210624085223.14616-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015227_735180_24A0B6F0 
X-CRM114-Status: GOOD (  33.62  )
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
Subject: [PATCH 13/18] blspec: Rework firmware load
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Applying overlays in blspec currently works in two steps. First
of_firmware_load_overlay() is called which doesn't load an overlay,
but instead loads firmware when one is needed by the overlay. This
is done on the live tree, because that was needed to find the firmware
manager. The second step is to call of_register_overlay() to apply
the overlay to the kernel device tree when the fixups are executed.

Instead of using a separate step to load the firmware, load the firmware
as part of the of_fixups.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/bootm.c      |   4 ++
 arch/arm/lib32/bootu.c      |   5 +-
 arch/arm/lib32/bootz.c      |   3 +
 arch/arm/lib64/armlinux.c   |   4 ++
 arch/kvx/lib/bootm.c        |   6 ++
 arch/mips/lib/bootm.c       |   4 ++
 arch/powerpc/lib/ppclinux.c |   4 ++
 arch/riscv/lib/bootm.c      |   5 ++
 commands/of_overlay.c       |   4 --
 common/blspec.c             |  73 ++++++------------------
 common/oftree.c             |   2 +
 drivers/of/of_firmware.c    | 111 ++++++++++++++++++++++++++++--------
 drivers/of/overlay.c        |   5 ++
 include/of.h                |  17 +++++-
 14 files changed, 162 insertions(+), 85 deletions(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 0ffb374cf1..2bba585e96 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -325,6 +325,10 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 	if (data->dryrun)
 		return 0;
 
+	ret = of_overlay_load_firmware();
+	if (ret)
+		return ret;
+
 	if (data->tee_res)
 		tee = (void *)data->tee_res->start;
 	else
diff --git a/arch/arm/lib32/bootu.c b/arch/arm/lib32/bootu.c
index 24c744da58..0540a16280 100644
--- a/arch/arm/lib32/bootu.c
+++ b/arch/arm/lib32/bootu.c
@@ -8,7 +8,7 @@
 
 static int do_bootu(int argc, char *argv[])
 {
-	int fd;
+	int fd, ret;
 	void *kernel = NULL;
 	void *oftree = NULL;
 
@@ -25,6 +25,9 @@ static int do_bootu(int argc, char *argv[])
 #ifdef CONFIG_OFTREE
 	oftree = of_get_fixed_tree(NULL);
 #endif
+	ret = of_overlay_load_firmware();
+	if (ret)
+		return ret;
 
 	start_linux(kernel, 0, 0, 0, oftree, ARM_STATE_SECURE, NULL);
 
diff --git a/arch/arm/lib32/bootz.c b/arch/arm/lib32/bootz.c
index a2a26ac2f9..486e945a74 100644
--- a/arch/arm/lib32/bootz.c
+++ b/arch/arm/lib32/bootz.c
@@ -111,6 +111,9 @@ static int do_bootz(int argc, char *argv[])
 #ifdef CONFIG_OFTREE
 	oftree = of_get_fixed_tree(NULL);
 #endif
+	ret = of_overlay_load_firmware();
+	if (ret)
+		return ret;
 
 	start_linux(zimage, swap, 0, 0, oftree, ARM_STATE_SECURE, NULL);
 
diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 0ba4d30b8e..c2f2129321 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -16,6 +16,10 @@ static int do_bootm_linux(struct image_data *data)
 	if (IS_ERR(fn))
 		return PTR_ERR(fn);
 
+	ret = of_overlay_load_firmware();
+	if (ret)
+		return ret;
+
 	shutdown_barebox();
 
 	fn(devicetree, 0, 0, 0);
diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index 198eef7980..4d17e1846d 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -24,11 +24,17 @@ typedef void __noreturn (*boot_func_entry)(unsigned long, void *);
 static int do_boot_entry(struct image_data *data, boot_func_entry entry,
 			 void *fdt_load_addr)
 {
+	int ret;
+
 	printf("starting elf (entry at %p)\n", entry);
 
 	if (data->dryrun)
 		return 0;
 
+	ret = of_overlay_load_firmware();
+	if (ret)
+		return ret;
+
 	shutdown_barebox();
 
 	/* Synchronize I-cache with D-cache */
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 6c56202ea9..b71b8d5c38 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -65,6 +65,10 @@ static int do_bootm_elf(struct image_data *data)
 	if (data->dryrun)
 		goto bootm_free_fdt;
 
+	ret = of_overlay_load_firmware();
+	if (ret)
+		return ret;
+
 	shutdown_barebox();
 
 	entry = (void *) (unsigned long) data->os_address;
diff --git a/arch/powerpc/lib/ppclinux.c b/arch/powerpc/lib/ppclinux.c
index 05c29be7da..b4cb59a524 100644
--- a/arch/powerpc/lib/ppclinux.c
+++ b/arch/powerpc/lib/ppclinux.c
@@ -67,6 +67,10 @@ static int do_bootm_linux(struct image_data *data)
 	if (data->dryrun)
 		return 0;
 
+	ret = of_overlay_load_firmware();
+	if (ret)
+		return ret;
+
 	/* Relocate the device tree if outside the initial
 	 * Linux mapped TLB.
 	 */
diff --git a/arch/riscv/lib/bootm.c b/arch/riscv/lib/bootm.c
index b3e41de4a8..8504ee63a9 100644
--- a/arch/riscv/lib/bootm.c
+++ b/arch/riscv/lib/bootm.c
@@ -8,11 +8,16 @@ static int do_bootm_linux(struct image_data *data)
 {
 	void (*fn)(unsigned long a0, unsigned long dtb, unsigned long a2);
 	phys_addr_t devicetree;
+	int ret;
 
 	fn = booti_load_image(data, &devicetree);
 	if (IS_ERR(fn))
 		return PTR_ERR(fn);
 
+	ret = of_overlay_load_firmware();
+	if (ret)
+		return ret;
+
 	shutdown_barebox();
 
 	fn(0, devicetree, 0);
diff --git a/commands/of_overlay.c b/commands/of_overlay.c
index 71f41a3c04..b3660b4bf1 100644
--- a/commands/of_overlay.c
+++ b/commands/of_overlay.c
@@ -32,10 +32,6 @@ static int do_of_overlay(int argc, char *argv[])
 	if (IS_ERR(overlay))
 		return PTR_ERR(overlay);
 
-	ret = of_firmware_load_overlay(overlay);
-	if (ret)
-		goto err;
-
 	ret = of_register_overlay(overlay);
 	if (ret) {
 		printf("cannot apply oftree overlay: %s\n", strerror(-ret));
diff --git a/common/blspec.c b/common/blspec.c
index 148e52b038..ca96a45487 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -32,71 +32,33 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
 			val ? strlen(val) + 1 : 0, 1);
 }
 
-static int blspec_apply_oftree_overlay(char *file, const char *abspath,
-				       int dryrun)
-{
-	int ret = 0;
-	struct fdt_header *fdt;
-	struct device_node *overlay;
-	char *path;
-	size_t size;
-
-	path = basprintf("%s/%s", abspath, file);
-
-	fdt = read_file(path, &size);
-	if (!fdt) {
-		pr_warn("unable to read \"%s\"\n", path);
-		ret = -EINVAL;
-		goto out;
-	}
-
-	overlay = of_unflatten_dtb(fdt, size);
-	free(fdt);
-	if (IS_ERR(overlay)) {
-		ret = PTR_ERR(overlay);
-		goto out;
-	}
-
-	if (dryrun) {
-		pr_info("dry run: skip overlay %s\n", path);
-		of_delete_node(overlay);
-		goto out;
-	}
-
-	ret = of_firmware_load_overlay(overlay);
-	if (ret) {
-		pr_warn("failed to load firmware: skip overlay \"%s\"\n", path);
-		of_delete_node(overlay);
-		goto out;
-	}
-
-	ret = of_register_overlay(overlay);
-	if (ret) {
-		pr_warn("cannot register devicetree overlay \"%s\"\n", path);
-		of_delete_node(overlay);
-	}
-
-out:
-	free(path);
-
-	return ret;
-}
-
-static void blspec_apply_oftree_overlays(const char *overlays,
-					 const char *abspath, int dryrun)
+static int blspec_overlay_fixup(struct device_node *root, void *ctx)
 {
+	struct blspec_entry *entry = ctx;
+	const char *overlays;
 	char *overlay;
 	char *sep, *freep;
 
+	overlays = blspec_entry_var_get(entry, "devicetree-overlay");
+
 	sep = freep = xstrdup(overlays);
 
 	while ((overlay = strsep(&sep, " "))) {
+		char *path;
+
 		if (!*overlay)
 			continue;
-		blspec_apply_oftree_overlay(overlay, abspath, dryrun);
+
+		path = basprintf("%s/%s", entry->rootpath, overlay);
+
+		of_overlay_apply_file(root, path);
+
+		free(path);
 	}
 
 	free(freep);
+
+	return 0;
 }
 
 /*
@@ -153,7 +115,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	}
 
 	if (overlays)
-		blspec_apply_oftree_overlays(overlays, abspath, dryrun);
+		of_register_fixup(blspec_overlay_fixup, entry);
 
 	if (initrd)
 		data.initrd_file = basprintf("%s/%s", abspath, initrd);
@@ -189,6 +151,9 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	if (ret)
 		pr_err("Booting failed\n");
 
+	if (overlays)
+		of_unregister_fixup(blspec_overlay_fixup, entry);
+
 	firmware_set_searchpath(old_fws);
 
 err_out:
diff --git a/common/oftree.c b/common/oftree.c
index da8043809b..7028c49aca 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -326,6 +326,8 @@ int of_fix_tree(struct device_node *node)
 	struct of_fixup *of_fixup;
 	int ret;
 
+	of_overlay_load_firmware_clear();
+
 	list_for_each_entry(of_fixup, &of_fixup_list, list) {
 		ret = of_fixup->fixup(node, of_fixup->context);
 		if (ret)
diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
index 12ce1d95d0..2d8245a02e 100644
--- a/drivers/of/of_firmware.c
+++ b/drivers/of/of_firmware.c
@@ -21,12 +21,21 @@ static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
 	return NULL;
 }
 
+struct fw_load_entry {
+	struct firmware_mgr *mgr;
+	char *firmware;
+	struct list_head list;
+};
+
+static LIST_HEAD(fw_load_list);
+
 static int load_firmware(struct device_node *target,
 			 struct device_node *fragment, void *unused)
 {
 	const char *firmware_name;
 	int err;
 	struct firmware_mgr *mgr;
+	struct fw_load_entry *fle;
 
 	err = of_property_read_string(fragment,
 				      "firmware-name", &firmware_name);
@@ -43,32 +52,86 @@ static int load_firmware(struct device_node *target,
 	if (!mgr)
 		return -EINVAL;
 
-	err = firmwaremgr_load_file(mgr, firmware_name);
+	fle = xzalloc(sizeof(*fle));
+	fle->mgr = mgr;
+	fle->firmware = xstrdup(firmware_name);
 
-	return err;
+	list_add_tail(&fle->list, &fw_load_list);
+
+	return 0;
 }
 
-int of_firmware_load_overlay(struct device_node *overlay)
+/*
+ * The dt overlay API says that a "firmware-name" property found in an overlay
+ * node compatible to "fpga-region" triggers loading of the firmware with the
+ * name given in the "firmware-name" property.
+ *
+ * barebox applies overlays to the Kernel device tree as part of booting the
+ * Kernel. When a firmware is needed for an overlay then it shall be loaded,
+ * so that the Kernel already finds the firmware loaded.
+ * 
+ * In barebox overlays are applied as a of_fixup to the desired tree. The fixups
+ * might be executed multiple times not only as part of booting the Kernel, but
+ * also during of_diff command execution and other actions. It's not desired
+ * that we (re-)load all firmwares each time this happens, so the process is
+ * splitted up. During application of an overlay the needed firmwares are only
+ * collected to a list, but not actually loaded. Only once it's clear we want to
+ * boot with that device tree the firmwares are loaded by explicitly calling
+ * of_overlay_load_firmware().
+ */
+
+/**
+ * of_overlay_pre_load_firmware() - check overlay node for firmware to load
+ * @root: The device tree to apply the overlay to
+ * @overlay: The overlay
+ *
+ * This function checks the given overlay for firmware to load. If a firmware
+ * is needed then it is not directly loaded, but instead added to a list of
+ * firmware to be loaded. The firmware files on this list can then be loaded
+ * with of_overlay_load_firmware().
+ *
+ * Return: 0 for success or negative error code otherwise
+ */
+int of_overlay_pre_load_firmware(struct device_node *root, struct device_node *overlay)
 {
-	int err;
-	struct device_node *root;
-	struct device_node *resolved;
-	struct device_node *ovl;
-
-	root = of_get_root_node();
-	resolved = of_resolve_phandles(root, overlay);
-	/*
-	 * If the overlay cannot be resolved, use the load_firmware callback
-	 * with the unresolved overlay to verify that the overlay does not
-	 * depend on a firmware to be loaded. If a required firmware cannot be
-	 * loaded, the overlay must not be applied.
-	 */
-	ovl = resolved ? resolved : overlay;
-
-	err = of_process_overlay(root, ovl, load_firmware, NULL);
-
-	if (resolved)
-		of_delete_node(resolved);
-
-	return err;
+	return of_process_overlay(root, overlay, load_firmware, NULL);
+}
+
+/**
+ * of_overlay_load_firmware() - load all firmware files
+ *
+ * This function loads all firmware files previously collected in
+ * of_overlay_pre_load_firmware().
+ *
+ * Return: 0 when all firmware files could be loaded, negative error code
+ * otherwise.
+ */
+int of_overlay_load_firmware(void)
+{
+	struct fw_load_entry *fle;
+	int ret;
+
+	list_for_each_entry(fle, &fw_load_list, list) {
+		ret = firmwaremgr_load_file(fle->mgr, fle->firmware);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * of_overlay_load_firmware_clear() - Clear list of firmware files
+ *
+ * This function clears the list of firmware files.
+ */
+void of_overlay_load_firmware_clear(void)
+{
+	struct fw_load_entry *fle, *tmp;
+
+	list_for_each_entry_safe(fle, tmp, &fw_load_list, list) {
+		list_del(&fle->list);
+		free(fle->firmware);
+		free(fle);
+	}
 }
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index f238b39ff1..26b5fee775 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -181,6 +181,10 @@ int of_overlay_apply_tree(struct device_node *root,
 	if (!resolved)
 		return -EINVAL;
 
+	err = of_overlay_pre_load_firmware(root, resolved);
+	if (err)
+		goto out_err;
+
 	/* Copy symbols from resolved overlay to base device tree */
 	of_overlay_apply_symbols(root, resolved);
 
@@ -191,6 +195,7 @@ int of_overlay_apply_tree(struct device_node *root,
 			pr_warn("failed to apply %s\n", fragment->name);
 	}
 
+out_err:
 	of_delete_node(resolved);
 
 	return err;
diff --git a/include/of.h b/include/of.h
index e1752fb28f..59c1250fb2 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1035,7 +1035,9 @@ int of_process_overlay(struct device_node *root,
 				   struct device_node *overlay, void *data),
 		    void *data);
 
-int of_firmware_load_overlay(struct device_node *overlay);
+int of_overlay_pre_load_firmware(struct device_node *root, struct device_node *overlay);
+int of_overlay_load_firmware(void);
+void of_overlay_load_firmware_clear(void);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -1069,10 +1071,21 @@ static inline int of_process_overlay(struct device_node *root,
 	return -ENOSYS;
 }
 
-static inline int of_firmware_load_overlay(struct device_node *overlay)
+static inline int of_overlay_pre_load_firmware(struct device_node *root,
+					       struct device_node *overlay)
 {
 	return -ENOSYS;
 }
+
+static inline int of_overlay_load_firmware(void)
+{
+	return 0;
+}
+
+static inline void of_overlay_load_firmware_clear(void)
+{
+}
+
 #endif
 
 #endif /* __OF_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

