Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvdig-0003mD-60
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 07:52:07 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 18 Feb 2019 08:52:01 +0100
Message-Id: <20190218075202.10091-3-o.rempel@pengutronix.de>
In-Reply-To: <20190218075202.10091-1-o.rempel@pengutronix.de>
References: <20190218075202.10091-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 3/4] MIPS: relocation: do not use configurable memory layout
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

The relocator is not able to patch properly new location of
the stack. To make it work properly it is better to disable
HAVE_CONFIGURABLE_MEMORY_LAYOUT.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/Kconfig                  |  1 -
 arch/mips/boot/main_entry-pbl.c    |  4 ++--
 arch/mips/boot/main_entry.c        | 17 +++++++++++++++--
 arch/mips/include/asm/pbl_macros.h |  4 ++--
 arch/mips/lib/cpu-probe.c          | 14 ++++++++++++++
 arch/mips/lib/pbl.lds.S            |  2 +-
 6 files changed, 34 insertions(+), 8 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 49f238df58..b59c3a9e87 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -7,7 +7,6 @@ config MIPS
 	select GENERIC_LIB_ASHRDI3
 	select GENERIC_LIB_LSHRDI3
 	select HAS_KALLSYMS
-	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DMA
diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
index 60be645148..02ddd5ec24 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -25,7 +25,7 @@ static unsigned long *ttb;
 static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
 	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
-	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
+	free_mem_ptr = TEXT_BASE - SZ_128K;
 	free_mem_end_ptr = free_mem_ptr + SZ_128K;
 
 	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
@@ -52,7 +52,7 @@ void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
 	barebox_uncompress(&input_data, pg_len);
 
 	fdt_len = (u32)fdt_end - (u32)fdt;
-	fdt_new = (void *)PAGE_ALIGN_DOWN(STACK_BASE - fdt_len);
+	fdt_new = (void *)PAGE_ALIGN_DOWN(TEXT_BASE - MALLOC_SIZE - STACK_SIZE - fdt_len);
 	memcpy(fdt_new, fdt, fdt_len);
 
 	barebox = (void *)TEXT_BASE;
diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 84325da93a..5b88730b07 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -12,6 +12,7 @@
 #include <asm/cpu-features.h>
 #include <asm/mipsregs.h>
 #include <asm/addrspace.h>
+#include <linux/sizes.h>
 
 extern void handle_reserved(void);
 
@@ -61,6 +62,7 @@ static void trap_init(void)
 
 extern void *glob_fdt;
 extern u32 glob_fdt_size;
+extern unsigned long mips_stack_top;
 
 /**
  * Called plainly from assembler code
@@ -69,6 +71,7 @@ extern u32 glob_fdt_size;
  */
 void __bare_init main_entry(void *fdt, u32 fdt_size)
 {
+	unsigned long malloc_start, malloc_end;
 	/* clear the BSS first */
 	memset(__bss_start, 0x00, __bss_stop - __bss_start);
 
@@ -82,8 +85,18 @@ void __bare_init main_entry(void *fdt, u32 fdt_size)
 
 	trap_init();
 
-	mem_malloc_init((void *)MALLOC_BASE,
-			(void *)(MALLOC_BASE + MALLOC_SIZE - 1));
+	malloc_end = _stext;
+
+	if (MALLOC_SIZE > 0)
+		malloc_start = malloc_end - MALLOC_SIZE;
+	else
+		malloc_start = malloc_end - SZ_8M;
+
+	pr_debug("initializing malloc pool at 0x%08lx (size 0x%08lx)\n",
+			malloc_start, malloc_end - malloc_start);
+
+	mem_malloc_init((void *)malloc_start, (void *)_stext - 1);
+	mips_stack_top = malloc_start;
 
 	glob_fdt = fdt;
 	glob_fdt_size = fdt_size;
diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index e78d1afe6a..c62910ff60 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -187,7 +187,7 @@ copy_loop_exit:
 	 *
 	 */
 
-#if (STACK_BASE + STACK_SIZE) % 16 != 0
+#if (TEXT_BASE - MALLOC_SIZE) % 16 != 0
 #error stack pointer must be 16-byte-aligned
 #endif
 
@@ -196,7 +196,7 @@ copy_loop_exit:
 	.set	noreorder
 
 	/* set stack pointer; reserve four 32-bit argument slots */
-	la	sp, STACK_BASE + STACK_SIZE - 16
+	la	sp, (TEXT_BASE - MALLOC_SIZE - 16)
 
 	.set	pop
 	.endm
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index cf63849743..2556a8b240 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -11,6 +11,9 @@
 #include <asm/mipsregs.h>
 #include <asm/cpu-info.h>
 #include <asm/cpu.h>
+#include <memory.h>
+#include <asm-generic/memory_layout.h>
+#include <init.h>
 
 const char *__cpu_name;
 struct cpuinfo_mips cpu_data[1];
@@ -161,3 +164,14 @@ void cpu_probe(void)
 		break;
 	}
 }
+
+unsigned long mips_stack_top;
+
+static int mips_request_stack(void)
+{
+	if (!request_sdram_region("stack", mips_stack_top - STACK_SIZE, STACK_SIZE))
+		pr_err("Error: Cannot request SDRAM region for stack\n");
+
+	return 0;
+}
+coredevice_initcall(mips_request_stack);
diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
index 1f0285dd6f..2be90b8e5f 100644
--- a/arch/mips/lib/pbl.lds.S
+++ b/arch/mips/lib/pbl.lds.S
@@ -10,7 +10,7 @@
 OUTPUT_ARCH("mips")
 SECTIONS
 {
-	. = HEAD_TEXT_BASE;
+	. = TEXT_BASE - MALLOC_SIZE;
 
 	PRE_IMAGE
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
