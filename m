Delivery-date: Tue, 27 Jan 2026 09:46:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeij-005q8U-14
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 09:46:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeig-00014a-Q4
	for lore@pengutronix.de; Tue, 27 Jan 2026 09:46:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/iAwPwG0mjLqssm0mbso0z/luBUY/S0xTbvoJaqxhwQ=; b=TePVpMDlDinbzKLCXtRzdL+Soz
	zRG+0+LVxnOQ6/9vru2UTSpgwiU3HjjPPJUbyGYhfb4/sLCePyyAvx+Hk1sGhCv18ER96D5L6iasO
	cNHfsx5gmeG1hxDsdMQJWb44OGbEYqjbg4IahtAyPOwJz2dxLk1FHV8VXnGV3Je78BczqEU02CEwg
	IZeY9BPztXzfUuNBzaqsdLR3/P0hPIwArkRLhV0GYDZaybmeBXf3OoCvrMQQh8/TJDiRxCKPxE/J2
	d92kNI2MBCD94/xbh/oBPXHpw58ykYykCQ4toPPnc52R+/NosdOtBB10mACU6IblorVwP17djNAP/
	tsKOHIBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkei3-0000000DrTA-3Cbt;
	Tue, 27 Jan 2026 08:46:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehu-0000000DrDr-1MZO
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 08:46:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000Vo-Lt; Tue, 27 Jan 2026 09:45:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkeht-002ifp-0M;
	Tue, 27 Jan 2026 09:45:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000000FmwP-3abW;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:14 +0100
Message-ID: <20260127084546.3751357-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
References: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_004554_886988_C1107CA7 
X-CRM114-Status: GOOD (  24.47  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/15] bootm: give bootm_load_ functions an end address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we expected that a load operation will not overflow, but there
was actually no way for the callee to check this.

As the architecture-specific bootm handlers are tasked with allocating
memory for boot artifacts have them pass along not only the start of the
load region, but also its end, so the callee can check that it didn't
overflow.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/lib32/bootm.c              | 24 +++++---
 arch/arm/lib64/armlinux.c           |  7 ++-
 arch/arm/mach-at91/bootm-barebox.c  |  7 ++-
 arch/arm/mach-imx/imx-v3-image.c    |  7 ++-
 arch/arm/mach-layerscape/pblimage.c |  7 ++-
 arch/arm/mach-rockchip/bootm.c      | 13 ++--
 arch/arm/mach-zynq/bootm-zynqimg.c  |  7 ++-
 arch/kvx/lib/bootm.c                | 17 ++++--
 arch/powerpc/lib/ppclinux.c         | 13 +++-
 common/booti.c                      | 30 +++++----
 common/bootm-mock.c                 |  0
 common/bootm.c                      | 95 ++++++++++++++++++-----------
 efi/loader/bootm.c                  |  9 ++-
 include/bootm.h                     | 13 ++--
 14 files changed, 158 insertions(+), 91 deletions(-)
 create mode 100644 common/bootm-mock.c

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index e659d3c1a554..3641dbbdbe61 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -236,12 +236,17 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 {
 	unsigned long kernel;
 	unsigned long initrd_start = 0, initrd_size = 0, initrd_end = 0;
-	const struct resource *initrd_res;
+	const struct resource *initrd_res, *sdram;
+	struct resource gap;
 	void *tee;
 	enum arm_security_state state = bootm_arm_security_state();
 	void *fdt_load_address = NULL;
 	int ret;
 
+	sdram = memory_bank_lookup_region(free_mem, &gap);
+	if (sdram != &gap)
+		return sdram ? -EBUSY : -EINVAL;
+
 	kernel = data->os_res->start + data->os_entry;
 
 	initrd_start = data->initrd_address;
@@ -255,7 +260,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 		}
 	}
 
