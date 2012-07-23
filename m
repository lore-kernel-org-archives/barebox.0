Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StAD8-00085Z-PT
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 04:26:01 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6EA72FF934D
 for <barebox@lists.infradead.org>; Mon, 23 Jul 2012 06:31:09 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Jul 2012 06:26:03 +0200
Message-Id: <1343017563-27932-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343017563-27932-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120723042052.GK22657@game.jcrosoft.org>
 <1343017563-27932-1-git-send-email-plagnioj@jcrosoft.com>
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
 arch/arm/compressed/Makefile     |    1 +
 arch/arm/compressed/piggy.gzip.S |    6 ++++++
 arch/arm/cpu/start.c             |    4 ++++
 common/Kconfig                   |    3 +++
 lib/decompress_inflate.c         |    1 +
 5 files changed, 15 insertions(+)
 create mode 100644 arch/arm/compressed/piggy.gzip.S

diff --git a/arch/arm/compressed/Makefile b/arch/arm/compressed/Makefile
index 627a411..59e7d59 100644
--- a/arch/arm/compressed/Makefile
+++ b/arch/arm/compressed/Makefile
@@ -1,4 +1,5 @@
 
+suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
 
 OBJCOPYFLAGS_zbarebox.bin = -O binary
diff --git a/arch/arm/compressed/piggy.gzip.S b/arch/arm/compressed/piggy.gzip.S
new file mode 100644
index 0000000..ef3dd77
--- /dev/null
+++ b/arch/arm/compressed/piggy.gzip.S
@@ -0,0 +1,6 @@
+	.section .piggydata,#alloc
+	.globl  input_data
+input_data:
+	.incbin "arch/arm/compressed/piggy.gzip"
+	.globl  input_data_end
+input_data_end:
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 6c745f7..5503552 100644
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
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
