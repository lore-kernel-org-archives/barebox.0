Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVlXN-0000ku-Dw
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:16:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 15:16:35 +0200
Message-Id: <1278335795-16289-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] Add UBI commands: ubiattach, ubidetach, ubimkvol,
	ubirmvol
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |    6 +++
 commands/Makefile |    1 +
 commands/ubi.c    |  129 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 136 insertions(+), 0 deletions(-)
 create mode 100644 commands/ubi.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 0ea32d9..1ffc826 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -180,6 +180,12 @@ menu "flash                         "
 config CMD_FLASH
 	tristate
 	prompt "protect/erase"
+
+config CMD_UBI
+	tristate
+	default y if UBI
+	prompt "ubimkvol, ubirmvol, ubiattach"
+
 endmenu
 
 
diff --git a/commands/Makefile b/commands/Makefile
index 3eef5de..b99f042 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -49,3 +49,4 @@ obj-$(CONFIG_USB_GADGET_DFU)	+= dfu.o
 obj-$(CONFIG_CMD_GPIO)		+= gpio.o
 obj-$(CONFIG_CMD_UNLZO)		+= unlzo.o
 obj-$(CONFIG_CMD_I2C)		+= i2c.o
+obj-$(CONFIG_CMD_UBI)		+= ubi.o
diff --git a/commands/ubi.c b/commands/ubi.c
new file mode 100644
index 0000000..3da0835
--- /dev/null
+++ b/commands/ubi.c
@@ -0,0 +1,129 @@
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <ioctl.h>
+#include <errno.h>
+#include <getopt.h>
+#include <linux/mtd/mtd.h>
+#include <linux/kernel.h>
+#include <linux/mtd/mtd-abi.h>
+#include <mtd/ubi-user.h>
+#include <ubi-media.h>
+
+static int do_ubimkvol(struct command *cmdtp, int argc, char *argv[])
+{
+	struct ubi_mkvol_req req;
+	int fd, ret;
+	size_t size;
+
+	if (argc != 4)
+		return COMMAND_ERROR_USAGE;
+
+	size = strtoul_suffix(argv[3], NULL, 0);
+	req.name_len = min_t(int, strlen(argv[2]), UBI_VOL_NAME_MAX);
+	strncpy(req.name, argv[2], req.name_len);
+	req.name[req.name_len] = 0;
+
+	req.vol_type = UBI_DYNAMIC_VOLUME;
+	req.bytes = size;
+	req.vol_id = UBI_VOL_NUM_AUTO;
+	req.alignment = 1;
+
+	fd = open(argv[1], O_WRONLY);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	ret = ioctl(fd, UBI_IOCMKVOL, &req);
+	if (ret)
+		printf("failed to create: %s\n", strerror(-ret));
+	close(fd);
+
+	return ret ? 1 : 0;
+}
+
+static const __maybe_unused char cmd_ubimkvol_help[] =
+"Usage: ubimkvol <ubidev> <name> <size>\n"
+"Create an ubi volume on <ubidev> with name <name> and size <size>\n"
+"If size os zero all available space is used for the volume\n";
+
+BAREBOX_CMD_START(ubimkvol)
+	.cmd		= do_ubimkvol,
+	.usage		= "create an ubi volume",
+	BAREBOX_CMD_HELP(cmd_ubimkvol_help)
+BAREBOX_CMD_END
+
+
+static int do_ubiattach(struct command *cmdtp, int argc, char *argv[])
+{
+	struct mtd_info_user user;
+	int fd, ret;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	fd = open(argv[1], O_RDWR);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	ret = ioctl(fd, MEMGETINFO, &user);
+	if (!ret)
+		ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, 0);
+
+	if (ret)
+		printf("failed to attach: %s\n", strerror(-ret));
+
+	close(fd);
+
+	return ret ? 1 : 0;
+}
+
+static const __maybe_unused char cmd_ubiattach_help[] =
+"Usage: ubiattach <mtddev>\n"
+"Attach <mtddev> to ubi\n";
+
+BAREBOX_CMD_START(ubiattach)
+	.cmd		= do_ubiattach,
+	.usage		= "attach a mtd dev to ubi",
+	BAREBOX_CMD_HELP(cmd_ubiattach_help)
+BAREBOX_CMD_END
+
+static int do_ubirmvol(struct command *cmdtp, int argc, char *argv[])
+{
+	struct ubi_mkvol_req req;
+	int fd, ret;
+
+	if (argc != 3)
+		return COMMAND_ERROR_USAGE;
+
+	strncpy(req.name, argv[2], UBI_VOL_NAME_MAX);
+	req.name[UBI_VOL_NAME_MAX] = 0;
+
+	fd = open(argv[1], O_WRONLY);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	ret = ioctl(fd, UBI_IOCRMVOL, &req);
+	if (ret)
+		printf("failed to delete: %s\n", strerror(-ret));
+	close(fd);
+
+	return ret ? 1 : 0;
+}
+
+static const __maybe_unused char cmd_ubirmvol_help[] =
+"Usage: ubirmvol <ubidev> <name>\n"
+"Delete ubi volume <name> from <ubidev>\n";
+
+BAREBOX_CMD_START(ubirmvol)
+	.cmd		= do_ubirmvol,
+	.usage		= "delete an ubi volume",
+	BAREBOX_CMD_HELP(cmd_ubirmvol_help)
+BAREBOX_CMD_END
+
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
