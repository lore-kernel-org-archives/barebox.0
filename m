Delivery-date: Wed, 31 May 2023 19:53:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Q0i-004a6r-Cs
	for lore@lore.pengutronix.de; Wed, 31 May 2023 19:53:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Q0f-0000LN-LS
	for lore@pengutronix.de; Wed, 31 May 2023 19:53:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BfDTSZMOVMo7mZbXraBYR4GMB9cabFY27Iak4m4jzQE=; b=ASORa+9I36xj9kfrXFRcEHxGoR
	sOT3Fy1QJB/GZejXgGYeE0OXsoFTy6Fwx7DP+M9PWNTq348d/o57cc4w4iZpLaa131/vxHOmrqrUt
	l+sb0SwkL3yyfI9MO/nBD4vrOWwTGfw+uFys1/bm2p+vheJuDcn12b2qHu/2gwPeAukrQwES9xHUT
	G7mtIkcRjt1JHcv5o9nCJm9jnMo8qGXbDVPQoFbWPd/EEZphvnazD+7+VSWbrr7YRyIHoufcq+Zbh
	OxUNE+AoWPzU/imhkzl1CLShuWtn9JYDOC21zKAimxsF2gK1jQCyXGqKhaI35eKXZmik561bHlpIZ
	+/c5Y3cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4PzS-000hcJ-38;
	Wed, 31 May 2023 17:52:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4PzP-000hbL-2F
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 17:52:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4PzM-0000GM-Sb; Wed, 31 May 2023 19:52:00 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4PzL-004AiL-Ri; Wed, 31 May 2023 19:51:59 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4PzL-0063EX-5f; Wed, 31 May 2023 19:51:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Lior Weintraub <liorw@pliops.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 19:51:57 +0200
Message-Id: <20230531175157.1442379-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_105203_739598_C2682D69 
X-CRM114-Status: GOOD (  13.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH RFT] ARM64: cpu: support 64-bit stack top in ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ENTRY_FUNCTION_WITHSTACK was written with the naive assumption that
there will always be some memory in the first 32-bit of the address
space to be used as early stack. There are SoCs out there though with
sole on-chip SRAM > 4G. Accommodate this by accepting full 64-bit stack
pointers in ENTRY_FUNCTION_WITHSTACK.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/head_64.S             | 2 +-
 arch/arm/include/asm/barebox-arm.h | 2 +-
 arch/arm/lib/pbl.lds.S             | 7 ++++---
 include/asm-generic/pointer.h      | 2 ++
 4 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/head_64.S b/arch/arm/cpu/head_64.S
index 398c4d3471e0..546efc263a06 100644
--- a/arch/arm/cpu/head_64.S
+++ b/arch/arm/cpu/head_64.S
@@ -11,7 +11,7 @@
 ENTRY(__barebox_arm64_head)
 	nop
 	adr x9, __pbl_board_stack_top
-	ldr w9, [x9]
+	ldr x9, [x9]
 	cbz x9, 1f
 	mov sp, x9
 1:
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index eb31ca278821..aceb7fdf74f8 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -158,7 +158,7 @@ void __barebox_arm64_head(ulong x0, ulong x1, ulong x2);
 				(ulong r0, ulong r1, ulong r2)		\
 		{							\
 			static __section(.pbl_board_stack_top_##name)	\
-				const u32 __stack_top = (stack_top);	\
+				const ulong __stack_top = (stack_top);	\
 			__keep_symbolref(__barebox_arm64_head);		\
 			__keep_symbolref(__stack_top);			\
 			__##name(r0, r1, r2);				\
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 114ec7bc8195..2b4b1d6a9513 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -4,6 +4,7 @@
 #include <linux/sizes.h>
 #include <asm/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
+#include <asm-generic/pointer.h>
 
 #ifdef CONFIG_PBL_RELOCATABLE
 #define BASE	0x0
@@ -44,14 +45,14 @@ SECTIONS
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
 
-	. = ALIGN(4);
+	. = ALIGN(ASM_SZPTR);
 	__pbl_board_stack_top = .;
 	.rodata.pbl_board_stack_top : {
 		*(.pbl_board_stack_top_*)
 		/* Dummy for when BootROM sets up usable stack */
-		LONG(0x00000000);
+		ASM_LD_PTR(0x00000000)
 	}
-	ASSERT(. - __pbl_board_stack_top <= 8, "Only One PBL per Image allowed")
+	ASSERT(. - __pbl_board_stack_top <= 2 * ASM_SZPTR, "Only One PBL per Image allowed")
 
 	.barebox_imd : { BAREBOX_IMD }
 
diff --git a/include/asm-generic/pointer.h b/include/asm-generic/pointer.h
index 8b9600b02939..89817ce59ebc 100644
--- a/include/asm-generic/pointer.h
+++ b/include/asm-generic/pointer.h
@@ -8,6 +8,7 @@
 #define ASM_PTR		.quad
 #define ASM_SZPTR	8
 #define ASM_LGPTR	3
+#define ASM_LD_PTR(x)	QUAD(x)
 #else
 #define ASM_PTR		".quad"
 #define ASM_SZPTR	"8"
@@ -18,6 +19,7 @@
 #define ASM_PTR		.word
 #define ASM_SZPTR	4
 #define ASM_LGPTR	2
+#define ASM_LD_PTR(x)	LONG(x)
 #else
 #define ASM_PTR		".word"
 #define ASM_SZPTR	"4"
-- 
2.39.2



