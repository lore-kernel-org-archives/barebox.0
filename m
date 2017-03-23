Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqzqe-0000sq-Mb
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 10:20:07 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 23 Mar 2017 11:19:38 +0100
Message-Id: <20170323101938.10425-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] i.MX: hab: Add HAB fusebox related convenience functions /
 command
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

Secure boot with HAB requires handling of the super root key hash
and actually locking down the device. The related information is
stored in the i.MX fusebox device (IIM on older SoCs, OCOTP on newer
SoCs). This patch adds several convenience functions to store and
read the super root key hash and to lock down a SoC. Also we add
a command to do this from the command line.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/Kconfig     |   5 +
 commands/Makefile    |   1 +
 commands/hab.c       | 120 +++++++++++++++++
 drivers/hab/Makefile |   1 +
 drivers/hab/hab.c    | 358 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/hab.h        |  21 +++
 6 files changed, 506 insertions(+)
 create mode 100644 commands/hab.c
 create mode 100644 drivers/hab/hab.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 21d921268..d39db9546 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1930,6 +1930,11 @@ config CMD_WD_DEFAULT_TIMOUT
 	  'wd' is done without a timeout value (which means the watchdog gets
 	  enabled and re-triggered with the default timeout value).
 
+config CMD_HAB
+	bool
+	depends on HAB
+	prompt "High Assurance boot (hab)"
+
 # end Hardware manipulation commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 601f15fc3..a15d36269 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -87,6 +87,7 @@ obj-$(CONFIG_CMD_AUTOMOUNT)	+= automount.o
 obj-$(CONFIG_CMD_GLOBAL)	+= global.o
 obj-$(CONFIG_CMD_DMESG)		+= dmesg.o
 obj-$(CONFIG_CMD_BASENAME)	+= basename.o
+obj-$(CONFIG_CMD_HAB)		+= hab.o
 obj-$(CONFIG_CMD_DIRNAME)	+= dirname.o
 obj-$(CONFIG_CMD_READLINK)	+= readlink.o
 obj-$(CONFIG_CMD_LET)		+= let.o
