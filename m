Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn1UT-0002Bi-18
 for barebox@lists.infradead.org; Wed, 21 May 2014 08:03:10 +0000
Received: by mail-lb0-f173.google.com with SMTP id 10so1291303lbg.32
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 01:02:45 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20140521034438.GA10482@omega>
References: <1400606875.26128.1.camel@mars> <20140520180830.GA4321@omega>
 <1400617760.26128.270.camel@mars>  <20140521034438.GA10482@omega>
Date: Wed, 21 May 2014 10:02:42 +0200
Message-ID: <1400659362.4772.13.camel@mars>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] commands: add 'findstr' to search file for string
To: barebox@lists.infradead.org

Command 'findstr' can be for example used to find string
"MAC=1C:BA:8C:F3:82:BB" in file /dev/eeprom0 to set an
appropriate environment variable:

 $ findstr -o 16 -l 17 -t eth0.ethaddr pcm051_eth0_MAC= /dev/eeprom0

Usage: findstr [OPTIONS] <STRING> <FILE>
Find ASCII string in file and print it
-o <offset>     set offset of string which gets printed
-l <length>     set length of string which gets printed
-t <var>        print into variable instead of stdio

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
Changes in v2:
 - fix Kconfig: 'default n' is default
 - add default branch to switch
 - fix search string read-buffer overlap
---
 commands/Kconfig   |    6 +++
 commands/Makefile  |    1 +
 commands/findstr.c |  140 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 147 insertions(+)
 create mode 100644 commands/findstr.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 3ef8860..a795da9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -149,6 +149,12 @@ config CMD_GLOBAL
 	help
 	  The global command allows to create global variables
 
+config CMD_FINDSTR
+	tristate
+	prompt "findstr"
+	help
+	  Find ASCII string in file.
+
 endmenu
 
 menu "file commands"
diff --git a/commands/Makefile b/commands/Makefile
index f927d21..580b137 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -97,3 +97,4 @@ obj-$(CONFIG_CMD_READF)		+= readf.o
 obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
 obj-$(CONFIG_CMD_2048)		+= 2048.o
 obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
+obj-$(CONFIG_CMD_FINDSTR)	+= findstr.o
diff --git a/commands/findstr.c b/commands/findstr.c
new file mode 100644
index 0000000..934c300
--- /dev/null
+++ b/commands/findstr.c
@@ -0,0 +1,140 @@
+/*
+ * Copyright (c) 2014 Christoph Fritz <chf.fritz@googlemail.com>
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
+/**
+ * @file
+ * @brief Find string in file
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <getopt.h>
+#include <environment.h>
+
+#define FINDSTR_BUF_SIZE	RW_BUF_SIZE
+
+extern char *mem_rw_buf;
+
+/**
+ * @param[in] argc Argument count from command line
+ * @param[in] argv List of input arguments
+ */
+static int do_findstr(int argc, char *argv[])
+{
+	int opt, fd, r, ret = 1;
+	loff_t len = 0, offset = 0, idx = 0;
+	u_char *s, *t = NULL, *v = (u_char *)mem_rw_buf;
+	unsigned int v_idx, s_idx = 0;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	while ((opt = getopt(argc, argv, "o:l:t:")) > 0) {
+		switch (opt) {
+		case 'o':
+			offset = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 'l':
+			len = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 't':
+			t = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc - optind != 2)
+		return COMMAND_ERROR_USAGE;
+
+	s = argv[optind];
+
+	fd = open(argv[optind+1], O_RDONLY);
+	if (fd < 0)
+		return COMMAND_ERROR_USAGE;
+
+	while (1) {
+		r = read(fd, mem_rw_buf, FINDSTR_BUF_SIZE);
+		if (r < 0) {
+			ret = -EIO;
+			goto out;
+		}
+		if (!r)
+			break;
+
+		v_idx = 0;
+
+		while (r) {
+			if (v[v_idx] == s[s_idx])
+				s_idx++;
+			else
+				s_idx = 0;
+
+			idx++;
+			v_idx++;
+
+			if (s_idx == strlen(s)) {	/* found */
+				loff_t hit = idx - strlen(s);
+
+				if (lseek(fd, hit + offset, SEEK_SET) < 0) {
+					ret = -EIO;
+					goto out;
+				}
+
+				if (!len)
+					len = strlen(s);
+				r = read(fd, mem_rw_buf, len);
+				if (r != len) {
+					ret = -EIO;
+					goto out;
+				}
+
+				v[r] = '\0';
+
+				if (t)
+					setenv(t, v);
+				else
+					printf("%s\n", v);
+
+				ret = 0;
+				goto out;
+			}
+			r--;
+		}
+	}
+out:
+	close(fd);
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(findstr)
+BAREBOX_CMD_HELP_USAGE("findstr [OPTIONS] <STRING> <FILE>\n")
+BAREBOX_CMD_HELP_SHORT("Find ASCII string in file and print it\n")
+BAREBOX_CMD_HELP_OPT("-o <offset>", "set offset of string which gets printed\n")
+BAREBOX_CMD_HELP_OPT("-l <length>", "set length of string which gets printed\n")
+BAREBOX_CMD_HELP_OPT("-t <var>", "print into variable instead of stdio\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(findstr)
+	.cmd		= do_findstr,
+	.usage		= "findstr [OPTIONS] <STRING> <FILE>",
+	BAREBOX_CMD_HELP(cmd_findstr_help)
+BAREBOX_CMD_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
