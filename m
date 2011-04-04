Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6ko8-00038h-0i
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:31:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:31:05 +0200
Message-Id: <1301927465-23717-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301927465-23717-1-git-send-email-s.hauer@pengutronix.de>
References: <1301927465-23717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: move bootu code to its own file
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/Makefile   |    1 +
 arch/arm/lib/armlinux.c |   33 ---------------------------------
 arch/arm/lib/bootu.c    |   38 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 39 insertions(+), 33 deletions(-)
 create mode 100644 arch/arm/lib/bootu.c

diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 8165aea..9383ae1 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
 obj-$(CONFIG_CMD_BOOTZ)	+= bootz.o
+obj-$(CONFIG_CMD_BOOTU)	+= bootu.o
 obj-y	+= div0.o
 obj-y	+= findbit.o
 obj-y	+= arm.o
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index bb4bcd3..ce1cc6b 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -231,36 +231,3 @@ void start_linux(void *adr, int swap, struct image_data *data)
 
 	kernel(0, armlinux_architecture, armlinux_bootparams);
 }
-
-#ifdef CONFIG_CMD_BOOTU
-static int do_bootu(struct command *cmdtp, int argc, char *argv[])
-{
-	void (*theKernel)(int zero, int arch, void *params) = NULL;
-	int fd;
-
-	if (argc != 2) {
-		barebox_cmd_usage(cmdtp);
-		return 1;
-	}
-
-	fd = open(argv[1], O_RDONLY);
-	if (fd > 0)
-		theKernel = (void *)memmap(fd, PROT_READ);
-
-	if (!theKernel)
-		theKernel = (void *)simple_strtoul(argv[1], NULL, 0);
-
-	start_linux(theKernel, 0, NULL);
-
-	return 1;
-}
-
-static const __maybe_unused char cmd_bootu_help[] =
-"Usage: bootu <address>\n";
-
-BAREBOX_CMD_START(bootu)
-	.cmd            = do_bootu,
-	.usage          = "bootu - start a raw linux image",
-	BAREBOX_CMD_HELP(cmd_bootu_help)
-BAREBOX_CMD_END
-#endif /* CONFIG_CMD_BOOTU */
diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
new file mode 100644
index 0000000..e97ded0
--- /dev/null
+++ b/arch/arm/lib/bootu.c
@@ -0,0 +1,38 @@
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <asm/armlinux.h>
+
+static int do_bootu(struct command *cmdtp, int argc, char *argv[])
+{
+	int fd;
+	void *kernel = NULL;
+
+	if (argc != 2) {
+		barebox_cmd_usage(cmdtp);
+		return 1;
+	}
+
+	fd = open(argv[1], O_RDONLY);
+	if (fd > 0)
+		kernel = (void *)memmap(fd, PROT_READ);
+
+	if (!kernel)
+		kernel = (void *)simple_strtoul(argv[1], NULL, 0);
+
+	start_linux(kernel, 0, NULL);
+
+	return 1;
+}
+
+static const __maybe_unused char cmd_bootu_help[] =
+"Usage: bootu <address>\n";
+
+BAREBOX_CMD_START(bootu)
+	.cmd            = do_bootu,
+	.usage          = "bootu - start a raw linux image",
+	BAREBOX_CMD_HELP(cmd_bootu_help)
+BAREBOX_CMD_END
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
