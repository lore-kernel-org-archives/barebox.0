Delivery-date: Tue, 29 Jul 2025 22:37:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugr51-0052Rq-1D
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 22:37:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugr50-0007i7-7c
	for lore@pengutronix.de; Tue, 29 Jul 2025 22:37:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4RoZq0J+xyFuUt2fp6KHH0X9wZ05wU7jPc9mAD3Eb4s=; b=pudxJY7o6B8Tdu8aj+OFWYuRse
	5bbSXmF/1bklcF8iQxsRbNKkVU5X9LBvIDdHhr7nR2z9CpU5VLGlPOVvkWy1ZrtlsJOjBp5VqAMVL
	csEC9tpySGLofN5Kq8qjoSNWJX+BFBSJG3eW1G7H0X7HqOJufd/SufRSHQQBYl8yQ4gECbj0vJCx0
	SyWc+uPdFNat6QMXSEqqoYw2oD7Wkl/EGF+ZLtTQodKg++AoO6VScvW1qW6DHxYsGLyJz2k/Pw3Sm
	DEcjEWhMh30uCsb8qb9PCAMG5cQLaDhxJLp4A0IUDYsvsxfh1IGlgaSF4wRiUAxBKJmMt091gtLEe
	VSEpGHxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugr4R-000000003zi-2ele;
	Tue, 29 Jul 2025 20:37:11 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugr4O-000000003yA-1Ftc
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 20:37:09 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3b7886bee77so2438982f8f.0
        for <barebox@lists.infradead.org>; Tue, 29 Jul 2025 13:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753821427; x=1754426227; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4RoZq0J+xyFuUt2fp6KHH0X9wZ05wU7jPc9mAD3Eb4s=;
        b=i1yYa31Nb0uQfqJWV2UC5yuD71b+auuU85FJalDfiyXtJFKLYAjvHTGLJ5feF1+BwB
         bwWha2CDGLxnAuKjU0PzCDnHSkg8B+x6ZTW6/weN48gohMStL0rRbqmKG64uwFVBmrHR
         fEVuY2iNtkbr1DNrRKe0R3mrxpi69qZe5BgBaW37EgMdHI4016dr1S1y9Z45EBR+EvU/
         JaGRmxcCkvf0Qr7ZRnK1Oa6v1GdbA2gkuXPDANdo58c5zSeH3Oo6+0dg0HFWR/caEKoM
         qZFuL4ISKLPI3D5X0rrWa/ivlIu2ntTrY1EsJq0quoi78B1uQAnwNDePD1M0EiwvVk30
         0gPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753821427; x=1754426227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4RoZq0J+xyFuUt2fp6KHH0X9wZ05wU7jPc9mAD3Eb4s=;
        b=ATx490J65YHFZpewZEhShbGgH8WA6urIg5ekLVTnvvr91Ig+aJ1CxsXpPJyflcYjqC
         fyKEiy0WJS+raaIeO85GafHDIwGf4JVrfShKpiJIPOWgCGhpfB/zATMMumUzcv+7XnsH
         XnA8YK5k38YGwb6X5WTRj4xA4dAedBuhL/0NCtyjeAMQEij2HoN97apP9CJg0Di9Plnl
         tWqzMBnpH8YsedtaY82ikZSglCKtuUnkvbClRysOgfiaLNHfUFjKeUZvn5sO0+EsvZUM
         Aram3IBgyG+YYq4o2P/MlBV1SmA4szn+YBwzCLMQh/rEvTDyty8YJNSi5Ck6j+b7GR7R
         antw==
X-Gm-Message-State: AOJu0YzwuXkGNifaWeEPyG8/PVytFrFet5rDqdM3oSMqR345mD7XpKXh
	2IGV12xF1PNgTXkNA8XEXUemDdRsoJBkMo2s+yv0jucYfWdiMVlY5/rURWw7kQ==
X-Gm-Gg: ASbGncu7L3I/TfU1Z/1nGj5KPH6Sv/EcfQyOqeLQlvXgx2z3YSLgbd0Z2h8dmJIUeIx
	tqEZ+tKjVgh/li8scXVz8ZjlqnPnef5hC3rgEXudw68ZBX/epwrNM6meuhZBVhf9pS25CfTcOmN
	ygkvNgyALuGum9eugr85OiCf8vQ8D4HYz+Q6jbZnaDm0aM79XUtLJ3D5FgDn/4R6z/8pH++ORJL
	NE+xsg9KM4scPglZ1GqYau30mRiT9tm2CluafF4lHQp7TflyxUkDzPAMFCcgPLJAk0Z5KK14xRh
	n9uH/OWAO7CV7m7RBpZhoITjYP/qWn57WpyML4+Y+Zj0NW2N02ET2OGYMCNrhYl+y45DdbXSHSg
	o+zDOiMnX6a8/Rbq6d4cusG4l64b083VCdvKGYbXbyfRa1F5R2GQKZRfO2mFgBkWFb1HSjSwN1Q
	==
X-Google-Smtp-Source: AGHT+IEuwETQF436VRaJT5MCrPn/aniZ+rpI3yLrbjGBZLoAcLDMFPpwh8OXQfSrBR8p66OxK/sRQg==
X-Received: by 2002:a5d:5d0c:0:b0:3b7:75e8:bd17 with SMTP id ffacd0b85a97d-3b794fe4f05mr640712f8f.8.1753821426415;
        Tue, 29 Jul 2025 13:37:06 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45895386627sm481325e9.19.2025.07.29.13.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 13:37:05 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Tue, 29 Jul 2025 23:36:58 +0300
