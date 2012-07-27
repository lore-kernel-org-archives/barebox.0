Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo1.mail-out.ovh.net ([46.105.60.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SupLp-0002hW-PA
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 18:33:26 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id F3529FF986C
 for <barebox@lists.infradead.org>; Fri, 27 Jul 2012 20:39:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Jul 2012 20:33:09 +0200
Message-Id: <1343413990-31891-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343413990-31891-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120727183103.GX22657@game.jcrosoft.org>
 <1343413990-31891-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/12] compressed image: add gzip support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/start.c      |    4 ++++
 arch/arm/pbl/Makefile     |    1 +
 arch/arm/pbl/piggy.gzip.S |    6 ++++++
 common/Kconfig            |    3 +++
 lib/decompress_inflate.c  |    1 +
 5 files changed, 15 insertions(+)
 create mode 100644 arch/arm/pbl/piggy.gzip.S

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f500ca8..59b33d0 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -110,6 +110,10 @@ extern void *input_data_end;
 #include "../../../lib/decompress_unlzo.c"
 #endif
 
+#ifdef CONFIG_IMAGE_COMPRESSION_GZIP
+#include "../../../../lib/decompress_inflate.c"
+#endif
+
 void barebox_uncompress(void *compressed_start, unsigned int len)
 {
 	void (*barebox)(void);
diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 4135911..04fdffb 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -1,4 +1,5 @@
 
+suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
 
 OBJCOPYFLAGS_zbarebox.bin = -O binary
diff --git a/arch/arm/pbl/piggy.gzip.S b/arch/arm/pbl/piggy.gzip.S
new file mode 100644
index 0000000..ef3dd77
--- /dev/null
+++ b/arch/arm/pbl/piggy.gzip.S
@@ -0,0 +1,6 @@
+	.section .piggydata,#alloc
+	.globl  input_data
+input_data:
+	.incbin "arch/arm/compressed/piggy.gzip"
+	.globl  input_data_end
+input_data_end:
diff --git a/common/Kconfig b/common/Kconfig
index 40f0c71..6fee9ae 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -125,6 +125,9 @@ choice
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
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
