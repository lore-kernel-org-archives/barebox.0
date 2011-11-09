Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROFrg-00036F-5P
 for barebox@lists.infradead.org; Wed, 09 Nov 2011 21:39:24 +0000
Received: by mail-yw0-f49.google.com with SMTP id 31so169618ywp.36
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2011 13:39:24 -0800 (PST)
From: Lucas De Marchi <lucas.demarchi@profusion.mobi>
Date: Wed,  9 Nov 2011 19:39:57 -0200
Message-Id: <1320874797-14270-5-git-send-email-lucas.demarchi@profusion.mobi>
In-Reply-To: <1320874797-14270-1-git-send-email-lucas.demarchi@profusion.mobi>
References: <1320874797-14270-1-git-send-email-lucas.demarchi@profusion.mobi>
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
Subject: [PATCH 4/4] x86: fix symbol size calculation
To: barebox@lists.infradead.org

The size is being calculated after changing to another section, which
gives error with gcc 4.6:

  AS      arch/x86/lib/traveler.o
/tmp/ccP0z8xx.s: Assembler messages:
/tmp/ccP0z8xx.s: Error: .size expression for real_to_prot does not evaluate to a constant
/tmp/ccP0z8xx.s: Error: .size expression for prot_to_real does not evaluate to a constant
make[1]: *** [arch/x86/lib/traveler.o] Error 1

Signed-off-by: Lucas De Marchi <lucas.demarchi@profusion.mobi>
---
 arch/x86/boot/pmjump.S  |    3 ++-
 arch/x86/lib/traveler.S |   11 +++++++----
 2 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/x86/boot/pmjump.S b/arch/x86/boot/pmjump.S
index d2fb8f0..09bfc6e 100644
--- a/arch/x86/boot/pmjump.S
+++ b/arch/x86/boot/pmjump.S
@@ -44,6 +44,7 @@ protected_mode_jump:
 
 	/* Transition to 32-bit flat mode */
 	data32  ljmp $__BOOT_CS, $in_pm32
+	.size protected_mode_jump, .-protected_mode_jump
 
 /* ------------------------------------------------------------------------ */
 
@@ -83,5 +84,5 @@ in_pm32:
 
 	jmp uboot_entry
 
-	.size protected_mode_jump, .-protected_mode_jump
+	.size in_pm32, .-in_pm32
 
diff --git a/arch/x86/lib/traveler.S b/arch/x86/lib/traveler.S
index 0614195..4f7a9e3 100644
--- a/arch/x86/lib/traveler.S
+++ b/arch/x86/lib/traveler.S
@@ -72,6 +72,7 @@ real_to_prot:
 
 	/* jump to relocation, flush prefetch queue, and reload %cs */
 	DATA32 ljmp $__BOOT_CS, $return_to_flatmode
+	.size real_to_prot, .-real_to_prot
 
 /* ----------------------------------------------------------------------- */
 	.section .boot.text.return_to_flatmode, "ax"
@@ -102,8 +103,7 @@ return_to_flatmode:
 	/* flag we returned happy here */
 	xorl %eax, %eax
 	ret
-
-	.size real_to_prot, .-real_to_prot
+	.size return_to_flatmode, .-return_to_flatmode
 
 /* ------------------------------------------------------------------------ */
 
@@ -140,13 +140,16 @@ prot_to_real:
 
 	/* at last, also limit the code segment to 16 bit */
 	ljmp $__REAL_CS, $return_to_realmode
+	.size prot_to_real, .-prot_to_real
 
 /* ----------------------------------------------------------------------- */
 
 	.section .boot.text.return_to_realmode, "ax"
-return_to_realmode:
+	.globl return_to_realmode
+	.type return_to_realmode, @function
 	.code16
 
+return_to_realmode:
 	/* disable protected mode */
 	movl %cr0, %eax
 	andl $(~0x00000001), %eax
@@ -176,5 +179,5 @@ enter_realmode:
 	/* return on realmode stack! */
 	DATA32 ret
 
-	.size prot_to_real, .-prot_to_real
+	.size return_to_realmode, .-return_to_realmode
 
-- 
1.7.7.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
