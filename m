Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R71zb-0004P4-WD
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 09:24:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 11:24:17 +0200
Message-Id: <1316769860-24549-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
References: <1316769860-24549-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] rename include/mem_malloc.h to include/memory.h
To: barebox@lists.infradead.org

Which is a better name and also better to collect other
things.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/arm.c              |    2 +-
 arch/blackfin/lib/board.c       |    2 +-
 arch/mips/lib/memory.c          |    2 +-
 arch/nios2/lib/board.c          |    2 +-
 arch/ppc/boards/pcm030/pcm030.c |    2 +-
 arch/ppc/lib/board.c            |    2 +-
 arch/x86/lib/memory.c           |    2 +-
 common/dlmalloc.c               |    2 +-
 common/startup.c                |    2 +-
 include/mem_malloc.h            |   10 ----------
 include/memory.h                |   10 ++++++++++
 11 files changed, 19 insertions(+), 19 deletions(-)
 delete mode 100644 include/mem_malloc.h
 create mode 100644 include/memory.h

diff --git a/arch/arm/lib/arm.c b/arch/arm/lib/arm.c
index 6549118..c85aae1 100644
--- a/arch/arm/lib/arm.c
+++ b/arch/arm/lib/arm.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <init.h>
-#include <mem_malloc.h>
+#include <memory.h>
 #include <asm/barebox-arm.h>
 #include <asm-generic/memory_layout.h>
 
diff --git a/arch/blackfin/lib/board.c b/arch/blackfin/lib/board.c
index 581947b..d1b39fa 100644
--- a/arch/blackfin/lib/board.c
+++ b/arch/blackfin/lib/board.c
@@ -31,7 +31,7 @@
 #include <net.h>
 #include <init.h>
 #include <environment.h>
-#include <mem_malloc.h>
+#include <memory.h>
 #include <asm/cpu.h>
 #include <asm-generic/memory_layout.h>
 
diff --git a/arch/mips/lib/memory.c b/arch/mips/lib/memory.c
index 23a995c..ad9f6a6 100644
--- a/arch/mips/lib/memory.c
+++ b/arch/mips/lib/memory.c
@@ -20,7 +20,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mem_malloc.h>
+#include <memory.h>
 #include <asm-generic/memory_layout.h>
 
 static int mips_mem_malloc_init(void)
diff --git a/arch/nios2/lib/board.c b/arch/nios2/lib/board.c
index 7cbff40..07f045b 100644
--- a/arch/nios2/lib/board.c
+++ b/arch/nios2/lib/board.c
@@ -23,7 +23,7 @@
 #include <common.h>
 #include <malloc.h>
 #include <init.h>
-#include <mem_malloc.h>
+#include <memory.h>
 #include <asm-generic/memory_layout.h>
 #include <cache.h>
 
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 3c2db4e..d3b7094 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -34,7 +34,7 @@
 #include <mach/fec.h>
 #include <types.h>
 #include <partition.h>
-#include <mem_malloc.h>
+#include <memory.h>
 #include <reloc.h>
 
 static struct mpc5xxx_fec_platform_data fec_info = {
diff --git a/arch/ppc/lib/board.c b/arch/ppc/lib/board.c
index 7f8118e..798c386 100644
--- a/arch/ppc/lib/board.c
+++ b/arch/ppc/lib/board.c
@@ -26,7 +26,7 @@
 #include <watchdog.h>
 #include <command.h>
 #include <malloc.h>
-#include <mem_malloc.h>
+#include <memory.h>
 #include <init.h>
 #include <net.h>
 #include <reloc.h>
diff --git a/arch/x86/lib/memory.c b/arch/x86/lib/memory.c
index 9496d22..fa7bc03 100644
--- a/arch/x86/lib/memory.c
+++ b/arch/x86/lib/memory.c
@@ -27,7 +27,7 @@
 
 #include <init.h>
 #include <stdio.h>
-#include <mem_malloc.h>
+#include <memory.h>
 #include <asm/syslib.h>
 #include <asm-generic/memory_layout.h>
 
diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index f9e1828..7ad368e 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -2,7 +2,7 @@
 #include <config.h>
 #include <malloc.h>
 #include <string.h>
-#include <mem_malloc.h>
+#include <memory.h>
 
 #include <stdio.h>
 #include <module.h>
diff --git a/common/startup.c b/common/startup.c
index bf67aef..7a1b602 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -33,7 +33,7 @@
 #include <init.h>
 #include <command.h>
 #include <malloc.h>
-#include <mem_malloc.h>
+#include <memory.h>
 #include <debug_ll.h>
 #include <fs.h>
 #include <linux/stat.h>
diff --git a/include/mem_malloc.h b/include/mem_malloc.h
deleted file mode 100644
index 67b19d7..0000000
--- a/include/mem_malloc.h
+++ /dev/null
@@ -1,10 +0,0 @@
-#ifndef __MEM_MALLOC_H
-#define __MEM_MALLOC_H
-
-#include <linux/types.h>
-
-void mem_malloc_init(void *start, void *end);
-ulong mem_malloc_start(void);
-ulong mem_malloc_end(void);
-
-#endif
diff --git a/include/memory.h b/include/memory.h
new file mode 100644
index 0000000..67b19d7
--- /dev/null
+++ b/include/memory.h
@@ -0,0 +1,10 @@
+#ifndef __MEM_MALLOC_H
+#define __MEM_MALLOC_H
+
+#include <linux/types.h>
+
+void mem_malloc_init(void *start, void *end);
+ulong mem_malloc_start(void);
+ulong mem_malloc_end(void);
+
+#endif
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
