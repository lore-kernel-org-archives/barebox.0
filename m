Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8D6k-000197-Rh
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:56:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:56:17 +0200
Message-Id: <1302274579-11158-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
References: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] add dummy_malloc functions
To: barebox@lists.infradead.org

For some environments the dummy malloc functions offer a very small
alternative implementation. malloc will get its memory from sbrk()
and never frees memory again.
This of course is not suitable for interactive environments and thus
depends on CONFIG_SHELL_NONE

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig        |   16 ++++++++++++++++
 common/Makefile       |    3 ++-
 common/dummy_malloc.c |   26 ++++++++++++++++++++++++++
 3 files changed, 44 insertions(+), 1 deletions(-)
 create mode 100644 common/dummy_malloc.c

diff --git a/common/Kconfig b/common/Kconfig
index c3449a9..7d2367b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -148,6 +148,22 @@ config EXPERIMENTAL
 	bool
 	prompt "Prompt for experimental code"
 
+choice
+	prompt "malloc implementation"
+
+config MALLOC_DLMALLOC
+	bool "dlmalloc"
+
+config MALLOC_DUMMY
+	bool "dummy malloc"
+	depends on SHELL_NONE
+	help
+	  select this option to use a dummy malloc implementation. With this
+	  memory is never freed. This is suitable for well tested noninteractive
+	  environments only.
+
+endchoice
+
 config MODULES
 	depends on HAS_MODULES
 	depends on EXPERIMENTAL
diff --git a/common/Makefile b/common/Makefile
index aa2c222..9fed2ae 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -9,7 +9,8 @@ obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BLOCK)		+= block.o
 
 obj-y += memory.o
-obj-y += dlmalloc.o
+obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
+obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
 obj-y += clock.o
 obj-y += version.o
 obj-$(CONFIG_COMMAND_SUPPORT) += command.o
diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
new file mode 100644
index 0000000..213e51d
--- /dev/null
+++ b/common/dummy_malloc.c
@@ -0,0 +1,26 @@
+#include <common.h>
+#include <malloc.h>
+
+void *memalign(size_t alignment, size_t bytes)
+{
+	unsigned long mem = (unsigned long)sbrk(bytes + alignment);
+
+	mem = (mem + alignment) & ~(alignment - 1);
+
+	return (void *)mem;
+}
+
+void *malloc(size_t size)
+{
+	return memalign(8, size);
+}
+
+void free(void *ptr)
+{
+}
+
+void *realloc(void *ptr, size_t size)
+{
+	BUG();
+}
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
