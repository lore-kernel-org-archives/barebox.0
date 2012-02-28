Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S2Irb-0001CT-RT
 for barebox@lists.infradead.org; Tue, 28 Feb 2012 08:56:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Feb 2012 09:56:39 +0100
Message-Id: <1330419401-11994-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1330419401-11994-1-git-send-email-s.hauer@pengutronix.de>
References: <1330419401-11994-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: move exception vectors away from start of binary
To: barebox@lists.infradead.org

Traditionally U-Boot and barebox have the exception vectors at
the start of the binary. There is no real reason in doing so,
because in the majority of cases this data will not be at 0x0
where it could be used as vectors directly anyway.
This patch puts the vectors into a separate linker section and
defines an head function which is placed at the start of the
image instead. Putting this in a separate function also has
the advantage that it can be placed at the start of images
which require an additional header like several Freescale i.MX
images. As the head function contains the barebox arm magic
those images can now also be detected as barebox images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    3 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    3 +-
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |    3 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    3 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    3 +-
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |    3 +-
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    3 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |    3 +-
 arch/arm/cpu/mmu.c                                 |    4 +-
 arch/arm/cpu/start.c                               |   14 +++++-----
 arch/arm/include/asm/barebox-arm-head.h            |   24 ++++++++++++++++++++
 arch/arm/include/asm/barebox-arm.h                 |    2 +
 arch/arm/lib/barebox.lds.S                         |    5 +++-
 13 files changed, 55 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm/include/asm/barebox-arm-head.h

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 73e54f2..695e75f 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -46,13 +46,14 @@
 #include <usb/fsl_usb2.h>
 #include <mach/usb.h>
 #include <mach/devices-imx25.h>
+#include <asm/barebox-arm-head.h>
 
 extern unsigned long _stext;
 extern void exception_vectors(void);
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash_header.c b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
index 93c8348..f8ed5d4 100644
--- a/arch/arm/boards/eukrea_cpuimx35/flash_header.c
+++ b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
@@ -1,12 +1,13 @@
 #include <common.h>
 #include <mach/imx-flash-header.h>
 #include <mach/imx-regs.h>
+#include <asm/barebox-arm-head.h>
 
 extern void exception_vectors(void);
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/eukrea_cpuimx51/flash_header.c b/arch/arm/boards/eukrea_cpuimx51/flash_header.c
index f953b09..ac6bbdc 100644
--- a/arch/arm/boards/eukrea_cpuimx51/flash_header.c
+++ b/arch/arm/boards/eukrea_cpuimx51/flash_header.c
@@ -1,11 +1,12 @@
 #include <common.h>
 #include <mach/imx-flash-header.h>
+#include <asm/barebox-arm-head.h>
 
 extern unsigned long _stext;
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 5aa54e4..d7e24cf 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -42,13 +42,14 @@
 #include <i2c/i2c.h>
 #include <mfd/mc34704.h>
 #include <mach/devices-imx25.h>
+#include <asm/barebox-arm-head.h>
 
 extern unsigned long _stext;
 extern void exception_vectors(void);
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
index 92f2142..85b52a2 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
@@ -1,12 +1,13 @@
 #include <common.h>
 #include <mach/imx-flash-header.h>
 #include <mach/imx-regs.h>
+#include <asm/barebox-arm-head.h>
 
 extern void exception_vectors(void);
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/freescale-mx51-pdk/flash_header.c b/arch/arm/boards/freescale-mx51-pdk/flash_header.c
index 5f94506..297dca1 100644
--- a/arch/arm/boards/freescale-mx51-pdk/flash_header.c
+++ b/arch/arm/boards/freescale-mx51-pdk/flash_header.c
@@ -1,11 +1,12 @@
 #include <common.h>
 #include <mach/imx-flash-header.h>
+#include <asm/barebox-arm-head.h>
 
 extern unsigned long _stext;
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/freescale-mx53-loco/flash_header.c b/arch/arm/boards/freescale-mx53-loco/flash_header.c
index 490e223..b459640 100644
--- a/arch/arm/boards/freescale-mx53-loco/flash_header.c
+++ b/arch/arm/boards/freescale-mx53-loco/flash_header.c
@@ -16,10 +16,11 @@
 #include <common.h>
 #include <asm/byteorder.h>
 #include <mach/imx-flash-header.h>
