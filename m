Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RnK16-0002na-Hw
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 01:08:46 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 11C14FFB1D5
 for <barebox@lists.infradead.org>; Wed, 18 Jan 2012 02:10:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Jan 2012 02:07:33 +0100
Message-Id: <1326848854-21033-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] introduce barebox_bare_init_size to known the bare_init
 size and check it
To: barebox@lists.infradead.org

this allow to check we do not exceed the size of the SRAM as example

introduce BAREBOX_MAX_BARE_INIT_SIZE the maximum size of bare_init
this will allow your bare_init will fit in SRAM as example
ARCH can overwrite it via ARCH_BAREBOX_MAX_BARE_INIT_SIZE

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/barebox.lds.S        |    3 +++
 arch/mips/lib/barebox.lds.S       |    3 +++
 arch/nios2/cpu/barebox.lds.S      |    3 +++
 arch/x86/lib/barebox.lds.S        |    3 +++
 common/Kconfig                    |    9 +++++++++
 include/asm-generic/barebox.lds.h |   15 +++++++++++++++
 include/asm-generic/sections.h    |    3 +++
 7 files changed, 39 insertions(+), 0 deletions(-)

diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index f05f345..e9f6210 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -44,9 +44,12 @@ SECTIONS
 	  . = 0x1000;
 	  LONG(0x53555243) /* 'CRUS' */
 #endif
+		__bare_init_start = .;
 		*(.text_bare_init*)
+		__bare_init_end = .;
 		*(.text*)
 	}
+	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index a607284..9ebc8d1 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -34,9 +34,12 @@ SECTIONS
 		*(.text_entry*)
 		_stext = .;
 		_text = .;
+		__bare_init_start = .;
 		*(.text_bare_init*)
+		__bare_init_end = .;
 		*(.text*)
 	}
+	BAREBOX_BARE_INIT_SIZE
 
 	PRE_IMAGE
 
diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index 04bfdf8..127e1bf 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -44,9 +44,12 @@ SECTIONS
 		_stext = .;
 		__text = .;
 		_text = .;
+		__bare_init_start = .;
 		*(.text_entry)
+		__bare_init_end = .;
 		*(.text)
 	}
+	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
 	.rodata : { *(.rodata) }
diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
index c7d5175..9798ed5 100644
--- a/arch/x86/lib/barebox.lds.S
+++ b/arch/x86/lib/barebox.lds.S
@@ -145,13 +145,16 @@ SECTIONS
 		/* do not align here! It may fails with the LOADADDR! */
 		_stext = .;
 		*(.text_entry*)
+		__bare_init_start = .;
 		*(.text_bare_init*)
+		__bare_init_end = .;
 		*(.text*)
 		. = ALIGN(4);
 		*(.rodata*)
 		. = ALIGN(4);
 		_etext = .;			/* End of text and rodata section */
 	} > barebox
+	BAREBOX_BARE_INIT_SIZE
 
 	.data : AT ( LOADADDR(.text) + SIZEOF(.text) ) {
 		*(.data*)
diff --git a/common/Kconfig b/common/Kconfig
index 8089061..d1db27d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -111,6 +111,15 @@ config BAREBOX_MAX_IMAGE_SIZE
 	help
 	  Define the maximum size of barebox
 
+config BAREBOX_MAX_BARE_INIT_SIZE
+	prompt "Maximum bare_init size"
+	hex
+	default 0xffffffff
+	help
+	  Define the maximum size of bare_init
+	  this will allow your bare_init will fit in SRAM as example
+	  ARCH can overwrite it via ARCH_BAREBOX_MAX_BARE_INIT_SIZE
+
 config HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	bool
 
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 5467d3a..b6fc79d 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -26,3 +26,18 @@
 #define BAREBOX_SYMS	KEEP(*(__usymtab))
 
 #define BAREBOX_MAGICVARS	KEEP(*(SORT_BY_NAME(.barebox_magicvar*)))
+
+#if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
+CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
+#define MAX_BARE_INIT_SIZE CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE
+#else
+#define MAX_BARE_INIT_SIZE CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
+#endif
+
+#include <linux/stringify.h>
+/* use 2 ASSERT because ld can not accept '"size" "10"' formet */
+#define BAREBOX_BARE_INIT_SIZE					\
+	_barebox_bare_init_size = __bare_init_end - _text;	\
+	ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, "Barebox bare_init size > ") \
+	ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE)) \
+
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 1f48fb8..5484b6f 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -3,9 +3,12 @@
 
 extern char _text[], _stext[], _etext[];
 extern char __bss_start[], __bss_stop[];
+extern char __bare_init_start[], __bare_init_end[];
 extern char _end[];
 extern void *_barebox_image_size;
+extern void *_barebox_bare_init_size;
 
 #define barebox_image_size	(unsigned int)&_barebox_image_size
+#define barebox_bare_init_size	(unsigned int)&_barebox_bare_init_size
 
 #endif /* _ASM_GENERIC_SECTIONS_H_ */
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
