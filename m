Delivery-date: Mon, 13 Jan 2025 12:29:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdK-000ZtH-0u
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:29:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdH-0006He-VD
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:29:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=44s7vpPHOqw1zjzyd55rYTpIJfmeOqIYwk6LH+L/y3k=; b=PakGrRnYG+knDlZ3WQo22vjHL3
	m9DDanpY/6vJCi7GF19Zc5Rcs7iMvqmYGQpoShT4mWKKQh1eQ5xZsHkp9B5qt0mwifP7Wt0MDbXYT
	YRnw5mkvVk3Qq926S/gqvuPRrHAGiZTQzP27qbDe6siQ+87u4DN089SLuphmBO85uOn2PfZzrPq8F
	VThBgZh1zKusRLkdwJpXaJqxBS7+EFuCWYZzQDHR4qW5TTS5XxI9inrbJSc4j6ez7pP7yAm6uXxws
	Mx6HqFiZdVNdMbbjQ0I0bLpS6ssdcDBRIFQMwPNfz26pa4yLxlk+egf1svBJbi6+umv4gBRgjGsbx
	BSQ3lpCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIci-00000004uSd-2WHa;
	Mon, 13 Jan 2025 11:28:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIau-00000004tqw-2Bjq
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:26:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-0005ed-Qp; Mon, 13 Jan 2025 12:26:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-000FRC-02;
	Mon, 13 Jan 2025 12:26:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1P;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:26:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-k3-r5-v3-1-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767610; l=13065;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ECbgJhy3XF5VUAU1/zx7bxO0WLKJmUjfxOAmouPlvBY=;
 b=/q3cyNEV1Iww4eB80yb6rJQ5AO93lyNE470ujaHknnTVFnWSNh30alr3PmFD8ftHZVQsbKOhp
 YHP6JAG8C0zB05zqRiMn79PBsNKJEwOs95GhIH6DdqnWEA0E2wpqbok
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_032656_884402_99106493 
X-CRM114-Status: GOOD (  28.01  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 01/23] ARM: add ARMv7R MPU support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds MPU (memory protection unit) support for ARMv7R cores.
Code is based on U-Boot-2025.01-rc1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Kconfig              |   8 ++
 arch/arm/cpu/Makefile             |   3 +-
 arch/arm/cpu/armv7r-mpu.c         | 254 ++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/cpu.c                |   3 +
 arch/arm/cpu/start.c              |   7 ++
 arch/arm/cpu/uncompress.c         |   2 +
 arch/arm/include/asm/armv7r-mpu.h | 135 ++++++++++++++++++++
 arch/arm/include/asm/dma.h        |   3 +-
 8 files changed, 413 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 6563394a7a..84fe770b6d 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -156,3 +156,11 @@ config CACHE_L2X0
 	bool "Enable L2x0 PrimeCell"
 	depends on MMU && ARCH_HAS_L2X0
 
+config ARMV7R_MPU
+	bool
+	depends on CPU_V7
+	select MALLOC_TLSF
+	help
+	  Some ARM systems without an MMU have instead a Memory Protection
+	  Unit (MPU) that defines the type and permissions for regions of
+	  memory.
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 999cc375da..1769249645 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += cpu.o
+obj-pbl-y += cpu.o
 
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_$(S64_32).o interrupts_$(S64_32).o
 obj-$(CONFIG_MMU) += mmu-common.o
@@ -62,3 +62,4 @@ pbl-$(CONFIG_ARM_ATF) += atf.o
 
 obj-pbl-y += common.o sections.o
 KASAN_SANITIZE_common.o := n
