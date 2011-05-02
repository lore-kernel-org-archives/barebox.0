Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QGyzz-0000DW-Mq
	for barebox@lists.infradead.org; Mon, 02 May 2011 19:41:40 +0000
Received: by wyb28 with SMTP id 28so5645012wyb.36
	for <barebox@lists.infradead.org>; Mon, 02 May 2011 12:41:37 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Mon,  2 May 2011 21:41:52 +0200
Message-Id: <1304365312-14611-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] [Nios2] Add bootm support
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

This patch adds the bootm support to the Nios2 arch.

Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
---
 arch/nios2/lib/Makefile |    1 +
 arch/nios2/lib/bootm.c  |   83 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/lib/bootm.c

diff --git a/arch/nios2/lib/Makefile b/arch/nios2/lib/Makefile
index 8776c61..fc9d4d7 100644
--- a/arch/nios2/lib/Makefile
+++ b/arch/nios2/lib/Makefile
@@ -2,5 +2,6 @@ obj-y                      += board.o
 obj-y                      += libgcc.o
 obj-y                      += clock.o
 obj-y                      += cache.o
+obj-y                      += bootm.o
 obj-$(CONFIG_EARLY_PRINTF) += early_printf.o
 
diff --git a/arch/nios2/lib/bootm.c b/arch/nios2/lib/bootm.c
new file mode 100644
index 0000000..34e2bd2
--- /dev/null
+++ b/arch/nios2/lib/bootm.c
@@ -0,0 +1,83 @@
+/*
+ * barebox - bootm.c
+ *
+ * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
+ *
+ * (C) Copyright 2003, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <image.h>
+#include <environment.h>
+#include <init.h>
+#include <boot.h>
+#include <asm/cache.h>
+
+#define NIOS_MAGIC 0x534f494e /* enable command line and initrd passing */
+
+static int do_bootm_linux(struct image_data *idata)
+{
+	image_header_t *os_header = &idata->os->header;
+	void (*kernel)(int, int, int, const char *);
+	const char *commandline = getenv ("bootargs");
+
+	kernel = (void (*)(int, int, int, const char *))ntohl(os_header->ih_ep);
+
+#ifdef CONFIG_USE_IRQ
+	disable_interrupts();
+#endif
+
+	if (relocate_image(idata->os, (void *)ntohl(os_header->ih_load)))
+		return -1;
+
+	/* kernel parameters passing
+	 * r4 : NIOS magic
+	 * r5 : initrd start
+	 * r6 : initrd end or fdt
+	 * r7 : kernel command line
+	 * fdt is passed to kernel via r6, the same as initrd_end. fdt will be
+	 * verified with fdt magic. when both initrd and fdt are used at the
+	 * same time, fdt must follow immediately after initrd.
+	 */
+
+	/* flushes data and instruction caches before calling the kernel */
+	flush_cache_all();
+
+	kernel(NIOS_MAGIC, 0, 0, commandline);
+	/* does not return */
+
+	return 1;
+}
+
+static struct image_handler handler = {
+	.bootm = do_bootm_linux,
+	.image_type = IH_OS_LINUX,
+};
+
+int nios2_register_image_handler(void)
+{
+	return register_image_handler(&handler);
+}
+
+late_initcall(nios2_register_image_handler);
+
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
