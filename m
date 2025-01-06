Delivery-date: Mon, 06 Jan 2025 15:52:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUoSi-00HWva-21
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:52:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUoSg-0002St-5q
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:52:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6AICHLANNs/Z8F9tnuYhxEJiTtwQFMlSqbcG7Luptk0=; b=xJcCnb4K7xVDrYomxsZwJ2gx2l
	a9PxYKGqR2pKjlcF9dIadvJXL0oHYxKQz3t73dFbAos6dgONVwa6usUtH28LFFwv7LkyAZ9fNZBFl
	VtL4NFsBj1dazCz/TAv60Ks4qcmZhynAhkYgBBc9PQzQcyY1Q6nlYUBPnJ1WDFpHTGFTcz/+g4PgZ
	rWIC8ZM5zrKZ+nbnRcrIIh/rxHPBrKF8NpAZdy6m75sKmtMEIvqBZGxBVB1VFBZ57AeXlEba379k/
	jDou0V8nNGd1HsfcNqt79lX5SRQ8jYuZsWog3YpOQYFk3NLwq/A7zDLflxjI0/+nP7/Zlio11kkvU
	o5YErUig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUoSX-00000001enS-0SmC;
	Mon, 06 Jan 2025 14:52:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnRn-00000001S7Z-3FWV
	for barebox@bombadil.infradead.org;
	Mon, 06 Jan 2025 13:47:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=6AICHLANNs/Z8F9tnuYhxEJiTtwQFMlSqbcG7Luptk0=; b=STZab5MVhalJBgEsC+4ebeH96v
	1yzPrYxpW+HcEY0/PGz7D2DE7sRO+uDT8GxrJ/R179PIzqIEoaEb3mIzDVv8sGqeY9NdkPU10wunI
	GenWfR+6fWKKfOY+Px45FJvoFBYcg5C0IcyCeRnCsACxe5PvIYAb0XO9G8Wbunw9ghKsxdB0rGtY8
	Qn5n5v8xbVM2GNewwN0xaOALwjgaETARK+OlJYNUqXSsw3y+XIoH1WbrT5k3/atgZiveiqT9Xr5QZ
	w593tCnt8O2xpk/J6DcM7t87q9OyqzLlW8UhBr4q1Isw43q/syrwnPZoS0H8N0RePdFKjRE8XJ3LH
	ZZWLsd+A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnRh-00000008vvR-3NG2
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 13:47:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-0005l8-Oc; Mon, 06 Jan 2025 14:47:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRc-007B3i-2P;
	Mon, 06 Jan 2025 14:47:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1U;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:46:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-1-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171218; l=8320;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=KgFUCbr8JsnagAaKrOc2ZEIwPhGzi/xaMqVJD5YVu00=;
 b=2FUwsQ43XKzKjNc4cz2r4B/kyBlKVtbU2xJMC0bKHwUIOroRNmzF9ZOeDMOzn+/BJ19UfDpnr
 2TBogCmIALFC6mg8qJc1u0vN16vS04tUqeZc63iK4EZrM1oSnyVJ5Zo
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_134707_273499_7902AF65 
X-CRM114-Status: GOOD (  22.54  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/22] ARM: add ARMv7R MPU support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds MPU (memory protection unit) support for ARMv7R cores.
Code is based on U-Boot-2025.01-rc1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Kconfig              |   7 ++
 arch/arm/cpu/Makefile             |   3 +-
 arch/arm/cpu/armv7r-mpu.c         | 104 +++++++++++++++++++++++++++++
 arch/arm/cpu/cpu.c                |   3 +
 arch/arm/cpu/uncompress.c         |   2 +
 arch/arm/include/asm/armv7r-mpu.h | 134 ++++++++++++++++++++++++++++++++++++++
 6 files changed, 252 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 6563394a7a..737586b826 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -156,3 +156,10 @@ config CACHE_L2X0
 	bool "Enable L2x0 PrimeCell"
 	depends on MMU && ARCH_HAS_L2X0
 
+config ARMV7R_MPU
+	bool
+	depends on CPU_V7
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
index 0000000000..bd45ae26c6
--- /dev/null
+++ b/arch/arm/cpu/armv7r-mpu.c
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Cortex-R Memory Protection Unit specific code
+ *
+ * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com/
+ *	Lokesh Vutla <lokeshvutla@ti.com>
+ */
+
+#include <asm/armv7r-mpu.h>
+#include <asm/system.h>
+#include <cache.h>
+#include <asm/cache.h>
+
+/* MPU Type register definitions */
+#define MPUIR_S_SHIFT		0
+#define MPUIR_S_MASK		BIT(MPUIR_S_SHIFT)
+#define MPUIR_DREGION_SHIFT	8
+#define MPUIR_DREGION_MASK	(0xff << 8)
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
+void armv7r_mpu_config(struct mpu_region_config *rgn)
+{
+	u32 attr, val;
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
+void armv7r_mpu_setup_regions(struct mpu_region_config *rgns, u32 num_rgns)
+{
+	u32 num, i;
+
+	asm volatile ("mrc p15, 0, %0, c0, c0, 4" : "=r" (num));
+	num = (num & MPUIR_DREGION_MASK) >> MPUIR_DREGION_SHIFT;
+	/* Regions to be configured cannot be greater than available regions */
+	if (num < num_rgns)
+		num_rgns = num;
+	/**
+	 * Assuming dcache might not be enabled at this point, disabling
+	 * and invalidating only icache.
+	 */
+	icache_disable();
+	icache_invalidate();
+
+	armv7r_mpu_disable();
+
+	for (i = 0; i < num_rgns; i++)
+		armv7r_mpu_config(&rgns[i]);
+
+	armv7r_mpu_enable();
+
+	icache_enable();
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
index 0000000000..1bbaeed66c
--- /dev/null
+++ b/arch/arm/include/asm/armv7r-mpu.h
@@ -0,0 +1,134 @@
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
+void armv7r_mpu_setup_regions(struct mpu_region_config *rgns, u32 num_rgns);
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

-- 
2.39.5



