Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WcKdh-0001VV-Si
 for barebox@lists.infradead.org; Mon, 21 Apr 2014 20:16:31 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p54831C5A.dip0.t-ipconnect.de [84.131.28.90])
 by lynxeye.de (Postfix) with ESMTPA id E4F2818B4257
 for <barebox@lists.infradead.org>; Mon, 21 Apr 2014 22:15:34 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 21 Apr 2014 22:15:22 +0200
Message-Id: <1398111326-21783-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/5] treewide: fix signedness mixups in printf format
 specifiers
To: barebox@lists.infradead.org

This most likely doesn't fix any real bugs, but it's the
right thing to do and reduces the noise level with static
checkers.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c | 2 +-
 arch/arm/boards/guf-cupid/board.c                 | 2 +-
 arch/arm/boards/phytec-phycore-imx35/pcm043.c     | 2 +-
 arch/arm/mach-imx/imx-bbu-internal.c              | 4 ++--
 commands/nandtest.c                               | 2 +-
 commands/time.c                                   | 2 +-
 common/tlsf_malloc.c                              | 2 +-
 drivers/clk/clk.c                                 | 2 +-
 drivers/misc/jtag.c                               | 2 +-
 drivers/usb/core/usb.c                            | 4 ++--
 lib/display_options.c                             | 2 +-
 lib/gui/picopng.c                                 | 2 +-
 scripts/kallsyms.c                                | 6 +++---
 scripts/kwbimage.c                                | 2 +-
 14 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 912e13c32cd7..9df2d64e3bee 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -347,7 +347,7 @@ static int do_cpufreq(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 	}
 
-	printf("Switched CPU frequency to %ldMHz\n", freq);
+	printf("Switched CPU frequency to %luMHz\n", freq);
 
 	return 0;
 }
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 127edaa17089..356bf56a95cc 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -341,7 +341,7 @@ static int do_cpufreq(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 	}
 
-	printf("Switched CPU frequency to %ldMHz\n", freq);
+	printf("Switched CPU frequency to %luMHz\n", freq);
 
 	return 0;
 }
diff --git a/arch/arm/boards/phytec-phycore-imx35/pcm043.c b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
index c1928cc8fff8..6abfc92c1116 100644
--- a/arch/arm/boards/phytec-phycore-imx35/pcm043.c
+++ b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
@@ -319,7 +319,7 @@ static int do_cpufreq(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 	}
 
-	printf("Switched CPU frequency to %ldMHz\n", freq);
+	printf("Switched CPU frequency to %luMHz\n", freq);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 9861c0782b37..308a0bd9b89e 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -281,12 +281,12 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 		}
 	}
 
