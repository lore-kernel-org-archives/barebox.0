Delivery-date: Wed, 23 Jun 2021 07:18:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHg-0005H4-Np
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 07:18:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHe-0007bm-G0
	for lore@pengutronix.de; Wed, 23 Jun 2021 07:18:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YNDj7n88IeleSZepAn10Q1v2xvjUEp6tsqsJSxFCgI=; b=rLLG/YFyZT5u5P
	CxEbcCGOChlU/BTgNNwn7qMO32hTeKXKKAGfXqC3TktzQ1FQaZkWz90xqeRr5xEzRES76CpNkM60I
	6gtCScRvLKuHUZ4RUQuxdrGpWTlEc8+A4YkMBMQhfMBXyy6vVNynqGWPpNDwcEAz97lJ/NYVClKW5
	Q9cfLs4OzaezfcTvsaBm1ifGFBa5Ud10FJNsQS3E5hUZ4/zP4AdQuihDehH7L6P4whLWeUHBeazbA
	rOESmtACeKX4A0H7HndHPmV+OZm4QALSr/XoUtsNt4vjq/DnJI/7iP/1mDltVEPIZocLEaeCMkyRQ
	RQxaN1LX9x4j1iWP2ZSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvvGN-009MqZ-B1; Wed, 23 Jun 2021 05:17:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvvFd-009MQ2-Dw
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 05:16:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFb-0006rC-JB; Wed, 23 Jun 2021 07:16:35 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFa-0000Np-Ok; Wed, 23 Jun 2021 07:16:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 07:16:16 +0200
Message-Id: <20210623051632.30253-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623051632.30253-1-s.hauer@pengutronix.de>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_221637_882914_C4E79BC9 
X-CRM114-Status: GOOD (  22.08  )
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
Subject: [PATCH 01/17] fdt: Check blob size during unflattening
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_unflatten_dtb() doesn't check the size of the device tree blob
passed to it. Add a size argument end add checks for the size. Some
callers have no idea of the buffer size themselves, INT_MAX is passed
in these cases.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/qemu-virt/board.c         |  4 ++--
 arch/arm/boards/raspberry-pi/rpi-common.c |  2 +-
 arch/arm/boards/webasto-ccbv2/board.c     |  2 +-
 arch/arm/lib32/bootm.c                    |  2 +-
 commands/of_diff.c                        |  2 +-
 commands/of_display_timings.c             |  2 +-
 commands/of_dump.c                        |  4 ++--
 commands/of_overlay.c                     |  5 +++--
 commands/oftree.c                         |  2 +-
 common/blspec.c                           |  7 ++++---
 common/bootm.c                            |  4 ++--
 common/efi/efi.c                          |  2 +-
 common/image-fit.c                        |  2 +-
 common/state/backend_format_dtb.c         |  2 +-
 drivers/of/base.c                         |  2 +-
 drivers/of/fdt.c                          | 17 ++++++++++++-----
 include/of.h                              |  4 ++--
 17 files changed, 37 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boards/qemu-virt/board.c b/arch/arm/boards/qemu-virt/board.c
index 5ce1ecfc24..b2a3cb29ab 100644
--- a/arch/arm/boards/qemu-virt/board.c
+++ b/arch/arm/boards/qemu-virt/board.c
@@ -31,14 +31,14 @@ static int replace_dtb(void) {
 		return 0;
 	}
 
-	root = of_unflatten_dtb(fdt);
+	root = of_unflatten_dtb(fdt, INT_MAX);
 
 	if (!of_device_is_compatible(root, "linux,dummy-virt")) {
 		of_delete_node(root);
 		return 0;
 	}
 
-	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start);
+	overlay = of_unflatten_dtb(__dtb_overlay_of_flash_start, INT_MAX);
 	of_overlay_apply_tree(root, overlay);
 
 	return barebox_register_of(root);
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index e326732b3a..6c5df6fd69 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -430,7 +430,7 @@ static int rpi_vc_fdt_bootargs(void *fdt)
 	struct device_node *root = NULL, *node;
 	const char *cmdline;
 
