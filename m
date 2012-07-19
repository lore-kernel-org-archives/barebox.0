Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srlr9-0005KQ-Hf
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 08:13:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jul 2012 10:13:00 +0200
Message-Id: <1342685582-13244-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] ARM boards: Use _text rather than TEXT_BASE
To: barebox@lists.infradead.org

With compressed image support TEXT_BASE will become the base
address of the uncompressed image. What the boards want instead
is the base address of the decompressor code or, if not compressed,
the base address of the uncompressed image. Use _text which is
the correct one for both cases.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                      |    3 ++-
 arch/arm/boards/a9m2440/a9m2440.c                      |    3 ++-
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c      |    3 ++-
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c             |    4 ++--
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c      |    4 +++-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S        |   11 ++++-------
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c             |    4 ++--
 arch/arm/boards/freescale-mx25-3-stack/3stack.c        |    4 +++-
 arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S |   11 ++++-------
 arch/arm/boards/freescale-mx35-3-stack/3stack.c        |    4 +++-
 arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S |   11 ++++-------
 arch/arm/boards/freescale-mx53-loco/flash_header.c     |    2 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c      |    2 +-
 arch/arm/boards/freescale-mx6-arm2/flash_header.c      |    2 +-
 arch/arm/boards/guf-cupid/lowlevel.c                   |    4 ++--
 arch/arm/boards/guf-neso/lowlevel.c                    |    4 ++--
 arch/arm/boards/imx21ads/imx21ads.c                    |    4 +++-
 arch/arm/boards/imx21ads/lowlevel_init.S               |   10 ++++------
 arch/arm/boards/karo-tx25/board.c                      |    3 ++-
 arch/arm/boards/karo-tx25/lowlevel.c                   |    4 ++--
 arch/arm/boards/karo-tx51/flash_header.c               |    2 +-
 arch/arm/boards/mini2440/mini2440.c                    |    3 ++-
 arch/arm/boards/pcm037/lowlevel_init.S                 |    7 ++-----
 arch/arm/boards/pcm037/pcm037.c                        |    4 +++-
 arch/arm/boards/pcm038/lowlevel.c                      |    4 ++--
 arch/arm/boards/pcm043/lowlevel.c                      |    4 ++--
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S         |    8 ++------
 arch/arm/boards/phycard-i.MX27/pca100.c                |    2 +-
 arch/arm/boards/tqma53/flash_header.c                  |    2 +-
 29 files changed, 65 insertions(+), 68 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index eaafdbd..3e4572f 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -29,6 +29,7 @@
 #include <init.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <asm-generic/sections.h>
 #include <partition.h>
 #include <nand.h>
 #include <io.h>
@@ -139,7 +140,7 @@ device_initcall(a9m2410_devices_init);
 #ifdef CONFIG_S3C_NAND_BOOT
 void __bare_init nand_boot(void)
 {
-	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
+	s3c24x0_nand_load_image(_text, 256 * 1024, 0);
 }
 #endif
 
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 1d20248..6d71aef 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -28,6 +28,7 @@
 #include <driver.h>
 #include <init.h>
 #include <asm/armlinux.h>
+#include <asm-generic/sections.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <nand.h>
@@ -158,7 +159,7 @@ device_initcall(a9m2440_devices_init);
 #ifdef CONFIG_S3C_NAND_BOOT
 void __bare_init nand_boot(void)
 {
-	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
+	s3c24x0_nand_load_image(_text, 256 * 1024, 0);
 }
 #endif
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index b3b0838..0aac13c 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -28,6 +28,7 @@
 #include <environment.h>
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
+#include <asm/barebox-arm.h>
 #include <asm-generic/sections.h>
 #include <mach/gpio.h>
 #include <io.h>
@@ -284,7 +285,7 @@ console_initcall(eukrea_cpuimx25_console_init);
 #ifdef CONFIG_NAND_IMX_BOOT
 void __bare_init nand_boot(void)
 {
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
 }
 #endif
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index ff66e92..89066e9 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -42,7 +42,7 @@ static void __bare_init __naked insdram(void)
 	r = STACK_BASE + STACK_SIZE - 12;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
 
 	board_init_lowlevel_return();
 }
@@ -154,7 +154,7 @@ void __bare_init __naked board_init_lowlevel(void)
 		board_init_lowlevel_return();
 
 	src = (unsigned int *)IMX_NFC_BASE;
