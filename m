Delivery-date: Fri, 14 Jan 2022 09:43:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IBd-001shp-VL
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:43:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8IBc-0001ie-Fo
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:43:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lLCFYH2iypz7bEkECUlHCI/OVFTAb33qQhUrRR41F38=; b=nDnmMXA49sc2aa
	9fgAcd7RL/jCWFdSWbj++Macxz+vhASzY6lH2+1kPKsg9IWG/ZHzNF8Z5wKIfLHN71Cy9BI2jIupl
	9J1Nla17J8ymHGDAYfTdcwgQIVePykQlOxUvKFQLmb/cg/o3vXc/JIBjfgIlMBL2N+8k5lKL80mk6
	zMyg6L65cORod1jRewZOOhh1EnSQETqUyxOS/NazEkB4VjZqtrd9CRfz6+I1kHpqxJEw5GX+RmVhK
	DmurEpMd8JovDRP1549LqxMAAzTolapty8Z9tv5uMHYdKtQVPp1CFnq0VeEp43lIPBbCypl4Nyht/
	HMzazoOKNvultnDS/a3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8IAR-008JwJ-DK; Fri, 14 Jan 2022 08:42:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8IAI-008Ju6-5a
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:42:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IAG-0001Pn-Tg; Fri, 14 Jan 2022 09:42:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n8IAG-001IMJ-En; Fri, 14 Jan 2022 09:42:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Jan 2022 09:42:25 +0100
Message-Id: <20220114084227.308804-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_004230_247493_042FA0F5 
X-CRM114-Status: GOOD (  21.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] ARM: implement ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The point of ENTRY_FUNCTION is to write the entry point in C. Due to
lack of __naked on ARM64, the start of the entry point will have prologue
using stack and it's not possible to set up the stack safely without
branching into non-inline assembly[0]. On ARM32, where we got __naked, we
have the potential for a different problem: If BootROM sets up stack for
us and we branch to a naked function, which doesn't set up its own
stack, compiler may decide to spill local variables overwriting
instructions it had already run[1].

For code reuse between ARM and ARM64, it would be nice to use the same
entry point structure for both. Currently, the only way is to write it
in non-inline assembly using the ENTRY_PROC macro.

This introduces another way: the ARM64 barebox header has enough space
for 8 instructions of which 5 are unused (2 instructions compiler prologue
+ 1 instruction to jump after the header), we could place a stack setup
routine there to avoid having to write a separate assembly file.
For ARM32, we just call arm_setup_stack and branch out directly after,
freeing board porters of the burden of getting it right.

Add a new ENTRY_FUNCTION_WITHSTACK to realize this.

[0]: 76bced6fe146 ("ARM: document arm_setup_stack() pitfalls"),
[1]: b51b15ba1738 ("RISC-V: board-dt-2nd: move low level init into nonnaked function")

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
 - add __ARM_SETUP_STACK(0) to normal ENTRY_FUNCTION. On ARM32, it's a
   no-op, but on ARM64, it ensures the header isn't shifted
---
 arch/arm/include/asm/barebox-arm-head.h |  6 +---
 arch/arm/include/asm/barebox-arm.h      | 46 +++++++++++++++++++++++++
 arch/arm/lib/pbl.lds.S                  |  1 +
 3 files changed, 48 insertions(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index fcb7e31d8531..099e1bef3cb8 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -46,14 +46,10 @@ static inline void __barebox_arm_head(void)
 		"1: b 1b\n"
 #endif
 #else
+		/* 5 instructions added by ENTRY_FUNCTION */
 		/* two instruction long function prologue */
 		/* only use if stack is initialized! */
 		"b 2f\n"
-		"nop\n"
-		"nop\n"
-		"nop\n"
-		"nop\n"
-		"nop\n"
 #endif
 		".asciz \"barebox\"\n"
 #ifdef CONFIG_CPU_32
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index cfb5943f33d6..5018b3e2f57a 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -161,6 +161,51 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 	}
 }
 
+#ifdef CONFIG_CPU_64
+
+#define ____emit_entry_prologue(instr, ...) do { \
+	static __attribute__ ((unused,section(".text_head_prologue"))) \
+		const u32 __entry_prologue[] = {(instr), ##__VA_ARGS__}; \
+	barrier_data(__entry_prologue); \
+} while(0)
+
+#define __emit_entry_prologue(instr1, instr2, instr3, instr4, instr5) \
+	____emit_entry_prologue(instr1, instr2, instr3, instr4, instr5)
+
+#define __ARM_SETUP_STACK(stack_top) \
+	__emit_entry_prologue(0x14000002	/* b pc+0x8 */,		\
+			      stack_top		/* 32-bit literal */,	\
+			      0x18ffffe9	/* ldr w9, top */,	\
+			      0xb4000049	/* cbz x9, pc+0x8 */,	\
+			      0x9100013f	/* mov sp, x9 */)
+#else
+#define __ARM_SETUP_STACK(stack_top) if (stack_top) arm_setup_stack(stack_top)
+#endif
+
+/*
+ * Unlike ENTRY_FUNCTION, this can be used to setup stack for a C entry
+ * point on both ARM32 and ARM64. ENTRY_FUNCTION on ARM64 can only be used
+ * if preceding boot stage has initialized the stack pointer.
+ *
+ * Stack top of 0 means stack is already set up. In that case, the follow-up
+ * code block will not be inlined and may spill to stack right away.
+ */
+#define ENTRY_FUNCTION_WITHSTACK(name, stack_top, arg0, arg1, arg2)	\
+	void name(ulong r0, ulong r1, ulong r2);			\
+									\
+	static void __##name(ulong, ulong, ulong);			\
+									\
+	void NAKED __section(.text_head_entry_##name)	name		\
+				(ulong r0, ulong r1, ulong r2)		\
+		{							\
+			__barebox_arm_head();				\
+			__ARM_SETUP_STACK(stack_top);			\
+			__##name(r0, r1, r2);				\
+		}							\
+		static void noinline __##name				\
+			(ulong arg0, ulong arg1, ulong arg2)
+
+
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
 	void name(ulong r0, ulong r1, ulong r2);			\
 									\
@@ -170,6 +215,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 				(ulong r0, ulong r1, ulong r2)		\
 		{							\
 			__barebox_arm_head();				\
+			__ARM_SETUP_STACK(0);				\
 			__##name(r0, r1, r2);				\
 		}							\
 		static void NAKED noinline __##name			\
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 0a0fb8b5ac13..e77b3220fcb0 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -31,6 +31,7 @@ SECTIONS
 	.text      :
 	{
 		_stext = .;
+		*(.text_head_prologue*)
 		*(.text_head_entry*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

