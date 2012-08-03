Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo1.mail-out.ovh.net ([188.165.45.168]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxF4R-0000cc-7L
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 10:25:35 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 652DEFFAF60
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 12:31:36 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 12:25:18 +0200
Message-Id: <1343989522-8807-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120803102300.GB23597@game.jcrosoft.org>
 <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/12] compressed image: add gzip support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/start-pbl.c  |    4 ++++
 arch/arm/pbl/Makefile     |    1 +
 arch/arm/pbl/piggy.gzip.S |    6 ++++++
 common/Kconfig            |    4 ++++
 lib/decompress_inflate.c  |    1 +
 5 files changed, 16 insertions(+)
 create mode 100644 arch/arm/pbl/piggy.gzip.S

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index dd5c483..004ba6a 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -46,6 +46,10 @@ extern void *input_data_end;
 #include "../../../lib/decompress_unlzo.c"
 #endif
 
+#ifdef CONFIG_IMAGE_COMPRESSION_GZIP
+#include "../../../../lib/decompress_inflate.c"
+#endif
+
 static void barebox_uncompress(void *compressed_start, unsigned int len)
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
index 0000000..4a623c0
--- /dev/null
+++ b/arch/arm/pbl/piggy.gzip.S
@@ -0,0 +1,6 @@
+	.section .piggydata,#alloc
+	.globl  input_data
+input_data:
+	.incbin "arch/arm/pbl/piggy.gzip"
+	.globl  input_data_end
+input_data_end:
diff --git a/common/Kconfig b/common/Kconfig
index 828fc05..b97392c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -134,6 +134,9 @@ choice
 config IMAGE_COMPRESSION_LZO
 	bool "lzo"
 
+config IMAGE_COMPRESSION_GZIP
+	bool "gzip"
+
 endchoice
 
 endif
@@ -521,6 +524,7 @@ config DEFAULT_ENVIRONMENT_COMPRESSED
 	bool
 	depends on DEFAULT_ENVIRONMENT
 	depends on !IMAGE_COMPRESSION_LZO
+	depends on !IMAGE_COMPRESSION_GZIP
 	default y if ZLIB
 	default y if BZLIB
 	default y if LZO_DECOMPRESS
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