-	trg = (unsigned int *)TEXT_BASE;
+	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
 	for (i = 0; i < 0x800 / sizeof(int); i++)
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 63e87c9..193c277 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -31,6 +31,7 @@
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
 #include <asm-generic/sections.h>
+#include <asm/barebox-arm.h>
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
@@ -264,7 +265,8 @@ late_initcall(eukrea_cpuimx27_late_init);
 #ifdef CONFIG_NAND_IMX_BOOT
 void __bare_init nand_boot(void)
 {
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
 #endif
 
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index e318546..0dae3ec 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -1,4 +1,5 @@
 #include <config.h>
+#include <asm-generic/memory_layout.h>
 #include <mach/imx-regs.h>
 
 #define writel(val, reg) \
@@ -107,7 +108,7 @@ board_init_lowlevel:
 	sdram_init
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =0xa0f00000		/* Setup a temporary stack in SDRAM */
+	ldr	sp, =STACK_BASE + STACK_SIZE - 12	/* Setup a temporary stack in SDRAM */
 
 	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM                */
 	ldr	r2, =IMX_NFC_BASE + 0x1000	/* end of NFC SRAM                  */
@@ -119,7 +120,7 @@ board_init_lowlevel:
 	bhi	ret
 
 	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =TEXT_BASE
+	ldr	r1, =_text
 
 copy_loop:
 	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
@@ -129,12 +130,8 @@ copy_loop:
 
 	ldr	pc, =1f			/* Jump to SDRAM                    */
 1:
-	bl	nand_boot		/* Load barebox from NAND Flash      */
-
-	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
-	sub	r10, r10, r1		/* adjust return address from NFC SRAM */
+	b	nand_boot		/* Load barebox from NAND Flash      */
 					/* to SDRAM                            */
-
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 552b0cf..57867dc 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -53,7 +53,7 @@ static void __bare_init __naked insdram(void)
 	r = STACK_BASE + STACK_SIZE - 12;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
 
 	board_init_lowlevel_return();
 }
@@ -163,7 +163,7 @@ void __bare_init __naked board_init_lowlevel(void)
 		board_init_lowlevel_return();
 
 	src = (unsigned int *)IMX_NFC_BASE;
-	trg = (unsigned int *)TEXT_BASE;
+	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
 	for (i = 0; i < 0x800 / sizeof(int); i++)
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 6b6146d..97c1fd9 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -28,6 +28,7 @@
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <asm-generic/sections.h>
+#include <asm/barebox-arm.h>
 #include <mach/gpio.h>
 #include <io.h>
 #include <partition.h>
