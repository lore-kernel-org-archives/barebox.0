Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StwXz-0003qJ-Nd
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 08:02:29 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 504B5FF97A4
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 10:08:05 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Jul 2012 10:02:45 +0200
Message-Id: <1343203373-18641-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343203373-18641-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120725075730.GT22657@game.jcrosoft.org>
 <1343203373-18641-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/11] compressed image: factorise compressor type
To: barebox@lists.infradead.org

This will simplify to support of multi compressor support such as gzip, lzma,
xz.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile                   |   12 +++++++-----
 arch/arm/cpu/start.c       |    9 ++++++---
 arch/arm/lib/Makefile      |    2 +-
 arch/arm/lib/barebox.lds.S |    2 +-
 common/Kconfig             |   17 ++++++++++++++---
 5 files changed, 29 insertions(+), 13 deletions(-)

diff --git a/Makefile b/Makefile
index e0a3c07..0b3da03 100644
--- a/Makefile
+++ b/Makefile
@@ -715,20 +715,22 @@ barebox-uncompressed: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsym
 barebox-uncompressed.bin: barebox-uncompressed
 	$(call if_changed,objcopy)
 
+suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
+
 barebox-uncompressed.bin.lzo: barebox-uncompressed.bin
 	@echo "  LZO    " $@
 	$(Q)lzop -f -9 -o $@ barebox-uncompressed.bin
 
-piggy.lzo.o: barebox-uncompressed.bin.lzo $(src)/piggy.lzo.S
+piggy.$(suffix_y).o: barebox-uncompressed.bin.$(suffix_y) $(src)/piggy.$(suffix_y).S
 	@echo "  CC     " $@
-	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -c $(src)/piggy.lzo.S -o $@
+	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -c $(src)/piggy.$(suffix_y).S -o $@
 
-ifdef CONFIG_IMAGE_COMPRESSION_LZO
-barebox: piggy.lzo.o
+ifdef CONFIG_IMAGE_COMPRESSION
+barebox: piggy.$(suffix_y).o
 	@echo "  LD     " $@
 	$(Q)$(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
 		-T $(barebox-compressed-lds) \
-		--start-group $(barebox-common) piggy.lzo.o --end-group
+		--start-group $(barebox-common) piggy.$(suffix_y).o --end-group
 else
 barebox: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o) FORCE
 	$(call barebox-modpost)
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 6743804..18c5c83 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -28,7 +28,7 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
-#ifdef CONFIG_IMAGE_COMPRESSION_LZO
+#ifdef CONFIG_IMAGE_COMPRESSION
 void __naked __section(.text_head_entry) compressed_start(void)
 {
 	barebox_arm_head();
@@ -101,7 +101,10 @@ extern void *input_data;
 extern void *input_data_end;
 
 #define STATIC static
+
+#ifdef CONFIG_IMAGE_COMPRESSION_LZO
 #include "../../../lib/decompress_unlzo.c"
+#endif
 
 void barebox_uncompress(void *compressed_start, unsigned int len)
 {
@@ -112,7 +115,7 @@ void barebox_uncompress(void *compressed_start, unsigned int len)
 	else
 		barebox = (void *)TEXT_BASE;
 
-	decompress_unlzo((void *)compressed_start,
+	decompress((void *)compressed_start,
 			len,
 			NULL, NULL,
 			(void *)TEXT_BASE, NULL, NULL);
@@ -158,7 +161,7 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 	/* flush I-cache before jumping to the copied binary */
 	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
 
-	if (IS_ENABLED(CONFIG_IMAGE_COMPRESSION_LZO)) {
+	if (IS_ENABLED(CONFIG_IMAGE_COMPRESSION)) {
 		compressed_start = (uint32_t)&input_data - offset;
 		compressed_end = (uint32_t)&input_data_end - offset;
 		len = compressed_end - compressed_start;
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 044d3e6..1b6f7f4 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -21,4 +21,4 @@ obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 obj-$(CONFIG_ARM_UNWIND) += unwind.o
 obj-$(CONFIG_MODULES) += module.o
 extra-y += barebox.lds
-extra-$(CONFIG_IMAGE_COMPRESSION_LZO) += barebox-compressed.lds
+extra-$(CONFIG_IMAGE_COMPRESSION) += barebox-compressed.lds
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index b415830..b22cf98 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -31,7 +31,7 @@ SECTIONS
 {
 	. = TEXT_BASE;
 
-#ifndef CONFIG_IMAGE_COMPRESSION_LZO
+#ifndef CONFIG_IMAGE_COMPRESSION
 	PRE_IMAGE
 #endif
 	. = ALIGN(4);
diff --git a/common/Kconfig b/common/Kconfig
index c6f1afa..8437e1c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -99,9 +99,20 @@ menu "memory layout                 "
 config HAVE_IMAGE_COMPRESSION
 	bool
 
+config IMAGE_COMPRESSION
+	bool "Compressed image"
+
+if IMAGE_COMPRESSION
+
+choice
+	prompt "Compression"
+
 config IMAGE_COMPRESSION_LZO
-	depends on HAVE_IMAGE_COMPRESSION
-	bool "lzo compressed image"
+	bool "lzo"
+
+endchoice
+
+endif
 
 config MMU
 	bool "Enable MMU"
@@ -185,7 +196,7 @@ config MALLOC_SIZE
 	prompt "malloc area size"
 
 config HEAD_TEXT_BASE
-	depends on MEMORY_LAYOUT_FIXED && IMAGE_COMPRESSION_LZO
+	depends on MEMORY_LAYOUT_FIXED && IMAGE_COMPRESSION
 	hex
 	prompt "HEAD_TEXT_BASE"
 endmenu
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
