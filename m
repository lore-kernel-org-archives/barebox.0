Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alxut-0002rU-Ch
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 12:11:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Apr 2016 14:10:40 +0200
Message-Id: <1459512644-8581-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1459512644-8581-1-git-send-email-s.hauer@pengutronix.de>
References: <1459512644-8581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] ARM: i.MX: remove unused imx-flash-header.h
To: Barebox List <barebox@lists.infradead.org>

All i.MX images are nowadays built with the imx-image tool, so we do not
need the header files and Kconfig options anymore. Remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c        |   1 -
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   1 -
 arch/arm/boards/freescale-mx25-3ds/3stack.c       |   1 -
 arch/arm/boards/freescale-mx51-babbage/board.c    |   1 -
 arch/arm/boards/freescale-mx53-qsb/board.c        |   1 -
 arch/arm/boards/karo-tx53/board.c                 |   1 -
 arch/arm/configs/eukrea_cpuimx25_defconfig        |   2 -
 arch/arm/configs/tx51stk5_defconfig               |   2 -
 arch/arm/mach-imx/Kconfig                         |  52 -------
 arch/arm/mach-imx/imx-bbu-internal.c              |   1 -
 arch/arm/mach-imx/include/mach/barebox.lds.h      |  32 ----
 arch/arm/mach-imx/include/mach/imx-flash-header.h | 182 ----------------------
 include/asm-generic/barebox.lds.h                 |   7 +-
 13 files changed, 1 insertion(+), 283 deletions(-)
 delete mode 100644 arch/arm/mach-imx/include/mach/barebox.lds.h
 delete mode 100644 arch/arm/mach-imx/include/mach/imx-flash-header.h

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index f023d70..d1d020e 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -32,7 +32,6 @@
 
 #include <asm/armlinux.h>
 
-#include <mach/imx-flash-header.h>
 #include <mach/devices-imx51.h>
 #include <mach/imx51-regs.h>
 #include <mach/iomux-mx51.h>
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 4ab5b95..22bf740 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -38,7 +38,6 @@
 #include <mach/iim.h>
 #include <fec.h>
 #include <nand.h>
-#include <mach/imx-flash-header.h>
 #include <mach/iomux-mx25.h>
 #include <i2c/i2c.h>
 #include <usb/fsl_usb2.h>
diff --git a/arch/arm/boards/freescale-mx25-3ds/3stack.c b/arch/arm/boards/freescale-mx25-3ds/3stack.c
index f000010..6d0e382 100644
--- a/arch/arm/boards/freescale-mx25-3ds/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3ds/3stack.c
@@ -32,7 +32,6 @@
 #include <mach/imx-nand.h>
 #include <fec.h>
 #include <nand.h>
-#include <mach/imx-flash-header.h>
 #include <mach/iomux-mx25.h>
 #include <mach/generic.h>
 #include <mach/iim.h>
diff --git a/arch/arm/boards/freescale-mx51-babbage/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
index 6650ff3..c4acb8e 100644
--- a/arch/arm/boards/freescale-mx51-babbage/board.c
+++ b/arch/arm/boards/freescale-mx51-babbage/board.c
@@ -42,7 +42,6 @@
 #include <mach/iomux-mx51.h>
 #include <mach/devices-imx51.h>
 #include <mach/revision.h>
-#include <mach/imx-flash-header.h>
 
 #define MX51_CCM_CACRR 0x10
 
diff --git a/arch/arm/boards/freescale-mx53-qsb/board.c b/arch/arm/boards/freescale-mx53-qsb/board.c
index dd2abb5..f75c9d1 100644
--- a/arch/arm/boards/freescale-mx53-qsb/board.c
+++ b/arch/arm/boards/freescale-mx53-qsb/board.c
@@ -32,7 +32,6 @@
 
 #include <generated/mach-types.h>
 
-#include <mach/imx-flash-header.h>
 #include <mach/imx53-regs.h>
 #include <mach/revision.h>
 #include <mach/generic.h>
diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index b8164ca..9e65a83 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -34,7 +34,6 @@
 #include <mach/imx-nand.h>
 #include <mach/iim.h>
 #include <mach/imx5.h>
-#include <mach/imx-flash-header.h>
 #include <mach/bbu.h>
 
 #include <asm/armlinux.h>
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index 43580b1..5a508dc 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -1,7 +1,5 @@
 CONFIG_ARCH_IMX=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_ARCH_IMX_INTERNAL_BOOT=y
