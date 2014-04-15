Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZxxw-0002vz-Fd
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 07:39:36 +0000
Received: by mail-lb0-f180.google.com with SMTP id 10so6438550lbg.39
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 00:39:11 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 11:38:32 +0400
Message-Id: <1397547514-19925-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 08/10] bootm: add kexec ELF support
To: barebox@lists.infradead.org

Also introduce reboot() for starting already loaded
via kexec ELF segments.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/reboot.h      | 14 ++++++++++++++
 lib/kexec/Makefile          |  1 +
 lib/kexec/kexec-bootm-elf.c | 36 ++++++++++++++++++++++++++++++++++++
 3 files changed, 51 insertions(+)
 create mode 100644 include/linux/reboot.h
 create mode 100644 lib/kexec/kexec-bootm-elf.c

diff --git a/include/linux/reboot.h b/include/linux/reboot.h
new file mode 100644
index 0000000..454ed33
--- /dev/null
+++ b/include/linux/reboot.h
@@ -0,0 +1,14 @@
+#ifndef _LINUX_REBOOT_H
+#define _LINUX_REBOOT_H
+
+/*
+ * Commands accepted by the _reboot() system call.
+ *
+ * KEXEC       Restart system using a previously loaded Linux kernel
+ */
+
+#define	LINUX_REBOOT_CMD_KEXEC		0x45584543
+
+extern int reboot(int cmd);
+
+#endif /* _LINUX_REBOOT_H */
diff --git a/lib/kexec/Makefile b/lib/kexec/Makefile
index 8febef1..2f3dc1d 100644
--- a/lib/kexec/Makefile
+++ b/lib/kexec/Makefile
@@ -1,3 +1,4 @@
 obj-y	+= kexec.o
 obj-y	+= kexec-elf.o
 obj-y	+= kexec-elf-exec.o
+obj-y	+= kexec-bootm-elf.o
diff --git a/lib/kexec/kexec-bootm-elf.c b/lib/kexec/kexec-bootm-elf.c
new file mode 100644
index 0000000..6c8071a
--- /dev/null
+++ b/lib/kexec/kexec-bootm-elf.c
@@ -0,0 +1,36 @@
+#include <boot.h>
+#include <init.h>
+#include <binfmt.h>
+#include <errno.h>
+#include <linux/reboot.h>
+
+#include "kexec.h"
+
+static int do_bootm_elf(struct image_data *data)
+{
+	kexec_load_file(data->os_file, 0);
+	setenv("global.bootm.image", data->os_file);
+	reboot(LINUX_REBOOT_CMD_KEXEC);
+
+	return -ERESTARTSYS;
+}
+
+static struct image_handler elf_handler = {
+	.name = "ELF",
+	.bootm = do_bootm_elf,
+	.filetype = filetype_elf,
+};
+
+static struct binfmt_hook binfmt_elf_hook = {
+	.type = filetype_elf,
+	.exec = "bootm",
+};
+
+static int elf_register_image_handler(void)
+{
+	register_image_handler(&elf_handler);
+	binfmt_register(&binfmt_elf_hook);
+
+	return 0;
+}
+late_initcall(elf_register_image_handler);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
