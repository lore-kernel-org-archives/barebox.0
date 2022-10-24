Delivery-date: Mon, 24 Oct 2022 08:59:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQV-000Msw-Gi
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 08:59:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQT-0008Uc-VC
	for lore@pengutronix.de; Mon, 24 Oct 2022 08:59:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jZojQ4yZgRuCrOhTkxCtOu5+SpV3DFCiMdkHHwaP27M=; b=DkA59MWMtW5U3tpPjlJsOuP0cf
	ns4xbrRMsQ2+8hx+tl47nvmLsoCvXjbMcfmWw4sf3A6kKZJUlAjbh7NTeGFaUo+IYQyzCuU0BKxGM
	K3+ICOGcYSQX+9IfdLu+jvFwuxkTlLHQrE05PSC94XzQxJtZPIwjsFraluiRmfVMjq0y/yhsy1JO+
	5Uuw71UQhn/jaLJReSfWnu9vOqyNA6HvLpAvgli5Mp2D+VIqJqqWrRt3BkCzHi2zVKI0zAEWgOwhL
	4uznWcAv9vSWkUzgs4i7cHCV4CG9hzzl0Jbx9bOjt8DgFIDMV7AloBK44LWj9gyF5kDOeS77UiDSj
	2LiBt50g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrPG-00HMyB-Dk; Mon, 24 Oct 2022 06:57:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrOq-00HMmB-Kj
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 06:57:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0007qW-EO; Mon, 24 Oct 2022 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0003rg-Jn; Mon, 24 Oct 2022 08:57:18 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOf-00567T-JE; Mon, 24 Oct 2022 08:57:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Oct 2022 08:57:13 +0200
Message-Id: <20221024065716.1215046-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
References: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_235728_717073_6690D23F 
X-CRM114-Status: GOOD (  20.40  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] ARM64: asm: rewrite ENTRY_FUNCTION(_WITHSTACK) fully in assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Recent episode with pointer authentication showed again that for
platforms without __attribute__((naked)), we are better off writing
the early header in assembly. We still want to keep the board specific
entry points in C for ease of use, so we have ENTRY_FUNCTION_WITHSTACK
generate two symbols:

  - A 32-bit stack top value that's placed in .rodata

  - An entry point with the normal C code, including stack-using
    prologues

The new common assembly head code will access the stack pointer in a
position-independent manner and set it up, before continuing with the
C code. The barebox header is part of the common assembly head code
ensuring it's not moved around due to compiler code generation.

The common code will need access to board-specific entry point and stack
top. The former is readily available as the alias __pbl_board_entry.
The latter is a bit more complicated, as the symbol may not exist for
boards not using the common header in a multi-image build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                           |  3 +--
 arch/arm/cpu/Makefile              |  2 ++
 arch/arm/cpu/head_64.S             | 36 ++++++++++++++++++++++++++++++
 arch/arm/include/asm/barebox-arm.h | 28 +++++++----------------
 arch/arm/lib/pbl.lds.S             |  9 ++++++++
 5 files changed, 56 insertions(+), 22 deletions(-)
 create mode 100644 arch/arm/cpu/head_64.S

diff --git a/Makefile b/Makefile
index 81ef44122367..a4b9f3c021d7 100644
--- a/Makefile
+++ b/Makefile
@@ -660,8 +660,7 @@ KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check)
 KBUILD_CFLAGS += $(call cc-option,-fcf-protection=none)
 
 # We don't have the necessary infrastructure to benefit from ARMv8.3+ pointer
-# authentication. On older CPUs, they are interpreted as NOPs and blot the
-# code and break less portable code that expects a very specific code layout
+# authentication. On older CPUs, they are interpreted as NOPs bloating the code
 KBUILD_CFLAGS += $(call cc-option,-mbranch-protection=none)
 
 KBUILD_CFLAGS   += $(call cc-disable-warning, address-of-packed-member)
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index c0993c1abe5d..7674c1464c1f 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -13,6 +13,8 @@ AFLAGS_hyp.pbl.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 obj-y += start.o entry.o entry_ll$(S64).o
 KASAN_SANITIZE_start.o := n
 