-CONFIG_ARCH_IMX_INTERNAL_BOOT_SERIAL=y
 CONFIG_MACH_EUKREA_CPUIMX25=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index 1afe378..acde46a 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -5,8 +5,6 @@ CONFIG_ARCH_IMX=y
 CONFIG_CPU_32=y
 CONFIG_CPU_V7=y
 CONFIG_CPU_32v7=y
-CONFIG_ARCH_IMX_INTERNAL_BOOT=y
-CONFIG_ARCH_IMX_INTERNAL_BOOT_NAND=y
 CONFIG_ARCH_IMX51=y
 CONFIG_MACH_TX51=y
 CONFIG_IMX_IIM=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 33ae145..5b648ac 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -39,27 +39,6 @@ config ARCH_TEXT_BASE
 	default 0x4fc00000 if MACH_VARISCITE_MX6
 	default 0x4fc00000 if MACH_PHYTEC_SOM_IMX6
 
-config ARCH_IMX_INTERNAL_BOOT
-	bool "support internal boot mode"
-	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6
-	depends on !HAVE_PBL_MULTI_IMAGES
-	help
-	  i.MX processors support two different boot modes. With the internal
-	  boot mode the boot medium contains a header describing the image to
-	  load. The header also contains a register/value table which can be
-	  used to setup SDRAM. The internal ROM code then initializes SDRAM
-	  using the register/value table, loads the whole barebox image to
-	  SDRAM and starts it. The internal boot mode is available on newer
-	  i.MX processors (i.MX25, i.MX35, i.MX51, i.MX53 and i.MX6), and
-	  supports booting from NOR, NAND, MMC/SD and serial ROMs.
-	  The external boot mode supports booting only from NAND and NOR. With
-	  NOR flash the image is just started in NOR flash. With NAND flash
-	  the NAND controller loads the first 2kbyte from NAND into the NAND
-	  controllers internal SRAM where it is then started. It's the
-	  responsibility of these 2kbyte to load the rest of the boot image.
-	  The external boot mode is supported on older i.MX processors (i.MX1,
-	  i.MX21, i.MX25, i.MX27, i.MX31, i.MX35).
-
 config ARCH_IMX_IMXIMAGE
 	bool
 	default y
@@ -87,37 +66,6 @@ config ARCH_IMX_UNUSED_IRAM_SIZE
        depends on ARCH_IMX_XLOAD
        default 0x16000 if ARCH_IMX51
 
-choice
-	depends on ARCH_IMX_INTERNAL_BOOT
-	prompt "Internal boot source"
-	default ARCH_IMX_INTERNAL_BOOT_NAND
-	help
-	  Determines the location of the header information for internal boot.
-	  0x100 for OneNAND
-	  0x400 for NAND, SD/MMC or Serial ROM
-	  0x1000 for NOR
-
-config ARCH_IMX_INTERNAL_BOOT_NAND
-	bool "NAND, SD/MMC, Serial ROM"
-
-config ARCH_IMX_INTERNAL_BOOT_NOR
-	bool "NOR"
-
-config ARCH_IMX_INTERNAL_BOOT_ONENAND
-	bool "OneNAND"
-
-config ARCH_IMX_INTERNAL_BOOT_SERIAL
-	bool "Serial (read help)"
-	help
-	  Normally the first instruction of the barebox image contains a jump
-	  to the real start of the image which means that you can start it by
-	  jumping to the load address. With serial boot images this is not
-	  possible because the first instruction is occupied by a magic for the
-	  ROM boot code. You can still start this image as a second stage loader,
-	  but you have to add 0x400 to the entry point.
-
-endchoice
-
 config ARCH_IMX_EXTERNAL_BOOT_NAND
 	bool
 	depends on ARCH_IMX25 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 821ce66..51ec8b8 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -30,7 +30,6 @@
 #include <linux/stat.h>
 #include <ioctl.h>
 #include <mach/bbu.h>
-#include <mach/imx-flash-header.h>
 
 #define FLASH_HEADER_OFFSET_MMC		0x400
 
