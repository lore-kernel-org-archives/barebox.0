Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiO3k-0001CR-6p
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 10:27:06 +0000
Date: Wed, 4 Jan 2012 11:26:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120104102656.GR5446@pengutronix.de>
References: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
 <1325566850-24432-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325566850-24432-5-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/6] ARM: add ARM_EXCEPTION_VECTOR6 options
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 03, 2012 at 06:00:49AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> to pass the bare_init or barebox size via the vector 6
> 
> ARM_EXCEPTION_VECTOR6_BARE_INIT_SIZE    bare_init size
> ARM_EXCEPTION_VECTOR6_SIZE              barebox size
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/Kconfig     |   11 +++++++++++
>  arch/arm/cpu/start.c |   14 ++++++++++++--
>  2 files changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index b600179..49445fb 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -26,6 +26,17 @@ config ARM_LINUX
>  	default y
>  	depends on CMD_BOOTZ || CMD_BOOTU || CMD_BOOTM
>  
> +config ARM_EXCEPTION_VECTOR6
> +	bool
> +
> +config ARM_EXCEPTION_VECTOR6_SIZE
> +	bool
> +	depends on ARM_EXCEPTION_VECTOR6
> +
> +config  ARM_EXCEPTION_VECTOR6_BARE_INIT_SIZE
> +	bool
> +	depends on ARM_EXCEPTION_VECTOR6
> +
>  menu "System Type                   "
>  
>  choice
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 5e09300..09e80d7 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -27,6 +27,16 @@
>  #include <asm-generic/memory_layout.h>
>  #include <asm/sections.h>
>  
> +#ifdef CONFIG_ARM_EXCEPTION_VECTOR6
> +#ifdef CONFIG_ARM_EXCEPTION_VECTOR6_BARE_INIT_SIZE
> +#define exception_vector_6	".word _barebox_bare_init_size\n"
> +#else
> +#define exception_vector_6	".word _barebox_image_size\n"
> +#endif
> +#else
> +#define exception_vector_6	"1: bne 1b\n"
> +#endif

Sorry, I don't like this at all. This solves the AT91 case, but requires
even more ifdefs to support some other architecture which might need
some magic as exception vector 6.
Additionally we don't need the exception vectors at the start of the
binary. AT91 (and others) might need something that *looks* like arm
exception vectors, but this don't need to be our original exception
vectors.
My suggestion is that we extend my original 'move exception vectors away
from start of binary' patch in a way that the header can be fully
customized on board or architecture level.

See the following patch for a first version.

Sascha

8<-------------------------------------------------

ARM: move exception vectors away from start of binary

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
The header of the image can be customized using
CONFIG_ARM_CUSTOM_HEAD. If this is set the user must specify
a custom barebox_arm_head function in the text_entry section.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                                   |    6 ++++
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    3 +-
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    3 +-
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |    3 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    3 +-
 .../boards/freescale-mx35-3-stack/flash_header.c   |    3 +-
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |    3 +-
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    3 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |    3 +-
 arch/arm/cpu/mmu.c                                 |    4 +-
 arch/arm/cpu/start.c                               |   20 ++++++++------
 arch/arm/include/asm/barebox-arm-head.h            |   28 ++++++++++++++++++++
 arch/arm/include/asm/barebox-arm.h                 |    2 +
 arch/arm/lib/barebox.lds.S                         |    5 +++-
 14 files changed, 69 insertions(+), 20 deletions(-)
 create mode 100644 arch/arm/include/asm/barebox-arm-head.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b600179..b0b8f9c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -26,6 +26,12 @@ config ARM_LINUX
 	default y
 	depends on CMD_BOOTZ || CMD_BOOTU || CMD_BOOTM
 
