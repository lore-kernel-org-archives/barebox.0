Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpFUH-0005F1-G9
 for barebox@lists.infradead.org; Mon, 04 May 2015 12:28:42 +0000
Received: by labbd9 with SMTP id bd9so102843899lab.2
 for <barebox@lists.infradead.org>; Mon, 04 May 2015 05:28:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  4 May 2015 15:29:22 +0300
Message-Id: <1430742565-18714-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
References: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/5] MIPS: debug_ll_ns16550.h: drop _ns16550 suffix
To: barebox@lists.infradead.org

This commit makes it possible to have unified debug_ll_*
assembler routines for differrent UART program model.
E.g. we can use debug_ll_putc() routine in common
code without knowledge on exact UART model: ns16550
or ar933x.

Also rename *_check_char -> *_tstc.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../boards/img-ci20/include/board/board_pbl_start.h |  2 +-
 .../loongson-ls1b/include/board/board_pbl_start.h   |  2 +-
 .../netgear-wg102/include/board/board_pbl_start.h   |  6 +++---
 .../ritmix-rzx50/include/board/board_pbl_start.h    |  2 +-
 arch/mips/include/asm/debug_ll_ns16550.h            | 20 ++++++++++----------
 arch/mips/include/asm/pbl_nmon.h                    | 21 ++++++++++-----------
 6 files changed, 26 insertions(+), 27 deletions(-)

diff --git a/arch/mips/boards/img-ci20/include/board/board_pbl_start.h b/arch/mips/boards/img-ci20/include/board/board_pbl_start.h
index 26232f5..42d23c8 100644
--- a/arch/mips/boards/img-ci20/include/board/board_pbl_start.h
+++ b/arch/mips/boards/img-ci20/include/board/board_pbl_start.h
@@ -32,7 +32,7 @@
 
 	debug_ll_ns16550_init
 
-	debug_ll_ns16550_outc '.'
+	debug_ll_outc '.'
 	debug_ll_ns16550_outnl
 
 	mips_nmon
diff --git a/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h b/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h
index 1a92794..a3c585e 100644
--- a/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h
+++ b/arch/mips/boards/loongson-ls1b/include/board/board_pbl_start.h
@@ -30,7 +30,7 @@
 
 	debug_ll_ns16550_init
 
-	debug_ll_ns16550_outc '.'
+	debug_ll_outc '.'
 	debug_ll_ns16550_outnl
 
 	mips_nmon
diff --git a/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h b/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
index d74d2c2..9fb2205 100644
--- a/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
+++ b/arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
@@ -35,7 +35,7 @@
 	pbl_ar2312_rst_uart0
 	debug_ll_ns16550_init
 
-	debug_ll_ns16550_outc 'a'
+	debug_ll_outc 'a'
 	debug_ll_ns16550_outnl
 
 	/* check if SDRAM is already configured,
@@ -60,7 +60,7 @@
 	pbl_probe_mem t0, t1, KSEG1
 	beq t0, t1, sdram_configured
 	 nop
-	debug_ll_ns16550_outc '#'
+	debug_ll_outc '#'
 	debug_ll_ns16550_outnl
 
 1:
@@ -68,7 +68,7 @@
 	 nop
 
 sdram_configured:
-	debug_ll_ns16550_outc 'b'
+	debug_ll_outc 'b'
 	debug_ll_ns16550_outnl
 
 	copy_to_link_location	pbl_start
diff --git a/arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h b/arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h
index fb914d9..7c2fa0b 100644
--- a/arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h
+++ b/arch/mips/boards/ritmix-rzx50/include/board/board_pbl_start.h
@@ -32,7 +32,7 @@
 
 	debug_ll_ns16550_init
 
-	debug_ll_ns16550_outc '.'
+	debug_ll_outc '.'
 	debug_ll_ns16550_outnl
 
 	mips_nmon
diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/include/asm/debug_ll_ns16550.h
index 032f0a2..a3e1c52 100644
--- a/arch/mips/include/asm/debug_ll_ns16550.h
+++ b/arch/mips/include/asm/debug_ll_ns16550.h
@@ -90,7 +90,7 @@ static __inline__ void PUTC_LL(char ch)
 /*
  * output a character in a0
  */
-.macro	debug_ll_ns16550_outc_a0
+.macro	debug_ll_outc_a0
 #ifdef CONFIG_DEBUG_LL
 	.set	push
 	.set	reorder
@@ -110,10 +110,10 @@ static __inline__ void PUTC_LL(char ch)
 /*
  * output a character
  */
-.macro	debug_ll_ns16550_outc chr
+.macro	debug_ll_outc chr
 #ifdef CONFIG_DEBUG_LL
 	li	a0, \chr
