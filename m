Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tzkzz-0007Gc-Ew
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 09:27:33 +0000
Received: from mail416.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B33A4DC10CC
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 10:37:24 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 28 Jan 2013 10:26:11 +0100
Message-Id: <1359365172-30549-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359365172-30549-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130128092320.GQ26329@game.jcrosoft.org>
 <1359365172-30549-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] pbl: factorise decompressor
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/start-pbl.c        |   21 ++-------------------
 arch/mips/boot/main_entry-pbl.c |   23 +----------------------
 include/pbl.h                   |   15 +++++++++++++++
 pbl/Makefile                    |    1 +
 pbl/decomp.c                    |   32 ++++++++++++++++++++++++++++++++
 5 files changed, 51 insertions(+), 41 deletions(-)
 create mode 100644 include/pbl.h
 create mode 100644 pbl/decomp.c

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index c5f9705..f506792 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -24,6 +24,7 @@
 #include <common.h>
 #include <init.h>
 #include <sizes.h>
+#include <pbl.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
@@ -59,16 +60,6 @@ void __naked __bare_init reset(void)
 extern void *input_data;
 extern void *input_data_end;
 
-#define STATIC static
-
-#ifdef CONFIG_IMAGE_COMPRESSION_LZO
-#include "../../../lib/decompress_unlzo.c"
-#endif
-
-#ifdef CONFIG_IMAGE_COMPRESSION_GZIP
-#include "../../../lib/decompress_inflate.c"
-#endif
-
 static unsigned long *ttb;
 
 static void create_sections(unsigned long addr, int size_m, unsigned int flags)
@@ -127,11 +118,6 @@ static void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-static void noinline errorfn(char *error)
-{
-	while (1);
-}
-
 static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
 	void (*barebox)(void);
@@ -155,10 +141,7 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 	else
 		barebox = (void *)TEXT_BASE;
 
-	decompress((void *)compressed_start,
-			len,
-			NULL, NULL,
-			(void *)TEXT_BASE, NULL, errorfn);
+	pbl_barebox_uncompress((void*)TEXT_BASE, compressed_start, len);
 
 	if (use_mmu)
 		mmu_disable();
diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
index f39e936..4e87c52 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -30,28 +30,10 @@ extern void *input_data_end;
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
-#define STATIC static
-
-#ifdef CONFIG_IMAGE_COMPRESSION_LZO
-#include "../../../lib/decompress_unlzo.c"
-#endif
-
-#ifdef CONFIG_IMAGE_COMPRESSION_GZIP
-#include "../../../lib/decompress_inflate.c"
-#endif
-
 void pbl_main_entry(void);
 
 static unsigned long *ttb;
 
-static noinline void errorfn(char *error)
-{
-	PUTS_LL(error);
-	PUTC_LL('\n');
-
-	unreachable();
-}
-
 static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
 	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
@@ -60,10 +42,7 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 
 	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
 
-	decompress((void *)compressed_start,
-			len,
-			NULL, NULL,
-			(void *)TEXT_BASE, NULL, errorfn);
+	pbl_barebox_uncompress((void*)TEXT_BASE, compressed_start, len);
 }
 
 void __section(.text_entry) pbl_main_entry(void)
diff --git a/include/pbl.h b/include/pbl.h
new file mode 100644
index 0000000..d041a3f
--- /dev/null
+++ b/include/pbl.h
@@ -0,0 +1,15 @@
+/*
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#ifndef __PBL_H__
+#define __PBL_H__
+
+extern unsigned long free_mem_ptr;
+extern unsigned long free_mem_end_ptr;
+
+void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
+
+#endif /* __PBL_H__ */
diff --git a/pbl/Makefile b/pbl/Makefile
index 7169c6c..a2d7468 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -3,3 +3,4 @@
 #
 pbl-y += misc.o
 pbl-y += string.o
+pbl-y += decomp.o
diff --git a/pbl/decomp.c b/pbl/decomp.c
new file mode 100644
index 0000000..bd67ed8
--- /dev/null
+++ b/pbl/decomp.c
@@ -0,0 +1,32 @@
+/*
+ * Copyright (c) 2010-2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#include <common.h>
+#include <pbl.h>
+
+#define STATIC static
+
+#ifdef CONFIG_IMAGE_COMPRESSION_LZO
+#include "../../../lib/decompress_unlzo.c"
+#endif
+
+#ifdef CONFIG_IMAGE_COMPRESSION_GZIP
+#include "../../../lib/decompress_inflate.c"
+#endif
+
+static void noinline errorfn(char *error)
+{
+	while (1);
+}
+
+void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len)
+{
+	decompress((void *)compressed_start,
+			len,
+			NULL, NULL,
+			dest, NULL, errorfn);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