-	initrd_res = bootm_load_initrd(data, initrd_start);
+	initrd_res = bootm_load_initrd(data, initrd_start, gap.end);
 	if (IS_ERR(initrd_res)) {
 		return PTR_ERR(initrd_res);
 	} else if (initrd_res) {
@@ -277,13 +282,15 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 	}
 
 	if (fdt) {
+		const struct resource *fdt_res;
+
 		fdt_load_address = (void *)free_mem;
-		ret = bootm_load_devicetree(data, fdt, free_mem);
+		fdt_res = bootm_load_devicetree(data, fdt, free_mem, gap.end);
 
 		free(fdt);
 
-		if (ret)
-			return ret;
+		if (IS_ERR(fdt_res))
+			return PTR_ERR(fdt_res);
 	}
 
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE)) {
@@ -339,6 +346,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem,
 
 static int do_bootm_linux(struct image_data *data)
 {
+	const struct resource *os_res;
 	unsigned long load_address, mem_free;
 	int ret;
 
@@ -349,9 +357,9 @@ static int do_bootm_linux(struct image_data *data)
 	if (ret)
 		return ret;
 
-	ret = bootm_load_os(data, load_address);
-	if (ret)
-		return ret;
+	os_res = bootm_load_os(data, load_address, mem_free - 1);
+	if (IS_ERR(os_res))
+		return PTR_ERR(os_res);
 
 	return __do_bootm_linux(data, mem_free, 0, NULL);
 }
diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index e40b61a26b07..febffb6c858b 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -43,6 +43,7 @@ static int do_bootm_barebox(struct image_data *data)
 {
 	void (*fn)(unsigned long x0, unsigned long x1, unsigned long x2,
 		       unsigned long x3);
+	const struct resource *os_res;
 	resource_size_t start, end;
 	unsigned long barebox;
 	int ret;
@@ -53,9 +54,9 @@ static int do_bootm_barebox(struct image_data *data)
 
 	barebox = PAGE_ALIGN(start);
 
-	ret = bootm_load_os(data, barebox);
-	if (ret)
-		goto out;
+	os_res = bootm_load_os(data, barebox, end);
+	if (IS_ERR(os_res))
+		return PTR_ERR(os_res);
 
 	printf("Loaded barebox image to 0x%08lx\n", barebox);
 
diff --git a/arch/arm/mach-at91/bootm-barebox.c b/arch/arm/mach-at91/bootm-barebox.c
index 5540b8fad35e..f4894f247d11 100644
--- a/arch/arm/mach-at91/bootm-barebox.c
+++ b/arch/arm/mach-at91/bootm-barebox.c
@@ -13,6 +13,7 @@ EXPORT_SYMBOL(at91_bootsource);
 
 static int do_bootm_at91_barebox_image(struct image_data *data)
 {
+	const struct resource *os_res;
 	resource_size_t start, end;
 	int ret;
 
@@ -20,9 +21,9 @@ static int do_bootm_at91_barebox_image(struct image_data *data)
 	if (ret)
 		return ret;
 
-	ret = bootm_load_os(data, start);
-	if (ret)
-		return ret;
+	os_res = bootm_load_os(data, start, end);
+	if (IS_ERR(os_res))
+		return PTR_ERR(os_res);
 
 	if (data->verbose)
 		printf("Loaded barebox image to 0x%08zx\n", start);
diff --git a/arch/arm/mach-imx/imx-v3-image.c b/arch/arm/mach-imx/imx-v3-image.c
index e5df5fdb81d9..5cce846f867f 100644
--- a/arch/arm/mach-imx/imx-v3-image.c
+++ b/arch/arm/mach-imx/imx-v3-image.c
@@ -8,6 +8,7 @@
 
 static int do_bootm_imx_image_v3(struct image_data *data)
 {
+	const struct resource *os_res;
 	void (*bb)(void);
 	resource_size_t start, end;
 	struct flash_header_v3 *hdr;
@@ -18,9 +19,9 @@ static int do_bootm_imx_image_v3(struct image_data *data)
 	if (ret)
 		return ret;
 
-	ret = bootm_load_os(data, start);
-	if (ret)
-		return ret;
+	os_res = bootm_load_os(data, start, end);
+	if (IS_ERR(os_res))
+		return PTR_ERR(os_res);
 
 	hdr = (void *)start;
 	offset = hdr->img[0].offset;
diff --git a/arch/arm/mach-layerscape/pblimage.c b/arch/arm/mach-layerscape/pblimage.c
index 5a525f0933d5..31783f18c74d 100644
--- a/arch/arm/mach-layerscape/pblimage.c
+++ b/arch/arm/mach-layerscape/pblimage.c
@@ -15,6 +15,7 @@ static int do_bootm_layerscape_pblimage(struct image_data *data)
 {
 	void (*barebox)(unsigned long x0, unsigned long x1, unsigned long x2,
 		       unsigned long x3);
+	const struct resource *os_res;
 	resource_size_t start, end;
 	int ret;
 
@@ -22,9 +23,9 @@ static int do_bootm_layerscape_pblimage(struct image_data *data)
 	if (ret)
 		return ret;
 
-	ret = bootm_load_os(data, start);
-	if (ret)
-		return ret;
+	os_res = bootm_load_os(data, start, end);
+	if (IS_ERR(os_res))
+		return PTR_ERR(os_res);
 
 	barebox = (void*)start + BAREBOX_STAGE2_OFFSET;
 
diff --git a/arch/arm/mach-rockchip/bootm.c b/arch/arm/mach-rockchip/bootm.c
index ff3d9a2db3a0..2e068b05cefd 100644
--- a/arch/arm/mach-rockchip/bootm.c
+++ b/arch/arm/mach-rockchip/bootm.c
@@ -40,6 +40,7 @@ static int do_bootm_rkns_barebox_image(struct image_data *data)
 {
 	void (*barebox)(unsigned long x0, unsigned long x1, unsigned long x2,
 			unsigned long x3);
+	const struct resource *os_res;
 	resource_size_t start, end;
 	struct newidb *idb;
 	int ret, i, n_files;
@@ -50,14 +51,14 @@ static int do_bootm_rkns_barebox_image(struct image_data *data)
 	if (ret)
 		return ret;
 
-	ret = bootm_load_os(data, start);
-	if (ret)
-		return ret;
+	os_res = bootm_load_os(data, start, end);
+	if (IS_ERR(os_res))
+		return PTR_ERR(os_res);
 
-	idb = (void *)data->os_res->start;
-	buf = (void *)data->os_res->start;
+	idb = (void *)os_res->start;
+	buf = (void *)os_res->start;
 
-	image_size = resource_size(data->os_res);
+	image_size = resource_size(os_res);
 
 	if (image_size < SECTOR_SIZE)
 		return -EINVAL;
diff --git a/arch/arm/mach-zynq/bootm-zynqimg.c b/arch/arm/mach-zynq/bootm-zynqimg.c
index 77ed6880e4b6..ebd2d621520b 100644
--- a/arch/arm/mach-zynq/bootm-zynqimg.c
+++ b/arch/arm/mach-zynq/bootm-zynqimg.c
@@ -8,6 +8,7 @@
 static int do_bootm_zynqimage(struct image_data *data)
 {
 	resource_size_t start, end;
+	const struct resource *os_res;
 	void (*barebox)(void);
 	u32 *header;
 	int ret;
@@ -16,9 +17,9 @@ static int do_bootm_zynqimage(struct image_data *data)
 	if (ret)
 		return ret;
 
-	ret = bootm_load_os(data, start);
-	if (ret)
-		return ret;
+	os_res = bootm_load_os(data, start, end);
+	if (IS_ERR(os_res))
+		return PTR_ERR(os_res);
 
 	header = (u32*)start;
 	barebox = (void*)start + header[12];
diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index 6eba4054e500..c464b5006fa2 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -13,6 +13,7 @@
 #include <bootm.h>
 #include <binfmt.h>
 #include <common.h>
+#include <memory.h>
 #include <libfile.h>
 #include <linux/kernel.h>
 
@@ -54,7 +55,8 @@ static int do_boot_entry(struct image_data *data, boot_func_entry entry,
 
 static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 {
-	const struct resource *initrd_res;
+	const struct resource *sdram, *initrd_res, *fdt_res;
+	struct resource gap;
 	int ret;
 	void *fdt;
 	boot_func_entry entry;
@@ -71,7 +73,11 @@ static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 	else
 		initrd_address = load_addr;
 
-	initrd_res = bootm_load_initrd(data, initrd_address);
+	sdram = memory_bank_lookup_region(initrd_address, &gap);
+	if (sdram != &gap)
+		return sdram ? -EBUSY : -EINVAL;
+
+	initrd_res = bootm_load_initrd(data, initrd_address, gap.end);
 	if (IS_ERR(initrd_res)) {
 		printf("Failed to load initrd\n");
 		return PTR_ERR(initrd_res);
@@ -93,9 +99,10 @@ static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 
 	printf("Loading device tree at %lx\n", load_addr);
 	/* load device tree after the initrd if any */
-	ret = bootm_load_devicetree(data, fdt, load_addr);
-	if (ret) {
-		printf("Failed to load device tree: %d\n", ret);
+	fdt_res = bootm_load_devicetree(data, fdt, load_addr, gap.end);
+	if (IS_ERR(fdt_res)) {
+		printf("Failed to load device tree: %pe\n", fdt_res);
+		ret = PTR_ERR(fdt_res);
 		goto err_free_fdt;
 	}
 
diff --git a/arch/powerpc/lib/ppclinux.c b/arch/powerpc/lib/ppclinux.c
index 564086482e5f..eda2539e6125 100644
--- a/arch/powerpc/lib/ppclinux.c
+++ b/arch/powerpc/lib/ppclinux.c
@@ -7,6 +7,7 @@
 #include <image.h>
 #include <init.h>
 #include <malloc.h>
+#include <memory.h>
 #include <environment.h>
 #include <asm/bitops.h>
 #include <asm/processor.h>
@@ -53,12 +54,18 @@ static int do_bootm_linux(struct image_data *data)
 {
 	void	(*kernel)(void *, void *, unsigned long,
 			unsigned long, unsigned long);
+	const struct resource *os_res, *sdram;
+	struct resource gap;
 	int ret;
 	struct fdt_header *fdt;
 
-	ret = bootm_load_os(data, data->os_address);
-	if (ret)
-		return ret;
+	sdram = memory_bank_lookup_region(data->os_address, &gap);
+	if (sdram != &gap)
+		return sdram ? -EBUSY : -EINVAL;
+
+	os_res = bootm_load_os(data, data->os_address, gap.end);
+	if (IS_ERR(os_res))
+		return PTR_ERR(os_res);
 
 	fdt = of_get_fixed_tree_for_boot(data->of_root_node);
 	if (!fdt) {
diff --git a/common/booti.c b/common/booti.c
index 6a87b84c0308..67f31b793517 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -10,13 +10,14 @@
 #include <linux/sizes.h>
 
 static unsigned long get_kernel_address(unsigned long os_address,
-					unsigned long text_offset)
+					unsigned long text_offset,
+					resource_size_t *end)
 {
-	resource_size_t start, end;
+	resource_size_t start;
 	int ret;
 
 	if (!UIMAGE_IS_ADDRESS_VALID(os_address)) {
-		ret = memory_bank_first_find_space(&start, &end);
+		ret = memory_bank_first_find_space(&start, end);
 		if (ret)
 			return UIMAGE_INVALID_ADDRESS;
 
@@ -33,9 +34,10 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 {
 	const void *kernel_header =
 			data->os_fit ? data->fit_kernel : data->os_header;
+	const struct resource *os_res;
 	unsigned long text_offset, image_size, kernel;
 	unsigned long image_end;
-	int ret;
+	resource_size_t end;
 	void *fdt;
 
 	print_hex_dump_bytes("header ", DUMP_PREFIX_OFFSET, kernel_header, 80);
@@ -49,24 +51,26 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 	text_offset = le64_to_cpup(kernel_header + 8);
 	image_size = le64_to_cpup(kernel_header + 16);
 
-	kernel = get_kernel_address(data->os_address, text_offset);
+	kernel = get_kernel_address(data->os_address, text_offset, &end);
 
 	pr_debug("Kernel to be loaded to %lx+%lx\n", kernel, image_size);
 
 	if (kernel == UIMAGE_INVALID_ADDRESS)
 		return ERR_PTR(-ENOENT);
+	if (kernel + image_size - 1 > end)
+		return ERR_PTR(-ENOSPC);
 
-	ret = bootm_load_os(data, kernel);
-	if (ret)
-		return ERR_PTR(ret);
+	os_res = bootm_load_os(data, kernel, end);
+	if (IS_ERR(os_res))
+		return ERR_CAST(os_res);
 
 	image_end = PAGE_ALIGN(kernel + image_size);
 
 	if (oftree) {
 		unsigned long devicetree;
-		const struct resource *initrd_res;
+		const struct resource *initrd_res, *dt_res;
 
-		initrd_res = bootm_load_initrd(data, image_end);
+		initrd_res = bootm_load_initrd(data, image_end, end);
 		if (IS_ERR(initrd_res)) {
 			return ERR_CAST(initrd_res);
 		} else if (initrd_res) {
@@ -85,11 +89,11 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 			goto out;
 		}
 
-		ret = bootm_load_devicetree(data, fdt, devicetree);
+		dt_res = bootm_load_devicetree(data, fdt, devicetree, end);
 		free(fdt);
 
-		if (ret)
-			return ERR_PTR(ret);
+		if (IS_ERR(dt_res))
+			return ERR_CAST(dt_res);
 
 		*oftree = devicetree;
 	}
diff --git a/common/bootm-mock.c b/common/bootm-mock.c
new file mode 100644
index 000000000000..e69de29bb2d1
diff --git a/common/bootm.c b/common/bootm.c
index 35305f25375a..fcf7868a5d75 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -228,57 +228,69 @@ static bool bootm_get_override(char **oldpath, const char *newpath)
 	return true;
 }
 
-/*
+/**
  * bootm_load_os() - load OS to RAM
- *
  * @data:		image data context
  * @load_address:	The address where the OS should be loaded to
+ * @end_address:	The end address of the load buffer (inclusive)
  *
  * This loads the OS to a RAM location. load_address must be a valid
- * address. If the image_data doesn't have a OS specified it's considered
+ * address. If the image_data doesn't have an OS specified it's considered
  * an error.
  *
- * Return: 0 on success, negative error code otherwise
+ * Return: the OS resource on success, or an error pointer on failure
  */
-int bootm_load_os(struct image_data *data, unsigned long load_address)
+const struct resource *bootm_load_os(struct image_data *data,
+		ulong load_address, ulong end_address)
 {
+	int err;
+
 	if (data->os_res)
-		return 0;
+		return data->os_res;
 
 	if (load_address == UIMAGE_INVALID_ADDRESS)
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
+	if (end_address <= load_address)
+		return ERR_PTR(-EINVAL);
 
-	if (data->os_fit)
-		return bootm_load_fit_os(data, load_address);
+	if (data->os_fit) {
+		err = bootm_load_fit_os(data, load_address);
+	} else if (image_is_uimage(data)) {
+		err = bootm_load_uimage_os(data, load_address);
+	} else if (data->os_file) {
+		data->os_res = file_to_sdram(data->os_file, load_address, MEMTYPE_LOADER_CODE);
+		err = data->os_res ? 0 : -EBUSY;
+	} else {
+		err = -EINVAL;
+	}
 
-	if (image_is_uimage(data))
-		return bootm_load_uimage_os(data, load_address);
+	if (err)
+		return ERR_PTR(err);
 
-	if (!data->os_file)
-		return -EINVAL;
+	/* FIXME: We need some more rework to be able to detect this overflow
+	 * before it happens, but for now, let's at least detect it.
+	 */
+	if (WARN_ON(data->os_res->end > end_address))
+		return ERR_PTR(-ENOSPC);
 
-	data->os_res = file_to_sdram(data->os_file, load_address, MEMTYPE_LOADER_CODE);
-	if (!data->os_res)
-		return -ENOMEM;
-
-	return 0;
+	return data->os_res;
 }
 
-/*
+/**
  * bootm_load_initrd() - load initrd to RAM
- *
  * @data:		image data context
  * @load_address:	The address where the initrd should be loaded to
+ * @end_address:	The end address of the load buffer (inclusive)
  *
  * This loads the initrd to a RAM location. load_address must be a valid
- * address. If the image_data doesn't have a initrd specified this function
- * still returns successful as an initrd is optional. Check data->initrd_res
- * to see if an initrd has been loaded.
+ * address. If the image_data doesn't have an initrd specified this function
+ * still returns successful as an initrd is optional.
  *
- * Return: 0 on success, negative error code otherwise
+ * Return: the initrd resource if one was loaded, NULL if no initrd was
+ *         specified, or an error pointer on failure
  */
 const struct resource *
-bootm_load_initrd(struct image_data *data, unsigned long load_address)
+bootm_load_initrd(struct image_data *data, ulong load_address, ulong end_address)
 {
 	struct resource *res = NULL;
 	const char *initrd, *initrd_part = NULL;
@@ -293,6 +305,8 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	 */
 	if (WARN_ON(data->initrd_res))
 		return data->initrd_res;
+	if (end_address <= load_address)
+		return ERR_PTR(-EINVAL);
 
 	bootm_get_override(&data->initrd_file, bootm_overrides.initrd_file);
 
@@ -313,7 +327,7 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 
 	} else if (initrd) {
 		res = file_to_sdram(initrd, load_address, MEMTYPE_LOADER_DATA)
-			?: ERR_PTR(-ENOMEM);
+			?: ERR_PTR(-EBUSY);
 
 	} else if (data->os_fit) {
 		res = bootm_load_fit_initrd(data, load_address);
@@ -324,6 +338,12 @@ bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	if (IS_ERR_OR_NULL(res))
 		return res;
 
+	/* FIXME: We need some more rework to be able to detect this overflow
+	 * before it happens, but for now, let's at least detect it.
+	 */
+	if (WARN_ON(data->initrd_res->end > end_address))
+		return ERR_PTR(-ENOSPC);
+
 	pr_info("Loaded initrd from %s %s%s%s to %pa-%pa\n",
 		file_type_to_string(type), initrd,
 		initrd_part ? "@" : "", initrd_part ?: "",
@@ -425,33 +445,38 @@ void *bootm_get_devicetree(struct image_data *data)
 	return oftree;
 }
 
-/*
- * bootm_load_devicetree() - load devicetree
- *
+/**
+ * bootm_load_devicetree() - load devicetree into specified memory range
  * @data:		image data context
  * @fdt:		The flat device tree to load
  * @load_address:	The address where the devicetree should be loaded to
+ * @end_address:	The end address of the load buffer (inclusive)
  *
  * This loads the devicetree to a RAM location. load_address must be a valid
  * address which is requested with request_sdram_region. The associated region
  * is released automatically in the bootm error path.
  *
- * Return: 0 on success, negative error code otherwise
+ * Return: the devicetree resource on success, or an error pointer on failure
  */
-int bootm_load_devicetree(struct image_data *data, void *fdt,
-			    unsigned long load_address)
+const struct resource *
+bootm_load_devicetree(struct image_data *data, void *fdt,
+		      ulong load_address, ulong end_address)
 {
 	int fdt_size;
 
 	if (!IS_ENABLED(CONFIG_OFTREE))
-		return -ENOSYS;
+		return ERR_PTR(-ENOSYS);
+	if (end_address <= load_address)
+		return ERR_PTR(-EINVAL);
 
 	fdt_size = be32_to_cpu(((struct fdt_header *)fdt)->totalsize);
+	if (load_address + fdt_size - 1 > end_address)
+		return ERR_PTR(-ENOSPC);
 
 	data->oftree_res = request_sdram_region("oftree", load_address,
 			fdt_size, MEMTYPE_LOADER_DATA, MEMATTRS_RW);
 	if (!data->oftree_res)
-		return -ENOMEM;
+		return ERR_PTR(-EBUSY);
 
 	memcpy((void *)data->oftree_res->start, fdt, fdt_size);
 
@@ -461,7 +486,7 @@ int bootm_load_devicetree(struct image_data *data, void *fdt,
 		fdt_print_reserve_map(fdt);
 	}
 
-	return 0;
+	return data->oftree_res;
 }
 
 int bootm_get_os_size(struct image_data *data)
diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
index da664847def8..b40263ce6eb3 100644
--- a/efi/loader/bootm.c
+++ b/efi/loader/bootm.c
@@ -171,7 +171,8 @@ static efi_status_t efi_install_fdt(void *fdt)
 static efi_status_t efi_install_initrd(struct image_data *data,
 				       struct resource *source)
 {
-	const struct resource *initrd_res;
+	const struct resource *initrd_res, *sdram;
+	struct resource gap;
 	unsigned long initrd_start;
 
 	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
@@ -182,7 +183,11 @@ static efi_status_t efi_install_initrd(struct image_data *data,
 	else
 		initrd_start = EFI_PAGE_ALIGN(source->end + 1);
 
-	initrd_res = bootm_load_initrd(data, initrd_start);
+	sdram = memory_bank_lookup_region(data->os_address, &gap);
+	if (sdram != &gap)
+		return sdram ? EFI_OUT_OF_RESOURCES : EFI_INVALID_PARAMETER;
+
+	initrd_res = bootm_load_initrd(data, initrd_start, gap.end);
 	if (IS_ERR(initrd_res))
 		return PTR_ERR(initrd_res);
 	if (initrd_res)
diff --git a/include/bootm.h b/include/bootm.h
index e56a999f0b11..1c3bb8899b38 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -150,14 +150,19 @@ static inline int bootm_verbose(struct image_data *data)
 void bootm_data_init_defaults(struct bootm_data *data);
 void bootm_data_restore_defaults(const struct bootm_data *data);
 
-int bootm_load_os(struct image_data *data, unsigned long load_address);
+const struct resource *
+bootm_load_os(struct image_data *data,
+	      ulong load_address, ulong end_address);
 
 const struct resource *
-bootm_load_initrd(struct image_data *data, unsigned long load_address);
+bootm_load_initrd(struct image_data *data,
+		  ulong load_address, ulong end_address);
 
 void *bootm_get_devicetree(struct image_data *data);
-int bootm_load_devicetree(struct image_data *data, void *fdt,
-			  unsigned long load_address);
+
+const struct resource *
+bootm_load_devicetree(struct image_data *data, void *fdt,
+		      ulong load_address, ulong end_address);
 int bootm_get_os_size(struct image_data *data);
 
 enum bootm_verify bootm_get_verify_mode(void);
-- 
2.47.3