+#include <asm/barebox-arm-head.h>
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/freescale-mx53-smd/flash_header.c b/arch/arm/boards/freescale-mx53-smd/flash_header.c
index 490e223..b459640 100644
--- a/arch/arm/boards/freescale-mx53-smd/flash_header.c
+++ b/arch/arm/boards/freescale-mx53-smd/flash_header.c
@@ -16,10 +16,11 @@
 #include <common.h>
 #include <asm/byteorder.h>
 #include <mach/imx-flash-header.h>
+#include <asm/barebox-arm-head.h>
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6d9b1e0..c19f931 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -4,6 +4,7 @@
 #include <errno.h>
 #include <sizes.h>
 #include <asm/memory.h>
+#include <asm/barebox-arm.h>
 #include <asm/system.h>
 #include <memory.h>
 
@@ -182,7 +183,6 @@ static void vectors_init(void)
 {
 	u32 *exc, *zero = NULL;
 	void *vectors;
-	extern unsigned long exception_vectors;
 	u32 cr;
 
 	cr = get_cr();
@@ -210,7 +210,7 @@ static void vectors_init(void)
 
 	vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 	memset(vectors, 0, PAGE_SIZE);
-	memcpy(vectors, &exception_vectors, ARM_VECTORS_SIZE);
+	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
 
 	if (cr & CR_V)
 		exc[256 - 16] = (u32)vectors | PTE_TYPE_SMALL | PTE_FLAGS_CACHED;
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 61d7e3e..1a1538e 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -23,11 +23,17 @@
 #include <common.h>
 #include <init.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <asm/system.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
-void __naked __section(.text_entry) exception_vectors(void)
+void __naked __section(.text_entry) start(void)
+{
+	barebox_arm_head();
+}
+
+void __naked __section(.text_exceptions) exception_vectors(void)
 {
 	__asm__ __volatile__ (
 		"b reset\n"				/* reset */
@@ -48,12 +54,6 @@ void __naked __section(.text_entry) exception_vectors(void)
 		"1: bne 1b\n"				/* irq (interrupt) */
 		"1: bne 1b\n"				/* fiq (fast interrupt) */
 #endif
-		".word 0x65726162\n"			/* 'bare' */
-		".word 0x00786f62\n"			/* 'box' */
-		".word _text\n"				/* text base. If copied there,
-							 * barebox can skip relocation
-							 */
-		".word _barebox_image_size\n"		/* image size to copy */
 	);
 }
 
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
new file mode 100644
index 0000000..fdbee8c
--- /dev/null
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -0,0 +1,24 @@
+#ifndef __ASM_ARM_HEAD_H
+#define __ASM_ARM_HEAD_H
+
+static inline void barebox_arm_head(void)
+{
+	__asm__ __volatile__ (
+		"b reset\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		".word 0x65726162\n"			/* 'bare' */
+		".word 0x00786f62\n"			/* 'box' */
+		".word _text\n"				/* text base. If copied there,
+							 * barebox can skip relocation
+							 */
+		".word _barebox_image_size\n"		/* image size to copy */
+	);
+}
+
+#endif /* __ASM_ARM_HEAD_H */
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 7bb1af1..3339782 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -36,6 +36,8 @@ int	cleanup_before_linux(void);
 int	board_init(void);
 int	dram_init (void);
 
+extern char __exceptions_start[], __exceptions_stop[];
+
 void board_init_lowlevel(void);
 void board_init_lowlevel_return(void);
 void arch_init_lowlevel(void);
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index e9f6210..531e3d0 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -26,7 +26,7 @@
 
 OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
 OUTPUT_ARCH(arm)
-ENTRY(exception_vectors)
+ENTRY(start)
 SECTIONS
 {
 	. = TEXT_BASE;
@@ -47,6 +47,9 @@ SECTIONS
 		__bare_init_start = .;
 		*(.text_bare_init*)
 		__bare_init_end = .;
+		__exceptions_start = .;
+		KEEP(*(.text_exceptions*))
+		__exceptions_stop = .;
 		*(.text*)
 	}
 	BAREBOX_BARE_INIT_SIZE
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