+obj-pbl-$(CONFIG_ARMV7R_MPU) += armv7r-mpu.o
diff --git a/arch/arm/cpu/armv7r-mpu.c b/arch/arm/cpu/armv7r-mpu.c
new file mode 100644
index 0000000000..e2108ef723
--- /dev/null
+++ b/arch/arm/cpu/armv7r-mpu.c
@@ -0,0 +1,254 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Cortex-R Memory Protection Unit specific code
+ *
+ * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com/
+ *	Lokesh Vutla <lokeshvutla@ti.com>
+ */
+#define pr_fmt(fmt) "armv7r-mpu: " fmt
+
+#include <memory.h>
+#include <string.h>
+#include <cache.h>
+#include <errno.h>
+#include <tlsf.h>
+#include <dma.h>
+#include <linux/bitfield.h>
+#include <asm/armv7r-mpu.h>
+#include <asm/system.h>
+#include <asm/cache.h>
+#include <asm/dma.h>
+#include <asm/mmu.h>
+#include <linux/printk.h>
+
+#define MPUIR_DREGION		GENMASK(15, 8)
+
+/**
+ * Note:
+ * The Memory Protection Unit(MPU) allows to partition memory into regions
+ * and set individual protection attributes for each region. In absence
+ * of MPU a default map[1] will take effect. make sure to run this code
+ * from a region which has execution permissions by default.
+ * [1] http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.ddi0460d/I1002400.html
+ */
+
+void armv7r_mpu_disable(void)
+{
+	u32 reg;
+
+	reg = get_cr();
+	reg &= ~CR_M;
+	dsb();
+	set_cr(reg);
+	isb();
+}
+
+void armv7r_mpu_enable(void)
+{
+	u32 reg;
+
+	reg = get_cr();
+	reg |= CR_M;
+	dsb();
+	set_cr(reg);
+	isb();
+}
+
+int armv7r_mpu_enabled(void)
+{
+	return get_cr() & CR_M;
+}
+
+static __maybe_unused void armv7_mpu_print_config(void)
+{
+	int i;
+
+	for (i = 0; i < 16; i++) {
+		u32 addr, size, attr;
+
+		asm volatile ("mcr p15, 0, %0, c6, c2, 0" : : "r" (i));
+
+		asm volatile ("mrc p15, 0, %0, c6, c1, 0" : "=r" (addr));
+		asm volatile ("mrc p15, 0, %0, c6, c1, 2" : "=r" (size));
+		asm volatile ("mrc p15, 0, %0, c6, c1, 4" : "=r" (attr));
+
+		pr_debug("%s: %d 0x%08x 0x%08x 0x%08x\n", __func__, i, addr, size, attr);
+	}
+}
+
+void armv7r_mpu_config(struct mpu_region_config *rgn)
+{
+	u32 attr, val;
+
+	pr_debug("%s: no: %d start: 0x%08x size: 0x%08x\n", __func__,
+		 rgn->region_no, rgn->start_addr, rgn->reg_size);
+
+	attr = get_attr_encoding(rgn->mr_attr);
+
+	/* MPU Region Number Register */
+	asm volatile ("mcr p15, 0, %0, c6, c2, 0" : : "r" (rgn->region_no));
+
+	/* MPU Region Base Address Register */
+	asm volatile ("mcr p15, 0, %0, c6, c1, 0" : : "r" (rgn->start_addr));
+
+	/* MPU Region Size and Enable Register */
+	if (rgn->reg_size)
+		val = (rgn->reg_size << REGION_SIZE_SHIFT) | ENABLE_REGION;
+	else
+		val = DISABLE_REGION;
+	asm volatile ("mcr p15, 0, %0, c6, c1, 2" : : "r" (val));
+
+	/* MPU Region Access Control Register */
+	val = rgn->xn << XN_SHIFT | rgn->ap << AP_SHIFT | attr;
+	asm volatile ("mcr p15, 0, %0, c6, c1, 4" : : "r" (val));
+}
+
+static int armv7r_mpu_supported_regions(void)
+{
+	u32 num;
+
+	asm volatile ("mrc p15, 0, %0, c0, c0, 4" : "=r" (num));
+
+	return FIELD_GET(MPUIR_DREGION, num);
+}
+
+static int armv7r_get_unused_region(void)
+{
+	int i;
+
+	for (i = 0; i < armv7r_mpu_supported_regions(); i++) {
+		u32 mpu_rasr;
+
+		/* MPU Region Number Register */
+		asm volatile ("mcr p15, 0, %0, c6, c2, 0" : : "r" (i));
+
+		asm volatile ("mrc p15, 0, %0, c6, c1, 2" : "=r" (mpu_rasr));
+
+		if (!(mpu_rasr & ENABLE_REGION))
+			return i;
+	}
+
+	return -ENOSPC;
+}
+
+int armv7r_mpu_setup_regions(struct mpu_region_config *rgns, u32 num_rgns)
+{
+	u32 i, supported_regions;
+
+	supported_regions = armv7r_mpu_supported_regions();
+
+	/* Regions to be configured cannot be greater than available regions */
+	if (num_rgns > supported_regions)
+		return -EINVAL;
+
+	/**
+	 * Assuming dcache might not be enabled at this point, disabling
+	 * and invalidating only icache.
+	 */
+	icache_disable();
+	icache_invalidate();
+
+	armv7r_mpu_disable();
+
+	for (i = 0; i < supported_regions; i++) {
+		if (i < num_rgns) {
+			armv7r_mpu_config(&rgns[i]);
+		} else {
+			struct mpu_region_config rgn = {
+				.region_no = i,
+			};
+
+			armv7r_mpu_config(&rgn);
+		}
+	}
+
+	armv7r_mpu_enable();
+
+	icache_enable();
+
+	return 0;
+}
+
+static tlsf_t dma_coherent_pool;
+static unsigned long dma_coherent_start;
+static unsigned long dma_coherent_size;
+
+int armv7r_mpu_init_coherent(unsigned long start, enum size reg_size)
+{
+	int region_no;
+	unsigned long size;
+	struct mpu_region_config rgn = {
+		.start_addr = start,
+		.xn = XN_EN,
+		.ap = PRIV_RW_USR_RW,
+		.mr_attr = STRONG_ORDER,
+		.reg_size = reg_size,
+	};
+
+	region_no = armv7r_get_unused_region();
+	if (region_no < 0)
+		return region_no;
+
+	rgn.region_no = region_no;
+
+	armv7r_mpu_config(&rgn);
+
+	size = 1 << (reg_size + 1);
+
+	dma_coherent_pool = tlsf_create_with_pool((void *)start, size);
+
+	dma_coherent_start = start;
+	dma_coherent_size = size;
+
+	return 0;
+}
+
+static int armv7r_request_pool(void)
+{
+	if (dma_coherent_start && dma_coherent_size)
+		request_sdram_region("DMA coherent pool", dma_coherent_start,
+							dma_coherent_size);
+	return 0;
+}
+postmem_initcall(armv7r_request_pool);
+
+void *dma_alloc_coherent(struct device *dev, size_t size, dma_addr_t *dma_handle)
+{
+	void *ret = tlsf_memalign(dma_coherent_pool, DMA_ALIGNMENT, size);
+
+	if (!ret)
+		return NULL;
+
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
+
+	memset(ret, 0, size);
+
+	return ret;
+}
+
+void dma_free_coherent(struct device *dev,
+		       void *mem, dma_addr_t dma_handle, size_t size)
+{
+	free(mem);
+}
+
+void arch_sync_dma_for_cpu(void *vaddr, size_t size, enum dma_data_direction dir)
+{
+	unsigned long start = (unsigned long)vaddr;
+	unsigned long end = start + size;
+
+	if (dir != DMA_TO_DEVICE)
+		__dma_inv_range(start, end);
+}
+
+void arch_sync_dma_for_device(void *vaddr, size_t size, enum dma_data_direction dir)
+{
+	unsigned long start = (unsigned long)vaddr;
+	unsigned long end = start + size;
+
+	if (dir == DMA_FROM_DEVICE)
+		__dma_inv_range(start, end);
+	else
+		__dma_clean_range(start, end);
+}
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index b00e9e51e5..800d6b3cab 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -52,6 +52,8 @@ int icache_status(void)
 	return (get_cr () & CR_I) != 0;
 }
 
