Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGlX-0002pK-Px
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 18:01:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 20:01:48 +0200
Message-Id: <1343757710-12659-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343757710-12659-1-git-send-email-s.hauer@pengutronix.de>
References: <1343757710-12659-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM i.MX: Add support for internal serial boot mode
To: barebox@lists.infradead.org

This mode is needed for bootstrapping a board via USB serial.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                         |   10 ++++++++++
 arch/arm/mach-imx/include/mach/barebox.lds.h      |   12 +++++++++++-
 arch/arm/mach-imx/include/mach/imx-flash-header.h |    9 +++++++++
 3 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5b77245..e54d498 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -101,6 +101,16 @@ config ARCH_IMX_INTERNAL_BOOT_NOR
 config ARCH_IMX_INTERNAL_BOOT_ONENAND
 	bool "OneNAND"
 
+config ARCH_IMX_INTERNAL_BOOT_SERIAL
+	bool "Serial (read help)"
+	help
+	  Normally the first instruction of the barebox image contains a jump
+	  to the real start of the image which means that you can start it by
+	  jumping to the load address. With serial boot images this is not
+	  possible because the first instruction is occupied by a magic for the
+	  ROM boot code. You can still start this image as a second stage loader,
+	  but you have to add 0x400 to the entry point.
+
 endchoice
 
 config NAND_IMX_BOOT
diff --git a/arch/arm/mach-imx/include/mach/barebox.lds.h b/arch/arm/mach-imx/include/mach/barebox.lds.h
index a2932bd..2e60282 100644
--- a/arch/arm/mach-imx/include/mach/barebox.lds.h
+++ b/arch/arm/mach-imx/include/mach/barebox.lds.h
@@ -1,6 +1,16 @@
 
 #ifdef CONFIG_ARCH_IMX_INTERNAL_BOOT
 
+#ifdef CONFIG_ARCH_IMX_INTERNAL_BOOT_SERIAL
+#define PRE_IMAGE \
+	.pre_image : {					\
+		KEEP(*(.flash_header_0x0*))		\
+		KEEP(*(.dcd_entry_0x0*))		\
+		KEEP(*(.image_len_0x0*))		\
+		. = 0x400;				\
+	}
+#else
+
 #define PRE_IMAGE \
 	.pre_image : {					\
 		KEEP(*(.flash_header_start*))		\
@@ -19,4 +29,4 @@
 		. = 0x2000;				\
 	}
 #endif
-
+#endif
diff --git a/arch/arm/mach-imx/include/mach/imx-flash-header.h b/arch/arm/mach-imx/include/mach/imx-flash-header.h
index ca2fe9f..a51d473 100644
--- a/arch/arm/mach-imx/include/mach/imx-flash-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-flash-header.h
@@ -15,6 +15,11 @@
 	#define __dcd_entry_section		__section(.dcd_entry_0x0100)
 	#define __image_len_section		__section(.image_len_0x0100)
 	#define FLASH_HEADER_OFFSET 0x0100
+#elif defined(CONFIG_ARCH_IMX_INTERNAL_BOOT_SERIAL)
+	#define __flash_header_section		__section(.flash_header_0x0)
+	#define __dcd_entry_section		__section(.dcd_entry_0x0)
+	#define __image_len_section		__section(.image_len_0x0)
+	#define FLASH_HEADER_OFFSET 0x0
 #else
 	#define __flash_header_section		__section(.flash_header_0x0400)
 	#define __dcd_entry_section		__section(.dcd_entry_0x0400)
@@ -34,6 +39,10 @@
 #define __dcd_entry_0x0400	__section(.dcd_entry_0x0400)
 #define __image_len_0x0400	__section(.image_len_0x0400)
 
+#define __flash_header_0x0	__section(.flash_header_0x0)
+#define __dcd_entry_0x0		__section(.dcd_entry_0x0)
+#define __image_len_0x0		__section(.image_len_0x0)
+
 /*
  * NOR is not automatically copied anywhere by the boot ROM
  */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
