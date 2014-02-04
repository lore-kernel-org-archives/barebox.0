Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x243.google.com ([2a00:1450:400c:c03::243])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAapQ-0006fd-JN
 for barebox@lists.infradead.org; Tue, 04 Feb 2014 07:53:57 +0000
Received: by mail-we0-f195.google.com with SMTP id t60so1203797wes.2
 for <barebox@lists.infradead.org>; Mon, 03 Feb 2014 23:53:34 -0800 (PST)
From: David Vincent <freesilicon@gmail.com>
Date: Tue,  4 Feb 2014 08:53:15 +0100
Message-Id: <1391500395-8577-1-git-send-email-freesilicon@gmail.com>
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
Subject: [PATCH] Load PBL into SRAM
To: barebox@lists.infradead.org
Cc: David Vincent <freesilicon@gmail.com>

This allows to load all the lowlevel init code, including the
uncompressor, inside SRAM and not just the bare init part. This is
useful when pbl is used as a first-stage bootloader but is loaded by an
external firmware.

Signed-off-by: David Vincent <freesilicon@gmail.com>
---
 arch/arm/lib/pbl.lds.S            |    1 +
 common/Kconfig                    |   13 ++++++++++++-
 include/asm-generic/barebox.lds.h |   13 +++++++++++++
 pbl/Kconfig                       |    7 +++++++
 4 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 0954c89..d7a3cc5 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -54,6 +54,7 @@ SECTIONS
 	/DISCARD/ : { *(.ARM.ex*) }
 
 	BAREBOX_BARE_INIT_SIZE
+	BAREBOX_PBL_SIZE
 
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
diff --git a/common/Kconfig b/common/Kconfig
index 8af7ec1..2eaa3b5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -145,13 +145,24 @@ config BAREBOX_MAX_IMAGE_SIZE
 	help
 	  Define the maximum size of barebox
 
+config BAREBOX_MAX_PBL_SIZE
+	depends on PBL_IMAGE && LOAD_PBL_SRAM
+	prompt "Maximum pre-bootloader size"
+	hex
+	default 0xffffffff
+	help
+	  On some hardware the ROM code can load the pbl into SRAM, but not
+	  the whole image. This option specifies how big the pbl may get.
+
 config BAREBOX_MAX_BARE_INIT_SIZE
 	prompt "Maximum bare_init size"
 	hex
+	range 0x0 BAREBOX_MAX_PBL_SIZE if LOAD_PBL_SRAM
+	default BAREBOX_MAX_PBL_SIZE if LOAD_PBL_SRAM
 	default 0xffffffff
 	help
 	  Define the maximum size of bare_init
-	  this will allow your bare_init will fit in SRAM as example
+	  this will allow your bare_init to fit in SRAM as example
 	  ARCH can overwrite it via ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 
 config HAVE_CONFIGURABLE_MEMORY_LAYOUT
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 6d3a69e..5dabda3 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -60,6 +60,13 @@ CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
 #define MAX_BARE_INIT_SIZE CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
 #endif
 
+#if defined(CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE) && \
+CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE < CONFIG_BAREBOX_MAX_PBL_SIZE
+#define MAX_PBL_SIZE CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE
+#else
+#define MAX_PBL_SIZE CONFIG_BAREBOX_MAX_PBL_SIZE
+#endif
+
 #include <linux/stringify.h>
 /* use 2 ASSERT because ld can not accept '"size" "10"' format */
 #define BAREBOX_BARE_INIT_SIZE					\
@@ -67,3 +74,9 @@ CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
 	ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, "Barebox bare_init size > ") \
 	ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE)) \
 
+#define BAREBOX_PBL_SIZE					\
+	_barebox_pbl_size = __bss_start - _text;		\
+	ASSERT(MAX_BARE_INIT_SIZE <= MAX_PBL_SIZE, "bare_init cannot be bigger than pbl") \
+	ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, "Barebox pbl size > ") \
+	ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, __stringify(MAX_PBL_SIZE)) \
+
diff --git a/pbl/Kconfig b/pbl/Kconfig
index dc31357..1edc2d1 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -34,6 +34,13 @@ config PBL_FORCE_PIGGYDATA_COPY
 
 if PBL_IMAGE
 
+config LOAD_PBL_SRAM
+	bool "Load pbl in SRAM"
+	help
+	  Load the whole content of the pbl binary into SRAM. This is useful if you
+	  use the pbl as a first stage bootloader but cannot load the whole binary
+	  at the same time.
+
 config PBL_RELOCATABLE
 	depends on ARM
 	bool "relocatable pbl image"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