@@ -294,7 +295,8 @@ console_initcall(imx25_console_init);
 #ifdef CONFIG_NAND_IMX_BOOT
 void __bare_init nand_boot(void)
 {
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
 #endif
 
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index 7b75233..fa0f957 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -21,6 +21,7 @@
  * MA 02111-1307 USA
  */
 
+#include <asm-generic/memory_layout.h>
 #include <mach/imx-regs.h>
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
@@ -100,7 +101,7 @@ board_init_lowlevel:
 	str r3, [r0, #0x30]
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =0xa0f00000		/* Setup a temporary stack in SDRAM */
+	ldr	sp, =STACK_BASE + STACK_SIZE - 12 /* Setup a temporary stack in SDRAM */
 
 	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM                */
 	ldr	r2, =IMX_NFC_BASE + 0x1000	/* end of NFC SRAM                  */
@@ -112,7 +113,7 @@ board_init_lowlevel:
 	bhi	ret
 
 	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =TEXT_BASE
+	ldr	r1, =_text
 
 copy_loop:
 	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
@@ -122,11 +123,7 @@ copy_loop:
 
 	ldr	pc, =1f			/* Jump to SDRAM                    */
 1:
-	bl	nand_boot		/* Load barebox from NAND Flash      */
-
-	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
-	sub	r10, r10, r1		/* adjust return address from NFC SRAM */
-					/* to SDRAM                            */
+	b	nand_boot		/* Load barebox from NAND Flash      */
 
 #endif /* CONFIG_NAND_IMX_BOOT */
 
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index cb1280d..9b255a5 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -38,6 +38,7 @@
 
 #include <asm/armlinux.h>
 #include <asm-generic/sections.h>
+#include <asm/barebox-arm.h>
 #include <io.h>
 #include <generated/mach-types.h>
 
@@ -450,6 +451,7 @@ void __bare_init nand_boot(void)
 	 * The driver is able to detect NAND's pagesize by CPU internal
 	 * fuses or external pull ups. But not the blocksize...
 	 */
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
 #endif
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index 30dbcc0..837d2ff 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -25,6 +25,7 @@
 #include <mach/imx-pll.h>
 #include <mach/esdctl.h>
 #include <asm/cache-l2x0.h>
+#include <asm-generic/memory_layout.h>
 #include "board-mx35_3stack.h"
 
 #define CSD0_BASE_ADDR		0x80000000
@@ -156,7 +157,7 @@ board_init_lowlevel:
 	str	r3, [r0, #0x30]
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =TEXT_BASE - 4		/* Setup a temporary stack in SDRAM */
+	ldr	sp, =STACK_BASE + STACK_SIZE - 12		/* Setup a temporary stack in SDRAM */
 
 	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM */
 	ldr	r2, =IMX_NFC_BASE + 0x800	/* end of NFC SRAM */
@@ -168,7 +169,7 @@ board_init_lowlevel:
 	bhs	ret
 
 	/* Move ourselves out of NFC SRAM */
-	ldr r1, =TEXT_BASE
+	ldr r1, =_text
 
 copy_loop:
 	ldmia	r0!, {r3-r9}			/* copy from source address [r0] */
@@ -178,11 +179,7 @@ copy_loop:
 
 	ldr	pc, =1f				/* Jump to SDRAM */
 1:
-	bl	nand_boot			/* Load barebox from NAND Flash */
-
-	/* rebase the return address */
-	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
-	sub	r10, r10, r1			/* adjust return address from NFC SRAM */
+	b	nand_boot			/* Load barebox from NAND Flash */
 ret:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
diff --git a/arch/arm/boards/freescale-mx53-loco/flash_header.c b/arch/arm/boards/freescale-mx53-loco/flash_header.c
index 52e6eee..c2ab255 100644
--- a/arch/arm/boards/freescale-mx53-loco/flash_header.c
+++ b/arch/arm/boards/freescale-mx53-loco/flash_header.c
@@ -77,7 +77,7 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
 };
 
-#define APP_DEST	CONFIG_TEXT_BASE
+#define APP_DEST	0x70000000
 
 struct imx_flash_header_v2 __flash_header_section flash_header = {
 	.header.tag		= IVT_HEADER_TAG,
diff --git a/arch/arm/boards/freescale-mx53-smd/flash_header.c b/arch/arm/boards/freescale-mx53-smd/flash_header.c
index 52e6eee..c2ab255 100644
--- a/arch/arm/boards/freescale-mx53-smd/flash_header.c
+++ b/arch/arm/boards/freescale-mx53-smd/flash_header.c
@@ -77,7 +77,7 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
 };
 
-#define APP_DEST	CONFIG_TEXT_BASE
+#define APP_DEST	0x70000000
 
 struct imx_flash_header_v2 __flash_header_section flash_header = {
 	.header.tag		= IVT_HEADER_TAG,
diff --git a/arch/arm/boards/freescale-mx6-arm2/flash_header.c b/arch/arm/boards/freescale-mx6-arm2/flash_header.c
index 69d9cfa..60cf9cd 100644
--- a/arch/arm/boards/freescale-mx6-arm2/flash_header.c
+++ b/arch/arm/boards/freescale-mx6-arm2/flash_header.c
@@ -146,7 +146,7 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	DCD(MX6_IOMUXC_BASE_ADDR + 0x01c, 0x007f007f),
 };
 
-#define APP_DEST	CONFIG_TEXT_BASE
+#define APP_DEST	0x10000000
 
 struct imx_flash_header_v2 __flash_header_section flash_header = {
 	.header.tag		= IVT_HEADER_TAG,
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index bcaa199..8fa9152 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -60,7 +60,7 @@ static void __bare_init __naked insdram(void)
 	r = STACK_BASE + STACK_SIZE - 12;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
 
 	board_init_lowlevel_return();
 }
@@ -334,7 +334,7 @@ void __bare_init __naked board_init_lowlevel(void)
 		board_init_lowlevel_return();
 
 	src = (unsigned int *)IMX_NFC_BASE;
-	trg = (unsigned int *)TEXT_BASE;
+	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
 	for (i = 0; i < 0x800 / sizeof(int); i++)
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index a8718e7..9b206be 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -44,7 +44,7 @@ static void __bare_init __naked insdram(void)
 	r = STACK_BASE + STACK_SIZE - 12;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
 
 	board_init_lowlevel_return();
 }
@@ -105,7 +105,7 @@ void __bare_init __naked board_init_lowlevel(void)
 		board_init_lowlevel_return();
 
 	src = (unsigned int *)IMX_NFC_BASE;
-	trg = (unsigned int *)TEXT_BASE;
+	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
 	for (i = 0; i < 0x800 / sizeof(int); i++)
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index e394417..2bbd5ed 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -28,6 +28,7 @@
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <asm-generic/sections.h>
+#include <asm/barebox-arm.h>
 #include <io.h>
 #include <mach/gpio.h>
 #include <partition.h>
@@ -204,7 +205,8 @@ console_initcall(mx21ads_console_init);
 void __bare_init nand_boot(void)
 {
 	PCCR0 |= PCCR0_NFC_EN;
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
 #endif
 
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index 7926e28..1aeea57 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -18,6 +18,7 @@
  */
 
 #include <config.h>
+#include <asm-generic/memory_layout.h>
 #include <mach/imx-regs.h>
 
 	.section ".text_bare_init","ax"
@@ -121,7 +122,7 @@ board_init_lowlevel:
 	str	r1, [r0]
 
 #ifdef CONFIG_NAND_IMX_BOOT
-	ldr	sp, =TEXT_BASE - 4	/* Setup a temporary stack in SDRAM */
+	ldr	sp, =STACK_BASE + STACK_SIZE - 12	/* Setup a temporary stack in SDRAM */
 
 	ldr	r0, =IMX_NFC_BASE		/* start of NFC SRAM        */
 	ldr	r2, =IMX_NFC_BASE + 0x800	/* end of NFC SRAM          */
@@ -133,7 +134,7 @@ board_init_lowlevel:
 	bhi	ret
 
 	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =TEXT_BASE
+	ldr	r1, =_text
 
 copy_loop:
 	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
@@ -143,10 +144,7 @@ copy_loop:
 
 	ldr	pc, =1f			/* Jump to SDRAM                    */
 1:
-	bl	nand_boot		/* Load barebox from NAND Flash     */
-
-	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
-	sub	r10, r10, r1		/* adjust return address from NFC   */
+	b	nand_boot		/* Load barebox from NAND Flash     */
 					/* SRAM to SDRAM                    */
 #endif /* CONFIG_NAND_IMX_BOOT */
 
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 040c75b..c089935 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -28,6 +28,7 @@
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <asm-generic/sections.h>
+#include <asm/barebox-arm.h>
 #include <mach/gpio.h>
 #include <io.h>
 #include <partition.h>
@@ -168,7 +169,7 @@ console_initcall(tx25_console_init);
 #ifdef CONFIG_NAND_IMX_BOOT
 void __bare_init nand_boot(void)
 {
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
 }
 #endif
 
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 35dfe9f..9f1c5d6 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -40,7 +40,7 @@ static void __bare_init __naked insdram(void)
 	r = STACK_BASE + STACK_SIZE - 12;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
 
 	board_init_lowlevel_return();
 }
@@ -158,7 +158,7 @@ void __bare_init __naked board_init_lowlevel(void)
 		board_init_lowlevel_return();
 
 	src = (unsigned int *)IMX_NFC_BASE;
-	trg = (unsigned int *)TEXT_BASE;
+	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
 	for (i = 0; i < 0x800 / sizeof(int); i++)
diff --git a/arch/arm/boards/karo-tx51/flash_header.c b/arch/arm/boards/karo-tx51/flash_header.c
index 7d2f97e..f570348 100644
--- a/arch/arm/boards/karo-tx51/flash_header.c
+++ b/arch/arm/boards/karo-tx51/flash_header.c
@@ -39,7 +39,7 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
     { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00000000, },
 };
 
