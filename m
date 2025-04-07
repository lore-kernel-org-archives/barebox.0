Delivery-date: Mon, 07 Apr 2025 15:08:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mCp-009Yc1-0E
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 15:08:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mCo-0001kp-2Y
	for lore@pengutronix.de; Mon, 07 Apr 2025 15:08:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UFg0Qdn7LJ827mRzAj2F8IQY90PqRD3cjK+VYGWa0iA=; b=e/kD2gpdGz9jp77DpVMIw2+Uxf
	NU3U7HdJvtLoqjkaQkn09wy4sdt5ab+uq+5VAc7M9VTwWgZ7cL4fGrgw0u0F+11BrZ2SH1ahAh/7N
	jf4ca9mbtUkiCDvMBXfnE7Jgnbu7n3CmRvj1l2M2uCbI/WrPdiri2ZT/1Vy6f2YcqeHJonG17f1tc
	fCo6WeEC2pMEtqQXbR5n/DQQWy50ycWsPRG5sZqyYpEnbSyTH4u2HvB5zYm1glH5SYWRrESFa3dYW
	tNIyXR97FwhOSYn3qt+IamfvzryZA4HeMdte9naMHCqFDdAsQb+yRKugJwEO3iLjBCfA77N3pXjlO
	C0ujR+Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mCN-00000000Q9y-3E0e;
	Mon, 07 Apr 2025 13:07:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mCJ-00000000Q7h-3b1d
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:07:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mCI-0001bm-Kb; Mon, 07 Apr 2025 15:07:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mCI-003lUs-1Q;
	Mon, 07 Apr 2025 15:07:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mCI-00C7ku-14;
	Mon, 07 Apr 2025 15:07:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Apr 2025 15:07:28 +0200
Message-Id: <20250407130729.2889508-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_060732_053104_A54B5043 
X-CRM114-Status: GOOD (  23.44  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] bootm: move ELF handling to bootm handlers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The generic bootm code is for picking the correct OS, device tree and
initrd files. Additionally it parses the container formats like FIT and
uImage. It has no business to handle particular image formats, so push
the ELF handling back to the image handlers themselves. The resulting
diffstat is negative, so having the ELF code inside bootm doesn't really
serve a purpose. Move it out there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig         |  8 ++++++++
 arch/arm/cpu/Makefile    |  2 +-
 arch/arm/cpu/bootm-elf.c | 28 ++++++++++++++++++++--------
 arch/kvx/Kconfig         |  1 -
 arch/kvx/lib/bootm.c     | 22 +++++++++++++---------
 arch/mips/lib/bootm.c    | 18 +++++++++++++-----
 common/Kconfig           |  8 --------
 common/bootm.c           | 29 -----------------------------
 include/bootm.h          |  3 ---
 9 files changed, 55 insertions(+), 64 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7d46dcfb63..ab7ff5369b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -465,6 +465,14 @@ config ARM_MODULE_PLTS
 	  Say y if your memory configuration puts the heap to far away from the
 	  barebox image, causing relocation out of range errors
 
+config ARM_BOOTM_ELF
+	bool
+	depends on BOOTM
+	select ELF
+	prompt "elf loading support"
+	help
+	  Add support to load elf file with bootm.
+
 config ARM_ATF
 	bool
 
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 1769249645..d59aae1ee5 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -31,7 +31,7 @@ obj-$(CONFIG_ARM_SEMIHOSTING) += semihosting-trap_$(S64_32).o
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_MMUINFO) += mmuinfo.o mmuinfo_$(S64_32).o
 obj-$(CONFIG_OFDEVICE) += dtb.o
-obj-$(CONFIG_BOOTM_ELF)	+= bootm-elf.o
+obj-$(CONFIG_ARM_BOOTM_ELF)	+= bootm-elf.o
 
 ifeq ($(CONFIG_MMU),)
 obj-$(CONFIG_CPU_32v7) += no-mmu.o
