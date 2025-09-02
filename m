Delivery-date: Tue, 02 Sep 2025 21:12:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWQn-007NdX-2T
	for lore@lore.pengutronix.de;
	Tue, 02 Sep 2025 21:12:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utWQl-0006hM-Su
	for lore@pengutronix.de; Tue, 02 Sep 2025 21:12:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vs+aXhvny4in2cueMjE+5WfCUv3SWOksNwBRivuoGU8=; b=jFP5385oodhkHHhbeoa0Fw2y6j
	aoyBNqhrnuz5lszf6YXrhVLd1CHexV4TK9lgY3pa3LzyaMOgcTS237TRntW94BbjvqNUkJDokS346
	ei/s3evmWfNoRD7Tu4mpnHdYkNi3rPw+foP6jBS9gW7odgz5PUdm1Urd0onUIqjdNxbwtlMub6aSu
	CvwBy/YU3j25iA3iDUo+GqcRrMecCarYFG33PHkkyWUdqHJmo7Gqz4mmdoIBGt334DaM5NiUjhOK2
	+CE3XY2ROzukzh6Ar/67IY7GlXbEDC9csx6BsRCQ4LggKDsTfcQY5ud2/zGwpzHJcTxFmdGskwH3a
	XdiZI3XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utWQH-00000001d5l-1jiQ;
	Tue, 02 Sep 2025 19:12:05 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utRYb-00000000Ddn-2cDa
	for barebox@lists.infradead.org;
	Tue, 02 Sep 2025 14:00:24 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-b045d56e181so42387666b.2
        for <barebox@lists.infradead.org>; Tue, 02 Sep 2025 07:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756821620; x=1757426420; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vs+aXhvny4in2cueMjE+5WfCUv3SWOksNwBRivuoGU8=;
        b=aKdEUsXQ4SJ9dzJW55fsmP39cjP2ZVOcW1gEq66t5l9Rs6UPQI1jmeB+L51gdAWqQ7
         EpRq0c/zqdC2x9XKY9VdUD7gMY1hVXILafsrOg7zjhDh/XNt0l0ejeD1STjBDU5qR852
         G2nLkyh1hIo0JCY87RZ+l2DjQyNo3g1q2QAQDDv7WhHiY8booVoEKMdIqrMF7Am9OGXY
         7/JsAxL5aGQ+KU6ULDJBsCkhZzRY8PS1Ff6OglDIda8VHRCG9gKnt6qrVQRh6BUIxuth
         mKH5wdAf+bVZKiJi7/G6U35HuALxgd4mUUBjhWQpAG//uLMux9g4lx++NLWMqZF+7++T
         G7+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821620; x=1757426420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vs+aXhvny4in2cueMjE+5WfCUv3SWOksNwBRivuoGU8=;
        b=V2yaxDfnVH7dCurdtaqVzYl9r1tjv8MhOhKacZBgj0lfgdLvCAqM3VnTYPIF7O/PjQ
         KUM9SN/F5bk1uxcoeaIBdULX/hI9P5ZgQUoDqwnva50GkVhDQjj3Z8y2jgrQrVX5KPhz
         3T8G1/wFqNUGyUWist549VLfQkDtbhPHAwZuvGpvLqre8/GLRq4bhpp3PM8LY4rzk0z+
         Uq/QzWhD1F/urKRaNqFNLyl76Zsm5ECzjiqfVXtHlvWkrdPHtW18JGZE6iYZtsdM6tPO
         8IwYjjx2VUucYxYJP4xNlQuG/crzszh3+7lhIXnuVxAoPwCebCAiPC2bzWbXN28Wq7Kw
         zxug==
X-Gm-Message-State: AOJu0YwEdb/O0iVajNuQQZChJgvq98QEn2z0SmcL6nK8OycyUBhIlS3r
	mjdeGIMVaIwKjau2w5TtbrKX0Zm9pG8VcoOz85YT8XotpmrGij43Kt5FncrMsw==