+pbl-$(CONFIG_CPU_64) += head_64.o
+
 pbl-$(CONFIG_BOARD_ARM_GENERIC_DT) += board-dt-2nd.o
 pbl-$(CONFIG_BOARD_ARM_GENERIC_DT_AARCH64) += board-dt-2nd-aarch64.o
 
diff --git a/arch/arm/cpu/head_64.S b/arch/arm/cpu/head_64.S
new file mode 100644
index 000000000000..4ed4ffb05250
--- /dev/null
+++ b/arch/arm/cpu/head_64.S
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+#include <asm/image.h>
+
+/* Linker will point these at board-specific symbols */
+.globl __pbl_board_stack_top
+.globl __pbl_board_entry
+
+.section .text_head_prologue_common, "x"
+ENTRY(__barebox_arm64_head)
+	nop
+	nop
+	nop
+	adr x9, __pbl_board_stack_top
+	ldr w9, [x9]
+	cbz x9, 1f
+	mov sp, x9
+	b 1f
+	.org 0x20
+	.asciz "barebox"
+	.word 0xffffffff
+	.word _barebox_image_size	/* image size to copy */
+	.rept 8
+	.word 0x55555555
+	.endr
+1:
+#ifdef CONFIG_PBL_BREAK
+	brk #17
+	nop
+#else
+	nop
+	nop
+#endif
+	b __pbl_board_entry
+END(__barebox_arm64_head)
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 68a9610398cc..89b4a89755a6 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -136,24 +136,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 	}
 }
 
-#ifdef CONFIG_CPU_64
-
-#define ____emit_entry_prologue(name, instr, ...) do { \
-	static __attribute__ ((unused,section(".text_head_prologue_" __stringify(name)))) \
-		const u32 __entry_prologue[] = {(instr), ##__VA_ARGS__}; \
-	__keep_symbolref(__entry_prologue); \
-} while(0)
-
-#define __emit_entry_prologue(name, instr1, instr2, instr3, instr4, instr5) \
-	____emit_entry_prologue(name, instr1, instr2, instr3, instr4, instr5)
-
-#define __ARM_SETUP_STACK(name, stack_top) \
-	__emit_entry_prologue(name, 0x14000002	/* b pc+0x8 */,		\
-			      stack_top		/* 32-bit literal */,	\
-			      0x18ffffe9	/* ldr w9, top */,	\
-			      0xb4000049	/* cbz x9, pc+0x8 */,	\
-			      0x9100013f	/* mov sp, x9 */)
-#else
+#ifndef CONFIG_CPU_64
 #define __ARM_SETUP_STACK(name, stack_top) if (stack_top) arm_setup_stack(stack_top)
 #endif
 
@@ -166,6 +149,9 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
  * code block will not be inlined and may spill to stack right away.
  */
 #ifdef CONFIG_CPU_64
+
+void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
+
 #define ENTRY_FUNCTION_WITHSTACK(name, stack_top, arg0, arg1, arg2)	\
 	void name(ulong r0, ulong r1, ulong r2);			\
 									\
@@ -174,8 +160,10 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 	void __section(.text_head_entry_##name)	name			\
 				(ulong r0, ulong r1, ulong r2)		\
 		{							\
-			__barebox_arm_head();				\
-			__ARM_SETUP_STACK(name, stack_top);		\
+			static __section(.pbl_board_stack_top_##name)	\
+				const u32 __stack_top = (stack_top);	\
+			__keep_symbolref(__barebox_arm64_head);		\
+			__keep_symbolref(__stack_top);			\
 			__##name(r0, r1, r2);				\
 		}							\
 		static void noinline __##name				\
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index ae1babdcfd27..114ec7bc8195 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -44,6 +44,15 @@ SECTIONS
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
 
+	. = ALIGN(4);
+	__pbl_board_stack_top = .;
+	.rodata.pbl_board_stack_top : {
+		*(.pbl_board_stack_top_*)
+		/* Dummy for when BootROM sets up usable stack */
+		LONG(0x00000000);
+	}
+	ASSERT(. - __pbl_board_stack_top <= 8, "Only One PBL per Image allowed")
+
 	.barebox_imd : { BAREBOX_IMD }
 
 	_etext = .;			/* End of text and rodata section */
-- 
2.30.2



