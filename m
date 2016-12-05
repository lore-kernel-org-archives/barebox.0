Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wj0-x241.google.com ([2a00:1450:400c:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDplu-0002AY-Lo
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 09:41:30 +0000
Received: by mail-wj0-x241.google.com with SMTP id kp2so38280808wjc.0
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 01:40:58 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Dec 2016 12:40:31 +0300
Message-Id: <20161205094033.31569-7-antonynpavlov@gmail.com>
In-Reply-To: <20161205094033.31569-1-antonynpavlov@gmail.com>
References: <20161205094033.31569-1-antonynpavlov@gmail.com>
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
Subject: [RFC v2 6/8] bootm: add kexec ELF support
To: barebox@lists.infradead.org

Also introduce reboot() for starting already loaded
via kexec ELF segments.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/reboot.h      | 14 ++++++++++++++
 lib/kexec/Makefile          |  1 +
 lib/kexec/kexec-bootm-elf.c | 37 +++++++++++++++++++++++++++++++++++++
 3 files changed, 52 insertions(+)

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
index 0000000..ceef6c7
--- /dev/null
+++ b/lib/kexec/kexec-bootm-elf.c
@@ -0,0 +1,37 @@
+#include <bootm.h>
+#include <init.h>
+#include <binfmt.h>
+#include <errno.h>
+#include <linux/reboot.h>
+#include <environment.h>
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
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
