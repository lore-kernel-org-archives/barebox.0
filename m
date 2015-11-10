Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22c.google.com ([2a00:1450:4010:c07::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw3LI-0003ip-JI
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 07:27:50 +0000
Received: by lfdo63 with SMTP id o63so19710985lfd.2
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 23:27:26 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-57-136.pppoe.mtu-net.ru.
 [91.79.57.136])
 by smtp.gmail.com with ESMTPSA id bn6sm281576lbc.10.2015.11.09.23.27.25
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 09 Nov 2015 23:27:26 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 10 Nov 2015 10:27:15 +0300
Message-Id: <1447140436-29099-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
References: <1447140436-29099-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] MIPS: import exception registers restoring macros from
 linux kernel
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/stackframe.h | 87 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/arch/mips/include/asm/stackframe.h b/arch/mips/include/asm/stackframe.h
index 0266ec6..abfa2d2 100644
--- a/arch/mips/include/asm/stackframe.h
+++ b/arch/mips/include/asm/stackframe.h
@@ -15,6 +15,8 @@
 #include <asm/mipsregs.h>
 #include <asm/asm-offsets.h>
 
+#define STATMASK 0x1f
+
 		.macro	SAVE_AT
 		.set	push
 		.set	noat
@@ -102,4 +104,89 @@
 		SAVE_STATIC
 		.endm
 
+		.macro	RESTORE_AT
+		.set	push
+		.set	noat
+		LONG_L	$1,  PT_R1(sp)
+		.set	pop
+		.endm
+
+		.macro	RESTORE_TEMP
+		LONG_L	$24, PT_LO(sp)
+		mtlo	$24
+		LONG_L	$24, PT_HI(sp)
+		mthi	$24
+#ifdef CONFIG_32BIT
+		LONG_L	$8, PT_R8(sp)
+		LONG_L	$9, PT_R9(sp)
+#endif
+		LONG_L	$10, PT_R10(sp)
+		LONG_L	$11, PT_R11(sp)
+		LONG_L	$12, PT_R12(sp)
+		LONG_L	$13, PT_R13(sp)
+		LONG_L	$14, PT_R14(sp)
+		LONG_L	$15, PT_R15(sp)
+		LONG_L	$24, PT_R24(sp)
+		.endm
+
+		.macro	RESTORE_STATIC
+		LONG_L	$16, PT_R16(sp)
+		LONG_L	$17, PT_R17(sp)
+		LONG_L	$18, PT_R18(sp)
+		LONG_L	$19, PT_R19(sp)
+		LONG_L	$20, PT_R20(sp)
+		LONG_L	$21, PT_R21(sp)
+		LONG_L	$22, PT_R22(sp)
+		LONG_L	$23, PT_R23(sp)
+		LONG_L	$30, PT_R30(sp)
+		.endm
+
+		.macro	RESTORE_SOME
+		.set	push
+		.set	reorder
+		.set	noat
+		mfc0	a0, CP0_STATUS
+		ori	a0, STATMASK
+		xori	a0, STATMASK
+		mtc0	a0, CP0_STATUS
+		li	v1, 0xff00
+		and	a0, v1
+		LONG_L	v0, PT_STATUS(sp)
+		nor	v1, $0, v1
+		and	v0, v1
+		or	v0, a0
+		mtc0	v0, CP0_STATUS
+		LONG_L	v1, PT_EPC(sp)
+		MTC0	v1, CP0_EPC
+		LONG_L	$31, PT_R31(sp)
+		LONG_L	$28, PT_R28(sp)
+		LONG_L	$25, PT_R25(sp)
+#ifdef CONFIG_64BIT
+		LONG_L	$8, PT_R8(sp)
+		LONG_L	$9, PT_R9(sp)
+#endif
+		LONG_L	$7,  PT_R7(sp)
+		LONG_L	$6,  PT_R6(sp)
+		LONG_L	$5,  PT_R5(sp)
+		LONG_L	$4,  PT_R4(sp)
+		LONG_L	$3,  PT_R3(sp)
+		LONG_L	$2,  PT_R2(sp)
+		.set	pop
+		.endm
+
+		.macro	RESTORE_SP_AND_RET
+		LONG_L	sp, PT_R29(sp)
+		.set	arch=r4000
+		eret
+		.set	mips0
+		.endm
+
+		.macro	RESTORE_ALL_AND_RET
+		RESTORE_TEMP
+		RESTORE_STATIC
+		RESTORE_AT
+		RESTORE_SOME
+		RESTORE_SP_AND_RET
+		.endm
+
 #endif /* _ASM_STACKFRAME_H */
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