X-Gm-Gg: ASbGnctWp8Z0hCVXcUVwE531zFc0YWj0wCTPrPIv910+vq90WCSP7cUWILo+xDsDd3l
	VfXiVcjv5A1S2YGo2d8Q9AUa0NP+C0LW9Anjg6jGgSZ64RSifggvKBPXPrSqexfrF/I6KKp3zvT
	uN7+B4CftEosWQI9+diNquBy3m4n2DzMsegz7bIRkIIl02M9n5Wbz9Q+4FdhWAiR+Z7unVfT5sy
	fs39KV5F17O6OcVa40XhT/9bCpVMFQai5eSDyyhu67a1TcjvVvY7gm2HiAI9dFttXUnXyb+dfrM
	JGFzkIzkDs25QdFKVv+8WGxZ1Cd22Q1v14aoVJyyFXJcGOWOB5pGJSXvS2PauQaVtOQ0Auuyp3T
	nNASRLa7S4jErVTrFaDTIbNENwhryl/AR
X-Google-Smtp-Source: AGHT+IHRmFSJO6eHwzVhYKj6fkfZRwvcf1Stnm3N1JiSOj1r2uSV8pKoPZupqV/OYM/RArckgH+9AQ==
X-Received: by 2002:a17:907:7ba0:b0:ae3:b2b7:7f2f with SMTP id a640c23a62f3a-b01d9718d2dmr1314150766b.40.1756821619518;
        Tue, 02 Sep 2025 07:00:19 -0700 (PDT)
Received: from ivaylo-T580.. ([37.63.16.182])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff08b86833sm1034411366b.48.2025.09.02.07.00.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:00:19 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue,  2 Sep 2025 17:00:05 +0300
Message-ID: <20250902140006.1410408-3-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250902140006.1410408-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250902140006.1410408-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_070021_668285_F2ABC768 
X-CRM114-Status: GOOD (  31.57  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/3] ARM: boards: add support for Samsung Galaxy S8 (dreamlte)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Phones utilizing an exynos SoC boot android with samsung's proprietary
bootloader, called s-boot (s-lk on newer devices). However, not only is
it closed source, it also enforces some limitations that prevent us from
booting mainline linux cleanly on them, such as an applied overlay device
tree, disabled framebuffer refreshing, misaligned kernel image at boot.
Therefore, having another stage bootloader, loaded as a linux kernel
image by s-boot, is best.

Add support for Samsung Galaxy S8, utilizing the exynos 8895 SoC. Support
is modelled to be as reusable on other devices as possible, requiring
only a minimal set of changes to boot - a barebox device tree, which in
this case is basically imported torvalds tree for dreamlte, that is then
matched from the downstream device tree, provided by s-boot at x0.

For certain devices the stack set up by the previous bootloader is not
enough. Since the idea of this board support is to be as generic as
possible, setting a fixed stack top via ENTRY_FUNCTION_WITHSTACK does
not make sense, due to different exynos devices having different memory
layouts - exynos8895's dram starts at 0x80000000, whereas exynos7870's
starts at 0x40000000. Instead, set the SP as early as possible in
assembly by offsetting the image by 0x80000 and letting it grow from
there.

Barebox has to be packaged as an android boot image:

mkbootimg --kernel images/barebox-exynos.img \
--ramdisk ramdisk.bin \
--dt stock.dtb
--cmdline "buildvariant=eng" \
--base 0x10000000 \
--kernel_offset 0x00008000 \
--ramdisk_offset 0x01000000 \
--second_offset 0x00f00000 \
--tags_offset 0x00000100 \
--os_version 9.0.0 \
--os_patch_level 2019-10 \
--pagesize 2048 \
--hash sha1 \
--output boot.img

And then flashed to the boot partition:

heimdall flash --BOOT boot.img

