Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUHgm-0002Cy-Gx
 for barebox@lists.infradead.org; Tue, 15 May 2012 13:21:24 +0000
Received: by lbbgg6 with SMTP id gg6so5164472lbb.36
 for <barebox@lists.infradead.org>; Tue, 15 May 2012 06:21:17 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Tue, 15 May 2012 19:20:34 +0600
Message-Id: <1337088040-24138-2-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1337088040-24138-1-git-send-email-agalakhov@gmail.com>
References: <1337088040-24138-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 1/7] Make S3C24xx config options available for all S3Cs
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |    2 +-
 arch/arm/boards/a9m2410/config.h                  |    2 +-
 arch/arm/boards/a9m2410/lowlevel_init.S           |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                 |    2 +-
 arch/arm/boards/a9m2440/config.h                  |    2 +-
 arch/arm/boards/a9m2440/lowlevel_init.S           |    2 +-
 arch/arm/boards/mini2440/config.h                 |    2 +-
 arch/arm/boards/mini2440/lowlevel_init.S          |    2 +-
 arch/arm/boards/mini2440/mini2440.c               |    2 +-
 arch/arm/configs/a9m2410_defconfig                |    2 +-
 arch/arm/configs/a9m2440_defconfig                |    4 +--
 arch/arm/configs/mini2440_defconfig               |    2 +-
 arch/arm/mach-samsung/Kconfig                     |   28 ++++++++++-----------
 arch/arm/mach-samsung/Makefile                    |    2 +-
 arch/arm/mach-samsung/include/mach/s3c-iomap.h    |    2 +-
 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h |    2 +-
 arch/arm/mach-samsung/lowlevel-init.S             |   12 ++++-----
 drivers/mtd/nand/nand_s3c24xx.c                   |   10 ++++----
 18 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 7c51d58..eaafdbd 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -136,7 +136,7 @@ static int a9m2410_devices_init(void)
 
 device_initcall(a9m2410_devices_init);
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 void __bare_init nand_boot(void)
 {
 	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
diff --git a/arch/arm/boards/a9m2410/config.h b/arch/arm/boards/a9m2410/config.h
index 87b05fc..4b8a9a2 100644
--- a/arch/arm/boards/a9m2410/config.h
+++ b/arch/arm/boards/a9m2410/config.h
@@ -115,7 +115,7 @@
 #define A9M2410_TWRPH1 1
 
 /* needed in the generic NAND boot code only */
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 # define BOARD_DEFAULT_NAND_TIMING CALC_NFCONF_TIMING(A9M2410_TACLS, A9M2410_TWRPH0, A9M2410_TWRPH1)
 #endif
 
diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
index a106d53..0463b26 100644
--- a/arch/arm/boards/a9m2410/lowlevel_init.S
+++ b/arch/arm/boards/a9m2410/lowlevel_init.S
@@ -28,7 +28,7 @@ board_init_lowlevel:
 
 	bl s3c24x0_sdram_init
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 	mov lr, r10		/* restore the link register */
 /* up to here we are running from the internal SRAM area */
 	b s3c24x0_nand_boot	/* does return directly to our caller into SDRAM */
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index fcb8729..1d20248 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -155,7 +155,7 @@ static int a9m2440_devices_init(void)
 
 device_initcall(a9m2440_devices_init);
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 void __bare_init nand_boot(void)
 {
 	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
diff --git a/arch/arm/boards/a9m2440/config.h b/arch/arm/boards/a9m2440/config.h
index 43cb6ab..09ad949 100644
--- a/arch/arm/boards/a9m2440/config.h
+++ b/arch/arm/boards/a9m2440/config.h
@@ -66,7 +66,7 @@
 #define A9M2440_TWRPH1 1
 
 /* needed in the generic NAND boot code only */
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 # define BOARD_DEFAULT_NAND_TIMING CALC_NFCONF_TIMING(A9M2440_TACLS, A9M2440_TWRPH0, A9M2440_TWRPH1)
 #endif
 
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index e915a16..305014c 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -232,7 +232,7 @@ board_init_lowlevel:
 
 	bl sdram_init
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 	mov lr, r10		/* restore the link register */
 /* up to here we are running from the internal SRAM area */
 	b s3c24x0_nand_boot	/* does return directly to our caller into SDRAM */
diff --git a/arch/arm/boards/mini2440/config.h b/arch/arm/boards/mini2440/config.h
index 8d36193..674d974 100644
--- a/arch/arm/boards/mini2440/config.h
+++ b/arch/arm/boards/mini2440/config.h
@@ -66,7 +66,7 @@
 #define MINI2440_TWRPH1 1
 
 /* needed in the generic NAND boot code only */
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 # define BOARD_DEFAULT_NAND_TIMING \
 	CALC_NFCONF_TIMING(MINI2440_TACLS, MINI2440_TWRPH0, MINI2440_TWRPH1)
 #endif
diff --git a/arch/arm/boards/mini2440/lowlevel_init.S b/arch/arm/boards/mini2440/lowlevel_init.S
index 1c8860a..827cf00 100644
--- a/arch/arm/boards/mini2440/lowlevel_init.S
+++ b/arch/arm/boards/mini2440/lowlevel_init.S
@@ -30,7 +30,7 @@ board_init_lowlevel:
 
 	bl s3c24x0_sdram_init
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 	mov lr, r10		/* restore the link register */
 /* up to here we are running from the internal SRAM area */
 	b s3c24x0_nand_boot	/* does return directly to our caller into SDRAM */
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 03e3d6c..3d3b820 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -326,7 +326,7 @@ static int mini2440_devices_init(void)
 
 device_initcall(mini2440_devices_init);
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 void __bare_init nand_boot(void)
 {
 	s3c24x0_nand_load_image((void *)TEXT_BASE, 256 * 1024, 0);
diff --git a/arch/arm/configs/a9m2410_defconfig b/arch/arm/configs/a9m2410_defconfig
index 57e73c7..1955023 100644
--- a/arch/arm/configs/a9m2410_defconfig
+++ b/arch/arm/configs/a9m2410_defconfig
@@ -1,5 +1,5 @@
 CONFIG_ARCH_S3C24xx=y
-CONFIG_S3C24XX_NAND_BOOT=y
+CONFIG_S3C_NAND_BOOT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/a9m2440_defconfig b/arch/arm/configs/a9m2440_defconfig
index ae7f523..ebdf64f 100644
--- a/arch/arm/configs/a9m2440_defconfig
+++ b/arch/arm/configs/a9m2440_defconfig
@@ -1,7 +1,7 @@
 CONFIG_ARCH_S3C24xx=y
 CONFIG_MACH_A9M2440=y
-CONFIG_S3C24XX_SDRAM_INIT=y
-CONFIG_S3C24XX_NAND_BOOT=y
+CONFIG_S3C_SDRAM_INIT=y
+CONFIG_S3C_NAND_BOOT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/mini2440_defconfig b/arch/arm/configs/mini2440_defconfig
index 9b35dd5..efe76e4 100644
--- a/arch/arm/configs/mini2440_defconfig
+++ b/arch/arm/configs/mini2440_defconfig
@@ -1,7 +1,7 @@
 CONFIG_ARCH_S3C24xx=y
 CONFIG_MACH_MINI2440=y
 CONFIG_MINI2440_VIDEO_N35=y
-CONFIG_S3C24XX_NAND_BOOT=y
+CONFIG_S3C_NAND_BOOT=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_TEXT_BASE=0x33e00000
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index bc283dc..63c29ef 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -30,8 +30,8 @@ config MACH_A9M2410
 	bool "Digi A9M2410"
 	select CPU_S3C2410
 	select MACH_HAS_LOWLEVEL_INIT
-	select S3C24XX_PLL_INIT
-	select S3C24XX_SDRAM_INIT
+	select S3C_PLL_INIT
+	select S3C_SDRAM_INIT
 	help
 	  Say Y here if you are using Digi's Connect Core 9M equipped
 	  with a Samsung S3C2410 Processor
@@ -40,7 +40,7 @@ config MACH_A9M2440
 	bool "Digi A9M2440"
 	select CPU_S3C2440
 	select MACH_HAS_LOWLEVEL_INIT
-	select S3C24XX_PLL_INIT
+	select S3C_PLL_INIT
 	help
 	  Say Y here if you are using Digi's Connect Core 9M equipped
 	  with a Samsung S3C2440 Processor
@@ -50,8 +50,8 @@ config MACH_MINI2440
 	select CPU_S3C2440
 	select MACH_HAS_LOWLEVEL_INIT
 	select MACH_DO_LOWLEVEL_INIT
-	select S3C24XX_PLL_INIT
-	select S3C24XX_SDRAM_INIT
+	select S3C_PLL_INIT
+	select S3C_SDRAM_INIT
 	select HAS_DM9000
 	help
 	  Say Y here if you are using Mini 2440 dev board equipped
@@ -78,29 +78,31 @@ source arch/arm/boards/mini2440/Kconfig
 
 endmenu
 
-menu "S3C24X0 Features              "
+endif
+
+menu "S3C Features              "
 
-config S3C24XX_LOW_LEVEL_INIT
+config S3C_LOWLEVEL_INIT
 	bool
 
-config S3C24XX_PLL_INIT
+config S3C_PLL_INIT
 	bool
 	prompt "Reconfigure PLL"
-	select S3C24XX_LOW_LEVEL_INIT
+	select S3C_LOWLEVEL_INIT
 	help
 	  This adds generic code to reconfigure the internal PLL very early
 	  after reset.
 
-config S3C24XX_SDRAM_INIT
+config S3C_SDRAM_INIT
 	bool
 	prompt "Initialize SDRAM"
-	select S3C24XX_LOW_LEVEL_INIT
+	select S3C_LOWLEVEL_INIT
 	help
 	  This adds generic code to configure the SDRAM controller after reset.
 	  The initialisation will be skipped if the code is already running
 	  from SDRAM.
 
-config S3C24XX_NAND_BOOT
+config S3C_NAND_BOOT
 	bool
 	prompt "Booting from NAND"
 	select MTD
@@ -113,5 +115,3 @@ config S3C24XX_NAND_BOOT
 endmenu
 
 endif
-
-endif
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 2ba5c3f..349ba9b 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,3 +1,3 @@
 obj-y += s3c-timer.o generic.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o s3c24xx-clocks.o
-obj-$(CONFIG_S3C24XX_LOW_LEVEL_INIT) += lowlevel-init.o
+obj-$(CONFIG_S3C_LOWLEVEL_INIT) += lowlevel-init.o
diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index 9e867f8..60d44e3 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
@@ -54,7 +54,7 @@
  * if we are booting from NAND, its internal SRAM occures at
  * a different address than without this feature
  */
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 # define NFC_RAM_AREA 0x00000000
 #else
 # define NFC_RAM_AREA 0x40000000
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h b/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
index 7610b4e..acd78b8 100644
--- a/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
+++ b/arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
@@ -18,7 +18,7 @@
  *
  */
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 extern void s3c24x0_nand_load_image(void*, int, int);
 #endif
 
diff --git a/arch/arm/mach-samsung/lowlevel-init.S b/arch/arm/mach-samsung/lowlevel-init.S
index 31c6196..e9471a5 100644
--- a/arch/arm/mach-samsung/lowlevel-init.S
+++ b/arch/arm/mach-samsung/lowlevel-init.S
@@ -70,7 +70,7 @@ routine very early in your board_init_lowlevel routine.
  * Note: Do not use "r10" here in this code
  */
 
-#ifdef CONFIG_S3C24XX_PLL_INIT
+#ifdef CONFIG_S3C_PLL_INIT
 
 	.section ".text_bare_init.s3c24x0_pll_init","ax"
 
@@ -146,7 +146,7 @@ shared with all other system on chip components. Most of the time this
 configuration is to slow for the CPU and to fast for the other components.
 
 PLL reprogramming can be done in the machine specific manner very early when
-the CONFIG_S3C24XX_PLL_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT symbols are
+the CONFIG_S3C_PLL_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT symbols are
 defined. The board must provide a board_init_lowlevel() assembler function in
 this case and calling the s3c24x0_pll_init() assembler function.
 
@@ -184,7 +184,7 @@ With m = MDIV + 8, p = PDIV + 2 and s = SDIV.
 
 /* ----------------------------------------------------------------------- */
 
-#ifdef CONFIG_S3C24XX_SDRAM_INIT
+#ifdef CONFIG_S3C_SDRAM_INIT
 
 	.section ".text_bare_init.s3c24x0_sdram_init","ax"
 
@@ -225,7 +225,7 @@ SDRAMDATA:
 The SDRAM controller is very simple and its initialisation requires only a
 few steps. barebox provides a generic routine to do this step.
 
-Enable CONFIG_S3C24XX_SDRAM_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be able
+Enable CONFIG_S3C_SDRAM_INIT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be able
 to call the generic s3c24x0_sdram_init() assembler function from within the
 machine specific board_init_lowlevel() assembler function.
 
@@ -245,7 +245,7 @@ Define in the machine specific config.h the following list of symbols:
 
 /* ----------------------------------------------------------------------- */
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 
 	.section ".text_bare_init.s3c24x0_nand_boot","ax"
 
@@ -284,7 +284,7 @@ s3c24x0_nand_boot:
 @page dev_s3c24xx_nandboot_handling Booting from NAND
 
 To be able to boot from NAND memory only, enable the S3C24x0 NAND driver. Also
-enable CONFIG_S3C24XX_NAND_BOOT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be
+enable CONFIG_S3C_NAND_BOOT and CONFIG_MACH_HAS_LOWLEVEL_INIT to be
 able to call the s3c24x0_nand_boot() assembler routine from within the
 machine specific board_init_lowlevel() assembler function.
 
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index dbf2e14..c629701 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -36,7 +36,7 @@
 #include <io.h>
 #include <asm-generic/errno.h>
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 # define __nand_boot_init __bare_init
 # ifndef BOARD_DEFAULT_NAND_TIMING
 #  define BOARD_DEFAULT_NAND_TIMING 0x0737
@@ -49,7 +49,7 @@
  * Define this symbol for testing purpose. It will add a command to read an
  * image from the NAND like it the boot strap code will do.
  */
-#define CONFIG_NAND_S3C24XX_BOOT_DEBUG
+#define CONFIG_NAND_S3C_BOOT_DEBUG
 
 /* NAND controller's register */
 
@@ -497,7 +497,7 @@ static struct driver_d s3c24x0_nand_driver = {
 	.probe = s3c24x0_nand_probe,
 };
 
-#ifdef CONFIG_S3C24XX_NAND_BOOT
+#ifdef CONFIG_S3C_NAND_BOOT
 
 static void __nand_boot_init wait_for_completion(void __iomem *host)
 {
@@ -603,7 +603,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
 	disable_nand_controller(host);
 }
 
-#ifdef CONFIG_NAND_S3C24XX_BOOT_DEBUG
+#ifdef CONFIG_NAND_S3C_BOOT_DEBUG
 #include <command.h>
 
 static int do_nand_boot_test(int argc, char *argv[])
@@ -636,7 +636,7 @@ BAREBOX_CMD_START(nand_boot_test)
 BAREBOX_CMD_END
 #endif
 
-#endif /* CONFIG_S3C24XX_NAND_BOOT */
+#endif /* CONFIG_S3C_NAND_BOOT */
 
 /*
  * Main initialization routine
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
