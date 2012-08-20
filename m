Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3Sqb-0006QK-Vp
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:20:58 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 20 Aug 2012 16:20:18 +0200
Message-Id: <1345472428-17417-4-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 03/13] common: split out meminfo output and make it optional
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 common/Kconfig   |    4 ++++
 common/Makefile  |    1 +
 common/meminfo.c |   21 +++++++++++++++++++++
 common/startup.c |   19 -------------------
 include/common.h |   10 ++++++++--
 5 files changed, 34 insertions(+), 21 deletions(-)
 create mode 100644 common/meminfo.c

diff --git a/common/Kconfig b/common/Kconfig
index b776031..7d33c2e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -88,6 +88,10 @@ config BANNER
 	bool "display banner"
 	default y
 
+config MEMINFO
+	bool "display memory info"
+	default y
+
 config ENVIRONMENT_VARIABLES
 	bool "environment variables support"
 
diff --git a/common/Makefile b/common/Makefile
index a1926d3..69ff5df 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_MALLOC_TLSF) += tlsf.o
 obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
 obj-y += clock.o
 obj-$(CONFIG_BANNER) += version.o
+obj-$(CONFIG_MEMINFO) += meminfo.o
 obj-$(CONFIG_COMMAND_SUPPORT) += command.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
diff --git a/common/meminfo.c b/common/meminfo.c
new file mode 100644
index 0000000..30b5bef
--- /dev/null
+++ b/common/meminfo.c
@@ -0,0 +1,21 @@
+#include <common.h>
+#include <memory.h>
+#include <asm-generic/memory_layout.h>
+
+void display_meminfo(void)
+{
+	ulong mstart = mem_malloc_start();
+	ulong mend   = mem_malloc_end();
+	ulong msize  = mend - mstart + 1;
+
+	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext);
+	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
+	printf("Malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
+		mstart, mend, size_human_readable(msize));
+#ifdef CONFIG_ARM
+	printf("Stack space : 0x%08x -> 0x%08x (size %s)\n",
+		STACK_BASE, STACK_BASE + STACK_SIZE,
+		size_human_readable(STACK_SIZE));
+#endif
+}
+
diff --git a/common/startup.c b/common/startup.c
index abd1b77..686568d 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -33,34 +33,15 @@
 #include <init.h>
 #include <command.h>
 #include <malloc.h>
-#include <memory.h>
 #include <debug_ll.h>
 #include <fs.h>
 #include <linux/stat.h>
 #include <environment.h>
-#include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
 
-static void display_meminfo(void)
-{
-	ulong mstart = mem_malloc_start();
-	ulong mend   = mem_malloc_end();
-	ulong msize  = mend - mstart + 1;
-
-	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext);
-	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
-	printf("Malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
-		mstart, mend, size_human_readable(msize));
-#ifdef CONFIG_ARM
-	printf("Stack space : 0x%08x -> 0x%08x (size %s)\n",
-		STACK_BASE, STACK_BASE + STACK_SIZE,
-		size_human_readable(STACK_SIZE));
-#endif
-}
-
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 #include <generated/barebox_default_env.h>
 
diff --git a/include/common.h b/include/common.h
index df12083..d9eb677 100644
--- a/include/common.h
+++ b/include/common.h
@@ -150,11 +150,11 @@ static inline void dump_stack(void)
 #define MEMAREA_SIZE_SPECIFIED 1
 
 struct memarea_info {
-        struct device_d *device;
+	struct device_d *device;
 	unsigned long start;
 	unsigned long end;
 	unsigned long size;
-        unsigned long flags;
+	unsigned long flags;
 };
 
 int parse_area_spec(const char *str, loff_t *start, loff_t *size);
@@ -239,6 +239,12 @@ void barebox_banner(void);
 static inline void barebox_banner(void) {}
 #endif
 
+#ifdef CONFIG_MEMINFO
+void display_meminfo(void);
+#else
+static inline void display_meminfo(void) {}
+#endif
+
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 
 #define DIV_ROUND_UP(n,d)	(((n) + (d) - 1) / (d))
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
