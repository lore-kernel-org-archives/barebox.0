Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SswkR-0001n2-6X
 for barebox@lists.infradead.org; Sun, 22 Jul 2012 14:03:15 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 137AAFF91BA
 for <barebox@lists.infradead.org>; Sun, 22 Jul 2012 16:07:56 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 22 Jul 2012 16:02:48 +0200
Message-Id: <1342965768-3796-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1342965768-3796-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120722130301.GI22657@game.jcrosoft.org>
 <1342965768-3796-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] compressed image: add gzip support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile                 |    7 ++++++-
 arch/arm/cpu/start.c     |    4 ++++
 common/Kconfig           |    3 +++
 lib/decompress_inflate.c |    1 +
 piggy.gzip.S             |    6 ++++++
 5 files changed, 20 insertions(+), 1 deletion(-)
 create mode 100644 piggy.gzip.S

diff --git a/Makefile b/Makefile
index d6a3ae5..1003786 100644
--- a/Makefile
+++ b/Makefile
@@ -719,8 +719,13 @@ barebox-uncompressed: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsym
 barebox-uncompressed.bin: barebox-uncompressed
 	$(call if_changed,objcopy)
 
+suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
 
+barebox-uncompressed.bin.gzip: barebox-uncompressed.bin
+	@echo "  GZIP   " $@
+	$(Q)gzip -n -9 -c barebox-uncompressed.bin > $@
+
 barebox-uncompressed.bin.lzo: barebox-uncompressed.bin
 	@echo "  LZO    " $@
 	$(Q)lzop -f -9 -o $@ barebox-uncompressed.bin
@@ -1039,7 +1044,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
 		.tmp_kallsyms* barebox_default_env* barebox.ldr \
 		scripts/bareboxenv-target \
 		Doxyfile.version barebox.srec barebox.s5p \
-		barebox-uncompressed barebox-uncompressed.bin barebox-uncompressed.bin.lzo
+		barebox-uncompressed barebox-uncompressed.bin*
 
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config include2 usr/include
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 8ab6fdc..8e63523 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -109,6 +109,10 @@ extern void *input_data_end;
 #include "../../../lib/decompress_unlzo.c"
 #endif
 
+#ifdef CONFIG_IMAGE_COMPRESSION_GZIP
+#include "../../../../lib/decompress_inflate.c"
+#endif
+
 void barebox_uncompress(void *compressed_start, unsigned int len)
 {
 	void (*barebox)(void);
diff --git a/common/Kconfig b/common/Kconfig
index 8437e1c..702a0bd 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -110,6 +110,9 @@ choice
 config IMAGE_COMPRESSION_LZO
 	bool "lzo"
 
+config IMAGE_COMPRESSION_GZIP
+	bool "gzip"
+
 endchoice
 
 endif
diff --git a/lib/decompress_inflate.c b/lib/decompress_inflate.c
index 526d6a1..5c1ebb6 100644
--- a/lib/decompress_inflate.c
+++ b/lib/decompress_inflate.c
@@ -4,6 +4,7 @@
 /* prevent inclusion of _LINUX_KERNEL_H in pre-boot environment: lots
  * errors about console_printk etc... on ARM */
 #define _LINUX_KERNEL_H
+#include <linux/decompress/mm.h>
 
 #include "zlib_inflate/inftrees.c"
 #include "zlib_inflate/inffast.c"
diff --git a/piggy.gzip.S b/piggy.gzip.S
new file mode 100644
index 0000000..2ca7d78
--- /dev/null
+++ b/piggy.gzip.S
@@ -0,0 +1,6 @@
+	.section .piggydata,#alloc
+	.globl  input_data
+input_data:
+	.incbin "barebox-uncompressed.bin.gzip"
+	.globl  input_data_end
+input_data_end:
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
