Delivery-date: Mon, 09 Feb 2026 10:15:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNN5-00AVKY-1F
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:15:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNN3-0006EE-2p
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:15:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jXs3oqBzVpdjJWApMd+uIFQoFaOOpgpZY1C7i8HmfMk=; b=lH2kUaGquC/sPOT2RipKnNGecm
	utB+RHP9MXSzP8KX1H6JK75egpdyFfBD+FbBD3XhnLj9nv3w/dYh1J8AEa8koNUkkIIx5+Kk1e/D6
	9INFrVBwwKR7SQJ13PWduAtOQ0/1fYgO08fZrkLWp0b97TuKGVTTW8pqiiaVTvrpBFRbMqfndoK2U
	1LYot57fHrB/RcesEVgSYwrJv7SdyleWK0B0e7y3uaLRQDjvNlg4Lv0f+TNNMXy1yTq9WpQxBwCIS
	mOHwM1AlhVoyoUQf/l0DEycEUHYAoQBjyom6z7uvyscrHQKMtIJVIBFvhD20lE8xpEvO68xJGj5VQ
	sczL1HpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMZ-0000000F6g0-2z6r;
	Mon, 09 Feb 2026 09:15:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMV-0000000F6ca-1cJp
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:15:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNMT-0005oY-PA; Mon, 09 Feb 2026 10:15:17 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Feb 2026 10:10:31 +0100
Message-ID: <20260209091513.3563412-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209091513.3563412-1-a.fatoum@barebox.org>
References: <20260209091513.3563412-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_011520_377142_BDA35D3F 
X-CRM114-Status: GOOD (  27.20  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NORMAL_HTTP_TO_IP,NUMERIC_HTTP_ADDR,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] powerpc: add QEMU ppce500 board support with CI test infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for running barebox on the QEMU ppce500 virtual machine.
This enables automated testing of PowerPC e500 support in CI.

The ppce500 machine places CCSRBAR at effective address 0xE0000000
(physical 0xF_E0000000 with 36-bit addressing). The assembly entry
sets up TLB entries for RAM, CCSRBAR MMIO, and the boot page, then
jumps to C code which parses the timebase-frequency from the QEMU-
provided device tree to configure the clocksource correctly (QEMU
does not implement the GUTS PORPLLSR register).

Poweroff is handled by the existing gpio-poweroff driver, which uses
the fsl,qoriq-gpio controller exposed in QEMU's device tree.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .github/workflows/test-labgrid-pytest.yml     |   4 +
 arch/powerpc/Makefile                         |   1 +
 arch/powerpc/boards/qemu-e500/Makefile        |   5 +
 arch/powerpc/boards/qemu-e500/law.c           |  17 ++
 arch/powerpc/boards/qemu-e500/qemu-e500.c     |  92 ++++++++
 arch/powerpc/boards/qemu-e500/tlb.c           |  17 ++
 arch/powerpc/configs/qemu-ppce500_defconfig   |  69 ++++++
 arch/powerpc/cpu-85xx/Makefile                |   3 +
 arch/powerpc/cpu-85xx/start-qemu.S            | 211 ++++++++++++++++++
 arch/powerpc/include/asm/board-qemu-e500.h    |  39 ++++
 arch/powerpc/include/asm/config.h             |   2 +
 arch/powerpc/include/asm/debug_ll.h           |  52 +++++
 arch/powerpc/lib/board.c                      |   6 +
 arch/powerpc/mach-mpc85xx/Kconfig             |  13 ++
 arch/powerpc/mach-mpc85xx/barebox.lds.S       |  12 +
 .../include/mach/config_mpc85xx.h             |   6 +
 common/Kconfig.debug_ll                       |   7 +-
 test/powerpc/qemu-ppce500_defconfig.yaml      |  17 ++
 18 files changed, 572 insertions(+), 1 deletion(-)
 create mode 100644 arch/powerpc/boards/qemu-e500/Makefile
 create mode 100644 arch/powerpc/boards/qemu-e500/law.c
 create mode 100644 arch/powerpc/boards/qemu-e500/qemu-e500.c
 create mode 100644 arch/powerpc/boards/qemu-e500/tlb.c
 create mode 100644 arch/powerpc/configs/qemu-ppce500_defconfig
 create mode 100644 arch/powerpc/cpu-85xx/start-qemu.S
 create mode 100644 arch/powerpc/include/asm/board-qemu-e500.h
 create mode 100644 arch/powerpc/include/asm/debug_ll.h
 create mode 100644 test/powerpc/qemu-ppce500_defconfig.yaml

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index c06bc5f11faa..7e385af65245 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -49,6 +49,10 @@ jobs:
             lgenv: test/openrisc/generic_defconfig.yaml
             defconfig: generic_defconfig
 
