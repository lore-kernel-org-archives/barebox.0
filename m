Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVRTK-0006q2-H3
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 18:32:32 +0000
Received: from mail239.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 39AB3FFB45E
 for <barebox@lists.infradead.org>; Mon,  5 Nov 2012 19:43:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  5 Nov 2012 19:30:19 +0100
Message-Id: <1352140219-11309-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1352140219-11309-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121105182148.GA25679@game.jcrosoft.org>
 <1352140219-11309-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] introduce spi command
To: barebox@lists.infradead.org

usefull to debug spi

The command allow to read/write on a spi device

Usage: spi [OPTION] [data to write 0xXX]
write/read spi device.
  -b <bus_num>  spi bus number (default = 0)
  -r <count>    to read
  -c <cs>       chip select (default = 0)
  -m <mode>     spi mode (default = 0)
  -f <hz>       max_speed_hz (default = 1MHz)
  -w <bit>      bits_per_word (default = 8)
  -v            verbose

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig  |    6 +++
 commands/Makefile |    1 +
 commands/spi.c    |  132 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 139 insertions(+)
 create mode 100644 commands/spi.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 16706d3..f7cbd67 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -597,6 +597,12 @@ config CMD_I2C
 	  include i2c_probe, i2c_read and i2c_write commands to communicate
 	  on i2c bus.
 
+config CMD_SPI
+	bool
+	depends on SPI
+	prompt "spi command"
+	help
+
 config CMD_LED
 	bool
 	depends on LED
diff --git a/commands/Makefile b/commands/Makefile
index 610be55..19d496e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -55,6 +55,7 @@ obj-$(CONFIG_USB_GADGET_SERIAL)	+= usbserial.o
 obj-$(CONFIG_CMD_GPIO)		+= gpio.o
 obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_CMD_I2C)		+= i2c.o
+obj-$(CONFIG_CMD_SPI)		+= spi.o
 obj-$(CONFIG_CMD_UBI)		+= ubi.o
 obj-$(CONFIG_CMD_MENU)		+= menu.o
 obj-$(CONFIG_CMD_PASSWD)	+= passwd.o
diff --git a/commands/spi.c b/commands/spi.c
new file mode 100644
index 0000000..899bf62
--- /dev/null
+++ b/commands/spi.c
@@ -0,0 +1,132 @@
+/*
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ *
+ */
+
+#include <common.h>
+#include <command.h>
+#include <errno.h>
+#include <malloc.h>
+#include <getopt.h>
+#include <spi/spi.h>
+
+static int do_spi(int argc, char *argv[])
+{
+	struct spi_device spi;
+	int bus = 0;
+	int read = 0;
+	int verbose = 0;
+	int opt, count, i, ret;
+	int byte_per_word;
+
+	u8 *tx_buf, *rx_buf;
+
+	memset(&spi, 0, sizeof(struct spi_device));
+
+	spi.max_speed_hz = 1 * 1000 * 1000;
+	spi.bits_per_word = 8;
+
+	while ((opt = getopt(argc, argv, "b:c:r:m:f:w:v")) > 0) {
+		switch (opt) {
+		case 'b':
+			bus = simple_strtol(optarg, NULL, 0);
+			break;
+		case 'r':
+			read = simple_strtol(optarg, NULL, 0);
+			break;
+		case 'c':
+			spi.chip_select = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'm':
+			spi.mode = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'f':
+			spi.max_speed_hz = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'w':
+			spi.bits_per_word = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'v':
+			verbose = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	count = argc - optind;
+
+	if ((!read && !count) || !spi.max_speed_hz || !spi.bits_per_word)
+		return COMMAND_ERROR_USAGE;
+
+
+	spi.master = spi_get_master(bus);
+	if (!spi.master) {
+		printf("spi bus %d not found\n", bus);
+		return -ENODEV;
+	}
+
+	if (spi.chip_select > spi.master->num_chipselect) {
+		printf("spi chip select (%d)> master num chipselect (%d)\n",
+			spi.chip_select, spi.master->num_chipselect);
+		return -EINVAL;
+	}
+
+	ret = spi.master->setup(&spi);
+	if (ret) {
+		printf("can not setup the master (%d)\n", ret);
+		return ret;
+	}
+
+	tx_buf = xmalloc(count);
+	rx_buf = xmalloc(count);
+
+	for (i = 0; i < count; i++)
+		tx_buf[i] = (u8) simple_strtol(argv[optind + i], NULL, 16);
+
+	ret = spi_write_then_read(&spi, tx_buf, count, rx_buf, read);
+	if (ret)
+		goto out;
+
+	byte_per_word = max(spi.bits_per_word / 8, 1);
+	if (verbose) {
+		printf("device config\n");
+		printf("    bus_num       = %d\n", spi.master->bus_num);
+		printf("    max_speed_hz  = %d\n", spi.max_speed_hz);
+		printf("    chip_select   = %d\n", spi.chip_select);
+		printf("    mode          = 0x%x\n", spi.mode);
+		printf("    bits_per_word = %d\n", spi.bits_per_word);
+		printf("\n");
+
+		printf("wrote %i bytes\n", count);
+		memory_display(tx_buf, 0, count, byte_per_word);
+
+		printf("read %i bytes\n", read);
+	}
+
+	memory_display(rx_buf, 0, read, byte_per_word);
+
+out:
+	free(rx_buf);
+	free(tx_buf);
+	return ret;
+}
+
+static const __maybe_unused char cmd_spi_help[] =
+"Usage: spi [OPTION] [data to write 0xXX]\n"
+"write/read spi device.\n"
+"  -b <bus_num>  spi bus number (default = 0)\n"
+"  -r <count>    to read\n"
+"  -c <cs>       chip select (default = 0)\n"
+"  -m <mode>     spi mode (default = 0)\n"
+"  -f <hz>       max_speed_hz (default = 1MHz)\n"
+"  -w <bit>      bits_per_word (default = 8)\n"
+"  -v            verbose\n";
+
+BAREBOX_CMD_START(spi)
+	.cmd		= do_spi,
+	.usage		= "write/read spi device",
+	BAREBOX_CMD_HELP(cmd_spi_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