Currently, only a minimal set of features work. It's possible to
boot a FIT image packaged as a ramdisk with mkbootimg.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 arch/arm/Kconfig                              |  5 ++
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/samsung-exynos/Makefile       |  5 ++
 arch/arm/boards/samsung-exynos/board.c        | 65 +++++++++++++++
 .../defaultenv-exynos/boot/ramfit             | 12 +++
 .../defaultenv-exynos/init/bootsource         |  3 +
 arch/arm/boards/samsung-exynos/entry.S        | 31 +++++++
 arch/arm/boards/samsung-exynos/lowlevel.c     | 80 +++++++++++++++++++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/exynos8895-dreamlte.dts          | 13 +++
 arch/arm/mach-samsung/Kconfig                 | 13 +++
 images/Makefile                               |  1 +
 images/Makefile.exynos                        |  8 ++
 13 files changed, 238 insertions(+)
 create mode 100644 arch/arm/boards/samsung-exynos/Makefile
 create mode 100644 arch/arm/boards/samsung-exynos/board.c
 create mode 100644 arch/arm/boards/samsung-exynos/defaultenv-exynos/boot/ramfit
 create mode 100644 arch/arm/boards/samsung-exynos/defaultenv-exynos/init/bootsource
 create mode 100644 arch/arm/boards/samsung-exynos/entry.S
 create mode 100644 arch/arm/boards/samsung-exynos/lowlevel.c
 create mode 100644 arch/arm/dts/exynos8895-dreamlte.dts
 create mode 100644 arch/arm/mach-samsung/Kconfig
 create mode 100644 images/Makefile.exynos

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7a395270..095f189f 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -212,6 +212,10 @@ config ARCH_ROCKCHIP
 	select HAS_DEBUG_LL
 	imply GPIO_ROCKCHIP
 
+config ARCH_SAMSUNG
+	bool "ARM Exynos boards"
+	depends on ARCH_MULTIARCH
+
 config ARCH_STM32MP
 	bool "STMicroelectronics STM32MP"
 	depends on 32BIT
@@ -268,6 +272,7 @@ source "arch/arm/mach-k3/Kconfig"
 source "arch/arm/mach-omap/Kconfig"
 source "arch/arm/mach-pxa/Kconfig"
 source "arch/arm/mach-rockchip/Kconfig"
+source "arch/arm/mach-samsung/Kconfig"
 source "arch/arm/mach-socfpga/Kconfig"
 source "arch/arm/mach-sunxi/Kconfig"
 source "arch/arm/mach-stm32mp/Kconfig"
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ac1fa74d..ff2efe04 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -30,6 +30,7 @@ obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
 obj-$(CONFIG_MACH_CLEP7212)			+= clep7212/
 obj-$(CONFIG_MACH_DFI_FS700_M60)		+= dfi-fs700-m60/
 obj-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO)		+= digi-ccimx6ulsom/
+obj-$(CONFIG_MACH_EXYNOS)			+= samsung-exynos/
 obj-$(CONFIG_MACH_DUCKBILL)			+= duckbill/
 obj-$(CONFIG_MACH_DSS11)			+= dss11/
 obj-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		+= efika-mx-smartbook/