+          - ARCH: powerpc
+            lgenv: test/powerpc/qemu-ppce500_defconfig.yaml
+            defconfig: qemu-ppce500_defconfig
+
           - ARCH: x86
             lgenv: test/x86/efi_defconfig.yaml
             defconfig: efi_defconfig
diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index ebd8fe60d3f1..fa511c6c1295 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -18,6 +18,7 @@ KBUILD_CPPFLAGS += -Wa,-me500x2 -msoft-float -mno-string
 endif
 
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
+board-$(CONFIG_QEMU_PPCE500)			:= qemu-e500
 board-$(CONFIG_P1010RDB)			:= freescale-p1010rdb
 board-$(CONFIG_P2020RDB)			:= freescale-p2020rdb
 board-$(CONFIG_P1022DS)				:= freescale-p1022ds
diff --git a/arch/powerpc/boards/qemu-e500/Makefile b/arch/powerpc/boards/qemu-e500/Makefile
new file mode 100644
index 000000000000..15add493eea8
--- /dev/null
+++ b/arch/powerpc/boards/qemu-e500/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += qemu-e500.o
+obj-y += tlb.o
+obj-y += law.o
diff --git a/arch/powerpc/boards/qemu-e500/law.c b/arch/powerpc/boards/qemu-e500/law.c
new file mode 100644
index 000000000000..97683b01a573
--- /dev/null
+++ b/arch/powerpc/boards/qemu-e500/law.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * LAW configuration for QEMU ppce500
+ *
+ * QEMU virtual hardware doesn't require LAW (Local Access Window)
+ * configuration, so we provide an empty table.
+ */
+
+#include <linux/types.h>
+#include <linux/array_size.h>
+#include <asm/fsl_law.h>
+
+struct law_entry law_table[] = {
+	/* No LAW entries needed for QEMU virtual hardware */
+};
+
+int num_law_entries = ARRAY_SIZE(law_table);
diff --git a/arch/powerpc/boards/qemu-e500/qemu-e500.c b/arch/powerpc/boards/qemu-e500/qemu-e500.c
new file mode 100644
index 000000000000..70f22aa9b118
--- /dev/null
+++ b/arch/powerpc/boards/qemu-e500/qemu-e500.c
@@ -0,0 +1,92 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Board support for QEMU ppce500 virtual machine
+ */
+
+#include <barebox-info.h>
+#include <deep-probe.h>
+#include <init.h>
+#include <of.h>
+#include <linux/libfdt.h>
+#include <asm/processor.h>
+#include <asm/cache.h>
+#include <mach/mpc85xx.h>
+#include <mach/clock.h>
+#include <debug_ll.h>
+
+/* Global pointer to device tree */
+static void *fdt;
+
+/* Called from start-qemu.S assembly */
+void qemu_e500_entry(void *fdt_blob);
+
+/* Called from board initialization */
+extern void board_init_r(ulong end_of_ram);
+
+void qemu_e500_entry(void *fdt_blob)
+{
+	int cpus_off, cpu_off, len;
+	const fdt32_t *prop;
+
+	/* Initialize debug UART first */
+	debug_ll_init();
+
+	putc_ll('Q');
+	putc_ll('E');
+	putc_ll('M');
+	putc_ll('U');
+	putc_ll('\r');
+	putc_ll('\n');
+
+	/* Save FDT to global for later use */
+	fdt = fdt_blob;
+
+	/*
+	 * Parse timebase-frequency from QEMU's FDT.  The MPC85xx GUTS
+	 * PORPLLSR register is unimplemented in QEMU and reads as zero,
+	 * so the normal register-based clock calculation fails.
+	 */
+	cpus_off = fdt_path_offset(fdt_blob, "/cpus");
+	if (cpus_off >= 0) {
+		cpu_off = fdt_first_subnode(fdt_blob, cpus_off);
+		if (cpu_off >= 0) {
+			prop = fdt_getprop(fdt_blob, cpu_off,
+					   "timebase-frequency", &len);
+			if (prop && len == sizeof(*prop))
+				fsl_set_timebase_clock(fdt32_to_cpu(*prop));
+		}
+	}
+
+	putc_ll('F');
+	putc_ll('D');
+	putc_ll('T');
+	putc_ll(':');
+	puthex_ll((unsigned long)fdt_blob);
+	putc_ll('\r');
+	putc_ll('\n');
+
+	putc_ll('B');
+	putc_ll('R');
+	putc_ll('\r');
+	putc_ll('\n');
+
+	board_init_r(256 * 1024 * 1024);
+}
+
+static int qemu_e500_of_init(void)
+{
+	if (!fdt)
+		return 0;
+
+	barebox_set_model("QEMU ppce500");
+	barebox_set_hostname("qemu-e500");
+
+	return barebox_register_fdt(fdt);
+}
+core_initcall(qemu_e500_of_init);
+
+static const struct of_device_id qemu_e500_of_match[] = {
+	{ .compatible = "fsl,qemu-e500" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(qemu_e500_of_match);
diff --git a/arch/powerpc/boards/qemu-e500/tlb.c b/arch/powerpc/boards/qemu-e500/tlb.c
new file mode 100644
index 000000000000..a0f31a6fa85d
--- /dev/null
+++ b/arch/powerpc/boards/qemu-e500/tlb.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * TLB configuration for QEMU ppce500
+ *
+ * QEMU sets up TLB entries before jumping to firmware, so we
+ * provide a minimal table here just for the API.
+ */
+
+#include <linux/types.h>
+#include <linux/array_size.h>
+#include <mach/mmu.h>
+
+struct fsl_e_tlb_entry tlb_table[] = {
+	/* QEMU already configured TLB - empty table */
+};
+
+int num_tlb_entries = ARRAY_SIZE(tlb_table);
diff --git a/arch/powerpc/configs/qemu-ppce500_defconfig b/arch/powerpc/configs/qemu-ppce500_defconfig
new file mode 100644
index 000000000000..6a0e070f4996
--- /dev/null
+++ b/arch/powerpc/configs/qemu-ppce500_defconfig
@@ -0,0 +1,69 @@
+CONFIG_ARCH_MPC85XX=y
+CONFIG_QEMU_PPCE500=y
+CONFIG_NAME="qemu-ppce500_defconfig"
+CONFIG_MALLOC_SIZE=0x100000
+CONFIG_RELOCATABLE=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_NVMEM=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FINDMNT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_GPIO_MPC8XXX=y
+CONFIG_NVMEM=y
+CONFIG_NVMEM_RMEM=y
+CONFIG_POWER_RESET_GPIO=y
+CONFIG_TEST=y
+CONFIG_SELFTEST=y
+CONFIG_SELFTEST_BASE64=y
+CONFIG_SELFTEST_RANGE=y
+CONFIG_SELFTEST_MALLOC=y
+CONFIG_SELFTEST_PRINTF=y
+CONFIG_SELFTEST_OF_MANIPULATION=y
+CONFIG_SELFTEST_PROGRESS_NOTIFIER=y
+CONFIG_SELFTEST_STRING=y
+CONFIG_SELFTEST_RESOURCE=y
+CONFIG_SELFTEST_IDR=y
diff --git a/arch/powerpc/cpu-85xx/Makefile b/arch/powerpc/cpu-85xx/Makefile
index cc85eb759472..a902ecb9c659 100644
--- a/arch/powerpc/cpu-85xx/Makefile
+++ b/arch/powerpc/cpu-85xx/Makefile
@@ -4,5 +4,8 @@ obj-y			+= traps.o
 obj-y			+= tlb.o
 obj-y			+= cache.o
 obj-$(CONFIG_MMU)	+= mmu.o
+extra-$(CONFIG_QEMU_PPCE500) += start-qemu.o
+ifndef CONFIG_QEMU_PPCE500
 extra-y			+= start.o
 extra-y			+= resetvec.o
+endif
diff --git a/arch/powerpc/cpu-85xx/start-qemu.S b/arch/powerpc/cpu-85xx/start-qemu.S
new file mode 100644
index 000000000000..fd3a9aeec27e
--- /dev/null
+++ b/arch/powerpc/cpu-85xx/start-qemu.S
@@ -0,0 +1,211 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * ePAPR-compliant entry point for QEMU e500 platforms (mpc8544ds/ppce500)
+ *
+ * QEMU sets up the following CPU state before jumping to firmware:
+ * - r1 = 16MB - 8 (initial stack)
+ * - r3 = FDT physical address
+ * - r6 = EPAPR_MAGIC (0x45504150)
+ * - r7 = Initial TLB map size
+ * - TLB1[0] = Identity map covering RAM + FDT
+ */
+
+#include <asm/config.h>
+#include <asm/processor.h>
+#include <asm/ppc_asm.tmpl>
+#include <asm/ppc_defs.h>
+#include <asm/cache.h>
+#include <mach/mmu.h>
+
+#undef MSR_KERNEL
+#define MSR_KERNEL (MSR_ME)	/* Machine Check */
+
+	.section .text_entry
+	.globl _start_qemu_e500
+	.globl _start
+
+_start:
+_start_qemu_e500:
+	/*
+	 * Entry from QEMU with ePAPR boot convention:
+	 * r3 = FDT pointer (must be preserved)
+	 * r6 = EPAPR_MAGIC
+	 * r1 = initial stack (16MB - 8)
+	 * TLB already set up by QEMU for RAM
+	 */
+
+	/* Save FDT pointer to r31 (callee-saved) */
+	mr	r31, r3
+
+	/* Enable machine check exception */
+	li	r0, MSR_KERNEL
+	mtmsr	r0
+	isync
+
+	/* Invalidate L1 caches */
+	li	r0, 2
+	mtspr	L1CSR0, r0	/* invalidate d-cache */
+	mtspr	L1CSR1, r0	/* invalidate i-cache */
+	isync
+
+	/* Clear debug status */
+	mfspr	r0, DBSR
+	mtspr	DBSR, r0
+	isync
+
+	/* Clear and set up timer/exception registers */
+	li	r0, 0
+	lis	r1, 0xffff
+	mtspr	DEC, r0			/* prevent dec exceptions */
+	mttbl	r0			/* prevent fit & wdt exceptions */
+	mttbu	r0
+	mtspr	TSR, r1			/* clear all timer exception status */
+	mtspr	TCR, r0			/* disable all timers */
+	mtspr	ESR, r0			/* clear exception syndrome register */
+	mtspr	MCSR, r0		/* machine check syndrome register */
+	mtxer	r0			/* clear integer exception register */
+
+	/* Enable machine check and timebase in HID0 */
+	lis	r0, HID0_EMCP@h
+	ori	r0, r0, HID0_TBEN@l
+	mtspr	HID0, r0
+
+	/* Setup IVPR for exception vectors */
+	lis	r0, TEXT_BASE@h
+	ori	r0, r0, TEXT_BASE@l
+	mtspr	IVPR, r0
+	isync
+
+	/*
+	 * Set up TLB1[1]: Map CCSRBAR (16MB, cache-inhibited, guarded)
+	 *
+	 * mpc8544ds: CCSRBAR at 0x0_E0000000 (MAS7 = 0x0)
+	 * ppce500:   CCSRBAR at 0xF_E0000000 (MAS7 = 0xF)
+	 */
+	lis	r0, FSL_BOOKE_MAS0(1, 1, 0)@h
+	ori	r0, r0, FSL_BOOKE_MAS0(1, 1, 0)@l
+	mtspr	MAS0, r0
+	lis	r0, FSL_BOOKE_MAS1(1, 1, 0, 0, BOOKE_PAGESZ_16M)@h
+	ori	r0, r0, FSL_BOOKE_MAS1(1, 1, 0, 0, BOOKE_PAGESZ_16M)@l
+	mtspr	MAS1, r0
+	lis	r0, FSL_BOOKE_MAS2(CFG_CCSRBAR, (MAS2_I | MAS2_G))@h
+	ori	r0, r0, FSL_BOOKE_MAS2(CFG_CCSRBAR, (MAS2_I | MAS2_G))@l
+	mtspr	MAS2, r0
+	lis	r0, FSL_BOOKE_MAS3(CFG_CCSRBAR, 0, (MAS3_SX | MAS3_SW | MAS3_SR))@h
+	ori	r0, r0, FSL_BOOKE_MAS3(CFG_CCSRBAR, 0, (MAS3_SX | MAS3_SW | MAS3_SR))@l
+	mtspr	MAS3, r0
+	li	r0, CFG_CCSRBAR_PHYS_HIGH
+	mtspr	MAS7, r0
+	isync
+	msync
+	tlbwe
+	isync
+
+	/*
+	 * Clear BSS before calling C code.
+	 */
+	lis	r3, __bss_start@h
+	ori	r3, r3, __bss_start@l
+	lis	r4, __bss_stop@h
+	ori	r4, r4, __bss_stop@l
+	li	r0, 0
+	cmplw	0, r3, r4
+	beq	2f
+1:	stw	r0, 0(r3)
+	addi	r3, r3, 4
+	cmplw	0, r3, r4
+	blt	1b
+2:
+
+	/* Restore stack pointer (was clobbered by timer setup above) */
+	lis	r1, (16 * 1024 * 1024 - 8)@h
+	ori	r1, r1, (16 * 1024 * 1024 - 8)@l
+
+	/* Clear LR for clean stack traces */
+	li	r0, 0
+	mtlr	r0
+
+	/* Jump to C entry with FDT pointer in r3 */
+	mr	r3, r31
+	lis	r4, qemu_e500_entry@h
+	ori	r4, r4, qemu_e500_entry@l
+	mtctr	r4
+	bctr
+
+	/* Should never return */
+	b	.
+
+/*
+ * Low-level helper functions required by barebox
+ */
+
+/* get_svr: Return System Version Register */
+	.globl get_svr
+get_svr:
+	mfspr	r3, SVR
+	blr
+
+/* invalidate_icache: Invalidate instruction cache */
+	.globl invalidate_icache
+invalidate_icache:
+	mfspr	r0, L1CSR1
+	ori	r0, r0, L1CSR1_ICFI
+	msync
+	isync
+	mtspr	L1CSR1, r0
+	isync
+	blr
+
+/* flush_dcache: Flush data cache */
+	.globl flush_dcache
+flush_dcache:
+	mfspr	r3, SPRN_L1CFG0
+	rlwinm	r5, r3, 9, 3
+	li	r4, 32
+	subfic	r6, r5, 2
+	slw	r5, r4, r5
+	rlwinm	r7, r3, 0, 0xff
+	mulli	r7, r7, 13
+	slw	r7, r7, r6
+
+	mfspr	r8, SPRN_HID0
+	ori	r9, r8, HID0_DCFA@l
+	mtspr	SPRN_HID0, r9
+	isync
+
+	lis	r4, 0
+	mtctr	r7
+
+1:	lwz	r3, 0(r4)
+	add	r4, r4, r5
+	bdnz	1b
+
+	mtspr	SPRN_HID0, r8
+	isync
+	blr
+
+/* trap_init: Initialize exception vectors - simplified for QEMU */
+	.globl trap_init
+trap_init:
+	blr
+
+/*
+ * void e500_write_tlb(mas0, mas1, mas2, mas3, mas7)
+ */
+	.globl e500_write_tlb
+e500_write_tlb:
+	mtspr	MAS0, r3
+	mtspr	MAS1, r4
+	mtspr	MAS2, r5
+	mtspr	MAS3, r6
+	mtspr	MAS7, r7
+	isync
+	tlbwe
+	msync
+	isync
+	blr
+
+/* _text_base: Text base address variable */
+	.globl _text_base
+_text_base:
+	.long TEXT_BASE
diff --git a/arch/powerpc/include/asm/board-qemu-e500.h b/arch/powerpc/include/asm/board-qemu-e500.h
new file mode 100644
index 000000000000..625d27b5185d
--- /dev/null
+++ b/arch/powerpc/include/asm/board-qemu-e500.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * QEMU ppce500 virtual machine configuration
+ *
+ * CCSRBAR effective address is 0xE0000000, physical 0xF_E0000000
+ * (36-bit, MAS7 = 0xF).
+ */
+
+#ifndef __ASM_BOARD_QEMU_E500_H
+#define __ASM_BOARD_QEMU_E500_H
+
+/*
+ * Serial clock - QEMU's ns16550 baudbase is 399193, but we use
+ * 1843200 (standard 16550 crystal) so the divisor calculation
+ * produces a reasonable value. QEMU ignores the actual baud rate.
+ */
+#define CFG_SYS_CLK_FREQ	1843200
+
+/*
+ * DDR configuration - QEMU doesn't have a real DDR controller,
+ * but the define is needed for compilation.
+ */
+#define CFG_CHIP_SELECTS_PER_CTRL	1
+
+#define CFG_SDRAM_BASE		0x00000000
+
+/*
+ * CCSR (CCSRBAR) - SoC register space
+ *
+ * QEMU ppce500 maps CCSRBAR at effective address 0xE0000000,
+ * physical address 0xF_E0000000 (36-bit, MAS7 = 0xF).
+ */
+#define CFG_CCSRBAR_DEFAULT	0xE0000000
+#define CFG_CCSRBAR		0xE0000000
+#define CFG_CCSRBAR_PHYS	CFG_CCSRBAR
+#define CFG_CCSRBAR_PHYS_HIGH	0xF
+#define CFG_IMMR		CFG_CCSRBAR
+
+#endif /* __ASM_BOARD_QEMU_E500_H */
diff --git a/arch/powerpc/include/asm/config.h b/arch/powerpc/include/asm/config.h
index 727daa872f20..59965095b92e 100644
--- a/arch/powerpc/include/asm/config.h
+++ b/arch/powerpc/include/asm/config.h
@@ -39,6 +39,8 @@
 
 #ifdef CONFIG_MACH_PHYCORE_MPC5200B_TINY
 #include <asm/board-pcm030.h>
+#elif defined(CONFIG_QEMU_PPCE500)
+#include <asm/board-qemu-e500.h>
 #elif defined(CONFIG_P1010RDB)
 #include <asm/board-p1010rdb.h>
 #elif defined(CONFIG_P2020RDB)
diff --git a/arch/powerpc/include/asm/debug_ll.h b/arch/powerpc/include/asm/debug_ll.h
new file mode 100644
index 000000000000..910db2808d81
--- /dev/null
+++ b/arch/powerpc/include/asm/debug_ll.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_DEBUG_LL_H__
+#define __ASM_DEBUG_LL_H__
+
+#include <io.h>
+
+#ifdef CONFIG_DEBUG_QEMU_PPCE500
+
+#include <asm/board-qemu-e500.h>
+
+/*
+ * QEMU ppce500 NS16550 UART at CCSRBAR + 0x4500
+ * Clock is platform clock (400 MHz default)
+ */
+#define DEBUG_LL_UART_BASE	IOMEM(CFG_CCSRBAR + 0x4500)
+#define DEBUG_LL_UART_CLK	CFG_SYS_CLK_FREQ
+
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
+{
+	return readb(base + reg);
+}
+
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
+{
+	writeb(val, base + reg);
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void debug_ll_init(void)
+{
+	uint16_t divisor;
+
+	divisor = debug_ll_ns16550_calc_divisor(DEBUG_LL_UART_CLK);
+	debug_ll_ns16550_init(DEBUG_LL_UART_BASE, divisor);
+}
+
+static inline void PUTC_LL(int c)
+{
+	debug_ll_ns16550_putc(DEBUG_LL_UART_BASE, c);
+}
+
+#else
+
+static inline void debug_ll_init(void)
+{
+}
+
+#endif /* CONFIG_DEBUG_QEMU_PPCE500 */
+
+#endif /* __ASM_DEBUG_LL_H__ */
diff --git a/arch/powerpc/lib/board.c b/arch/powerpc/lib/board.c
index a6111606b68c..3781345926a4 100644
--- a/arch/powerpc/lib/board.c
+++ b/arch/powerpc/lib/board.c
@@ -43,7 +43,13 @@ void board_init_r (ulong end_of_ram)
 	asm ("sync ; isync");
 
 #ifdef CONFIG_MPC85xx
+#ifndef CONFIG_QEMU_PPCE500
+	/* Traditional boards relocate to end of RAM */
 	_text_base = end_of_ram;
+#else
+	/* QEMU: no relocation, stay at link address */
+	_text_base = TEXT_BASE;
+#endif
 #endif
 
 	malloc_end = (_text_base - STACK_SIZE) & ~(4095);
diff --git a/arch/powerpc/mach-mpc85xx/Kconfig b/arch/powerpc/mach-mpc85xx/Kconfig
index 550c554286d7..7f184babbee1 100644
--- a/arch/powerpc/mach-mpc85xx/Kconfig
+++ b/arch/powerpc/mach-mpc85xx/Kconfig
@@ -11,11 +11,13 @@ config BTB
 
 config TEXT_BASE
 	hex
+	default 0x00f00000 if QEMU_PPCE500
 	default 0xeff80000 if P1010RDB || P2020RDB || P1022DS
 	default 0xfff80000 if DA923RC
 
 config RESET_VECTOR_ADDRESS
 	hex
+	default 0x00000000 if QEMU_PPCE500
 	default 0xfffffffc if DA923RC
 	default 0xeffffffc if P1010RDB || P2020RDB || P1022DS
 
@@ -33,6 +35,7 @@ config E500
 
 choice
 	prompt "Select your board"
+
 config P1010RDB
 	bool "P1010RDB"
     select P1010
@@ -64,6 +67,16 @@ config DA923RC
     select FSL_DDR2
 	help
 	Say Y here if you are using the GE Intelligent Platforms DA923RC
+
+config QEMU_PPCE500
+	bool "QEMU ppce500"
+	select HAS_DEBUG_LL
+	select LIBFDT
+	select GPIOLIB
+	help
+	  Say Y here for QEMU ppce500 generic paravirt e500 support.
+	  CCSRBAR is at 36-bit physical address 0xFE0000000.
+
 endchoice
 endif
 
diff --git a/arch/powerpc/mach-mpc85xx/barebox.lds.S b/arch/powerpc/mach-mpc85xx/barebox.lds.S
index 5407ecc7e295..989fec7f1def 100644
--- a/arch/powerpc/mach-mpc85xx/barebox.lds.S
+++ b/arch/powerpc/mach-mpc85xx/barebox.lds.S
@@ -22,7 +22,11 @@
 #endif
 
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
+#ifdef CONFIG_QEMU_PPCE500
+ENTRY(_start_qemu_e500)
+#else
 ENTRY(_start_e500)
+#endif
 
 PHDRS
 {
@@ -122,6 +126,8 @@ SECTIONS
 
   __init_size = __init_end - _start;
 
+#ifndef CONFIG_QEMU_PPCE500
+  /* Boot page and reset vector for flash boot */
   .bootpg RESET_VECTOR_ADDRESS - 0xffc :
   {
     _text = .;
@@ -140,6 +146,12 @@ SECTIONS
   /* This avoids wrapping around to offset 0 */
   . |= 0x10;
 #endif
+#else
+  /* QEMU entry point: simpler, no boot page or reset vector needed */
+  .text_entry : {
+    arch/powerpc/cpu-85xx/start-qemu.o (.text_entry)
+  } :text
+#endif
 
   __bss_start = .;
   .bss        :
diff --git a/arch/powerpc/mach-mpc85xx/include/mach/config_mpc85xx.h b/arch/powerpc/mach-mpc85xx/include/mach/config_mpc85xx.h
index fad2c47d110f..0a53282c623c 100644
--- a/arch/powerpc/mach-mpc85xx/include/mach/config_mpc85xx.h
+++ b/arch/powerpc/mach-mpc85xx/include/mach/config_mpc85xx.h
@@ -57,6 +57,12 @@
 #define PPC_E500_DEBUG_TLB	2
 #define FSL_TSECV2
 
+#elif defined(CONFIG_QEMU_PPCE500)
+#define MAX_CPUS		1
+#define FSL_NUM_LAWS		12
+#define PPC_E500_DEBUG_TLB	0
+/* QEMU e500: generic e500v2 platform, minimal configuration */
+
 #else
 #error Processor type not defined for this platform
 #endif
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index a08d29859d27..b11df2b79925 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -311,6 +311,11 @@ config DEBUG_ZYNQMP_UART
 	  Say Y here if you want kernel low-level debugging support
 	  on Zynqmp.
 
+config DEBUG_QEMU_PPCE500
+	bool "Qemu ppce500 PowerPC ns16550 port"
+	depends on QEMU_PPCE500
+	select DEBUG_LL_NS16550
+
 config DEBUG_ERIZO
 	bool "Erizo ns16550 port"
 	depends on SOC_ERIZO
@@ -382,7 +387,7 @@ endchoice
 config DEBUG_LL_NS16550
 	bool
 	help
-	  Selected by RISC-V platforms that use ns16550 for debug_ll
+	  Selected by RISC-V and PowerPC platforms that use ns16550 for debug_ll
 
 config DEBUG_IMX_UART_PORT
 	int "i.MX Debug UART Port Selection" if DEBUG_IMX1_UART || \
diff --git a/test/powerpc/qemu-ppce500_defconfig.yaml b/test/powerpc/qemu-ppce500_defconfig.yaml
new file mode 100644
index 000000000000..d64f42fc6eca
--- /dev/null
+++ b/test/powerpc/qemu-ppce500_defconfig.yaml
@@ -0,0 +1,17 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-ppc
+        machine: ppce500
+        cpu: e500
+        memory: 256M
+        kernel: barebox
+        display: qemu-default
+      BareboxDriver:
+        prompt: 'barebox:[^ ]+ '
+      BareboxTestStrategy: {}
+images:
+  barebox: !template "$LG_BUILDDIR/barebox"
+imports:
+  - ../strategy.py
-- 
2.47.3



