Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uyfu9-00083g-IN
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 10:21:18 +0000
Received: from mail618.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3EF96104F54D
 for <barebox@lists.infradead.org>; Mon, 15 Jul 2013 12:20:56 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 15 Jul 2013 12:20:53 +0200
Message-Id: <1373883653-11236-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1373883653-11236-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130715100958.GG19197@ns203013.ovh.net>
 <1373883653-11236-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] pbl: add lz4 support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/pbl/Makefile     | 3 ++-
 arch/arm/pbl/piggy.lz4.S  | 6 ++++++
 arch/mips/pbl/Makefile    | 3 ++-
 arch/mips/pbl/piggy.lz4.S | 6 ++++++
 images/Makefile           | 1 +
 pbl/Kconfig               | 4 ++++
 pbl/decomp.c              | 4 ++++
 7 files changed, 25 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/pbl/piggy.lz4.S
 create mode 100644 arch/mips/pbl/piggy.lz4.S

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 8923a70..dd3e946 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -1,6 +1,7 @@
 
 suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
+suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
 suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	= shipped
 
 OBJCOPYFLAGS_zbarebox.bin = -O binary
@@ -10,7 +11,7 @@ targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
 	   $(piggy_o) piggy.$(suffix_y)
 
 # Make sure files are removed during clean
-extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern piggy.shipped zbarebox.map
+extra-y       += piggy.gzip piggy.lz4 piggy.lzo piggy.lzma piggy.xzkern piggy.shipped zbarebox.map
 
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
diff --git a/arch/arm/pbl/piggy.lz4.S b/arch/arm/pbl/piggy.lz4.S
new file mode 100644
index 0000000..fa9b246
--- /dev/null
+++ b/arch/arm/pbl/piggy.lz4.S
@@ -0,0 +1,6 @@
+	.section .piggydata,#alloc
+	.globl	input_data
+input_data:
+	.incbin	"arch/arm/pbl/piggy.lz4"
+	.globl	input_data_end
+input_data_end:
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
index 6eeee73..fea1f24 100644
--- a/arch/mips/pbl/Makefile
+++ b/arch/mips/pbl/Makefile
@@ -1,6 +1,7 @@
 
 suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
+suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
 suffix_$(CONFIG_IMAGE_COMPRESSION_NONE)	= shipped
 
 OBJCOPYFLAGS_zbarebox.bin = -O binary
@@ -10,7 +11,7 @@ targets := zbarebox.lds zbarebox zbarebox.bin zbarebox.S \
 	   $(piggy_o) piggy.$(suffix_y)
 
 # Make sure files are removed during clean
-extra-y       += piggy.gzip piggy.lzo piggy.lzma piggy.xzkern piggy.shipped zbarebox.map
+extra-y       += piggy.gzip piggy.lz4 piggy.lzo piggy.lzma piggy.xzkern piggy.shipped zbarebox.map
 
 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
diff --git a/arch/mips/pbl/piggy.lz4.S b/arch/mips/pbl/piggy.lz4.S
new file mode 100644
index 0000000..be9425b
--- /dev/null
+++ b/arch/mips/pbl/piggy.lz4.S
@@ -0,0 +1,6 @@
+#include <asm/asm.h>
+
+	.section .data
+EXPORT(input_data)
+	.incbin	"arch/mips/pbl/piggy.lz4"
+EXPORT(input_data_end)
diff --git a/images/Makefile b/images/Makefile
index 925a987..65c533a 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -81,6 +81,7 @@ $(obj)/%.s: $(obj)/% FORCE
 
 suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)  = lzo
+suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
 suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = shipped
 
 # barebox.z - compressed barebox binary
diff --git a/pbl/Kconfig b/pbl/Kconfig
index a37c976..dc31357 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -53,6 +53,10 @@ if IMAGE_COMPRESSION
 
 choice
 	prompt "Compression"
+	default IMAGE_COMPRESSION_LZO
+
+config IMAGE_COMPRESSION_LZ4
+	bool "lz4"
 
 config IMAGE_COMPRESSION_LZO
 	bool "lzo"
diff --git a/pbl/decomp.c b/pbl/decomp.c
index aa6a31e..ca0df64 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -10,6 +10,10 @@
 
 #define STATIC static
 
+#ifdef CONFIG_IMAGE_COMPRESSION_LZ4
+#include "../../../lib/decompress_unlz4.c"
+#endif
+
 #ifdef CONFIG_IMAGE_COMPRESSION_LZO
 #include "../../../lib/decompress_unlzo.c"
 #endif
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
