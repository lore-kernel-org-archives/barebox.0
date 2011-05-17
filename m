Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QMQWa-0002TG-TG
	for barebox@lists.infradead.org; Tue, 17 May 2011 20:05:50 +0000
Received: by mail-wy0-f177.google.com with SMTP id 28so841384wyb.36
	for <barebox@lists.infradead.org>; Tue, 17 May 2011 13:05:48 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
Date: Tue, 17 May 2011 22:05:41 +0200
Message-Id: <1305662741-7509-1-git-send-email-jacmet@sunsite.dk>
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
Subject: [PATCHv2] commands: add md5/sha1/sha256sum commands using the digest
	api
To: barebox@lists.infradead.org, plagnioj@jcrosoft.com, s.hauer@pengutronix.de

The interface emulates the Linux commands, except that you can
specify a sub area - E.G.:

barebox:/ md5sum /dev/fd0 2M+1M /env/config /env/bin/boot 10+2
61c4c0180b044191d28f27545f43562f  /dev/fd0	0x00200000 ... 0x00300000
908b84bcbadd2f263583a65ff31d1cad  /env/config	0x00000000 ... 0x000003a7
f23bd15825cc5006cf5f9fd486d82d2d  /env/bin/boot	0x0000000a ... 0x0000000c

Adds around 1400 bytes (+ size of digest code) with everything enabled.

Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
---
 Changes since v1:
 - handle ctrlc
 - continue on errors
 - use wrapper functions rather than strstr for algorithm name

 commands/Kconfig  |   22 ++++++
 commands/Makefile |    1 +
 commands/digest.c |  193 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 216 insertions(+), 0 deletions(-)
 create mode 100644 commands/digest.c

diff --git a/commands/Kconfig b/commands/Kconfig
index f192d30..30eeff9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -222,6 +222,28 @@ config CMD_CRC_CMP
 	depends on CMD_CRC
 	prompt "compare 2 files crc"
 
+config CMD_DIGEST
+       tristate
+       select DIGEST
+
+config CMD_MD5SUM
+	tristate
+	select CMD_DIGEST
+	select MD5
+	prompt "md5sum"
+
+config CMD_SHA1SUM
+	tristate
+	select CMD_DIGEST
+	select SHA1
+	prompt "sha1sum"
+
+config CMD_SHA256SUM
+	tristate
+	select CMD_DIGEST
+	select SHA256
+	prompt "sha256sum"
+
 config CMD_MTEST
 	tristate
 	prompt "mtest"
diff --git a/commands/Makefile b/commands/Makefile
index f7ef9a8..8ee4aba 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_CMD_MOUNT)		+= mount.o
 obj-$(CONFIG_CMD_UMOUNT)	+= umount.o
 obj-$(CONFIG_CMD_REGINFO)	+= reginfo.o
 obj-$(CONFIG_CMD_CRC)		+= crc.o
+obj-$(CONFIG_CMD_DIGEST)	+= digest.o
 obj-$(CONFIG_CMD_CLEAR)		+= clear.o
 obj-$(CONFIG_CMD_TEST)		+= test.o
 obj-$(CONFIG_CMD_FLASH)		+= flash.o
diff --git a/commands/digest.c b/commands/digest.c
new file mode 100644
index 0000000..7bc02bc
--- /dev/null
+++ b/commands/digest.c
@@ -0,0 +1,193 @@
+/*
+ * digest.c - Calculate a md5/sha1/sha256 checksum of a memory area
+ *
+ * Copyright (c) 2011 Peter Korsgaard <jacmet@sunsite.dk>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <digest.h>
+
+static void print_digest(struct digest *d)
+{
+	unsigned char *data;
+	int i;
+
+	data = xmalloc(d->length);
+	d->final(d, data);
+
+	for (i=0; i<d->length; i++)
+		printf("%02x", data[i]);
+
+	free(data);
+}
+
+static int file_digest(struct digest *d, char *filename,
+		       ulong start, ulong size)
+{
+	ulong len = 0;
+	int fd, now, ret = 0;
+	char *buf;
+
+	d->init(d);
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		perror(filename);
+		return fd;
+	}
+
+	if (start > 0) {
+		ret = lseek(fd, start, SEEK_SET);
+		if (ret == -1) {
+			perror("lseek");
+			goto out;
+		}
+	}
+
+	buf = xmalloc(4096);
+
+	while (size) {
+		now = min((ulong)4096, size);
+		now = read(fd, buf, now);
+		if (now < 0) {
+			ret = now;
+			perror("read");
+			goto out_free;
+		}
+		if (!now)
+			break;
+
+		if (ctrlc()) {
+			ret = -EINTR;
+			goto out_free;
+		}
+
+		d->update(d, buf, now);
+		size -= now;
+		len += now;
+	}
+
+	print_digest(d);
+	printf("  %s\t0x%08lx ... 0x%08lx\n", filename, start, start + len);
+
+out_free:
+	free(buf);
+out:
+	close(fd);
+
+	return ret;
+}
+
+static int do_digest(char *algorithm, int argc, char *argv[])
+{
+	struct digest *d;
+	int ret = 0;
+
+	d = digest_get_by_name(algorithm);
+	BUG_ON(!d);
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	argv++;
+	while (*argv) {
+		char *filename = "/dev/mem";
+		ulong start = 0, size = ~0;
+
+		/* arguments are either file, file+area or area */
+		if (parse_area_spec(*argv, &start, &size)) {
+			filename = *argv;
+			if (argv[1] && !parse_area_spec(argv[1], &start, &size))
+				argv++;
+		}
+
+		if (file_digest(d, filename, start, size) < 0)
+			ret = 1;
+
+		argv++;
+	}
+
+	return ret;
+}
+
+#ifdef CONFIG_CMD_MD5SUM
+
+static int do_md5(struct command *cmdtp, int argc, char *argv[])
+{
+	return do_digest("md5", argc, argv);
+}
+
+BAREBOX_CMD_HELP_START(md5sum)
+BAREBOX_CMD_HELP_USAGE("md5sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_SHORT("Calculate a md5 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(md5sum)
+	.cmd		= do_md5,
+	.usage		= "md5 checksum calculation",
+	BAREBOX_CMD_HELP(cmd_md5sum_help)
+BAREBOX_CMD_END
+
+#endif /* CMD_CMD_MD5SUM */
+
+#ifdef CONFIG_CMD_SHA1SUM
+
+static int do_sha1(struct command *cmdtp, int argc, char *argv[])
+{
+	return do_digest("sha1", argc, argv);
+}
+
+BAREBOX_CMD_HELP_START(sha1sum)
+BAREBOX_CMD_HELP_USAGE("sha1sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_SHORT("Calculate a sha1 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(sha1sum)
+	.cmd		= do_sha1,
+	.usage		= "sha1 checksum calculation",
+	BAREBOX_CMD_HELP(cmd_sha1sum_help)
+BAREBOX_CMD_END
+
+#endif /* CMD_CMD_SHA1SUM */
+
+#ifdef CONFIG_CMD_SHA256SUM
+
+static int do_sha256(struct command *cmdtp, int argc, char *argv[])
+{
+	return do_digest("sha256", argc, argv);
+}
+
+BAREBOX_CMD_HELP_START(sha256sum)
+BAREBOX_CMD_HELP_USAGE("sha256sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_SHORT("Calculate a sha256 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(sha256sum)
+	.cmd		= do_sha256,
+	.usage		= "sha256 checksum calculation",
+	BAREBOX_CMD_HELP(cmd_sha256sum_help)
+BAREBOX_CMD_END
+
+#endif /* CMD_CMD_SHA256SUM */
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
