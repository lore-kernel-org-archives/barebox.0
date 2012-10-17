Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamK-0007RU-Qu
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:37 +0200
Message-Id: <1350507817-7819-29-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 28/28] ARM: disable HAVE_CONFIGURABLE_MEMORY_LAYOUT
To: barebox@lists.infradead.org

HAVE_CONFIGURABLE_MEMORY_LAYOUT was first meant as a feature, now it's a
feature to remove it. barebox on ARM now completely uses the memory passed
in from the lowlevel code and configures the malloc area and stack space
during runtime making it obsolete to hardcode these values. With the
removal of HAVE_CONFIGURABLE_MEMORY_LAYOUT barebox no longer requests the
SDRAM region for the stack automatically, so add code to request the region
manually.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig            |    1 -
 arch/arm/cpu/cpu.c          |    9 +++++++++
 arch/arm/cpu/start.c        |    4 ++++
 arch/arm/pbl/zbarebox.lds.S |    8 ++++----
 common/meminfo.c            |    5 -----
 5 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 69a6e57..6b36654 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -2,7 +2,6 @@ config ARM
 	bool
 	select HAS_KALLSYMS
 	select HAS_MODULES
-	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index 2ca871f..0250b02 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -91,6 +91,15 @@ void arch_shutdown(void)
 	__asm__ __volatile__("msr cpsr, %0" : : "r"(r));
 }
 
+extern unsigned long arm_stack_top;
+
+static int arm_request_stack(void)
+{
+	request_sdram_region("stack", arm_stack_top - 0x8000, 0x8000);
+	return 0;
+}
+coredevice_initcall(arm_request_stack);
+
 #ifdef CONFIG_THUMB2_BAREBOX
 static void thumb2_execute(void *func, int argc, char *argv[])
 {
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 163a636..9247684 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -29,6 +29,8 @@
 
 static uint32_t __barebox_arm_boarddata;
 
+unsigned long arm_stack_top;
+
 /*
  * the board specific lowlevel init code can pass a pointer or
  * data value to barebox_arm_entry() and pick it up later with
@@ -85,6 +87,8 @@ static noinline void __start(uint32_t membase, uint32_t memsize,
 	mem_malloc_init((void *)malloc_start,
 			(void *)malloc_end);
 
+	arm_stack_top = membase + memsize;
+
 	__barebox_arm_boarddata = boarddata;
 
 	start_barebox();
diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
index ff2d2ab..582abc9 100644
--- a/arch/arm/pbl/zbarebox.lds.S
+++ b/arch/arm/pbl/zbarebox.lds.S
@@ -20,7 +20,7 @@
  * MA 02111-1307 USA
  *
  */
-
+#include <sizes.h>
 #include <asm-generic/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
 
@@ -29,7 +29,7 @@ OUTPUT_ARCH(arm)
 ENTRY(pbl_start)
 SECTIONS
 {
-	. = HEAD_TEXT_BASE;
+	. = TEXT_BASE - SZ_2M;
 
 	PRE_IMAGE
 
@@ -71,6 +71,6 @@ SECTIONS
 	__bss_stop = .;
 	_end = .;
 
-	_barebox_image_size = __piggydata_end - HEAD_TEXT_BASE;
-	_barebox_pbl_size = __bss_start - HEAD_TEXT_BASE;
+	_barebox_image_size = __piggydata_end - TEXT_BASE - SZ_2M;
+	_barebox_pbl_size = __bss_start - TEXT_BASE - SZ_2M;
 }
diff --git a/common/meminfo.c b/common/meminfo.c
index 06fce5a..b819d5a 100644
--- a/common/meminfo.c
+++ b/common/meminfo.c
@@ -13,11 +13,6 @@ static int display_meminfo(void)
 	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
 	printf("malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
 		mstart, mend, size_human_readable(msize));
-#ifdef CONFIG_ARM
-	printf("stack space:  0x%08x -> 0x%08x (size %s)\n",
-		STACK_BASE, STACK_BASE + STACK_SIZE,
-		size_human_readable(STACK_SIZE));
-#endif
 	return 0;
 }
 late_initcall(display_meminfo);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
