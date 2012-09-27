Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THHnG-0005Yu-AI
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 17:22:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Sep 2012 19:22:24 +0200
Message-Id: <1348766546-21547-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348766546-21547-1-git-send-email-s.hauer@pengutronix.de>
References: <1348766546-21547-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] net: Add tftp command which uses the new tftp code
To: barebox@lists.infradead.org

Traditionally tftp is a command of its own. Since we can
mount tftp as a filesystem we have duplicated the tftp code, the old
code is used by the tftp command, the new by the filesystem support.
This adds a tftp command based on the filesystem support to preserve
backward compatibility. This allows us to remove the old tftp support
in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |    8 +++++
 commands/Makefile |    1 +
 commands/tftp.c   |  103 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 112 insertions(+)
 create mode 100644 commands/tftp.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 7969937..cf414200 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -222,6 +222,14 @@ config CMD_READLINK
 	help
 	  read value of a symbolic link
 
+config CMD_TFTP
+	depends on FS_TFTP
+	tristate
+	prompt "tftp"
+	help
+	  barebox can mount tftp as a filesystem. This command is only needed to
+	  preserve backward compatibility to the old tftp command.
+
 endmenu
 
 menu "console                       "
diff --git a/commands/Makefile b/commands/Makefile
index 7a36f60..610be55 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -75,3 +75,4 @@ obj-$(CONFIG_CMD_DIRNAME)	+= dirname.o
 obj-$(CONFIG_CMD_READLINK)	+= readlink.o
 obj-$(CONFIG_CMD_LN)		+= ln.o
 obj-$(CONFIG_CMD_CLK)		+= clk.o
+obj-$(CONFIG_CMD_TFTP)		+= tftp.o
diff --git a/commands/tftp.c b/commands/tftp.c
new file mode 100644
index 0000000..558b0ac
--- /dev/null
+++ b/commands/tftp.c
@@ -0,0 +1,103 @@
+/*
+ * tftp.c - (up)load tftp files
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+ */
+#include <common.h>
+#include <command.h>
+#include <linux/stat.h>
+#include <getopt.h>
+#include <fcntl.h>
+#include <libgen.h>
+#include <fs.h>
+#include <net.h>
+#include <libbb.h>
+
+#define TFTP_MOUNT_PATH	"/.tftp_tmp_path"
+
+static int do_tftpb(int argc, char *argv[])
+{
+	char *source, *dest, *freep;
+	int opt;
+	unsigned long flags;
+	int tftp_push = 0;
+	int ret;
+	IPaddr_t ip;
+
+	while ((opt = getopt(argc, argv, "p")) > 0) {
+		switch(opt) {
+		case 'p':
+			tftp_push = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc <= optind)
+		return COMMAND_ERROR_USAGE;
+
+	source = argv[optind++];
+
+	if (argc == optind)
+		dest = basename(source);
+	else
+		dest = argv[optind];
+
+	if (tftp_push) {
+		dest = freep = asprintf("%s/%s", TFTP_MOUNT_PATH, dest);
+		flags = O_RDONLY;
+	} else {
+		source = freep = asprintf("%s/%s", TFTP_MOUNT_PATH, source);
+		flags = O_WRONLY | O_CREAT;
+	}
+
+	if (!freep)
+		return -ENOMEM;
+
+	ret = make_directory(TFTP_MOUNT_PATH);
+	if (ret)
+		goto err_free;
+
+	ip = net_get_serverip();
+	ret = mount(ip_to_string(ip), "tftp", TFTP_MOUNT_PATH);
+	if (ret)
+		goto err_rmdir;
+
+	printk("%s: %s -> %s\n", __func__, source, dest);
+
+	ret = copy_file(source, dest, 1);
+
+	umount(TFTP_MOUNT_PATH);
+
+err_rmdir:
+	rmdir(TFTP_MOUNT_PATH);
+
+err_free:
+	free(freep);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(tftp)
+BAREBOX_CMD_HELP_USAGE("tftp [-p] <source> [dest]\n")
+BAREBOX_CMD_HELP_SHORT("Load a file from or upload to TFTP server.\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(tftp)
+	.cmd		= do_tftpb,
+	.usage		= "(up-)Load file using tftp protocol",
+	BAREBOX_CMD_HELP(cmd_tftp_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
