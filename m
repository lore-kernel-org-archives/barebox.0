Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRp7w-0003pi-EU
 for barebox@lists.infradead.org; Sat, 28 Feb 2015 21:40:51 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sat, 28 Feb 2015 22:40:12 +0100
Message-Id: <1425159621-22805-8-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
References: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 07/16] sandbox: add support to pass dtb to barebox
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/board/Makefile                    |  1 +
 arch/sandbox/board/dtb.c                       | 57 ++++++++++++++++++++++++++
 arch/sandbox/mach-sandbox/include/mach/linux.h |  1 +
 arch/sandbox/os/common.c                       | 47 ++++++++++++++++++++-
 4 files changed, 105 insertions(+), 1 deletion(-)
 create mode 100644 arch/sandbox/board/dtb.c

diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index 5104f5cb2679..460116332df9 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -3,5 +3,6 @@ obj-y += clock.o
 obj-y += hostfile.o
 obj-y += console.o
 obj-y += devices.o
+obj-y += dtb.o
 
 extra-y += barebox.lds
diff --git a/arch/sandbox/board/dtb.c b/arch/sandbox/board/dtb.c
new file mode 100644
index 000000000000..9d4210164e01
--- /dev/null
+++ b/arch/sandbox/board/dtb.c
@@ -0,0 +1,57 @@
+/*
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2015 Marc Kleine-Budde <mkl@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+
+#include <mach/linux.h>
+#include <linux/err.h>
+
+static const void *dtb;
+
+int barebox_register_dtb(const void *new_dtb)
+{
+	if (dtb)
+		return -EBUSY;
+
+	dtb = new_dtb;
+
+	return 0;
+}
+
+static int of_sandbox_init(void)
+{
+	struct device_node *root;
+
+	if (!dtb)
+		return 0;
+
+	root = of_unflatten_dtb(dtb);
+	if (IS_ERR(root)) {
+		return PTR_ERR(root);
+	}
+
+	of_set_root_node(root);
+	of_fix_tree(root);
+	if (IS_ENABLED(CONFIG_OFDEVICE))
+		of_probe();
+
+	return 0;
+}
+core_initcall(of_sandbox_init);
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 98f9067046c3..28d5017a4e4b 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -19,6 +19,7 @@ int linux_tstc(int fd);
 int linux_execve(const char * filename, char *const argv[], char *const envp[]);
 
 int barebox_register_console(char *name_template, int stdinfd, int stdoutfd);
+int barebox_register_dtb(const void *dtb);
 
 struct linux_console_data {
 	int stdinfd;
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 65dc4a1ab75c..cfb261acf2b5 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -265,6 +265,42 @@ err_out:
 	return -1;
 }
 
+static int add_dtb(const char *file)
+{
+	struct stat s;
+	void *dtb = NULL;
+	int fd;
+
+	fd = open(file, O_RDONLY);
+	if (fd < 0) {
+		perror("open");
+		goto err_out;
+	}
+
+	if (fstat(fd, &s)) {
+		perror("fstat");
+		goto err_out;
+	}
+
+	dtb = mmap(NULL, s.st_size, PROT_READ, MAP_SHARED, fd, 0);
+	if (dtb == MAP_FAILED) {
+		perror("mmap");
+		goto err_out;
+	}
+
+	if (barebox_register_dtb(dtb))
+		goto err_out;
+
+	return 0;
+
+ err_out:
+	if (dtb)
+		munmap(dtb, s.st_size);
+	if (fd > 0)
+		close(fd);
+	return -1;
+}
+
 static void print_usage(const char*);
 
 static struct option long_options[] = {
@@ -272,6 +308,7 @@ static struct option long_options[] = {
 	{"malloc", 1, 0, 'm'},
 	{"image",  1, 0, 'i'},
 	{"env",    1, 0, 'e'},
+	{"dtb",    1, 0, 'd'},
 	{"stdout", 1, 0, 'O'},
 	{"stdin",  1, 0, 'I'},
 	{"xres",  1, 0, 'x'},
@@ -279,7 +316,7 @@ static struct option long_options[] = {
 	{0, 0, 0, 0},
 };
 
-static const char optstring[] = "hm:i:e:O:I:x:y:";
+static const char optstring[] = "hm:i:e:d:O:I:x:y:";
 
 int main(int argc, char *argv[])
 {
@@ -308,6 +345,13 @@ int main(int argc, char *argv[])
 			break;
 		case 'e':
 			break;
+		case 'd':
+			ret = add_dtb(optarg);
+			if (ret) {
+				printf("Failed to load dtb: '%s'\n", optarg);
+				exit(1);
+			}
+			break;
 		case 'O':
 			fd = open(optarg, O_WRONLY);
 			if (fd < 0) {
@@ -408,6 +452,7 @@ static void print_usage(const char *prgname)
 "                       and thus are used as the default environment.\n"
 "                       An empty file generated with dd will do to get started\n"
 "                       with an empty environment.\n"
+"  -d, --dtb=<file>     Map a device tree binary blob (dtb) into barebox.\n"
 "  -O, --stdout=<file>  Register a file as a console capable of doing stdout.\n"
 "                       <file> can be a regular file or a FIFO.\n"
 "  -I, --stdin=<file>   Register a file as a console capable of doing stdin.\n"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