diff --git a/arch/arm/mach-imx/include/mach/barebox.lds.h b/arch/arm/mach-imx/include/mach/barebox.lds.h
deleted file mode 100644
index 2e60282..0000000
--- a/arch/arm/mach-imx/include/mach/barebox.lds.h
+++ /dev/null
@@ -1,32 +0,0 @@
-
-#ifdef CONFIG_ARCH_IMX_INTERNAL_BOOT
-
-#ifdef CONFIG_ARCH_IMX_INTERNAL_BOOT_SERIAL
-#define PRE_IMAGE \
-	.pre_image : {					\
-		KEEP(*(.flash_header_0x0*))		\
-		KEEP(*(.dcd_entry_0x0*))		\
-		KEEP(*(.image_len_0x0*))		\
-		. = 0x400;				\
-	}
-#else
-
-#define PRE_IMAGE \
-	.pre_image : {					\
-		KEEP(*(.flash_header_start*))		\
-		. = 0x100;				\
-		KEEP(*(.flash_header_0x0100*))		\
-		KEEP(*(.dcd_entry_0x0100*))		\
-		KEEP(*(.image_len_0x0100*))		\
-		. = 0x400;				\
-		KEEP(*(.flash_header_0x0400*))		\
-		KEEP(*(.dcd_entry_0x0400*))		\
-		KEEP(*(.image_len_0x0400*))		\
-		. = 0x1000;				\
-		KEEP(*(.flash_header_0x1000*))		\
-		KEEP(*(.dcd_entry_0x1000*))		\
-		KEEP(*(.image_len_0x1000*))		\
-		. = 0x2000;				\
-	}
-#endif
-#endif
diff --git a/arch/arm/mach-imx/include/mach/imx-flash-header.h b/arch/arm/mach-imx/include/mach/imx-flash-header.h
deleted file mode 100644
index 7a8d5cc..0000000
--- a/arch/arm/mach-imx/include/mach/imx-flash-header.h
+++ /dev/null
@@ -1,182 +0,0 @@
-#ifndef __MACH_FLASH_HEADER_H
-#define __MACH_FLASH_HEADER_H
-
-#include <asm/sections.h>
-
-#define __flash_header_start		__section(.flash_header_start)
-
-#if defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_NOR)
-	#define __flash_header_section		__section(.flash_header_0x1000)
-	#define __dcd_entry_section		__section(.dcd_entry_0x1000)
-	#define __image_len_section		__section(.image_len_0x1000)
-	#define FLASH_HEADER_OFFSET 0x1000
-#elif defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_ONENAND)
-	#define __flash_header_section		__section(.flash_header_0x0100)
-	#define __dcd_entry_section		__section(.dcd_entry_0x0100)
-	#define __image_len_section		__section(.image_len_0x0100)
-	#define FLASH_HEADER_OFFSET 0x0100
-#elif defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_SERIAL)
-	#define __flash_header_section		__section(.flash_header_0x0)
-	#define __dcd_entry_section		__section(.dcd_entry_0x0)
-	#define __image_len_section		__section(.image_len_0x0)
-	#define FLASH_HEADER_OFFSET 0x0
-#else
-	#define __flash_header_section		__section(.flash_header_0x0400)
-	#define __dcd_entry_section		__section(.dcd_entry_0x0400)
-	#define __image_len_section		__section(.image_len_0x0400)
-	#define FLASH_HEADER_OFFSET 0x0400
-#endif
-
-#define __flash_header_0x1000	__section(.flash_header_0x1000)
-#define __dcd_entry_0x1000	__section(.dcd_entry_0x1000)
-#define __image_len_0x1000	__section(.image_len_0x1000)
-
-#define __flash_header_0x0100	__section(.flash_header_0x0100)
-#define __dcd_entry_0x0100	__section(.dcd_entry_0x0100)
-#define __image_len_0x0100	__section(.image_len_0x0100)
-
-#define __flash_header_0x0400	__section(.flash_header_0x0400)
-#define __dcd_entry_0x0400	__section(.dcd_entry_0x0400)
-#define __image_len_0x0400	__section(.image_len_0x0400)
-
-#define __flash_header_0x0	__section(.flash_header_0x0)
-#define __dcd_entry_0x0		__section(.dcd_entry_0x0)
-#define __image_len_0x0		__section(.image_len_0x0)
-
-/*
- * NOR is not automatically copied anywhere by the boot ROM
- */
-#if defined (CONFIG_ARCH_IMX_INTERNAL_BOOT_NOR)
-	#define DEST_BASE	IMX_CS0_BASE
-#else
-	#define DEST_BASE	TEXT_BASE
-#endif
-
-#define FLASH_HEADER_BASE	(DEST_BASE + FLASH_HEADER_OFFSET)
-
-struct imx_dcd_entry {
-	unsigned long ptr_type;
-	unsigned long addr;
-	unsigned long val;
-};
-
-struct imx_dcd_v2_entry {
-	__be32 addr;
-	__be32 val;
-};
-
-#define DCD_BARKER	0xb17219e9
-
-struct imx_rsa_public_key {
-	unsigned char	rsa_exponent[4];
-	unsigned char	*rsa_modululs;
-	unsigned short	*exponent_size;
-	unsigned short	modulus_size;
-	unsigned char	init_flag;
-};
-
-#define APP_CODE_BARKER	0x000000b1
-
-struct imx_flash_header {
-	unsigned long			app_code_jump_vector;
-	unsigned long			app_code_barker;
-	unsigned long			app_code_csf;
-	unsigned long			dcd_ptr_ptr;
-	unsigned long			super_root_key;
-	unsigned long			dcd;
-	unsigned long			app_dest;
-	unsigned long			dcd_barker;
-	unsigned long			dcd_block_len;
-};
-
-#define IVT_HEADER_TAG		0xd1
-#define IVT_VERSION		0x40
-
-#define DCD_HEADER_TAG		0xd2
-#define DCD_VERSION		0x40
-
-#define DCD_COMMAND_WRITE_TAG	0xcc
-#define DCD_COMMAND_WRITE_PARAM	0x04
-
-/*
- * At least on i.MX5 the ROM copies only full blocks. Unfortunately
- * it does not round up to the next full block, we have to do it
- * ourselves. Use 4095 which should be enough for the largest NAND
- * pages.
- */
-#define DCD_BAREBOX_SIZE	(barebox_image_size + 4095)
-
-struct imx_ivt_header {
-	uint8_t tag;
-	__be16 length;
-	uint8_t version;
-} __attribute__((packed));
-
-struct imx_dcd_command {
-	uint8_t tag;
-	__be16 length;
-	uint8_t param;
-} __attribute__((packed));
-
-struct imx_dcd {
-	struct imx_ivt_header header;
-#ifndef IMX_INTERNAL_NAND_BBU
-	struct imx_dcd_command command;
-#endif
-};
-
-struct imx_boot_data {
-	uint32_t start;
-	uint32_t size;
-	uint32_t plugin;
-};
-
-struct imx_flash_header_v2 {
-	struct imx_ivt_header header;
-
-	uint32_t entry;
-	uint32_t reserved1;
-	uint32_t dcd_ptr;
-	uint32_t boot_data_ptr;
-	uint32_t self;
-	uint32_t csf;
-	uint32_t reserved2;
-
-	struct imx_boot_data boot_data;
-	struct imx_dcd dcd;
-};
-
-/*
- * A variant of the standard barebox header in the i.MX FCB
- * format. Needed for i.MX53 NAND boot
- */
-static inline void barebox_arm_imx_fcb_head(void)
-{
-	__asm__ __volatile__ (
-		".arm\n"
-		"	b 1f\n"
-		".word 0x20424346\n" /* FCB */
-		".word 0x1\n"
-#ifdef CONFIG_THUMB2_BAREBOX
-		"1:	adr r9, 1f + 1\n"
-		"	bx r9\n"
-		".thumb\n"
-		"1:\n"
-		"bl	barebox_arm_reset_vector\n"
-#else
-		"1:	b barebox_arm_reset_vector\n"
-		".word 0x0\n"
-		".word 0x0\n"
-#endif
-		".word 0x0\n"
-		".word 0x0\n"
-
-		".asciz \"barebox\"\n"
-		".word _text\n"				/* text base. If copied there,
-							 * barebox can skip relocation
-							 */
-		".word _barebox_image_size\n"		/* image size to copy */
-	);
-}
-
-#endif /* __MACH_FLASH_HEADER_H */
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 772058e..c8a919b 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -6,12 +6,7 @@
 #define STRUCT_ALIGNMENT 32
 #define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
 
-#if defined CONFIG_ARCH_IMX25 || \
-	defined CONFIG_ARCH_IMX35 || \
-	defined CONFIG_ARCH_IMX51 || \
-	defined CONFIG_ARCH_IMX53 || \
-	defined CONFIG_ARCH_IMX6 || \
-	defined CONFIG_X86 || \
+#if defined CONFIG_X86 || \
 	defined CONFIG_ARCH_EP93XX || \
 	defined CONFIG_ARCH_ZYNQ
 #include <mach/barebox.lds.h>
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