diff --git a/arch/arm/boards/samsung-exynos/Makefile b/arch/arm/boards/samsung-exynos/Makefile
new file mode 100644
index 00000000..6694e90d
--- /dev/null
+++ b/arch/arm/boards/samsung-exynos/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += entry.o lowlevel.o
+bbenv-y += defaultenv-exynos
diff --git a/arch/arm/boards/samsung-exynos/board.c b/arch/arm/boards/samsung-exynos/board.c
new file mode 100644
index 00000000..2d0c2248
--- /dev/null
+++ b/arch/arm/boards/samsung-exynos/board.c
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2025 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+ */
+#include <common.h>
+#include <envfs.h>
+#include <init.h>
+#include <of.h>
+#include <deep-probe.h>
+#include <asm/memory.h>
+#include <linux/sizes.h>
+#include <asm/system.h>
+#include <of_address.h>
+
+#define EXYNOS8895_DECON0	0x12860000
+#define HW_SW_TRIG_CONTROL	0x70
+#define TRIG_AUTO_MASK_EN	BIT(12)
+#define SW_TRIG_EN		BIT(8)
+#define HW_TRIG_EN		BIT(0)
+
+static int exynos_postcore_init(void)
+{
+	void __iomem *trig_ctrl;
+
+	/*
+	 * ARM64 s-boot usually keeps framebuffer refreshing disabled after
+	 * jumping to kernel. Set the required bit so we can have output. This
+	 * should ideally be dropped from board files once we have a decon
+	 * driver.
+	 */
+	if (of_machine_is_compatible("samsung,exynos8895"))
+		trig_ctrl = IOMEM(EXYNOS8895_DECON0 + HW_SW_TRIG_CONTROL);
+	else
+		return 0;
+
+	writel(TRIG_AUTO_MASK_EN | SW_TRIG_EN | HW_TRIG_EN,
+	       trig_ctrl);
+
+	return 0;
+}
+coredevice_initcall(exynos_postcore_init);
+
+static inline int exynos_init(struct device *dev)
+{
+	barebox_set_model(of_get_model());
+	barebox_set_hostname("samsung-exynos");
+
+	defaultenv_append_directory(defaultenv_exynos);
+
+	return 0;
+}
+
+static const struct of_device_id exynos_of_match[] = {
+	{ .compatible = "samsung,dreamlte" },
+	{ /* Sentinel */},
+};
+
+MODULE_DEVICE_TABLE(of, exynos_of_match);
+
+static struct driver exynos_board_driver = {
+	.name = "board-exynos",
+	.probe = exynos_init,
+	.of_compatible = exynos_of_match,
+};
+postcore_platform_driver(exynos_board_driver);
diff --git a/arch/arm/boards/samsung-exynos/defaultenv-exynos/boot/ramfit b/arch/arm/boards/samsung-exynos/defaultenv-exynos/boot/ramfit
new file mode 100644
index 00000000..0912c9fc
--- /dev/null
+++ b/arch/arm/boards/samsung-exynos/defaultenv-exynos/boot/ramfit
@@ -0,0 +1,12 @@
+#!/bin/sh
+
+#
+# Boot a FIT image, packaged as ramdisk in the boot.img and placed
+# in memory by s-boot.
+#
+if test "$global.model" = "Samsung Galaxy S8 (SM-G950F)"; then
+	global fit_offset=0x9000000
+fi
+
+addpart /dev/ram0 0x2000000@$global.fit_offset(fit)
+bootm -f /dev/ram0.fit
diff --git a/arch/arm/boards/samsung-exynos/defaultenv-exynos/init/bootsource b/arch/arm/boards/samsung-exynos/defaultenv-exynos/init/bootsource
new file mode 100644
index 00000000..99016c98
--- /dev/null
+++ b/arch/arm/boards/samsung-exynos/defaultenv-exynos/init/bootsource
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+global.boot.default=ramfit
diff --git a/arch/arm/boards/samsung-exynos/entry.S b/arch/arm/boards/samsung-exynos/entry.S
new file mode 100644
index 00000000..e9607f9f
--- /dev/null
+++ b/arch/arm/boards/samsung-exynos/entry.S
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+#include <asm/image.h>
+
+#define IMAGE_FLAGS \
+	(ARM64_IMAGE_FLAG_PAGE_SIZE_4K << ARM64_IMAGE_FLAG_PAGE_SIZE_SHIFT) | \
+	(ARM64_IMAGE_FLAG_PHYS_BASE << ARM64_IMAGE_FLAG_PHYS_BASE_SHIFT)
+
+.section .text_head_entry_exynos
+ENTRY("start_exynos")
+	nop                        /* code0 */
+	b 2f                       /* code1 */
+	.xword 0x80000             /* Image load offset */
+	.xword _barebox_image_size /* Effective Image size */
+	.xword IMAGE_FLAGS	   /* Kernel flags */
+	.xword 0                   /* reserved */
+	.xword 0                   /* reserved */
+	.xword 0                   /* reserved */
+	.ascii ARM64_IMAGE_MAGIC   /* magic number */
+	.int   0                   /* reserved (PE-COFF offset) */
+	.asciz "barebox"	   /* unused for now */
+2:
+	adr x1, _text - .
+	mov sp, x1
+	/* Stack now grows into the 0x80000 image load offset specified
+	 * above. This is more than enough until FDT /memory is decoded.
+	 */
+	b lowlevel_exynos
+
+ENTRY_PROC_END(start_exynos)
diff --git a/arch/arm/boards/samsung-exynos/lowlevel.c b/arch/arm/boards/samsung-exynos/lowlevel.c
new file mode 100644
index 00000000..bb040611
--- /dev/null
+++ b/arch/arm/boards/samsung-exynos/lowlevel.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2025 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+ */
+#include <common.h>
+#include <pbl.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+
+extern char __dtb_exynos8895_dreamlte_start[];
+
+/* called from assembly */
+void lowlevel_exynos(void *downstream_fdt);
+
+static bool is_model(const void *fdt, const char *prefix)
+{
+	int node, len;
+	const char *compat;
+
+	node = fdt_path_offset(fdt, "/");
+	if (node < 0)
+		return false;
+
+	/*
+	 * Samsung doesn't keep compatibles as consistent as model
+	 * strings. For example:
+	 *
+	 * compatible = "samsung,X1S EUR OPEN 05\0samsung,EXYNOS990";
+	 * compatible = "samsung, DREAMLTE KOR rev01", "samsung,EXYNOS8895";
+	 * compatible = "samsung, J7VE LTE LTN OPEN 00", "samsung,exynos7870";
+	 *
+	 * Use models for matching instead to avoid confusion.
+	 */
+	compat = fdt_getprop(fdt, node, "model", &len);
+	if (!compat)
+		return false;
+
+	while (*prefix) {
+		if (*compat++ != *prefix++)
+			return false;
+	}
+	return true;
+}
+
+static noinline void exynos_continue(void *downstream_fdt)
+{
+	void *fdt;
+	unsigned long membase, memsize;
+	char *__dtb_start;
+
+	/* select device tree dynamically */
+	if (is_model(downstream_fdt, "Samsung DREAMLTE")) {
+		__dtb_start = __dtb_exynos8895_dreamlte_start;
+	} else {
+		/* we didn't match any device */
+		return;
+	}
+	fdt = __dtb_start + get_runtime_offset();
+	fdt_find_mem(fdt, &membase, &memsize);
+
+	barebox_arm_entry(membase, memsize, fdt);
+}
+
+void lowlevel_exynos(void *downstream_fdt)
+{
+	arm_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+
+	setup_c();
+
+	if (!downstream_fdt || fdt_check_header(downstream_fdt))
+		return;
+
+	exynos_continue(downstream_fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 6612a514..a53834f7 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -13,6 +13,7 @@ lwl-$(CONFIG_MACH_BEAGLEPLAY) += k3-am625-beagleplay.dtb.o k3-am625-r5-beaglepla
 lwl-$(CONFIG_MACH_CLEP7212) += ep7212-clep7212.dtb.o
 lwl-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
 lwl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
+lwl-$(CONFIG_MACH_EXYNOS) += exynos8895-dreamlte.dtb.o
 lwl-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
 lwl-$(CONFIG_MACH_KINDLE_MX50) += imx50-kindle-d01100.dtb.o imx50-kindle-d01200.dtb.o imx50-kindle-ey21.dtb.o
 lwl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
diff --git a/arch/arm/dts/exynos8895-dreamlte.dts b/arch/arm/dts/exynos8895-dreamlte.dts
new file mode 100644
index 00000000..d28b7ec2
--- /dev/null
+++ b/arch/arm/dts/exynos8895-dreamlte.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
+/*
+ * Samsung Galaxy S8 (dreamlte/SM-G950F) barebox device tree source
+ *
+ * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+ */
+
+/dts-v1/;
+#include <arm64/exynos/exynos8895-dreamlte.dts>
+
+/ {
+	barebox,deep-probe;
+};
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
new file mode 100644
index 00000000..106a48a6
--- /dev/null
+++ b/arch/arm/mach-samsung/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+if ARCH_SAMSUNG
+
+config MACH_EXYNOS
+	bool "Samsung Exynos boards support"
+	depends on 64BIT
+	select CPU_V8
+	select ARM_PSCI_CLIENT
+	select HW_HAS_PCI
+	select OF_OVERLAY
+
+endif
diff --git a/images/Makefile b/images/Makefile
index e20d11e1..4be5c3cd 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -176,6 +176,7 @@ include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.mxs
 include $(srctree)/images/Makefile.omap3
 include $(srctree)/images/Makefile.rockchip
+include $(srctree)/images/Makefile.exynos
 include $(srctree)/images/Makefile.sandbox
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.stm32mp
diff --git a/images/Makefile.exynos b/images/Makefile.exynos
new file mode 100644
index 00000000..3beb9107
--- /dev/null
+++ b/images/Makefile.exynos
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# barebox image generation Makefile for exynos images
+#
+
+pblb-$(CONFIG_MACH_EXYNOS) += start_exynos
+FILE_barebox-exynos.img = start_exynos.pblb
+image-$(CONFIG_MACH_EXYNOS) += barebox-exynos.img
-- 
2.43.0



