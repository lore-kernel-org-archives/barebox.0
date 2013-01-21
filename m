Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxEcQ-0003Nl-7J
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 10:28:47 +0000
Received: from mail609.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 2C62BFFA84F
 for <barebox@lists.infradead.org>; Mon, 21 Jan 2013 11:38:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 11:27:14 +0100
Message-Id: <1358764040-10690-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130121102319.GE26329@game.jcrosoft.org>
 <1358764040-10690-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/10] at91: add test commamd to emulate bootrom boot
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig         |    6 +++
 arch/arm/mach-at91/Makefile        |    1 +
 arch/arm/mach-at91/boot_test_cmd.c |   95 ++++++++++++++++++++++++++++++++++++
 3 files changed, 102 insertions(+)
 create mode 100644 arch/arm/mach-at91/boot_test_cmd.c

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 0fd9122..2815d5f 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -485,6 +485,12 @@ config CMD_AT91MUX
 	bool "at91mux dump command"
 	default y
 
+config CMD_AT91_BOOT_TEST
+	bool "at91_boot_test"
+	help
+	  allow to upload a boot binary to sram and execute it
+	  usefull to test bootstrap or barebox lowlevel init
+
 endif
 
 endif
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 53b4dd8..4404d23 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,5 @@
 obj-y += setup.o clock.o gpio.o
+obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 lowlevel_init-y = at91sam926x_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
diff --git a/arch/arm/mach-at91/boot_test_cmd.c b/arch/arm/mach-at91/boot_test_cmd.c
new file mode 100644
index 0000000..90093d8
--- /dev/null
+++ b/arch/arm/mach-at91/boot_test_cmd.c
@@ -0,0 +1,95 @@
+/*
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#include <common.h>
+#include <command.h>
+#include <libbb.h>
+#include <getopt.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <malloc.h>
+#include <errno.h>
+
+static int do_at91_boot_test(int argc, char *argv[])
+{
+	int opt;
+	u32 *buf32;
+	void *buf;
+	void (*jump)(void) = NULL;
+	int fd;
+	int ret = 1;
+	char *sram = "/dev/sram0";
+	u32 read_size, write_size;
+	u32 tmp = 0;
+
+	while ((opt = getopt(argc, argv, "j:s:")) > 0) {
+		switch (opt) {
+		case 'j':
+			jump = (void*)simple_strtoul(optarg, NULL, 0);
+			break;
+		case 's':
+			sram = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc < optind + 1)
+		return COMMAND_ERROR_USAGE;
+
+	buf32 = buf = read_file(argv[optind], &read_size);
+	if (!buf)
+		return -EINVAL;
+
+	write_size = buf32[5];
+
+	printf("size of the size %d\n", read_size);
+	printf("size to load in sram %d\n", write_size);
+
+	if (write_size > read_size) {
+		printf("file smaller than requested sram loading size (%d < %d)\n", write_size, read_size);
+		goto err;
+	}
+
+	fd = open(sram, O_WRONLY);
+	if (fd < 0) {
+		printf("could not open %s: %s\n", sram, errno_str());
+		ret = fd;
+		goto err;
+	}
+
+	while(write_size) {
+		tmp = write(fd, buf, write_size);
+		if (tmp < 0) {
+			perror("write");
+			goto err_open;
+		}
+		buf += tmp;
+		write_size -= tmp;
+	}
+
+	shutdown_barebox();
+
+	jump();
+
+err_open:
+	close(fd);
+err:
+	free(buf);
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(at91_boot_test)
+BAREBOX_CMD_HELP_USAGE("at91_boot_test [-j <jump addr>] [-s <sram>] file\n")
+BAREBOX_CMD_HELP_SHORT("upload the binary to sram and jump as will do the romcode\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(at91_boot_test)
+	.cmd		= do_at91_boot_test,
+	.usage		= "upload the binary to sram and jump as will do the romcode",
+	BAREBOX_CMD_HELP(cmd_at91_boot_test_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
