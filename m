Delivery-date: Mon, 22 May 2023 07:30:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7o-009JFi-KO
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:30:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7l-0003KW-Ko
	for lore@pengutronix.de; Mon, 22 May 2023 07:30:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJKjDFbtQgf3BCSaYLYUyryd0dNz0lJmWPw0Jzw7cHs=; b=iK1ziOHV2xLt9i
	c6xyPuHKhyo/DMNFcMnr+ZSZ3THRP1f/MFowfGdZ8u6Gf6Rnyr/pmM1qjgSgVgtEIaQrK+I6LpP5L
	BJof2YZcSuCjvfGBQ2ChHd1wgaNsDCWeQerEJqMScbYoygRw1eVvZIkveJ7oFILF3i4B4ZZsIZb+Z
	GYCYz8aLqf3CucmV0PWjokrdSfAH8JV8oLNYrdaS9FWhFmVzGBxbSsx7aFbWG8K0jk+WcgASVAAjQ
	H/Xyzhq1qzTqJvjWeis39dsx7zDAkOq/aF94D/zcprF1WuYa/6DQ+vC/uBEagRDt6vJqQjv2GdBt5
	HxyaVe5wGh3klFOv+GgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6L-005Oe9-2k;
	Mon, 22 May 2023 05:28:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y67-005OUr-0m
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y64-0002Nq-NF; Mon, 22 May 2023 07:28:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-001vwK-Vq; Mon, 22 May 2023 07:28:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004MLY-MH; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:32 +0200
Message-Id: <20230522052835.1039143-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222845_410582_89A11169 
X-CRM114-Status: GOOD (  23.18  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/11] ARM64: mmu: implement ARMv8 mmuinfo command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To aid with debugging of MMU code, let's implement mmuinfo for ARMv8,
like we already support for ARMv7.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig |   1 +
 arch/arm/cpu/Makefile               |   2 +-
 arch/arm/cpu/mmuinfo.c              |   2 +
 arch/arm/cpu/mmuinfo_64.c           | 215 ++++++++++++++++++++++++++++
 arch/arm/include/asm/mmuinfo.h      |   1 +
 arch/arm/include/asm/sysreg.h       |  76 ++++++++++
 commands/Kconfig                    |   6 +-
 7 files changed, 299 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/cpu/mmuinfo_64.c
 create mode 100644 arch/arm/include/asm/sysreg.h

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 62afe3829350..d30158d7f880 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -57,6 +57,7 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_REGULATOR=y
 CONFIG_CMD_MMC_EXTCSD=y
 CONFIG_CMD_POLLER=y
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index a271de2c1f38..5baff2fad087 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -27,7 +27,7 @@ obj-$(CONFIG_ARM_PSCI_CLIENT) += psci-client.o
 # Any variants can be called as start-armxyz.S
 #
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
-obj-$(CONFIG_MMUINFO) += mmuinfo.o mmuinfo_32.o
+obj-$(CONFIG_MMUINFO) += mmuinfo.o mmuinfo_$(S64_32).o
 obj-$(CONFIG_OFDEVICE) += dtb.o
 
 ifeq ($(CONFIG_MMU),)