-	debug("total image size: 0x%08x. Space needed including bad blocks: 0x%08x\n",
+	debug("total image size: 0x%08zx. Space needed including bad blocks: 0x%08zx\n",
 			data->len + 0x8000,
 			data->len + 0x8000 + *num_bb * blocksize);
 
 	if (data->len + 0x8000 + *num_bb * blocksize > imx_handler->device_size) {
-		printf("needed space (0x%08x) exceeds partition space (0x%08x)\n",
+		printf("needed space (0x%08zx) exceeds partition space (0x%08zx)\n",
 				data->len + 0x8000 + *num_bb * blocksize,
 				imx_handler->device_size);
 		ret = -ENOSPC;
diff --git a/commands/nandtest.c b/commands/nandtest.c
index c64f2443a8ee..373ee2c5da9e 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -161,7 +161,7 @@ static void print_stats(int nr_passes, int length)
 			* nr_passes);
 
 	for (i = 0; i < MAX_ECC_BITS; i++)
-		printf("ECC %d bit error(s)	: %d\n", i + 1, ecc_stats[i]);
+		printf("ECC %d bit error(s)	: %u\n", i + 1, ecc_stats[i]);
 
 	printf("ECC >%d bit error(s)	: %u\n", MAX_ECC_BITS, ecc_stats_over);
 	printf("ECC corrections failed	: %u\n", ecc_failed_cnt);
diff --git a/commands/time.c b/commands/time.c
index 2cc3292d7b14..ffd3062339b1 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -37,7 +37,7 @@ static int do_time(int argc, char *argv[])
 
 	diff = diff64;
 
-	printf("time: %ldms\n", diff);
+	printf("time: %lums\n", diff);
 
 	free(buf);
 
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index cd01b567b949..aa8fc13ea544 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -97,5 +97,5 @@ void malloc_stats(void)
 
 	tlsf_walk_heap(tlsf_mem_pool, malloc_walker, &s);
 
-	printf("used: %10d\nfree: %10d\n", s.used, s.free);
+	printf("used: %10zu\nfree: %10zu\n", s.used, s.free);
 }
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 0d259413a93b..23b1a7a7ea2c 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -428,7 +428,7 @@ static void dump_one(struct clk *clk, int verbose, int indent)
 {
 	struct clk *c;
 
-	printf("%*s%s (rate %ld, %sabled)\n", indent * 4, "", clk->name, clk_get_rate(clk),
+	printf("%*s%s (rate %lu, %sabled)\n", indent * 4, "", clk->name, clk_get_rate(clk),
 			clk_is_enabled(clk) ? "en" : "dis");
 	if (verbose) {
 
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
index 310da810745f..f5d0c72ed541 100644
--- a/drivers/misc/jtag.c
+++ b/drivers/misc/jtag.c
@@ -276,7 +276,7 @@ static void jtag_info(struct device_d *pdev)
 	struct jtag_info *info = pdev->priv;
 
 	printf(" JTAG:\n");
-	printf("  Devices found: %d\n", info->devices);
+	printf("  Devices found: %u\n", info->devices);
 	for (dn = 0; dn < info->devices; dn++) {
 		jid.device = dn;
 		ret = jtag_ioctl(&info->cdev, JTAG_GET_ID, &jid);
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index fe1ac0280a59..9c1571d1908a 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -706,12 +706,12 @@ int usb_get_configuration_no(struct usb_device *dev,
 
 	if (tmp > USB_BUFSIZ) {
 		USB_PRINTF("usb_get_configuration_no: failed to get " \
-			   "descriptor - too long: %d\n", tmp);
+			   "descriptor - too long: %u\n", tmp);
 		return -1;
 	}
 
 	result = usb_get_descriptor(dev, USB_DT_CONFIG, cfgno, buffer, tmp);
-	USB_PRINTF("get_conf_no %d Result %d, wLength %d\n",
+	USB_PRINTF("get_conf_no %d Result %d, wLength %u\n",
 		   cfgno, result, tmp);
 	return result;
 }
diff --git a/lib/display_options.c b/lib/display_options.c
index 0871552aaa4e..2d695e4b7c7e 100644
--- a/lib/display_options.c
+++ b/lib/display_options.c
@@ -62,7 +62,7 @@ char *size_human_readable(unsigned long long size)
 
 	ptr += sprintf(buf, "%lu", n);
 	if (m) {
-		ptr += sprintf(ptr, ".%ld", m);
+		ptr += sprintf(ptr, ".%lu", m);
 	}
 	sprintf(ptr, " %ciB", c);
 
diff --git a/lib/gui/picopng.c b/lib/gui/picopng.c
index 77cd81cbad50..3c0659f368b2 100644
--- a/lib/gui/picopng.c
+++ b/lib/gui/picopng.c
@@ -800,7 +800,7 @@ int main(int argc, char **argv)
 #ifdef ALLOC_DEBUG
 	png_alloc_node_t *node;
 	for (node = png_alloc_head, n = 1; node; node = node->next, n++)
-		printf("node %d (%p) addr = %p, size = %ld\n", n, node, node->addr, node->size);
+		printf("node %d (%p) addr = %p, size = %zu\n", n, node, node->addr, node->size);
 #endif
 	png_alloc_free_all(); // also frees info and image data from PNG_decode
 
diff --git a/scripts/kallsyms.c b/scripts/kallsyms.c
index b3591a916bbb..9392f09181bc 100644
--- a/scripts/kallsyms.c
+++ b/scripts/kallsyms.c
@@ -286,7 +286,7 @@ static void write_src(void)
 	printf("\n");
 
 	output_label("kallsyms_num_syms");
-	printf("\tPTR\t%d\n", table_cnt);
+	printf("\tPTR\t%u\n", table_cnt);
 	printf("\n");
 
 	/* table of offset markers, that give the offset in the compressed stream
@@ -315,7 +315,7 @@ static void write_src(void)
 
 	output_label("kallsyms_markers");
 	for (i = 0; i < ((table_cnt + 255) >> 8); i++)
-		printf("\tPTR\t%d\n", markers[i]);
+		printf("\tPTR\t%u\n", markers[i]);
 	printf("\n");
 
 	free(markers);
@@ -332,7 +332,7 @@ static void write_src(void)
 
 	output_label("kallsyms_token_index");
 	for (i = 0; i < 256; i++)
-		printf("\t.short\t%d\n", best_idx[i]);
+		printf("\t.short\t%u\n", best_idx[i]);
 	printf("\n");
 }
 
diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index f8abeb1781d5..5b8e73892cfb 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -1265,7 +1265,7 @@ static void image_dump_config(struct image_cfg_element *image_cfg,
 		struct image_cfg_element *e = &image_cfg[cfgi];
 		switch (e->type) {
 		case IMAGE_CFG_VERSION:
-			printf("VERSION %d\n", e->version);
+			printf("VERSION %u\n", e->version);
 			break;
 		case IMAGE_CFG_BOOT_FROM:
 			printf("BOOTFROM %s\n",
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