+#ifndef __PBL__
+
 /*
  * SoC like the ux500 have the l2x0 always enable
  * with or without MMU enable
@@ -108,3 +110,4 @@ static int arm_request_stack(void)
 	return 0;
 }
 coredevice_initcall(arm_request_stack);
+#endif
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index ece9512a79..0022ea768b 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -25,6 +25,7 @@
 #include <uncompress.h>
 #include <compressed-dtb.h>
 #include <malloc.h>
+#include <asm/armv7r-mpu.h>
 
 #include <debug_ll.h>
 
@@ -153,6 +154,12 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 	arm_barebox_size = barebox_image_size + MAX_BSS_SIZE;
 	malloc_end = barebox_base;
 
+	if (IS_ENABLED(CONFIG_ARMV7R_MPU)) {
+		malloc_end = ALIGN_DOWN(malloc_end - SZ_8M, SZ_8M);
+
+		armv7r_mpu_init_coherent(malloc_end, REGION_8MB);
+	}
+
 	/*
 	 * Maximum malloc space is the Kconfig value if given
 	 * or 1GB.
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index ac1462b7b1..4657a4828e 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -65,6 +65,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	if (IS_ENABLED(CONFIG_MMU))
 		mmu_early_enable(membase, memsize);
+	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
+		set_cr(get_cr() | CR_C);
 
 	/* Add handoff data now, so arm_mem_barebox_image takes it into account */
 	if (boarddata)
