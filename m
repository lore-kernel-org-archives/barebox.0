Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-px0-f177.google.com ([209.85.212.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1WV9-0004In-6a
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 03:41:40 +0000
Received: by pxi4 with SMTP id 4so893787pxi.36
	for <barebox@lists.infradead.org>; Thu, 30 Sep 2010 20:41:38 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri,  1 Oct 2010 13:40:57 +1000
Message-Id: <1285904458-7015-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 1/2] imx: Internal boot sources, handle all header offsets
To: barebox@lists.infradead.org

Makes the internal boot source configurable.
Also changes section names slightly so that .flash_header_0x1000 isn't
matched to .flash_header_0x100* etc.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/mach-imx/Kconfig                         |   22 +++++++++++++
 arch/arm/mach-imx/include/mach/barebox.lds.h      |   12 ++++----
 arch/arm/mach-imx/include/mach/imx-flash-header.h |   34 +++++++++++++++-----
 3 files changed, 53 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 24d2684..b529ea2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -40,6 +40,28 @@ config ARCH_IMX_INTERNAL_BOOT
 	bool "support internal boot mode"
 	depends on ARCH_IMX25 || ARCH_IMX35
 
+choice
+	depends on ARCH_IMX_INTERNAL_BOOT
+	prompt "Internal boot source"
+	help
+	  Determines the location of the header information for internal boot. 
+	  0x100 for OneNAND
+	  0x400 for NAND, SD/MMC or Serial ROM
+	  0x1000 for NOR
+
+config ARCH_IMX_INTERNAL_BOOT_NAND
+	default y
+	bool "NAND, SD/MMC, Serial ROM"
+	select NAND_IMX_BOOT
+
+config ARCH_IMX_INTERNAL_BOOT_NOR
+	bool "NOR"
+
+config ARCH_IMX_INTERNAL_BOOT_ONENAND
+	bool "OneNAND"
+
+endchoice
+
 comment "Freescale i.MX System-on-Chip"
 
 choice
diff --git a/arch/arm/mach-imx/include/mach/barebox.lds.h b/arch/arm/mach-imx/include/mach/barebox.lds.h
index 8e1eccd..a2932bd 100644
--- a/arch/arm/mach-imx/include/mach/barebox.lds.h
+++ b/arch/arm/mach-imx/include/mach/barebox.lds.h
@@ -5,13 +5,13 @@
 	.pre_image : {					\
 		KEEP(*(.flash_header_start*))		\
 		. = 0x100;				\
-		KEEP(*(.flash_header_0x100*))		\
-		KEEP(*(.dcd_entry_0x100*))		\
-		KEEP(*(.image_len_0x100*))		\
+		KEEP(*(.flash_header_0x0100*))		\
+		KEEP(*(.dcd_entry_0x0100*))		\
+		KEEP(*(.image_len_0x0100*))		\
 		. = 0x400;				\
-		KEEP(*(.flash_header_0x400*))		\
-		KEEP(*(.dcd_entry_0x400*))		\
-		KEEP(*(.image_len_0x400*))		\
+		KEEP(*(.flash_header_0x0400*))		\
+		KEEP(*(.dcd_entry_0x0400*))		\
+		KEEP(*(.image_len_0x0400*))		\
 		. = 0x1000;				\
 		KEEP(*(.flash_header_0x1000*))		\
 		KEEP(*(.dcd_entry_0x1000*))		\
diff --git a/arch/arm/mach-imx/include/mach/imx-flash-header.h b/arch/arm/mach-imx/include/mach/imx-flash-header.h
index 831a3aa..f1054da 100644
--- a/arch/arm/mach-imx/include/mach/imx-flash-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-flash-header.h
@@ -3,17 +3,33 @@
 
 #define __flash_header_start		__section(.flash_header_start)
 
-#define __flash_header_0x100		__section(.flash_header_0x100)
-#define __dcd_entry_0x100		__section(.dcd_entry_0x100)
-#define __image_len_0x100		__section(.image_len_0x100)
+#if defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_NOR)
+	#define __flash_header_section		__section(.flash_header_0x1000)
+	#define __dcd_entry_section		__section(.dcd_entry_0x1000)
+	#define __image_len_section		__section(.image_len_0x1000)
+	#define FLASH_HEADER_OFFSET 0x1000
+#elif defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_ONENAND)
+	#define __flash_header_section		__section(.flash_header_0x0100)
+	#define __dcd_entry_section		__section(.dcd_entry_0x0100)
+	#define __image_len_section		__section(.image_len_0x0100)
+	#define FLASH_HEADER_OFFSET 0x0100
+#else
+	#define __flash_header_section		__section(.flash_header_0x0400)
+	#define __dcd_entry_section		__section(.dcd_entry_0x0400)
+	#define __image_len_section		__section(.image_len_0x0400)
+	#define FLASH_HEADER_OFFSET 0x0400
+#endif
 
-#define __flash_header_0x400		__section(.flash_header_0x400)
-#define __dcd_entry_0x400		__section(.dcd_entry_0x400)
-#define __image_len_0x400		__section(.image_len_0x400)
+/*
+ * NOR is not automatically copied anywhere by the boot ROM
+ */
+#if defined (CONFIG_ARCH_IMX_INTERNAL_BOOT_NOR)
+	#define DEST_BASE	IMX_CS0_BASE
+#else
+	#define DEST_BASE	TEXT_BASE
+#endif
 
-#define __flash_header_0x1000		__section(.flash_header_0x1000)
-#define __dcd_entry_0x1000		__section(.dcd_entry_0x1000)
-#define __image_len_0x1000		__section(.image_len_0x1000)
+#define FLASH_HEADER_BASE	(DEST_BASE + FLASH_HEADER_OFFSET)
 
 struct imx_dcd_entry {
 	unsigned long ptr_type;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