diff --git a/arch/arm/cpu/bootm-elf.c b/arch/arm/cpu/bootm-elf.c
index bcca3931f2..d3132b6f5a 100644
--- a/arch/arm/cpu/bootm-elf.c
+++ b/arch/arm/cpu/bootm-elf.c
@@ -12,26 +12,33 @@ static int do_bootm_elf(struct image_data *data)
 {
 	void (*fn)(unsigned long x0, unsigned long x1, unsigned long x2,
 		   unsigned long x3);
-	struct elf_image *elf = data->elf;
+	struct elf_image *elf;
 	int ret;
 
+	elf = elf_open(data->os_file);
+	if (IS_ERR(elf))
+		return PTR_ERR(elf);
+
 	if (elf_hdr_e_machine(elf, elf->hdr_buf) != ELF_ARCH) {
 		pr_err("Unsupported machine: 0x%02x, but 0x%02x expected\n",
 		       elf_hdr_e_machine(elf, elf->hdr_buf), ELF_ARCH);
 
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err;
 	}
 
-	ret = bootm_load_os(data, data->os_address);
+	ret = elf_load(elf);
 	if (ret)
-		return ret;
+		goto err;
 
-	if (data->dryrun)
-		return ret;
+	if (data->dryrun) {
+		ret = 0;
+		goto err;
+	}
 
 	ret = of_overlay_load_firmware();
 	if (ret)
-		return ret;
+		goto err;
 
 	shutdown_barebox();
 
@@ -40,7 +47,12 @@ static int do_bootm_elf(struct image_data *data)
 	fn(0, 0, 0, 0);
 
 	pr_err("ELF application terminated\n");
-	return -EINVAL;
+	ret = -EINVAL;
+
+err:
+	elf_close(elf);
+
+	return ret;
 }
 
 static struct image_handler elf_handler = {
diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 9b733cd792..bb662e4fd8 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -4,7 +4,6 @@ config KVX
 	bool
 	select 64BIT
 	select BOOTM
-	select BOOTM_ELF
 	select BOOTM_OFTREE
 	select BOOTM_INITRD
 	select COMMON_CLK
diff --git a/arch/kvx/lib/bootm.c b/arch/kvx/lib/bootm.c
index 42c15ff273..3cb2521842 100644
--- a/arch/kvx/lib/bootm.c
+++ b/arch/kvx/lib/bootm.c
@@ -60,6 +60,10 @@ static int do_boot_elf(struct image_data *data, struct elf_image *elf)
 	boot_func_entry entry;
 	unsigned long load_addr, initrd_address;
 
+	ret = elf_load(elf);
+	if (ret)
+		return ret;
+
 	/* load initrd after the elf */
 	load_addr = PAGE_ALIGN((unsigned long) elf->high_addr);
 	if (data->initrd_address != UIMAGE_INVALID_ADDRESS)
@@ -112,13 +116,8 @@ static int do_bootm_fit(struct image_data *data)
 	if (IS_ERR(elf))
 		return PTR_ERR(data->elf);
 
-	ret = elf_load(elf);
-	if (ret)
-		goto close_elf;
-
 	ret = do_boot_elf(data, elf);
 
-close_elf:
 	elf_close(elf);
 
 	return ret;
@@ -126,13 +125,18 @@ static int do_bootm_fit(struct image_data *data)
 
 static int do_bootm_elf(struct image_data *data)
 {
+	struct elf_image *elf;
 	int ret;
 
-	ret = bootm_load_os(data, data->os_address);
-	if (ret)
-		return ret;
+	elf = elf_open(data->os_file);
+	if (IS_ERR(elf))
+		return PTR_ERR(elf);
+
+	ret = do_boot_elf(data, elf);
+
+	elf_close(elf);
 
-	return do_boot_elf(data, data->elf);
+	return ret;
 }
 
 static struct image_handler elf_handler = {
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 86573dec7f..a623b1c83b 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -58,20 +58,26 @@ static int do_bootm_elf(struct image_data *data)
 {
 	void (*entry)(int, void *);
 	void *fdt;
+	struct elf_image *elf;
 	int ret = 0;
 
-	ret = bootm_load_os(data, data->os_address);
+	elf = elf_open(data->os_file);
+	if (IS_ERR(elf))
+		return PTR_ERR(elf);
+
+	ret = elf_load(elf);
 	if (ret)
-		return ret;
+		goto err;
 
 	fdt = bootm_get_devicetree(data);
 	if (IS_ERR(fdt)) {
 		pr_err("Failed to load dtb\n");
-		return PTR_ERR(fdt);
+		ret = PTR_ERR(fdt);
+		goto bootm_free_fdt;
 	}
 
 	pr_info("Starting application at 0x%08lx, dts 0x%p...\n",
-		data->os_address, data->of_root_node);
+		elf->entry, data->of_root_node);
 
 	if (data->dryrun)
 		goto bootm_free_fdt;
@@ -82,7 +88,7 @@ static int do_bootm_elf(struct image_data *data)
 
 	shutdown_barebox();
 
-	entry = (void *) (unsigned long) data->os_address;
+	entry = (void *) (unsigned long) elf->entry;
 
 	entry(-2, fdt);
 
@@ -91,6 +97,8 @@ static int do_bootm_elf(struct image_data *data)
 
 bootm_free_fdt:
 	free(fdt);
+err:
+	elf_close(elf);
 
 	return ret;
 }
diff --git a/common/Kconfig b/common/Kconfig
index ddc76b2033..93ab618898 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -668,14 +668,6 @@ config PE
 config ELF
 	bool "ELF Support" if COMPILE_TEST
 
-config BOOTM_ELF
-	bool
-	depends on BOOTM
-	select ELF
-	prompt "elf loading support"
-	help
-	  Add support to load elf file with bootm.
-
 config BOOTM_FITIMAGE
 	bool
 	prompt "FIT image support"
diff --git a/common/bootm.c b/common/bootm.c
index a5065c3860..69816cdf5b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -211,9 +211,6 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 		return 0;
 	}
 
