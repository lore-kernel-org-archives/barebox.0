Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9Kke-0002cF-57
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:46:02 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:00 +0200
Message-Id: <1287765924-1856-9-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 08/32] doc: let doxygen find some assembler functions
To: barebox@lists.infradead.org

Silences these warnings:

arch/x86/boot/boot_hdisk.S:29: Warning: documented function `void real_start' was not declared or defined.
arch/x86/boot/boot_main.S:28: Warning: documented function `void _start' was not declared or defined.
arch/x86/boot/pmjump.S:20: Warning: documented function `void protected_mode_jump' was not declared or defined.
arch/x86/lib/memory16.S:32: Warning: documented function `unsigned short bios_get_memsize' was not declared or defined.
arch/x86/lib/traveler.S:31: Warning: documented function `void real_to_prot' was not declared or defined.
arch/x86/lib/traveler.S:38: Warning: documented function `void prot_to_real' was not declared or defined.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 arch/x86/boot/boot_hdisk.S |    2 --
 arch/x86/boot/boot_main.S  |    2 --
 arch/x86/boot/pmjump.S     |    2 --
 arch/x86/lib/memory16.S    |    2 --
 arch/x86/lib/traveler.S    |    3 ---
 5 files changed, 0 insertions(+), 11 deletions(-)

diff --git a/arch/x86/boot/boot_hdisk.S b/arch/x86/boot/boot_hdisk.S
index 40388e9..fc4c4d5 100644
--- a/arch/x86/boot/boot_hdisk.S
+++ b/arch/x86/boot/boot_hdisk.S
@@ -31,7 +31,6 @@
  * from the boot media.
  */
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
 
 	.file "boot_hdisk.S"
 	.code16
@@ -173,4 +172,3 @@ notification_string:	.asciz "UBOOT2 "
 chs_string:	.asciz "CHS "
 jmp_string:	.asciz "JMP "
 
-#endif
diff --git a/arch/x86/boot/boot_main.S b/arch/x86/boot/boot_main.S
index f3d248a..94fe434 100644
--- a/arch/x86/boot/boot_main.S
+++ b/arch/x86/boot/boot_main.S
@@ -30,7 +30,6 @@
  * @brief Fix segment:offset settings of some buggy BIOSs
  */
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
 
 	.file "boot_main.S"
 	.code16
@@ -55,4 +54,3 @@ _start:
 
 	.size _start, .-_start
 
-#endif
diff --git a/arch/x86/boot/pmjump.S b/arch/x86/boot/pmjump.S
index d48e198..0e4cd38 100644
--- a/arch/x86/boot/pmjump.S
+++ b/arch/x86/boot/pmjump.S
@@ -20,7 +20,6 @@
  * @fn void protected_mode_jump(void)
  * @brief Switches the first time from real mode to flat mode
  */
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
 
 #include <asm/modes.h>
 #include "boot.h"
@@ -86,4 +85,3 @@ in_pm32:
 
 	.size protected_mode_jump, .-protected_mode_jump
 
-#endif
diff --git a/arch/x86/lib/memory16.S b/arch/x86/lib/memory16.S
index 01450fa..cb2f833 100644
--- a/arch/x86/lib/memory16.S
+++ b/arch/x86/lib/memory16.S
@@ -38,7 +38,6 @@
  *
  */
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
 
 	.section .boot.text.bios_get_memsize, "ax"
 	.code32
@@ -70,4 +69,3 @@ bios_get_memsize:
 
 	.size bios_get_memsize, .-bios_get_memsize
 
-#endif
diff --git a/arch/x86/lib/traveler.S b/arch/x86/lib/traveler.S
index 2b6dc85..0614195 100644
--- a/arch/x86/lib/traveler.S
+++ b/arch/x86/lib/traveler.S
@@ -41,8 +41,6 @@
  * Called from a 16 bit real mode segment and returns into a 32 bit segment
  */
 
-#ifndef DOXYGEN_SHOULD_SKIP_THIS
-
 #include <asm/modes.h>
 
 	.file "walkyrie.S"
@@ -180,4 +178,3 @@ enter_realmode:
 
 	.size prot_to_real, .-prot_to_real
 
-#endif
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
