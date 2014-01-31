Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f196.google.com ([209.85.215.196])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9A4J-0001b2-19
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 09:07:23 +0000
Received: by mail-ea0-f196.google.com with SMTP id l9so459353eaj.3
 for <barebox@lists.infradead.org>; Fri, 31 Jan 2014 01:06:23 -0800 (PST)
From: David Vincent <freesilicon@gmail.com>
Date: Fri, 31 Jan 2014 10:06:10 +0100
Message-Id: <1391159170-17686-1-git-send-email-freesilicon@gmail.com>
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
 arch/arm/lib/pbl.lds.S            |    4 ++--
 common/Kconfig                    |   16 ++++++++++++++--
 include/asm-generic/barebox.lds.h |   14 +++++++++++++-
 pbl/Kconfig                       |    7 +++++++
 4 files changed, 36 insertions(+), 5 deletions(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 0954c89..34c0cb3 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -50,11 +50,11 @@ SECTIONS
 		*(.text*)
 	}
 
+	BAREBOX_PBL_SIZE
+
 	/* Discard unwind if enable in barebox */
 	/DISCARD/ : { *(.ARM.ex*) }
 
-	BAREBOX_BARE_INIT_SIZE
-
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
 
diff --git a/common/Kconfig b/common/Kconfig
index 8af7ec1..e067127 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -145,13 +145,25 @@ config BAREBOX_MAX_IMAGE_SIZE
 	help
 	  Define the maximum size of barebox
 
+config BAREBOX_MAX_PBL_SIZE
+	depends on PBL_IMAGE && LOAD_PBL_SRAM
+	prompt "Maximum pre-bootloader size"
+	hex
+	default 0xffffffff
+	help
+	  Define the maximum size of pbl
+	  this will allow your pbl to fit in SRAM as example
+	  ARCH can overwrite it via ARCH_BAREBOX_MAX_PBL_SIZE
+
 config BAREBOX_MAX_BARE_INIT_SIZE
-	prompt "Maximum bare_init size"
+	prompt "Maximum bare_init size" if !LOAD_PBL_SRAM
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
index 6d3a69e..10b0885 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -60,10 +60,22 @@ CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
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
 	_barebox_bare_init_size = __bare_init_end - _text;	\
 	ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, "Barebox bare_init size > ") \
-	ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE)) \
+	ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE))
 
+#define BAREBOX_PBL_SIZE					\
+	_barebox_pbl_size = __bss_start - _text;		\
+	ASSERT(MAX_BARE_INIT_SIZE <= MAX_PBL_SIZE, "bare_init cannot be bigger than pbl") \
+	ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, "Barebox pbl size > ") \
+	ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, __stringify(MAX_PBL_SIZE))
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