-	if (IS_ENABLED(CONFIG_ELF) && data->elf)
-		return elf_load(data->elf);
-
 	if (!data->os_file)
 		return -EINVAL;
 
@@ -562,8 +559,6 @@ int bootm_get_os_size(struct image_data *data)
 	struct stat s;
 	int ret;
 
-	if (data->elf)
-		return elf_get_mem_size(data->elf);
 	if (image_is_uimage(data))
 		return uimage_get_size(data->os, uimage_part_num(data->os_part));
 	if (data->os_fit)
@@ -676,25 +671,6 @@ static int bootm_open_fit(struct image_data *data)
 	return 0;
 }
 
-static int bootm_open_elf(struct image_data *data)
-{
-	struct elf_image *elf;
-
-	if (!IS_ENABLED(CONFIG_ELF))
-		return -ENOSYS;
-
-	elf = elf_open(data->os_file);
-	if (IS_ERR(elf))
-		return PTR_ERR(elf);
-
-	pr_info("Entry Point:  %08llx\n", elf->entry);
-
-	data->os_address = elf->entry;
-	data->elf = elf;
-
-	return 0;
-}
-
 static void bootm_print_info(struct image_data *data)
 {
 	if (data->os_res)
@@ -800,9 +776,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 	case filetype_uimage:
 		ret = bootm_open_os_uimage(data);
 		break;
-	case filetype_elf:
-		ret = bootm_open_elf(data);
-		break;
 	default:
 		ret = 0;
 		break;
@@ -965,8 +938,6 @@ int bootm_boot(struct bootm_data *bootm_data)
 			uimage_close(data->initrd);
 		uimage_close(data->os);
 	}
-	if (IS_ENABLED(CONFIG_ELF) && data->elf)
-		elf_close(data->elf);
 	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit)
 		fit_close(data->os_fit);
 	if (data->of_root_node)
diff --git a/include/bootm.h b/include/bootm.h
index b86d06b0f5..bc6c69e813 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -53,9 +53,6 @@ struct image_data {
 	/* if os is an uImage this will be provided */
 	struct uimage_handle *os;
 
-	/* if os is an elf file this will be provided */
-	struct elf_image *elf;
-
 	/* if os is a FIT image this will be provided */
 	struct fit_handle *os_fit;
 
-- 
2.39.5



