Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rbvcb-0008Os-2K
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 14:52:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 17 Dec 2011 15:52:08 +0100
Message-Id: <1324133529-2036-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] ARM: get runtime offset of board_init_lowlevel_return by
 using separate section
To: barebox@lists.infradead.org

We used to get the runtime offset of the board_init_lowlevel_return
by doing a &board_init_lowlevel_return. This does not work in thumb-2
mode, so use a separate linker section for this function instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c               |    4 ++--
 arch/arm/include/asm/barebox-arm.h |    1 +
 arch/arm/lib/barebox.lds.S         |    2 ++
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index b3a0419..1f4fdd2 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -100,7 +100,7 @@ void __naked __bare_init reset(void)
  * Board code can jump here by either returning from board_init_lowlevel
  * or by calling this funtion directly.
  */
-void __naked __bare_init board_init_lowlevel_return(void)
+void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 {
 	uint32_t r, addr;
 
@@ -115,7 +115,7 @@ void __naked __bare_init board_init_lowlevel_return(void)
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
 	/* Get start of binary image */
-	addr -= (uint32_t)&board_init_lowlevel_return - TEXT_BASE;
+	addr -= (uint32_t)&__ll_return - TEXT_BASE;
 
 	/* relocate to link address if necessary */
 	if (addr != TEXT_BASE)
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 3339782..b880dd4 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -37,6 +37,7 @@ int	board_init(void);
 int	dram_init (void);
 
 extern char __exceptions_start[], __exceptions_stop[];
+extern char __ll_return[];
 
 void board_init_lowlevel(void);
 void board_init_lowlevel_return(void);
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index db876af..cc30f16 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -39,6 +39,8 @@ SECTIONS
 		_stext = .;
 		_text = .;
 		*(.text_entry*)
+		__ll_return = .;
+		*(.text_ll_return*)
 #ifdef CONFIG_ARCH_EP93XX
 		/* the EP93xx expects to find the pattern 'CRUS' at 0x1000 */
 	  . = 0x1000;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
