Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O7OXj-0008Do-Sa
	for barebox@lists.infradead.org; Thu, 29 Apr 2010 07:52:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Apr 2010 09:52:06 +0200
Message-Id: <1272527535-17527-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
References: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/17] ARM: update icache functions to use get_cr/set_cr
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/cpu.c |   94 +++++++--------------------------------------------
 1 files changed, 13 insertions(+), 81 deletions(-)

diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index a5e2fe2..fbc91aa 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -28,107 +28,39 @@
 #include <common.h>
 #include <command.h>
 #include <asm/mmu.h>
-
-/**
- * Read special processor register
- * @return co-processor 15, register #1 (control register)
- */
-static unsigned long read_p15_c1 (void)
-{
-	unsigned long value;
-
-	__asm__ __volatile__(
-		"mrc	p15, 0, %0, c1, c0, 0   @ read control reg\n"
-		: "=r" (value)
-		:
-		: "memory");
-
-#ifdef MMU_DEBUG
-	printf ("p15/c1 is = %08lx\n", value);
-#endif
-	return value;
-}
-
-/**
- *
- * Write special processor register
- * @param[in] value to write
- * @return to co-processor 15, register #1 (control register)
- */
-static void write_p15_c1 (unsigned long value)
-{
-#ifdef MMU_DEBUG
-	printf ("write %08lx to p15/c1\n", value);
-#endif
-	__asm__ __volatile__(
-		"mcr	p15, 0, %0, c1, c0, 0   @ write it back\n"
-		:
-		: "r" (value)
-		: "memory");
-
-	read_p15_c1 ();
-}
-
-/**
- * Wait for co prozessor (waste time)
- * Co processor seems to need some delay between accesses
- */
-static void cp_delay (void)
-{
-	volatile int i;
-
-	for (i = 0; i < 100; i++)	/* FIXME does it work as expected?? */
-		;
-}
-
-/** mmu off/on */
-#define C1_MMU		(1<<0)
-/** alignment faults off/on */
-#define C1_ALIGN	(1<<1)
-/** dcache off/on */
-#define C1_DC		(1<<2)
-/** big endian off/on */
-#define C1_BIG_ENDIAN	(1<<7)
-/** system protection */
-#define C1_SYS_PROT	(1<<8)
-/** ROM protection */
-#define C1_ROM_PROT	(1<<9)
-/** icache off/on */
-#define C1_IC		(1<<12)
-/** location of vectors: low/high addresses */
-#define C1_HIGH_VECTORS (1<<13)
+#include <asm/system.h>
 
 /**
  * Enable processor's instruction cache
  */
-void icache_enable (void)
+void icache_enable(void)
 {
-	ulong reg;
+	u32 r;
 
-	reg = read_p15_c1 ();		/* get control reg. */
-	cp_delay ();
-	write_p15_c1 (reg | C1_IC);
+	r = get_cr();
+	r |= CR_I;
+	set_cr(r);
 }
 
 /**
  * Disable processor's instruction cache
  */
-void icache_disable (void)
+void icache_disable(void)
 {
-	ulong reg;
+	u32 r;
 
-	reg = read_p15_c1 ();
-	cp_delay ();
-	write_p15_c1 (reg & ~C1_IC);
+	r = get_cr();
+	r &= ~CR_I;
+	set_cr(r);
 }
 
 /**
  * Detect processor's current instruction cache status
  * @return 0=disabled, 1=enabled
  */
-int icache_status (void)
+int icache_status(void)
 {
-	return (read_p15_c1 () & C1_IC) != 0;
+	return (get_cr () & CR_I) != 0;
 }
 
 /**
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
