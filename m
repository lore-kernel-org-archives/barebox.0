Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8ad-0004E3-Ps
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:30 +0100
Message-Id: <1323945034-19687-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] add uimage command
To: barebox@lists.infradead.org

The uimage command superseeds the iminfo command. Unlike
the iminfo command the uimage command can also be used
to verify the data crc on demand and to extract uImages
to files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |    6 +++
 commands/Makefile |    1 +
 commands/uimage.c |  108 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 115 insertions(+), 0 deletions(-)
 create mode 100644 commands/uimage.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 3cf2d08..fc37971 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -338,6 +338,12 @@ config CMD_IMINFO
 	help
 	  Show information about uImages
 
+config CMD_UIMAGE
+	tristate
+	prompt "uimage"
+	help
+	  Show information about uImage and also extract and verify uImages.
+
 config CMD_BOOTZ
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index aa013de..01cd1a2 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_IMINFO)	+= iminfo.o
+obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
 obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
 obj-$(CONFIG_CMD_LOADB)		+= loadb.o xyzModem.o
 obj-$(CONFIG_CMD_LOADY)		+= loadb.o xyzModem.o
diff --git a/commands/uimage.c b/commands/uimage.c
new file mode 100644
index 0000000..82efd78
--- /dev/null
+++ b/commands/uimage.c
@@ -0,0 +1,108 @@
+#include <common.h>
+#include <command.h>
+#include <image.h>
+#include <libbb.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <malloc.h>
+#include <errno.h>
+#include <getopt.h>
+
+static int uimage_fd;
+
+static int uimage_flush(void *buf, unsigned int len)
+{
+	int ret;
+
+	ret = write_full(uimage_fd, buf, len);
+
+	return ret;
+}
+
+static int do_uimage(struct command *cmdtp, int argc, char *argv[])
+{
+	struct uimage_handle *handle;
+	int ret;
+	int verify = 0;
+	int fd;
+	int opt;
+	char *extract = NULL;
+	int info = 0;
+	int image_no = 0;
+
+	while ((opt = getopt(argc, argv, "ve:in:")) > 0) {
+		switch (opt) {
+		case 'v':
+			verify = 1;
+			break;
+		case 'i':
+			info = 1;
+			break;
+		case 'e':
+			extract = optarg;
+			break;
+		case 'n':
+			image_no = simple_strtoul(optarg, NULL, 0);
+			break;
+		}
+	}
+
+	if (optind == argc)
+		return COMMAND_ERROR_USAGE;
+
+	handle = uimage_open(argv[optind]);
+	if (!handle)
+		return 1;
+
+	if (info) {
+		printf("Image at %s:\n", argv[optind]);
+		uimage_print_contents(handle);
+	}
+
+	if (verify) {
+		printf("verifying data crc... ");
+		ret = uimage_verify(handle);
+		if (ret) {
+			goto err;
+			printf("Bad Data CRC\n");
+		} else {
+			printf("ok\n");
+		}
+	}
+
+	if (extract) {
+		fd = open(extract, O_WRONLY | O_CREAT | O_TRUNC);
+		if (fd < 0) {
+			perror("open");
+			ret = fd;
+			goto err;
+		}
+		uimage_fd = fd;
+		ret = uimage_load(handle, image_no, uimage_flush);
+		if (ret) {
+			printf("loading uImage failed with %d\n", ret);
+			close(fd);
+			goto err;
+		}
+
+		close(fd);
+	}
+err:
+	uimage_close(handle);
+
+	return ret ? 1 : 0;
+}
+
+BAREBOX_CMD_HELP_START(uimage)
+BAREBOX_CMD_HELP_USAGE("uimage [OPTIONS] <file>\n")
+BAREBOX_CMD_HELP_OPT  ("-i",  "show information about image\n")
+BAREBOX_CMD_HELP_OPT  ("-v",  "verify image\n")
+BAREBOX_CMD_HELP_OPT  ("-e <outfile>",  "extract image to <outfile>\n")
+BAREBOX_CMD_HELP_OPT  ("-n <no>",  "use image number <no> in multifile images\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(uimage)
+	.cmd		= do_uimage,
+	.usage		= "extract/verify uImage",
+	BAREBOX_CMD_HELP(cmd_uimage_help)
+BAREBOX_CMD_END
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
