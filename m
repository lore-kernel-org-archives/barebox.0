Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co7-0000ru-1s
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:36:56 +0200
Message-Id: <1302273422-6987-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/16] move version_string to seperate file
To: barebox@lists.infradead.org

In a noninteractive environment barebox will be compiled without
command support. So move version_string to a seperate file which
is compiled unconditionally.
Also, display the banner when the simple console support is used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile         |    1 +
 common/command.c        |    4 ----
 common/console.c        |   10 ++--------
 common/console_simple.c |    2 ++
 common/version.c        |   13 +++++++++++++
 include/common.h        |    1 +
 6 files changed, 19 insertions(+), 12 deletions(-)
 create mode 100644 common/version.c

diff --git a/common/Makefile b/common/Makefile
index 6cc6143..d8c302f 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_POLLER)		+= poller.o
 
 obj-y += dlmalloc.o
 obj-y += clock.o
+obj-y += version.o
 obj-y += command.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
diff --git a/common/command.c b/common/command.c
index f1aeeb9..ab02ed5 100644
--- a/common/command.c
+++ b/common/command.c
@@ -33,12 +33,8 @@
 #include <linux/list.h>
 #include <init.h>
 #include <complete.h>
-#include <generated/utsrelease.h>
 #include <getopt.h>
 
-const char version_string[] =
-	"barebox " UTS_RELEASE " (" __DATE__ " - " __TIME__ ")";
-
 LIST_HEAD(command_list);
 EXPORT_SYMBOL(command_list);
 
diff --git a/common/console.c b/common/console.c
index 5548a40..d33a249 100644
--- a/common/console.c
+++ b/common/console.c
@@ -45,12 +45,6 @@ EXPORT_SYMBOL(console_list);
 #define CONSOLE_INIT_EARLY	1
 #define CONSOLE_INIT_FULL	2
 
-static void display_banner (void)
-{
-	printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
-	printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
-}
-
 static int __early_initdata initialized = 0;
 
 static int console_std_set(struct device_d *dev, struct param_d *param,
@@ -169,7 +163,7 @@ int console_register(struct console_device *newcdev)
 
 #ifndef CONFIG_HAS_EARLY_INIT
 	if (first)
-		display_banner();
+		barebox_banner();
 #endif
 
 	return 0;
@@ -420,7 +414,7 @@ void early_console_start(const char *name, int baudrate)
 		early_console_init(base, baudrate);
 		INITDATA(initialized) = CONSOLE_INIT_EARLY;
 		INITDATA(early_console_base) = base;
-		display_banner();
+		barebox_banner();
 	}
 }
 
diff --git a/common/console_simple.c b/common/console_simple.c
index 1b58dea..7304d8e 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -152,6 +152,8 @@ int console_register(struct console_device *newcdev)
 		console = newcdev;
 		console_list.prev = console_list.next = &newcdev->list;
 		newcdev->list.prev = newcdev->list.next = &console_list;
+
+		barebox_banner();
 	}
 	return 0;
 }
diff --git a/common/version.c b/common/version.c
new file mode 100644
index 0000000..945475f
--- /dev/null
+++ b/common/version.c
@@ -0,0 +1,13 @@
+#include <common.h>
+#include <reloc.h>
+#include <generated/utsrelease.h>
+
+const char version_string[] =
+	"barebox " UTS_RELEASE " (" __DATE__ " - " __TIME__ ")";
+
+void barebox_banner (void)
+{
+	printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
+	printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
+}
+
diff --git a/include/common.h b/include/common.h
index 35ad7b9..491bc98 100644
--- a/include/common.h
+++ b/include/common.h
@@ -219,6 +219,7 @@ int run_shell(void);
 int memory_display(char *addr, ulong offs, ulong nbytes, int size);
 
 extern const char version_string[];
+void barebox_banner(void);
 
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
