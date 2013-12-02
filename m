Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-x229.google.com ([2607:f8b0:400e:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnX8V-0002V0-3h
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 17:18:19 +0000
Received: by mail-pb0-f41.google.com with SMTP id jt11so19520420pbb.28
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2013 09:17:56 -0800 (PST)
From: u74147@gmail.com
Date: Mon,  2 Dec 2013 09:17:46 -0800
Message-Id: <1386004666-8305-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] make the code simpler
To: barebox@lists.infradead.org

From: Du Huanpeng <u74147@gmail.com>


Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/mips/boot/start.S |   26 +++-----------------------
 1 file changed, 3 insertions(+), 23 deletions(-)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 7e2ae5e..474407d 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -25,26 +25,6 @@
 #include <generated/compile.h>
 #include <generated/utsrelease.h>
 
-	/*
-	 * ADR macro instruction (inspired by ARM)
-	 *
-	 * ARM architecture doesn't have PC-relative jump instruction
-	 * like MIPS' B/BAL insns.  When ARM makes PC-relative jumps,
-	 * it uses ADR insn.  ADR is used to get a destination address
-	 * of 'label' against current PC.  With this, ARM can safely
-	 * make PC-relative jumps.
-	 */
-	.macro	ADR rd label temp
-	.set	push
-	.set	noreorder
-	move	\temp, ra			# preserve ra beforehand
-	bal	_pc
-	 nop
-_pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
-	move	ra, \temp			# within pc +/- 32KB
-	.set	pop
-	.endm
-
 	.set noreorder
 	.text
 	.section ".text_bare_init"
@@ -52,8 +32,9 @@ _pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
 
 EXPORT(_start)
 
-	b	__start
+	bal	__start
 	 nop
+_ra: 
 
 	.org	0x10
 	.ascii	"barebox " UTS_RELEASE " " UTS_VERSION
@@ -72,8 +53,7 @@ __start:
 	mtc0	k0, CP0_STATUS
 
 	/* copy barebox to link location */
-	ADR	a0, _start, t1	/* a0 <- pc-relative position of _start */
-
+	addiu	a0, ra, (_start - _ra)	/*a0 <- pc-relative position of _start  */
 	la	a1, _start	/* link (RAM) _start address */
 
 	beq	a0, a1, stack_setup
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