-	root = of_unflatten_dtb(fdt);
+	root = of_unflatten_dtb(fdt, INT_MAX);
 	if (IS_ERR(root)) {
 		ret = PTR_ERR(root);
 		root = NULL;
diff --git a/arch/arm/boards/webasto-ccbv2/board.c b/arch/arm/boards/webasto-ccbv2/board.c
index a78258ea6a..477771309e 100644
--- a/arch/arm/boards/webasto-ccbv2/board.c
+++ b/arch/arm/boards/webasto-ccbv2/board.c
@@ -28,7 +28,7 @@ static int ccbv2_probe(struct device_d *dev)
 		return 0;
 
 	fdt = (void*)OPTEE_OVERLAY_LOCATION;
-	overlay = of_unflatten_dtb(fdt);
+	overlay = of_unflatten_dtb(fdt, INT_MAX);
 
 	if (IS_ERR(overlay))
 		return PTR_ERR(overlay);
diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 28a645a9d0..0ffb374cf1 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -421,7 +421,7 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data, void **outfdt)
 	if (IS_BUILTIN(CONFIG_OFTREE)) {
 		struct device_node *root;
 
-		root = of_unflatten_dtb(oftree);
+		root = of_unflatten_dtb(oftree, header->totalsize);
 		if (IS_ERR(root)) {
 			pr_err("unable to unflatten devicetree\n");
 			goto err_free;
diff --git a/commands/of_diff.c b/commands/of_diff.c
index ec039776cf..e1ac98c26e 100644
--- a/commands/of_diff.c
+++ b/commands/of_diff.c
@@ -44,7 +44,7 @@ static struct device_node *get_tree(const char *filename, struct device_node *ro
 	if (ret)
 		return ERR_PTR(ret);
 
-	node = of_unflatten_dtb(fdt);
+	node = of_unflatten_dtb(fdt, size);
 
 	free(fdt);
 
diff --git a/commands/of_display_timings.c b/commands/of_display_timings.c
index 27b91f311a..4e5ec223b7 100644
--- a/commands/of_display_timings.c
+++ b/commands/of_display_timings.c
@@ -83,7 +83,7 @@ static int do_of_display_timings(int argc, char *argv[])
 			return -EINVAL;
 		}
 
-		root = of_unflatten_dtb(fdt);
+		root = of_unflatten_dtb(fdt, size);
 
 		free(fdt);
 
diff --git a/commands/of_dump.c b/commands/of_dump.c
index 2089c07ef7..5223ba63ad 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -71,7 +71,7 @@ static int do_of_dump(int argc, char *argv[])
 			return -errno;
 		}
 
-		root = of_unflatten_dtb(fdt);
+		root = of_unflatten_dtb(fdt, size);
 
 		free(fdt);
 
@@ -88,7 +88,7 @@ static int do_of_dump(int argc, char *argv[])
 			/* create a copy of internal devicetree */
 			void *fdt;
 			fdt = of_flatten_dtb(root);
-			root = of_unflatten_dtb(fdt);
+			root = of_unflatten_dtb(fdt, fdt_totalsize(fdt));
 
 			free(fdt);
 
diff --git a/commands/of_overlay.c b/commands/of_overlay.c
index aa4b6484ca..9a4c008efc 100644
--- a/commands/of_overlay.c
+++ b/commands/of_overlay.c
@@ -17,6 +17,7 @@ static int do_of_overlay(int argc, char *argv[])
 	struct fdt_header *fdt;
 	struct device_node *overlay;
 	const char *search_path = NULL;
+	size_t size;
 
 	while ((opt = getopt(argc, argv, "S:")) > 0) {
 		switch (opt) {
@@ -31,13 +32,13 @@ static int do_of_overlay(int argc, char *argv[])
 	if (argc != optind + 1)
 		return COMMAND_ERROR_USAGE;
 
-	fdt = read_file(argv[optind], NULL);
+	fdt = read_file(argv[optind], &size);
 	if (!fdt) {
 		printf("cannot read %s\n", argv[optind]);
 		return 1;
 	}
 
-	overlay = of_unflatten_dtb(fdt);
+	overlay = of_unflatten_dtb(fdt, size);
 	free(fdt);
 	if (IS_ERR(overlay))
 		return PTR_ERR(overlay);
diff --git a/commands/oftree.c b/commands/oftree.c
index 1d902f2830..7d4b08c9d3 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -82,7 +82,7 @@ static int do_oftree(int argc, char *argv[])
 			return 1;
 		}
 
-		root = of_unflatten_dtb(fdt);
+		root = of_unflatten_dtb(fdt, size);
 
 		free(fdt);
 
diff --git a/common/blspec.c b/common/blspec.c
index ad80d7a8cd..056c0dbf7f 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -40,17 +40,18 @@ static int blspec_apply_oftree_overlay(char *file, const char *abspath,
 	struct device_node *overlay;
 	char *path;
 	char *firmware_path;
+	size_t size;
 
 	path = basprintf("%s/%s", abspath, file);
 
-	fdt = read_file(path, NULL);
+	fdt = read_file(path, &size);
 	if (!fdt) {
 		pr_warn("unable to read \"%s\"\n", path);
 		ret = -EINVAL;
 		goto out;
 	}
 
-	overlay = of_unflatten_dtb(fdt);
+	overlay = of_unflatten_dtb(fdt, size);
 	free(fdt);
 	if (IS_ERR(overlay)) {
 		ret = PTR_ERR(overlay);
@@ -490,7 +491,7 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 		goto out;
 	}
 
-	root = of_unflatten_dtb(fdt);
+	root = of_unflatten_dtb(fdt, size);
 	if (IS_ERR(root)) {
 		ret = false;
 		root = NULL;
diff --git a/common/bootm.c b/common/bootm.c
index 644443a021..89e3e93f2c 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -361,7 +361,7 @@ void *bootm_get_devicetree(struct image_data *data)
 		if (ret)
 			return ERR_PTR(ret);
 
-		data->of_root_node = of_unflatten_dtb(of_tree);
+		data->of_root_node = of_unflatten_dtb(of_tree, of_size);
 	} else if (data->oftree_file) {
 		size_t size;
 
@@ -389,7 +389,7 @@ void *bootm_get_devicetree(struct image_data *data)
 		if (ret)
 			return ERR_PTR(ret);
 
-		data->of_root_node = of_unflatten_dtb(oftree);
+		data->of_root_node = of_unflatten_dtb(oftree, size);
 
 		free(oftree);
 
diff --git a/common/efi/efi.c b/common/efi/efi.c
index 01003dc00f..7f12342cf9 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -437,7 +437,7 @@ static int efi_late_init(void)
 			return -EINVAL;
 		}
 
-		root = of_unflatten_dtb(fdt);
+		root = of_unflatten_dtb(fdt, size);
 
 		free(fdt);
 
diff --git a/common/image-fit.c b/common/image-fit.c
index 2c5ef7f687..c1a34a4405 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -754,7 +754,7 @@ static int fit_do_open(struct fit_handle *handle)
 	const char *desc = "(no description)";
 	struct device_node *root;
 
-	root = of_unflatten_dtb_const(handle->fit);
+	root = of_unflatten_dtb_const(handle->fit, handle->size);
 	if (IS_ERR(root))
 		return PTR_ERR(root);
 
diff --git a/common/state/backend_format_dtb.c b/common/state/backend_format_dtb.c
index 48f30db1f5..d0fc948859 100644
--- a/common/state/backend_format_dtb.c
+++ b/common/state/backend_format_dtb.c
@@ -59,7 +59,7 @@ static int state_backend_format_dtb_verify(struct state_backend_format *format,
 		fdtb->root = NULL;
 	}
 
-	root = of_unflatten_dtb(buf);
+	root = of_unflatten_dtb(buf, dtb_len);
 	if (IS_ERR(root)) {
 		dev_err(fdtb->dev, "Failed to unflatten dtb from buffer with length %zd, %ld\n",
 			len, PTR_ERR(root));
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 193bae7fa0..b92e21ecf8 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1720,7 +1720,7 @@ int barebox_register_fdt(const void *dtb)
 	if (root_node)
 		return -EBUSY;
 
-	root = of_unflatten_dtb(dtb);
+	root = of_unflatten_dtb(dtb, INT_MAX);
 	if (IS_ERR(root)) {
 		pr_err("Cannot unflatten dtb: %pe\n", root);
 		return PTR_ERR(root);
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index d98913e54a..f72f5e3a30 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -114,7 +114,8 @@ static int of_unflatten_reservemap(struct device_node *root,
  * Parse a flat device tree binary blob and return a pointer to the
  * unflattened tree.
  */
-static struct device_node *__of_unflatten_dtb(const void *infdt, bool constprops)
+static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
+					      bool constprops)
 {
 	const void *nodep;	/* property node pointer */
 	uint32_t tag;		/* tag */
@@ -131,6 +132,9 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, bool constprops
 	unsigned int maxlen;
 	const struct fdt_header *fdt = infdt;
 
+	if (size < sizeof(struct fdt_header))
+		return ERR_PTR(-EINVAL);
+
 	if (fdt->magic != cpu_to_fdt32(FDT_MAGIC)) {
 		pr_err("bad magic: 0x%08x\n", fdt32_to_cpu(fdt->magic));
 		return ERR_PTR(-EINVAL);
@@ -147,6 +151,9 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, bool constprops
 	f.off_dt_strings = fdt32_to_cpu(fdt->off_dt_strings);
 	f.size_dt_strings = fdt32_to_cpu(fdt->size_dt_strings);
 
+	if (f.totalsize > size)
+		return ERR_PTR(-EINVAL);
+
 	if (f.off_dt_struct + f.size_dt_struct > f.totalsize) {
 		pr_err("unflatten: dt size exceeds total size\n");
 		return ERR_PTR(-ESPIPE);
@@ -274,9 +281,9 @@ err:
  * Parse a flat device tree binary blob and return a pointer to the unflattened
  * tree. The tree must be freed after use with of_delete_node().
  */
-struct device_node *of_unflatten_dtb(const void *infdt)
+struct device_node *of_unflatten_dtb(const void *infdt, int size)
 {
-	return __of_unflatten_dtb(infdt, false);
+	return __of_unflatten_dtb(infdt, size, false);
 }
 
 /**
@@ -290,9 +297,9 @@ struct device_node *of_unflatten_dtb(const void *infdt)
  * whole lifetime of the returned tree. This is normally not what you want, so
  * use of_unflatten_dtb() instead.
  */
-struct device_node *of_unflatten_dtb_const(const void *infdt)
+struct device_node *of_unflatten_dtb_const(const void *infdt, int size)
 {
-	return __of_unflatten_dtb(infdt, true);
+	return __of_unflatten_dtb(infdt, size, true);
 }
 
 struct fdt {
diff --git a/include/of.h b/include/of.h
index d67a40bd19..cdf01d5b4d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -109,8 +109,8 @@ void of_print_properties(struct device_node *node);
 void of_diff(struct device_node *a, struct device_node *b, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
-struct device_node *of_unflatten_dtb(const void *fdt);
-struct device_node *of_unflatten_dtb_const(const void *infdt);
+struct device_node *of_unflatten_dtb(const void *fdt, int size);
+struct device_node *of_unflatten_dtb_const(const void *infdt, int size);
 
 struct cdev;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