diff --git a/commands/hab.c b/commands/hab.c
new file mode 100644
index 000000000..0d7ee8e76
--- /dev/null
+++ b/commands/hab.c
@@ -0,0 +1,120 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <getopt.h>
+#include <linux/ctype.h>
+#include <errno.h>
+#include <hab.h>
+
+static int do_hab(int argc, char *argv[])
+{
+	int opt, ret, i;
+	char *srkhashfile = NULL, *srkhash = NULL;
+	unsigned flags = 0;
+	u8 srk[SRK_HASH_SIZE];
+	int lockdown = 0, info = 0;
+
+	while ((opt = getopt(argc, argv, "s:fpx:li")) > 0) {
+		switch (opt) {
+		case 's':
+			srkhashfile = optarg;
+			break;
+		case 'f':
+			flags |= IMX_SRK_HASH_FORCE;
+			break;
+		case 'p':
+			flags |= IMX_SRK_HASH_WRITE_PERMANENT;
+			break;
+		case 'x':
+			srkhash = optarg;
+			break;
+		case 'l':
+			lockdown = 1;
+			break;
+		case 'i':
+			info = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (!info && !lockdown && !srkhashfile && !srkhash) {
+		printf("Nothing to do\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	if (info) {
+		ret = imx_hab_read_srk_hash(srk);
+		if (ret)
+			return ret;
+
+		printf("Current SRK hash: ");
+		for (i = 0; i < SRK_HASH_SIZE; i++)
+			printf("%02x", srk[i]);
+		printf("\n");
+
+		if (imx_hab_device_locked_down())
+			printf("secure mode\n");
+		else
+			printf("devel mode\n");
+
+		return 0;
+	}
+
+	if (srkhashfile && srkhash) {
+		printf("-s and -x options may not be given together\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	if (srkhashfile) {
+		ret = imx_hab_write_srk_hash_file(srkhashfile, flags);
+		if (ret)
+			return ret;
+	} else if (srkhash) {
+		ret = imx_hab_write_srk_hash_hex(srkhash, flags);
+		if (ret)
+			return ret;
+	}
+
+	if (lockdown) {
+		ret = imx_hab_lockdown_device(flags);
+		if (ret)
+			return ret;
+		printf("Device successfully locked down\n");
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(hab)
+BAREBOX_CMD_HELP_TEXT("Handle i.MX HAB (High Assurance Boot)")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_OPT ("-s <file>",  "Burn Super Root Key hash from <file>")
+BAREBOX_CMD_HELP_OPT ("-x <sha256>",  "Burn Super Root Key hash from hex string")
+BAREBOX_CMD_HELP_OPT ("-i",  "Print HAB info")
+BAREBOX_CMD_HELP_OPT ("-f",  "Force. Write even when a key is already written")
+BAREBOX_CMD_HELP_OPT ("-l",  "Lockdown device. Dangerous! After executing only signed images can be booted")
+BAREBOX_CMD_HELP_OPT ("-p",  "Permanent. Really burn fuses. Be careful!")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(hab)
+	.cmd		= do_hab,
+	BAREBOX_CMD_DESC("Handle i.MX HAB")
+	BAREBOX_CMD_OPTS("sxfp")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_hab_help)
+BAREBOX_CMD_END
diff --git a/drivers/hab/Makefile b/drivers/hab/Makefile
index 8528ef954..b169a1346 100644
--- a/drivers/hab/Makefile
+++ b/drivers/hab/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_HABV4) += habv4.o
 obj-$(CONFIG_HABV3) += habv3.o
+obj-$(CONFIG_HAB) += hab.o
diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
new file mode 100644
index 000000000..56d49e8e3
--- /dev/null
+++ b/drivers/hab/hab.c
@@ -0,0 +1,358 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+#define pr_fmt(fmt) "HAB: " fmt
+
+#include <common.h>
+#include <fcntl.h>
+#include <environment.h>
+#include <libfile.h>
+#include <mach/generic.h>
+#include <hab.h>
+#include <regmap.h>
+#include <fs.h>
+#include <mach/iim.h>
+#include <mach/imx25-fusemap.h>
+#include <mach/ocotp.h>
+#include <mach/imx6-fusemap.h>
+
+bool imx_hab_srk_hash_valid(const void *buf)
+{
+	const u8 *srk = buf;
+	int all_zero = 1, all_ff = 1;
+	int i;
+
+	for (i = 0; i < SRK_HASH_SIZE; i++) {
+		if (srk[i] != 0x0)
+			all_zero = 0;
+		if (srk[i] != 0xff)
+			all_ff = 0;
+	}
+
+	return !all_zero && !all_ff;
+}
+
+static int imx_hab_read_srk_hash_iim(u8 *srk)
+{
+	int ret, i;
+	unsigned int val;
+
+	ret = imx_iim_read_field(IMX25_IIM_SRK0_HASH_0, &val);
+	if (ret < 0)
+		return ret;
+	srk[0] = val;
+
+	for (i = 1; i < SRK_HASH_SIZE; i++) {
+		ret = imx_iim_read_field(IMX25_IIM_SRK0_HASH_1_31(i), &val);
+		if (ret < 0)
+			return ret;
+		srk[i] = val;
+	}
+
+	return 0;
+}
+
+static int imx_hab_write_srk_hash_iim(const u8 *srk, unsigned flags)
+{
+	int ret, i;
+
+	ret = imx_iim_write_field(IMX25_IIM_SRK0_HASH_0, srk[0]);
+	if (ret < 0)
+		return ret;
+
+	for (i = 1; i < SRK_HASH_SIZE; i++) {
+		ret = imx_iim_write_field(IMX25_IIM_SRK0_HASH_1_31(i), srk[i]);
+		if (ret < 0)
+			return ret;
+	}
+
+	if (flags & IMX_SRK_HASH_WRITE_PERMANENT) {
+		u8 verify[SRK_HASH_SIZE];
+
+		setenv("iim.explicit_sense_enable", "1");
+		ret = imx_hab_read_srk_hash_iim(verify);
+		if (ret)
+			return ret;
+		setenv("iim.explicit_sense_enable", "0");
+
+		if (memcmp(srk, verify, SRK_HASH_SIZE))
+			return -EIO;
+	}
+
+	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
+		ret = imx_iim_write_field(IMX25_IIM_SRK0_LOCK96, 1);
+		if (ret < 0)
+			return ret;
+		ret = imx_iim_write_field(IMX25_IIM_SRK0_LOCK160, 1);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int imx_hab_permanent_write_enable_iim(int enable)
+{
+	return imx_iim_permanent_write(enable);
+}
+
+static int imx_hab_lockdown_device_iim(void)
+{
+	return imx_iim_write_field(IMX25_IIM_HAB_TYPE, 3);
+}
+
+static int imx_hab_device_locked_down_iim(void)
+{
+	int ret;
+	unsigned int v;
+
+	ret = imx_iim_read_field(IMX25_IIM_HAB_TYPE, &v);
+	if (ret < 0)
+		return ret;
+
+	return v == 1 ? false : true;
+}
+
+static int imx_hab_read_srk_hash_ocotp(u8 *__srk)
+{
+	u32 *srk = (u32 *)__srk;
+	int ret, i;
+
+	for (i = 0; i < SRK_HASH_SIZE / sizeof(uint32_t); i++) {
+		ret = imx_ocotp_read_field(IMX6_OCOTP_SRK_HASH(i), &srk[i]);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
+{
+	u32 *newsrk = (u32 *)__newsrk;
+	int ret, i;
+
+	for (i = 0; i < SRK_HASH_SIZE / sizeof(uint32_t); i++) {
+		ret = imx_ocotp_write_field(IMX6_OCOTP_SRK_HASH(i), newsrk[i]);
+		if (ret < 0)
+			return ret;
+	}
+
+	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
+		ret = imx_ocotp_write_field(IMX6_OCOTP_SRK_LOCK, 1);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int imx_hab_permanent_write_enable_ocotp(int enable)
+{
+	return imx_ocotp_permanent_write(enable);
+}
+
+static int imx_hab_lockdown_device_ocotp(void)
+{
+	return imx_ocotp_write_field(IMX6_OCOTP_SEC_CONFIG, 1);
+}
+
+static int imx_hab_device_locked_down_ocotp(void)
+{
+	int ret;
+	unsigned int v;
+
+	ret = imx_ocotp_read_field(IMX6_OCOTP_SEC_CONFIG, &v);
+	if (ret < 0)
+		return ret;
+
+	return v;
+}
+
+struct imx_hab_ops {
+	int (*init)(void);
+	int (*write_srk_hash)(const u8 *srk, unsigned flags);
+	int (*read_srk_hash)(u8 *srk);
+	int (*permanent_write_enable)(int enable);
+	int (*lockdown_device)(void);
+	int (*device_locked_down)(void);
+};
+
+static struct imx_hab_ops imx_hab_ops_iim = {
+	.write_srk_hash = imx_hab_write_srk_hash_iim,
+	.read_srk_hash =  imx_hab_read_srk_hash_iim,
+	.lockdown_device = imx_hab_lockdown_device_iim,
+	.device_locked_down = imx_hab_device_locked_down_iim,
+	.permanent_write_enable = imx_hab_permanent_write_enable_iim,
+};
+
+static struct imx_hab_ops imx_hab_ops_ocotp = {
+	.write_srk_hash = imx_hab_write_srk_hash_ocotp,
+	.read_srk_hash =  imx_hab_read_srk_hash_ocotp,
+	.lockdown_device = imx_hab_lockdown_device_ocotp,
+	.device_locked_down = imx_hab_device_locked_down_ocotp,
+	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
+};
+
+static struct imx_hab_ops *imx_get_hab_ops(void)
+{
+	static struct imx_hab_ops *ops, *tmp;
+	int ret;
+
+	if (ops)
+		return ops;
+
+	if (cpu_is_mx25() || cpu_is_mx35())
+		tmp = &imx_hab_ops_iim;
+	else if (cpu_is_mx6())
+		tmp = &imx_hab_ops_ocotp;
+	else
+		return NULL;
+
+	if (tmp->init) {
+		ret = tmp->init();
+		if (ret)
+			return NULL;
+	}
+
+	ops = tmp;
+
+	return ops;
+}
+
+int imx_hab_read_srk_hash(void *buf)
+{
+	struct imx_hab_ops *ops = imx_get_hab_ops();
+
+	if (!ops)
+		return -ENOSYS;
+
+	return ops->read_srk_hash(buf);
+}
+
+int imx_hab_write_srk_hash(const void *buf, unsigned flags)
+{
+	u8 cursrk[SRK_HASH_SIZE];
+	int ret;
+	struct imx_hab_ops *ops = imx_get_hab_ops();
+
+	if (!ops)
+		return -ENOSYS;
+
+	ret = ops->read_srk_hash(cursrk);
+	if (ret) {
+		pr_err("Cannot read current SRK hash: %s\n", strerror(-ret));
+		return ret;
+	}
+
+	if (imx_hab_srk_hash_valid(cursrk)) {
+		char *str = "Current SRK hash is valid";
+
+		if (flags & IMX_SRK_HASH_FORCE) {
+			pr_warn("%s, ignoring\n", str);
+		} else {
+			pr_err("%s, refusing to burn again\n", str);
+			return -EEXIST;
+		}
+	}
+
+	if (flags & IMX_SRK_HASH_WRITE_PERMANENT) {
+		ret = ops->permanent_write_enable(1);
+		if (ret)
+			return ret;
+	}
+
+	ret = ops->write_srk_hash(buf, flags);
+
+	if (flags & IMX_SRK_HASH_WRITE_PERMANENT)
+		ops->permanent_write_enable(0);
+
+	return ret;
+}
+
+int imx_hab_write_srk_hash_file(const char *filename, unsigned flags)
+{
+	int ret;
+	size_t size;
+	void *srk;
+
+	ret = read_file_2(filename, &size, &srk, FILESIZE_MAX);
+	if (ret)
+		return ret;
+
+	if (size != SRK_HASH_SIZE) {
+		pr_err("File has wrong size, must be %d bytes\n", SRK_HASH_SIZE);
+		return -EINVAL;
+	}
+
+	ret = imx_hab_write_srk_hash(srk, flags);
+
+	free(srk);
+
+	return ret;
+}
+
+int imx_hab_write_srk_hash_hex(const char *srkhash, unsigned flags)
+{
+	int ret;
+	u8 srk[SRK_HASH_SIZE];
+
+	if (strlen(srkhash) != SRK_HASH_SIZE * 2) {
+		pr_err("Invalid srk hash %s\n", srkhash);
+		return -EINVAL;
+	}
+
+	ret = hex2bin(srk, srkhash, SRK_HASH_SIZE);
+	if (ret < 0) {
+		pr_err("Invalid srk hash %s\n", srkhash);
+		return -EINVAL;
+	}
+
+	return imx_hab_write_srk_hash(srk, flags);
+}
+
+int imx_hab_lockdown_device(unsigned flags)
+{
+	struct imx_hab_ops *ops = imx_get_hab_ops();
+	u8 srk[SRK_HASH_SIZE];
+	int ret;
+
+	ret = imx_hab_read_srk_hash(srk);
+	if (ret)
+		return ret;
+
+	if (!imx_hab_srk_hash_valid(srk)) {
+		pr_err("No SRK hash burnt into fuses. Refusing to lock device\n");
+		return -EINVAL;
+	}
+
+	if (!ops)
+		return -ENOSYS;
+
+	if (flags & IMX_SRK_HASH_WRITE_PERMANENT) {
+		ret = ops->permanent_write_enable(1);
+		if (ret)
+			return ret;
+	}
+
+	ret = ops->lockdown_device();
+
+	if (flags & IMX_SRK_HASH_WRITE_PERMANENT)
+		ops->permanent_write_enable(0);
+
+	return ret;
+}
+
+int imx_hab_device_locked_down(void)
+{
+	struct imx_hab_ops *ops = imx_get_hab_ops();
+
+	return ops->device_locked_down();
+}
diff --git a/include/hab.h b/include/hab.h
index 818d7ca1c..fb7149ef5 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -41,4 +41,25 @@ static inline int imx25_hab_get_status(void)
 }
 #endif
 
+#define SRK_HASH_SIZE	32
+
+/* Force writing of key, even when a key is already written */
+#define IMX_SRK_HASH_FORCE		(1 << 0)
+/* Permanently write fuses, without this flag only the shadow registers
+ * are written.
+ */
+#define IMX_SRK_HASH_WRITE_PERMANENT	(1 << 1)
+/* When writing the super root key hash, also burn the write protection
+ * fuses so that the key hash can not be modified.
+ */
+#define IMX_SRK_HASH_WRITE_LOCK		(1 << 2)
+
+bool imx_hab_srk_hash_valid(const void *buf);
+int imx_hab_write_srk_hash(const void *buf, unsigned flags);
+int imx_hab_write_srk_hash_hex(const char *srkhash, unsigned flags);
+int imx_hab_write_srk_hash_file(const char *filename, unsigned flags);
+int imx_hab_read_srk_hash(void *buf);
+int imx_hab_lockdown_device(unsigned flags);
+int imx_hab_device_locked_down(void);
+
 #endif /* __HABV4_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