diff --git a/arch/arm/include/asm/armv7r-mpu.h b/arch/arm/include/asm/armv7r-mpu.h
new file mode 100644
index 0000000000..8d737d6d14
--- /dev/null
+++ b/arch/arm/include/asm/armv7r-mpu.h
@@ -0,0 +1,135 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2017, STMicroelectronics - All Rights Reserved
+ * Author(s): Vikas Manocha, <vikas.manocha@st.com> for STMicroelectronics.
+ */
+
+#ifndef _ASM_ARMV7_MPU_H
+#define _ASM_ARMV7_MPU_H
+
+#ifndef __ASSEMBLY__
+#include <linux/bitops.h>
+#endif
+
+#ifdef CONFIG_CPU_V7M
+#define AP_SHIFT			24
+#define XN_SHIFT			28
+#define TEX_SHIFT			19
+#define S_SHIFT				18
+#define C_SHIFT				17
+#define B_SHIFT				16
+#else /* CONFIG_CPU_V7R */
+#define XN_SHIFT			12
+#define AP_SHIFT			8
+#define TEX_SHIFT			3
+#define S_SHIFT				2
+#define C_SHIFT				1
+#define B_SHIFT				0
+#endif /* CONFIG_CPU_V7R */
+
+#define CACHEABLE			BIT(C_SHIFT)
+#define BUFFERABLE			BIT(B_SHIFT)
+#define SHAREABLE			BIT(S_SHIFT)
+#define REGION_SIZE_SHIFT		1
+#define ENABLE_REGION			BIT(0)
+#define DISABLE_REGION			0
+
+enum region_number {
+	REGION_0 = 0,
+	REGION_1,
+	REGION_2,
+	REGION_3,
+	REGION_4,
+	REGION_5,
+	REGION_6,
+	REGION_7,
+};
+
+enum ap {
+	NO_ACCESS = 0,
+	PRIV_RW_USR_NO,
+	PRIV_RW_USR_RO,
+	PRIV_RW_USR_RW,
+	UNPREDICTABLE,
+	PRIV_RO_USR_NO,
+	PRIV_RO_USR_RO,
+};
+
+enum mr_attr {
+	STRONG_ORDER = 0,
+	SHARED_WRITE_BUFFERED,
+	O_I_WT_NO_WR_ALLOC,
+	O_I_WB_NO_WR_ALLOC,
+	O_I_NON_CACHEABLE,
+	O_I_WB_RD_WR_ALLOC,
+	DEVICE_NON_SHARED,
+};
+enum size {
+	REGION_8MB = 22,
+	REGION_16MB,
+	REGION_32MB,
+	REGION_64MB,
+	REGION_128MB,
+	REGION_256MB,
+	REGION_512MB,
+	REGION_1GB,
+	REGION_2GB,
+	REGION_4GB,
+};
+
+enum xn {
+	XN_DIS = 0,
+	XN_EN,
+};
+
+struct mpu_region_config {
+	uint32_t start_addr;
+	enum region_number region_no;
+	enum xn xn;
+	enum ap ap;
+	enum mr_attr mr_attr;
+	enum size reg_size;
+};
+
+void armv7r_mpu_disable(void);
+void armv7r_mpu_enable(void);
+int armv7r_mpu_enabled(void);
+void armv7r_mpu_config(struct mpu_region_config *rgn);
+int armv7r_mpu_setup_regions(struct mpu_region_config *rgns, u32 num_rgns);
+int armv7r_mpu_init_coherent(unsigned long start, enum size size);
+
+static inline u32 get_attr_encoding(u32 mr_attr)
+{
+	u32 attr;
+
+	switch (mr_attr) {
+	case STRONG_ORDER:
+		attr = SHAREABLE;
+		break;
+	case SHARED_WRITE_BUFFERED:
+		attr = BUFFERABLE;
+		break;
+	case O_I_WT_NO_WR_ALLOC:
+		attr = CACHEABLE;
+		break;
+	case O_I_WB_NO_WR_ALLOC:
+		attr = CACHEABLE | BUFFERABLE;
+		break;
+	case O_I_NON_CACHEABLE:
+		attr = 1 << TEX_SHIFT;
+		break;
+	case O_I_WB_RD_WR_ALLOC:
+		attr = (1 << TEX_SHIFT) | CACHEABLE | BUFFERABLE;
+		break;
+	case DEVICE_NON_SHARED:
+		attr = (2 << TEX_SHIFT) | BUFFERABLE;
+		break;
+	default:
+		attr = 0; /* strongly ordered */
+		break;
+	};
+
+	return attr;
+}
+
+#endif /* _ASM_ARMV7_MPU_H */
diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index 8739607e51..2232ebac8b 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -10,7 +10,8 @@
 
 struct device;
 
-#ifndef CONFIG_MMU
+#if !defined(CONFIG_MMU) && !defined(CONFIG_ARMV7R_MPU)
+
 #define dma_alloc_coherent dma_alloc_coherent
 static inline void *dma_alloc_coherent(struct device *dev,
 				       size_t size, dma_addr_t *dma_handle)

-- 
2.39.5