-#define APP_DEST	CONFIG_ARCH_TEXT_BASE
+#define APP_DEST	0x90000000
 
 struct imx_flash_header __flash_header_section flash_header = {
 	.app_code_jump_vector	= APP_DEST + 0x1000,
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 3d3b820..6408bc8 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -36,6 +36,7 @@
 #include <mci.h>
 #include <fb.h>
 #include <asm/armlinux.h>
+#include <asm-generic/sections.h>
 #include <io.h>
 #include <mach/gpio.h>
 #include <mach/s3c-iomap.h>
@@ -329,7 +330,7 @@ device_initcall(mini2440_devices_init);
 #ifdef CONFIG_S3C_NAND_BOOT
 void __bare_init nand_boot(void)
 {
-	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
+	s3c24x0_nand_load_image(_text, 256 * 1024, 0);
 }
 #endif
 
diff --git a/arch/arm/boards/pcm037/lowlevel_init.S b/arch/arm/boards/pcm037/lowlevel_init.S
index cc4674d..1f8d38f 100644
--- a/arch/arm/boards/pcm037/lowlevel_init.S
+++ b/arch/arm/boards/pcm037/lowlevel_init.S
@@ -146,7 +146,7 @@ clear_iomux:
 	bhs	ret
 
 	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =TEXT_BASE
+	ldr	r1, =_text
 
 copy_loop:
 	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
@@ -156,10 +156,7 @@ copy_loop:
 
 	ldr	pc, =1f			/* Jump to SDRAM                    */
 1:
-	bl	nand_boot		/* Load barebox from NAND Flash      */
-
-	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
-	sub	r10, r10, r1		/* adjust return address from NFC SRAM */
+	b	nand_boot		/* Load barebox from NAND Flash      */
 ret:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index d789b28..9cb082b 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -37,6 +37,7 @@
 #include <asm/mmu.h>
 #include <partition.h>
 #include <generated/mach-types.h>
+#include <asm/barebox-arm.h>
 #include <mach/imx-nand.h>
 #include <mach/devices-imx31.h>
 
@@ -246,6 +247,7 @@ console_initcall(imx31_console_init);
 #ifdef CONFIG_NAND_IMX_BOOT
 void __bare_init nand_boot(void)
 {
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
 #endif
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 2bc89a0..3f29a83 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -45,7 +45,7 @@ static void __bare_init __naked insdram(void)
 	r = STACK_BASE + STACK_SIZE - 12;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
 
 	board_init_lowlevel_return();
 }
@@ -111,7 +111,7 @@ void __bare_init __naked board_init_lowlevel(void)
 		board_init_lowlevel_return();
 
 	src = (unsigned int *)IMX_NFC_BASE;
-	trg = (unsigned int *)TEXT_BASE;
+	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
 	for (i = 0; i < 0x800 / sizeof(int); i++)
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index 69cc4f1..fd6787f 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -58,7 +58,7 @@ static void __bare_init __naked insdram(void)
 	r = STACK_BASE + STACK_SIZE - 12;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
 
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
 
 	board_init_lowlevel_return();
 }
