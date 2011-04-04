Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6ko7-00038f-Um
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:31:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:31:03 +0200
Message-Id: <1301927465-23717-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: move bootm code to its own file
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/Makefile   |    1 +
 arch/arm/lib/armlinux.c |   80 ----------------------------------------
 arch/arm/lib/bootm.c    |   92 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 93 insertions(+), 80 deletions(-)
 create mode 100644 arch/arm/lib/bootm.c

diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 899c391..bb1c202 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
+obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
 obj-y	+= div0.o
 obj-y	+= findbit.o
 obj-y	+= arm.o
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 15b92f9..a37f710 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -232,86 +232,6 @@ void start_linux(void *adr, int swap, struct image_data *data)
 	kernel(0, armlinux_architecture, armlinux_bootparams);
 }
 
-#ifdef CONFIG_CMD_BOOTM
-static int do_bootm_linux(struct image_data *data)
-{
-	void (*theKernel)(int zero, int arch, void *params);
-	image_header_t *os_header = &data->os->header;
-
-	if (image_get_type(os_header) == IH_TYPE_MULTI) {
-		printf("Multifile images not handled at the moment\n");
-		return -1;
-	}
-
-	if (armlinux_architecture == 0) {
-		printf("arm architecture not set. Please specify with -a option\n");
-		return -1;
-	}
-
-	if (!armlinux_bootparams) {
-		printf("Bootparams not set. Please fix your board code\n");
-		return -1;
-	}
-
-	theKernel = (void *)image_get_ep(os_header);
-
-	debug("## Transferring control to Linux (at address 0x%p) ...\n",
-	       theKernel);
-
-	if (relocate_image(data->os, (void *)image_get_load(os_header)))
-		return -1;
-
-	if (data->initrd)
-		if (relocate_image(data->initrd, (void *)image_get_load(&data->initrd->header)))
-			return -1;
-
-	/* we assume that the kernel is in place */
-	printf("\nStarting kernel %s...\n\n", data->initrd ? "with initrd " : "");
-
-	start_linux(theKernel, 0, data);
-
-	return -1;
-}
-
-static int image_handle_cmdline_parse(struct image_data *data, int opt,
-		char *optarg)
-{
-	int ret = 1;
-
-	switch (opt) {
-	case 'a':
-		armlinux_architecture = simple_strtoul(optarg, NULL, 0);
-		ret = 0;
-		break;
-	case 'R':
-		system_rev = simple_strtoul(optarg, NULL, 0);
-		ret = 0;
-		break;
-	default:
-		break;
-	}
-
-	return ret;
-}
-
-static struct image_handler handler = {
-	.cmdline_options = "a:R:",
-	.cmdline_parse = image_handle_cmdline_parse,
-	.help_string = " -a <arch>        use architecture number <arch>\n"
-		       " -R <system_rev>  use system revison <system_rev>\n",
-
-	.bootm = do_bootm_linux,
-	.image_type = IH_OS_LINUX,
-};
-
-static int armlinux_register_image_handler(void)
-{
-	return register_image_handler(&handler);
-}
-
-late_initcall(armlinux_register_image_handler);
-#endif /* CONFIG_CMD_BOOTM */
-
 #ifdef CONFIG_CMD_BOOTZ
 struct zimage_header {
 	u32	unused[9];
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
new file mode 100644
index 0000000..b09fe70
--- /dev/null
+++ b/arch/arm/lib/bootm.c
@@ -0,0 +1,92 @@
+#include <boot.h>
+#include <common.h>
+#include <command.h>
+#include <driver.h>
+#include <environment.h>
+#include <image.h>
+#include <zlib.h>
+#include <init.h>
+#include <fs.h>
+#include <linux/list.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <fcntl.h>
+#include <errno.h>
+
+#include <asm/byteorder.h>
+#include <asm/global_data.h>
+#include <asm/setup.h>
+#include <asm/barebox-arm.h>
+#include <asm/armlinux.h>
+#include <asm/system.h>
+
+static int do_bootm_linux(struct image_data *data)
+{
+	void (*theKernel)(int zero, int arch, void *params);
+	image_header_t *os_header = &data->os->header;
+
+	if (image_get_type(os_header) == IH_TYPE_MULTI) {
+		printf("Multifile images not handled at the moment\n");
+		return -1;
+	}
+
+	theKernel = (void *)image_get_ep(os_header);
+
+	debug("## Transferring control to Linux (at address 0x%p) ...\n",
+	       theKernel);
+
+	if (relocate_image(data->os, (void *)image_get_load(os_header)))
+		return -1;
+
+	if (data->initrd)
+		if (relocate_image(data->initrd, (void *)image_get_load(&data->initrd->header)))
+			return -1;
+
+	/* we assume that the kernel is in place */
+	printf("\nStarting kernel %s...\n\n", data->initrd ? "with initrd " : "");
+
+	start_linux(theKernel, 0, data);
+
+	return -1;
+}
+
+static int image_handle_cmdline_parse(struct image_data *data, int opt,
+		char *optarg)
+{
+	int ret = 1;
+	int no;
+
+	switch (opt) {
+	case 'a':
+		no = simple_strtoul(optarg, NULL, 0);
+		armlinux_set_architecture(no);
+		ret = 0;
+		break;
+	case 'R':
+		no = simple_strtoul(optarg, NULL, 0);
+		armlinux_set_revision(no);
+		ret = 0;
+		break;
+	default:
+		break;
+	}
+
+	return ret;
+}
+
+static struct image_handler handler = {
+	.cmdline_options = "a:R:",
+	.cmdline_parse = image_handle_cmdline_parse,
+	.help_string = " -a <arch>        use architecture number <arch>\n"
+		       " -R <system_rev>  use system revison <system_rev>\n",
+
+	.bootm = do_bootm_linux,
+	.image_type = IH_OS_LINUX,
+};
+
+static int armlinux_register_image_handler(void)
+{
+	return register_image_handler(&handler);
+}
+
+late_initcall(armlinux_register_image_handler);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