-	debug_ll_ns16550_outc_a0
+	debug_ll_outc_a0
 #endif /* CONFIG_DEBUG_LL */
 .endm
 
@@ -122,15 +122,15 @@ static __inline__ void PUTC_LL(char ch)
  */
 .macro	debug_ll_ns16550_outnl
 #ifdef CONFIG_DEBUG_LL
-	debug_ll_ns16550_outc '\r'
-	debug_ll_ns16550_outc '\n'
+	debug_ll_outc '\r'
+	debug_ll_outc '\n'
 #endif /* CONFIG_DEBUG_LL */
 .endm
 
 /*
  * output a 32-bit value in hex
  */
-.macro debug_ll_ns16550_outhexw
+.macro debug_ll_outhexw
 #ifdef CONFIG_DEBUG_LL
 	.set	push
 	.set	reorder
@@ -151,7 +151,7 @@ static __inline__ void PUTC_LL(char ch)
 203:
 	addi	a0, a0, '0'
 
-	debug_ll_ns16550_outc_a0
+	debug_ll_outc_a0
 
 	bgtz	t5, 202b
 
@@ -165,7 +165,7 @@ static __inline__ void PUTC_LL(char ch)
  *  v0 = 0   no character in input buffer
  *  v0 != 0  character in input buffer
  */
-.macro	debug_ll_ns16550_check_char
+.macro	debug_ll_tstc
 #ifdef CONFIG_DEBUG_LL
 	.set	push
 	.set	reorder
@@ -183,13 +183,13 @@ static __inline__ void PUTC_LL(char ch)
 /*
  * get character to v0
  */
-.macro	debug_ll_ns16550_getc
+.macro	debug_ll_getc
 #ifdef CONFIG_DEBUG_LL
 	.set	push
 	.set	reorder
 
 204:
-	debug_ll_ns16550_check_char
+	debug_ll_tstc
 
 	/* try again */
 	beqz	v0, 204b
diff --git a/arch/mips/include/asm/pbl_nmon.h b/arch/mips/include/asm/pbl_nmon.h
index e7baa4c..90e2da8 100644
--- a/arch/mips/include/asm/pbl_nmon.h
+++ b/arch/mips/include/asm/pbl_nmon.h
@@ -17,8 +17,7 @@
  *
  */
 
-#include <board/debug_ll.h>
-#include <asm/debug_ll_ns16550.h>
+#include <mach/debug_ll.h>
 
 #define CODE_ESC	0x1b
 
@@ -74,7 +73,7 @@ nmon_wait_user:
 
 	nmon_outs	msg_bsp
 
-	debug_ll_ns16550_check_char
+	debug_ll_tstc
 
 	bnez	v0, 3f
 
@@ -91,7 +90,7 @@ msg_nmon_press_any_key:
 	.align	4
 3:
 	/* get received char from ns16550's buffer */
-	debug_ll_ns16550_getc
+	debug_ll_getc
 #endif /* CONFIG_NMON_USER_START */
 
 nmon_main_help:
@@ -102,9 +101,9 @@ nmon_main_help:
 nmon_main:
 	nmon_outs	msg_prompt
 
-	debug_ll_ns16550_getc
+	debug_ll_getc
 
-	/* prepare a0 for debug_ll_ns16550_outc_a0 */
+	/* prepare a0 for debug_ll_outc_a0 */
 	move	a0, v0
 
 	li	v1, 'q'
@@ -137,7 +136,7 @@ nmon_cmd_d:
 	nmon_outs	msg_nl
 
 	lw	a0, (v0)
-	debug_ll_ns16550_outhexw
+	debug_ll_outhexw
 
 	b	nmon_main
 
@@ -170,7 +169,7 @@ nmon_cmd_g:
 	b	nmon_main
 
 _nmon_outc_a0:
-	debug_ll_ns16550_outc_a0
+	debug_ll_outc_a0
 	jr	ra
 
 _nmon_outs:
@@ -178,7 +177,7 @@ _nmon_outs:
 	addi	a1, a1, 1
 	beqz	a0, _nmon_jr_ra_exit
 
-	debug_ll_ns16550_outc_a0
+	debug_ll_outc_a0
 
 	b	_nmon_outs
 
@@ -188,7 +187,7 @@ _nmon_gethexw:
 	li	t2, 0
 
 _get_hex_digit:
-	debug_ll_ns16550_getc
+	debug_ll_getc
 
 	li	v1, CODE_ESC
 	beq	v0, v1, nmon_main
@@ -221,7 +220,7 @@ _get_hex_digit:
 	sub	a3, v0, a3
 
 0:	move	a0, v0
-	debug_ll_ns16550_outc_a0
+	debug_ll_outc_a0
 
 	sll	t2, t2, 4
 	or	t2, t2, a3
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