@@ -213,7 +213,7 @@ void __bare_init __naked board_init_lowlevel(void)
 		board_init_lowlevel_return();
 
 	src = (unsigned int *)IMX_NFC_BASE;
-	trg = (unsigned int *)TEXT_BASE;
+	trg = (unsigned int *)_text;
 
 	/* Move ourselves out of NFC SRAM */
 	for (i = 0; i < 0x800 / sizeof(int); i++)
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index 3ef2c54..c24edd4 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -106,7 +106,7 @@ board_init_lowlevel:
 	bhi	ret
 
 	/* Move ourselves out of NFC SRAM */
-	ldr	r1, =TEXT_BASE
+	ldr	r1, =_text
 
 copy_loop:
 	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
@@ -116,11 +116,7 @@ copy_loop:
 
 	ldr	pc, =1f			/* Jump to SDRAM                    */
 1:
-	bl	nand_boot		/* Load barebox from NAND Flash      */
-
-	ldr	r1, =IMX_NFC_BASE - TEXT_BASE
-	sub	r10, r10, r1		/* adjust return address from NFC SRAM */
-					/* to SDRAM                            */
+	b	nand_boot		/* Load barebox from NAND Flash      */
 
 #endif /* CONFIG_NAND_IMX_BOOT */
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 6fdcf6e..126f9ef 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -328,7 +328,7 @@ console_initcall(pca100_console_init);
 #ifdef CONFIG_NAND_IMX_BOOT
 void __bare_init nand_boot(void)
 {
-	imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+	imx_nand_load_image(_text, barebox_image_size);
 }
 #endif
 
diff --git a/arch/arm/boards/tqma53/flash_header.c b/arch/arm/boards/tqma53/flash_header.c
index d912b38..a6bcdad 100644
--- a/arch/arm/boards/tqma53/flash_header.c
+++ b/arch/arm/boards/tqma53/flash_header.c
@@ -85,7 +85,7 @@ struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
 	{ .addr = cpu_to_be32(0x63fd901C), .val = cpu_to_be32(0x00000000), },
 };
 
-#define APP_DEST	CONFIG_TEXT_BASE
+#define APP_DEST	0x70000000
 
 struct imx_flash_header_v2 __flash_header_section flash_header = {
 	.header.tag		= IVT_HEADER_TAG,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