+config ARM_CUSTOM_HEAD
+	bool
+	help
+	  specify a board or architecture specific custom head
+	  function
+
 menu "System Type                   "
 
 choice
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 162c117..c7b0d2d 100644
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
+	barebox_arm_default_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash_header.c b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
index 93c8348..4ded270 100644
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
+	barebox_arm_default_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/eukrea_cpuimx51/flash_header.c b/arch/arm/boards/eukrea_cpuimx51/flash_header.c
index f953b09..4f29dd9 100644
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
+	barebox_arm_default_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 5aa54e4..78b872c 100644
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
+	barebox_arm_default_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
index 4bee797..63c1502 100644
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
+	barebox_arm_default_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/freescale-mx51-pdk/flash_header.c b/arch/arm/boards/freescale-mx51-pdk/flash_header.c
index 5f94506..d513c8c 100644
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
+	barebox_arm_default_head();
 }
 
 struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/freescale-mx53-loco/flash_header.c b/arch/arm/boards/freescale-mx53-loco/flash_header.c
index 490e223..105f54a 100644
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
+	barebox_arm_default_head();
 }
 
 struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/boards/freescale-mx53-smd/flash_header.c b/arch/arm/boards/freescale-mx53-smd/flash_header.c
index 490e223..105f54a 100644
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
+	barebox_arm_default_head();
 }
 
 struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index c6c91df..e8ff676 100644
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
index 5e09300..e78d749 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -23,14 +23,22 @@
 #include <common.h>
 #include <init.h>
 #include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
 #include <asm/system.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
-void __naked __section(.text_entry) exception_vectors(void)
+#ifndef CONFIG_ARM_CUSTOM_HEAD
+void __naked __section(.text_entry) barebox_arm_head(void)
+{
+	barebox_arm_default_head();
+}
+#endif
+
+void __naked __section(.text_exceptions) exception_vectors(void)
 {
 	__asm__ __volatile__ (
-		"b reset\n"				/* reset */
+		"b start_arm_barebox\n"			/* reset */
 #ifdef CONFIG_ARM_EXCEPTIONS
 		"ldr pc, =undefined_instruction\n"	/* undefined instruction */
 		"ldr pc, =software_interrupt\n"		/* software interrupt (SWI) */
@@ -48,12 +56,6 @@ void __naked __section(.text_entry) exception_vectors(void)
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
 
@@ -61,7 +63,7 @@ void __naked __section(.text_entry) exception_vectors(void)
  * The actual reset vector. This code is position independent and usually
  * does not run at the address it's linked at.
  */
-void __naked __bare_init reset(void)
+void __naked __bare_init start_arm_barebox(void)
 {
 	uint32_t r;
 
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
new file mode 100644
index 0000000..72ad8ec
--- /dev/null
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -0,0 +1,28 @@
+#ifndef __BAREBOX_ARM_HEAD_H
+#define __BAREBOX_ARM_HEAD_H
+
+#ifndef ARM_EXCEPTION_VECTOR_6
+#define ARM_EXCEPTION_VECTOR_6	".word 0x0\n"
+#endif
+
+static inline void barebox_arm_default_head(void)
+{
+	__asm__ __volatile__ (
+		"b start_arm_barebox\n"
+		".word 0x0\n"
+		".word 0x0\n"
+		".word 0x0\n"
+		".word 0x0\n"
+		ARM_EXCEPTION_VECTOR_6
+		".word 0x0\n"
+		".word 0x0\n"
+		".word 0x65726162\n"			/* 'bare' */
+		".word 0x00786f62\n"			/* 'box' */
+		".word _text\n"				/* text base. If copied there,
+							 * barebox can skip relocation
+							 */
+		".word _barebox_image_size\n"		/* image size to copy */
+	);
+}
+
+#endif /* __BAREBOX_ARM_HEAD_H */
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
index f05f345..f0d675b 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -26,7 +26,7 @@
 
 OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
 OUTPUT_ARCH(arm)
-ENTRY(exception_vectors)
+ENTRY(barebox_arm_head)
 SECTIONS
 {
 	. = TEXT_BASE;
@@ -45,6 +45,9 @@ SECTIONS
 	  LONG(0x53555243) /* 'CRUS' */
 #endif
 		*(.text_bare_init*)
+		__exceptions_start = .;
+		KEEP(*(.text_exceptions*))
+		__exceptions_stop = .;
 		*(.text*)
 	}
 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
