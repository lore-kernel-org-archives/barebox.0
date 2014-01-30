Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x244.google.com ([2a00:1450:4013:c00::244])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8tn0-0002v9-KH
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 15:44:27 +0000
Received: by mail-ee0-f68.google.com with SMTP id c41so716436eek.7
 for <barebox@lists.infradead.org>; Thu, 30 Jan 2014 07:44:04 -0800 (PST)
From: David Vincent <freesilicon@gmail.com>
Date: Thu, 30 Jan 2014 16:43:46 +0100
Message-Id: <1391096626-6342-1-git-send-email-freesilicon@gmail.com>
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
external ROM code.

Signed-off-by: David Vincent <freesilicon@gmail.com>
---
 arch/arm/lib/pbl.lds.S            |    2 +-
 common/Kconfig                    |   13 ++++++++++++-
 include/asm-generic/barebox.lds.h |    3 +--
 include/asm-generic/pbl.lds.h     |   15 +++++++++++++++
 pbl/Kconfig                       |    7 +++++++
 5 files changed, 36 insertions(+), 4 deletions(-)
 create mode 100644 include/asm-generic/pbl.lds.h

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 0954c89..78b39a6 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -21,7 +21,7 @@
  *
  */
 #include <sizes.h>
-#include <asm-generic/barebox.lds.h>
+#include <asm-generic/pbl.lds.h>
 #include <asm-generic/memory_layout.h>
 
 #ifdef CONFIG_PBL_RELOCATABLE
diff --git a/common/Kconfig b/common/Kconfig
index 8af7ec1..38ed619 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -146,14 +146,25 @@ config BAREBOX_MAX_IMAGE_SIZE
 	  Define the maximum size of barebox
 
 config BAREBOX_MAX_BARE_INIT_SIZE
+	depends on !LOAD_PBL_SRAM
 	prompt "Maximum bare_init size"
 	hex
 	default 0xffffffff
 	help
 	  Define the maximum size of bare_init
-	  this will allow your bare_init will fit in SRAM as example
+	  this will allow your bare_init to fit in SRAM as example
 	  ARCH can overwrite it via ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 
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
 config HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	bool
 
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 6d3a69e..18f3cd5 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -65,5 +65,4 @@ CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
 #define BAREBOX_BARE_INIT_SIZE					\
 	_barebox_bare_init_size = __bare_init_end - _text;	\
 	ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, "Barebox bare_init size > ") \
-	ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE)) \
-
+	ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE))
diff --git a/include/asm-generic/pbl.lds.h b/include/asm-generic/pbl.lds.h
new file mode 100644
index 0000000..43149b7
--- /dev/null
+++ b/include/asm-generic/pbl.lds.h
@@ -0,0 +1,15 @@
+#include <asm-generic/barebox.lds.h>
+
+#if defined(CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE) && \
+CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE < CONFIG_BAREBOX_MAX_PBL_SIZE
+#define MAX_PBL_SIZE CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE
+#else
+#define MAX_PBL_SIZE CONFIG_BAREBOX_MAX_PBL_SIZE
+#endif
+
+#include <linux/stringify.h>
+#define BAREBOX_PBL_SIZE					\
+	_barebox_pbl_size = __bss_start - _text;	\
+	ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, "Barebox pbl size > ") \
+	ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, __stringify(MAX_PBL_SIZE))
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
