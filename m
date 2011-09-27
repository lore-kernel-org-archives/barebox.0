Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001mr-Ci
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:22 +0200
Message-Id: <1317112109-23311-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
References: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/14] ppc mpc5200b: cleanup lowlevel startup
To: barebox@lists.infradead.org

The old startup process consisted of several CFG_LOWBOOT,
CFG_RAMBOOT ifdeffery which I do not understand. So remove
all this and replace it with:

- put the entry point for second stage loaders to offset 0x0
  so that we can do a go /dev/ram0 to start a second barebox
- When we come from the reset vector assume MBAR is at 0x80000000
- When we come from the second stage entry assume that
  SPR 311 is in sync with the current MBAR address.
- Switch MBAR to 0xf0000000 and we are done.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/start.S |   75 ++++++++++------------------------------
 1 files changed, 19 insertions(+), 56 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index 2627e5d..d619460 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -66,69 +66,32 @@
  * Exception vectors
  */
 	.text
+	/*
+	 * Second stage loader entry. When entered here we assume that spr 311
+	 * is set to the current MBAR address.
+	 */
+	mfspr	r4, MBAR
+	b setup_mbar
 	. = EXC_OFF_SYS_RESET
 	.globl	_start
 _start:
-	li	r21, BOOTFLAG_COLD	/* Normal Power-On		*/
-	nop
-	b	boot_cold
-
-	. = EXC_OFF_SYS_RESET + 0x10
-
-	.globl	_start_warm
-_start_warm:
-	li	r21, BOOTFLAG_WARM	/* Software reboot		*/
-	b	boot_warm
+	/*
+	 * Reset entry. When entered here we assume that MBAR is at reset default
+	 * 0x80000000.
+	 */
+	lis	r4, 0x80000000@h
+	ori	r4, r4, 0x80000000@l
 
-boot_cold:
-boot_warm:
+setup_mbar:
+	/* r4 == current MBAR */
 	mfmsr	r5			/* save msr contents		*/
 
-	/* Move CSBoot and adjust instruction pointer                   */
-	/*--------------------------------------------------------------*/
-
-#if defined(CFG_LOWBOOT)
-# if defined(CFG_RAMBOOT)
-#  error CFG_LOWBOOT is incompatible with CFG_RAMBOOT
-# endif /* CFG_RAMBOOT */
-	lis	r4, CFG_DEFAULT_MBAR@h
-	lis	r3,	START_REG(CFG_BOOTCS_START)@h
-	ori	r3, r3, START_REG(CFG_BOOTCS_START)@l
-	stw	r3, 0x4(r4)		/* CS0 start */
-	lis	r3,	STOP_REG(CFG_BOOTCS_START, CFG_BOOTCS_SIZE)@h
-	ori	r3, r3, STOP_REG(CFG_BOOTCS_START, CFG_BOOTCS_SIZE)@l
-	stw	r3, 0x8(r4)		/* CS0 stop */
-	lis	r3,     0x02010000@h
-	ori	r3, r3, 0x02010000@l
-	stw	r3, 0x54(r4)		/* CS0 and Boot enable */
-
-	lis     r3,	lowboot_reentry@h	/* jump from bootlow address space (0x0000xxxx) */
-	ori     r3, r3, lowboot_reentry@l	/* to the address space the linker used */
-	mtlr	r3
-	blr
-
-lowboot_reentry:
-	lis	r3,	START_REG(CFG_BOOTCS_START)@h
-	ori	r3, r3, START_REG(CFG_BOOTCS_START)@l
-	stw	r3, 0x4c(r4)		/* Boot start */
-	lis	r3,	STOP_REG(CFG_BOOTCS_START, CFG_BOOTCS_SIZE)@h
-	ori	r3, r3, STOP_REG(CFG_BOOTCS_START, CFG_BOOTCS_SIZE)@l
-	stw	r3, 0x50(r4)		/* Boot stop */
-	lis	r3,     0x02000001@h
-	ori	r3, r3, 0x02000001@l
-	stw	r3, 0x54(r4)		/* Boot enable, CS0 disable */
-#endif	/* CFG_LOWBOOT */
-
-#if defined(CFG_DEFAULT_MBAR) && !defined(CFG_RAMBOOT)
-	lis	r3, CFG_MBAR@h
-	ori	r3, r3, CFG_MBAR@l
-	/* MBAR is mirrored into the MBAR SPR */
-	mtspr	MBAR,r3
+	/* Switch MBAR to 0xf0000000 */
+	lis	r3, 0xf0000000@h
+	ori	r3, r3, 0xf0000000@l
+	mtspr	MBAR, r3
 	rlwinm	r3, r3, 16, 16, 31
-
-	lis	r4, CFG_DEFAULT_MBAR@h
 	stw	r3, 0(r4)
-#endif /* CFG_DEFAULT_MBAR */
 
 	/* Initialise the MPC5xxx processor core			*/
 	/*--------------------------------------------------------------*/
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