Message-ID: <20250729203659.1858575-4-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_133708_339852_764A2049 
X-CRM114-Status: GOOD (  29.53  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 3/4] ARM: boards: add support for Samsung Galaxy S8 (dreamlte)
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

For some reason, on certain devices the stack set up by the previous
bootloader is not enough. Since the idea of this board support is to be
as generic as possible, setting a fixed stack top via
ENTRY_FUNCTION_WITHSTACK does not make sense, due to different exynos
devices having different memory layouts - exynos8895's dram starts at
0x80000000, whereas exynos7870's starts at 0x40000000. Instead, set the
SP as early as possible in the entry C function by taking the memory base
from the downstream fdt + (SZ_8M - SZ_64K).

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

Currently, only a minimal set of features work. An image can be booted by
barebox by configuring barebox to jump to the address where ramdisk gets
loaded by s-boot, and packaging that payload as a ramdisk with mkbootimg.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 arch/arm/Kconfig                          |  5 ++
 arch/arm/boards/Makefile                  |  1 +
 arch/arm/boards/samsung-exynos/Makefile   |  4 ++
 arch/arm/boards/samsung-exynos/board.c    | 63 ++++++++++++++++++
 arch/arm/boards/samsung-exynos/lowlevel.c | 78 +++++++++++++++++++++++
 arch/arm/dts/Makefile                     |  1 +
 arch/arm/dts/exynos8895-dreamlte.dts      | 13 ++++
 arch/arm/mach-samsung/Kconfig             | 13 ++++
 images/Makefile                           |  1 +
 images/Makefile.exynos                    |  8 +++
 10 files changed, 187 insertions(+)
 create mode 100644 arch/arm/boards/samsung-exynos/Makefile
 create mode 100644 arch/arm/boards/samsung-exynos/board.c
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
index 00000000..da63d262
--- /dev/null
+++ b/arch/arm/boards/samsung-exynos/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/samsung-exynos/board.c b/arch/arm/boards/samsung-exynos/board.c
new file mode 100644
index 00000000..25e4add6
--- /dev/null
+++ b/arch/arm/boards/samsung-exynos/board.c
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2025 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+ */
+#include <common.h>
+#include <init.h>
+#include <of.h>
+#include <deep-probe.h>
+#include <asm/memory.h>
+#include <linux/sizes.h>
+#include <asm/system.h>
+#include <of_address.h>
+
+#define MACHINE "samsung-exynos"
+
+#define HW_SW_TRIG_CONTROL	0x70
+#define TRIG_AUTO_MASK_EN	BIT(12)
+#define SW_TRIG_EN		BIT(8)
+#define HW_TRIG_EN		BIT(0)
+
+static int exynos_postcore_init(void)
+{
+	void __iomem *decon0_base;
+
+	/*
+	 * Devices past galaxy S7 keep framebuffer refreshing disabled after
+	 * s-boot. Set the required bit so we can have output. This should
+	 * ideally be dropped from board files once we have a decon driver.
+	 */
+	if (of_machine_is_compatible("samsung,exynos8895"))
+		decon0_base = IOMEM(0x12860000);
+	else
+		return 0;
+
+	writel(TRIG_AUTO_MASK_EN | SW_TRIG_EN | HW_TRIG_EN,
+	       decon0_base + HW_SW_TRIG_CONTROL);
+
+	return 0;
+}
+coredevice_initcall(exynos_postcore_init);
+
+static inline int exynos_init(struct device *dev)
+{
+	barebox_set_model("ARM SAMSUNG " MACHINE);
+	barebox_set_hostname(MACHINE);
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
+
+postcore_platform_driver(exynos_board_driver);
diff --git a/arch/arm/boards/samsung-exynos/lowlevel.c b/arch/arm/boards/samsung-exynos/lowlevel.c
new file mode 100644
index 00000000..9c4a0297
--- /dev/null
+++ b/arch/arm/boards/samsung-exynos/lowlevel.c
@@ -0,0 +1,78 @@
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
+static bool is_compat(const void *fdt, const char *prefix)
+{
+	int node, len;
+	const char *compat;
+
+	node = fdt_path_offset(fdt, "/");
+	if (node < 0)
+		return false;
+
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
+	if (is_compat(downstream_fdt, "Samsung DREAMLTE")) {
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
+ENTRY_FUNCTION(start_exynos, x0, x1, x2)
+{
+	void *downstream_fdt = (void *)x0;
+	unsigned long mem_base, mem_size;
+
+	if (!downstream_fdt || fdt_check_header(downstream_fdt))
+		return;
+
+	/*
+	 * The previous bootloader has a stack set up, but it seems to not be
+	 * enough as we can't get past the relocation on some devices. Set up
+	 * a stack determined by the memory node from the downstream fdt.
+	 */
+	fdt_find_mem(downstream_fdt, &mem_base, &mem_size);
+	asm volatile("mov sp, %0" : : "r"(mem_base + SZ_8M - SZ_64K));
+
+	arm_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+
+	setup_c();
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
index 00000000..36b5271e
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
+	barebox,disable-deep-probe;
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