diff --git a/arch/arm/cpu/mmuinfo.c b/arch/arm/cpu/mmuinfo.c
index 49e393149b69..413f2f337e95 100644
--- a/arch/arm/cpu/mmuinfo.c
+++ b/arch/arm/cpu/mmuinfo.c
@@ -12,6 +12,8 @@
 
 int mmuinfo(void *addr)
 {
+	if (IS_ENABLED(CONFIG_CPU_V8))
+		return mmuinfo_v8(addr);
 	if (IS_ENABLED(CONFIG_CPU_V7) && cpu_architecture() == CPU_ARCH_ARMv7)
 		return mmuinfo_v7(addr);
 
diff --git a/arch/arm/cpu/mmuinfo_64.c b/arch/arm/cpu/mmuinfo_64.c
new file mode 100644
index 000000000000..de4945f43e8e
--- /dev/null
+++ b/arch/arm/cpu/mmuinfo_64.c
@@ -0,0 +1,215 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2023 Ahmad Fatoum <a.fatoum@pengutronix.de>, Pengutronix
+/*
+ * mmuinfo_64.c - Show MMU/cache information via AT instruction
+ */
+
+#include <common.h>
+#include <asm/mmuinfo.h>
+#include <asm/system.h>
+#include <asm/sysreg.h>
+#include <linux/bitfield.h>
+
+#define at_par(reg, addr) ({ \
+		asm volatile("at " reg ", %0\n" :: "r" (addr)); \
+		isb(); \
+		read_sysreg_par(); \
+})
+
+#define BITS(from, to, val) FIELD_GET(GENMASK(from, to), val)
+
+static const char *decode_devmem_attr(u8 attr)
+{
+	switch (attr & ~0x1) {
+	case 0b00000000:
+		return "0b0000 Device-nGnRnE memory";
+	case 0b00000100:
+		return "0b0100 Device-nGnRE memory";
+	case 0b00001000:
+		return "0b1000 Device-nGRE memory";
+	case 0b00001100:
+		return "0b1100 Device-GRE memory";
+	default:
+		return "unknown";
+	};
+}
+
+static char *cache_attr[] = {
+	"0b0000 Wrongly decoded",
+	"0b0001 Write-Through Transient, Write-Allocate, no Read-Allocate",
+	"0b0010 Write-Through Transient, no Write-Allocate",
+	"0b0011 Write-Through Transient, Write-Allocate",
+	"0b0100 Non-Cacheable",
+	"0b0101 Write-Back Transient, Write-Allocate, no Read-Allocate",
+	"0b0110 Write-Back Transient, no Write-Allocate",
+	"0b0111 Write-Back Transient, Write-Allocate",
+	"0b1000 Write-Through Non-transient, no Write-Allocate no Read-Allocate",
+	"0b1001 Write-Through Non-transient, Write-Allocate no Read-Allocate",
+	"0b1010 Write-Through Non-transient, no Write-Allocate",
+	"0b1011 Write-Through Non-transient, Write-Allocate",
+	"0b1100 Write-Back Non-transient, no Write-Allocate no Read-Allocate",
+	"0b1101 Write-Back Non-transient, Write-Allocate no Read-Allocate",
+	"0b1110 Write-Back Non-transient, no Write-Allocate",
+	"0b1111 Write-Back Non-transient, Write-Allocate",
+};
+
+static char *share_attr[] = {
+	"0b00 Non-Shareable",
+	"0b01 Reserved",
+	"0b10 Outer Shareable",
+	"0b11 Inner Shareable",
+};
+
+static char *stage_fault[] = {
+	"stage 1 translation",
+	"stage 2 translation",
+};
+
+static char *fault_status_leveled[] = {
+	"Address size fault",  /* of translation or translation table base register */
+	"Translation fault",
+	"Access flag fault",
+	"Permission fault",
+	"Synchronous External abort", /* level -1 */
+	"Synchronous External abort", /* on translation table walk or hardware update of translation table */
+	"Synchronous parity or ECC error", /* level -1 */
+	"Synchronous parity or ECC error", /* on memory access on translation table walk or hardware update of translation table */
+};
+
+static const char *decode_fault_status_level(u8 fst)
+{
+	if (!(fst & BIT(5)))
+		return "";
+
+	switch (BITS(5, 0, fst)) {
+	case 0b010011:
+	case 0b011011:
+		return ", level -1";
+	}
+
+	switch (BITS(1, 0, fst)) {
+	case 0b00:
+		return ", level 0";
+	case 0b01:
+		return ", level 1";
+	case 0b10:
+		return ", level 2";
+	case 0b11:
+		return ", level 3";
+	}
+
+	BUG();
+}
+
+static const char *decode_fault_status(u8 fst)
+{
+
+	switch (BITS(5, 0, fst)) {
+	case 0b101001: /* When FEAT_LPA2 is implemented */
+		return "Address size fault, level -1";
+	case 0b101011: /* When FEAT_LPA2 is implemented */
+		return "Translation fault, level -1";
+	case 0b110000:
+		return "TLB conflict abort";
+	case 0b110001: /* When FEAT_HAFDBS is implemented */
+		return "Unsupported atomic hardware update fault";
+	case 0b111101: /* When EL1 is capable of using AArch32 */
+		return "Section Domain fault, from an AArch32 stage 1 EL1&0 "
+			"translation regime using Short-descriptor translation "
+			"table format";
+	case 0b111110: /* When EL1 is capable of using AArch32 */
+		return "Page Domain fault, from an AArch32 stage 1 EL1&0 "
+			"translation regime using Short-descriptor translation "
+			"table format";
+	default:
+		if (fst & BIT(5))
+			return fault_status_leveled[BITS(4, 2, fst)];
+
+		return "Reserved";
+	}
+};
+
+static void decode_par(unsigned long par)
+{
+	u8 devmem_attr = BITS(63, 56, par);
+
+	if (par & 1) {
+		printf("  Translation aborted [9:8]: because of a fault in the %s%s\n",
+		       stage_fault[BITS(9, 9, par)],
+		       BITS(8, 8, par) ? " during a stage 1 translation table walk" : "");
+		printf("  Fault Status Code [6:1]:   0x%02lx (%s%s)\n", BITS(6, 1, par),
+		       decode_fault_status(BITS(6, 1, par)),
+		       decode_fault_status_level(BITS(6, 1, par)));
+		printf("  Failure [0]:                0x1\n");
+	} else {
+		if ((devmem_attr & 0xf0) && (devmem_attr & 0x0f)) {
+			printf("  Outer mem. attr. [63:60]:   0x%02lx (%s)\n", BITS(63, 60, par),
+			       cache_attr[BITS(63, 60, par)]);
+			printf("  Inner mem. attr. [59:56]:   0x%02lx (%s)\n", BITS(59, 56, par),
+			       cache_attr[BITS(59, 56, par)]);
+		} else if ((devmem_attr & 0b11110010) == 0) {
+			printf("  Memory attr. [63:56]:     0x%02x (%s)\n",
+			       devmem_attr, decode_devmem_attr(devmem_attr));
+			if (devmem_attr & 1)
+				printf("  (XS == 0 if FEAT_XS implemented)\n");
+		} else if (devmem_attr == 0b01000000) {
+			printf("  Outer mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
+			       "Non-Cacheable");
+			printf("  Inner mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
+			       "Non-Cacheable");
+			printf("  (XS == 0 if FEAT_XS implemented)\n");
+		} else if (devmem_attr == 0b10100000) {
+			printf("  Outer mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
+			       "Write-Through, No Write-Allocate");
+			printf("  Inner mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
+			       "Write-Through");
+			printf("  (XS == 0 if FEAT_XS implemented)\n");
+		} else if (devmem_attr == 0b11110000) {
+			printf("  Outer mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
+			       "Write-Back");
+			printf("  Inner mem. attr. [63:56]:   0x%02lx (%s)\n", BITS(63, 56, par),
+			       "Write-Back, Write-Allocate, Non-transient");
+			printf("  (if FEAT_MTE2 implemented)\n");
+		}
+		printf("  Physical Address [51:12]: 0x%08lx\n", par & GENMASK(51, 12));
+		printf("  Non-Secure [9]:           0x%lx\n", BITS(9, 9, par));
+		printf("  Shareability attr. [8:7]: 0x%02lx (%s)\n", BITS(8, 7, par),
+			share_attr[BITS(8, 7, par)]);
+		printf("  Failure [0]:              0x0\n");
+	}
+}
+
+int mmuinfo_v8(void *_addr)
+{
+	unsigned long addr = (unsigned long)_addr;
+	unsigned long priv_read, priv_write;
+
+	switch (current_el()) {
+	case 3:
+		priv_read  = at_par("s1e3r", addr);
+		priv_write = at_par("s1e3w", addr);
+		break;
+	case 2:
+		priv_read  = at_par("s1e2r", addr);
+		priv_write = at_par("s1e2w", addr);
+		break;
+	case 1:
+		priv_read  = at_par("s1e1r", addr);
+		priv_write = at_par("s1e1w", addr);
+		break;
+	case 0:
+		priv_read  = at_par("s1e0r", addr);
+		priv_write = at_par("s1e0w", addr);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	printf("PAR result for 0x%08lx: \n", addr);
+	printf(" privileged read: 0x%08lx\n", priv_read);
+	decode_par(priv_read);
+	printf(" privileged write: 0x%08lx\n", priv_write);
+	decode_par(priv_write);
+
+	return 0;
+}
diff --git a/arch/arm/include/asm/mmuinfo.h b/arch/arm/include/asm/mmuinfo.h
index bc17bf8982ab..3005c388b967 100644
--- a/arch/arm/include/asm/mmuinfo.h
+++ b/arch/arm/include/asm/mmuinfo.h
@@ -4,5 +4,6 @@
 #define __ARM_ASM_MMUINFO_H__
 
 int mmuinfo_v7(void *addr);
+int mmuinfo_v8(void *addr);
 
 #endif
diff --git a/arch/arm/include/asm/sysreg.h b/arch/arm/include/asm/sysreg.h
new file mode 100644
index 000000000000..7d567e08d8b7
--- /dev/null
+++ b/arch/arm/include/asm/sysreg.h
@@ -0,0 +1,76 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Macros for accessing system registers with older binutils.
+ *
+ * Copyright (C) 2014 ARM Ltd.
+ * Author: Catalin Marinas <catalin.marinas@arm.com>
+ */
+
+#ifndef __ASM_SYSREG_H
+#define __ASM_SYSREG_H
+
+#include <asm/system.h>
+#include <linux/stringify.h>
+
+/*
+ * Unlike read_cpuid, calls to read_sysreg are never expected to be
+ * optimized away or replaced with synthetic values.
+ */
+#define read_sysreg(r) ({					\
+	u64 __val;						\
+	asm volatile("mrs %0, " __stringify(r) : "=r" (__val));	\
+	__val;							\
+})
+
+/*
+ * The "Z" constraint normally means a zero immediate, but when combined with
+ * the "%x0" template means XZR.
+ */
+#define write_sysreg(v, r) do {					\
+	u64 __val = (u64)(v);					\
+	asm volatile("msr " __stringify(r) ", %x0"		\
+		     : : "rZ" (__val));				\
+} while (0)
+
+/*
+ * For registers without architectural names, or simply unsupported by
+ * GAS.
+ */
+#define read_sysreg_s(r) ({						\
+	u64 __val;							\
+	asm volatile(__mrs_s("%0", r) : "=r" (__val));			\
+	__val;								\
+})
+
+#define write_sysreg_s(v, r) do {					\
+	u64 __val = (u64)(v);						\
+	asm volatile(__msr_s(r, "%x0") : : "rZ" (__val));		\
+} while (0)
+
+/*
+ * Modify bits in a sysreg. Bits in the clear mask are zeroed, then bits in the
+ * set mask are set. Other bits are left as-is.
+ */
+#define sysreg_clear_set(sysreg, clear, set) do {			\
+	u64 __scs_val = read_sysreg(sysreg);				\
+	u64 __scs_new = (__scs_val & ~(u64)(clear)) | (set);		\
+	if (__scs_new != __scs_val)					\
+		write_sysreg(__scs_new, sysreg);			\
+} while (0)
+
+#define sysreg_clear_set_s(sysreg, clear, set) do {			\
+	u64 __scs_val = read_sysreg_s(sysreg);				\
+	u64 __scs_new = (__scs_val & ~(u64)(clear)) | (set);		\
+	if (__scs_new != __scs_val)					\
+		write_sysreg_s(__scs_new, sysreg);			\
+} while (0)
+
+#define read_sysreg_par() ({						\
+	u64 par;							\
+	asm("dmb sy");							\
+	par = read_sysreg(par_el1);					\
+	asm("dmb sy");							\
+	par;								\
+})
+
+#endif	/* __ASM_SYSREG_H */
diff --git a/commands/Kconfig b/commands/Kconfig
index bc697d52b730..3a43682b2b2c 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -201,13 +201,13 @@ config CMD_MEMINFO
 
 config CMD_ARM_MMUINFO
 	bool "mmuinfo command"
-	depends on CPU_V7
+	depends on CPU_V7 || CPU_V8
 	select MMUINFO
 	help
 	  Say yes here to get a mmuinfo command to show some
-	  MMU and cache information using the cp15 registers.
+	  MMU and cache information using the cp15/model-specific registers.
 
-	  Example:
+	  Example for ARMv7:
 
 	  PAR result for 0x00110000:
 	  privileged read: 0x00110090
-- 
2.39.2



