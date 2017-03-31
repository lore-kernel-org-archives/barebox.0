Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbb-0005ff-MI
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:36 +0200
Message-Id: <20170331070346.26878-33-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 32/42] commands: implement keystore command
To: Barebox List <barebox@lists.infradead.org>

The keystore command provides access to the barebox keystore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig    |   6 ++++
 commands/Makefile   |   1 +
 commands/keystore.c | 100 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 107 insertions(+)
 create mode 100644 commands/keystore.c

diff --git a/commands/Kconfig b/commands/Kconfig
index bc0885c69d..6bb47d6363 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1967,6 +1967,12 @@ config CMD_FIRMWARELOAD
 	  Provides the "firmwareload" command which deals with devices which need
 	  firmware to work. It is also used to upload firmware to FPGA devices.
 
+config CMD_KEYSTORE
+	depends on CRYPTO_KEYSTORE
+	bool
+	prompt "keystore"
+	help
+	  keystore provides access to the barebox keystore.
 
 config CMD_LINUX_EXEC
 	bool "linux exec"
diff --git a/commands/Makefile b/commands/Makefile
index 601f15fc38..a20c675929 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -92,6 +92,7 @@ obj-$(CONFIG_CMD_READLINK)	+= readlink.o
 obj-$(CONFIG_CMD_LET)		+= let.o
 obj-$(CONFIG_CMD_LN)		+= ln.o
 obj-$(CONFIG_CMD_CLK)		+= clk.o
+obj-$(CONFIG_CMD_KEYSTORE)	+= keystore.o
 obj-$(CONFIG_CMD_TFTP)		+= tftp.o
 obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
 obj-$(CONFIG_CMD_BAREBOX_UPDATE)+= barebox-update.o
diff --git a/commands/keystore.c b/commands/keystore.c
new file mode 100644
index 0000000000..52c4be2639
--- /dev/null
+++ b/commands/keystore.c
@@ -0,0 +1,100 @@
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <libfile.h>
+#include <crypto/keystore.h>
+#include <linux/kernel.h>
+#include <fs.h>
+
+static int do_keystore(int argc, char *argv[])
+{
+	int opt;
+	int ret;
+	int do_remove = 0;
+	const char *name;
+	const char *file = NULL;
+	char *secret_str = NULL;
+	void *secret;
+	int s_len;
+
+	while ((opt = getopt(argc, argv, "rs:f:")) > 0) {
+		switch (opt) {
+		case 'r':
+			do_remove = 1;
+			break;
+		case 's':
+			secret_str = optarg;
+			break;
+		case 'f':
+			file = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc == optind)
+		return COMMAND_ERROR_USAGE;
+
+	if (!do_remove && !file && !secret_str)
+		return COMMAND_ERROR_USAGE;
+
+	if (file && secret_str)
+		return COMMAND_ERROR_USAGE;
+
+	name = argv[optind];
+
+	if (do_remove) {
+		keystore_forget_secret(name);
+		printf("forgotten secret for key %s\n", name);
+		return 0;
+	}
+
+	if (file) {
+		ret = read_file_2(file, &s_len, (void *)&secret_str, FILESIZE_MAX);
+		if (ret) {
+			printf("Cannot open %s: %s\n", file, strerror(-ret));
+			return 1;
+		}
+	} else if (secret_str) {
+		s_len = strlen(secret_str);
+	}
+
+	if (s_len & 1) {
+		printf("invalid secret len. Must be whole bytes\n");
+		return 1;
+	}
+
+	secret = xzalloc(s_len / 2);
+	ret = hex2bin(secret, secret_str, s_len / 2);
+	if (ret) {
+		printf("Cannot convert %s to binary: %s\n", secret_str, strerror(-ret));
+		return 1;
+	}
+
+	ret = keystore_set_secret(name, secret, s_len / 2);
+	if (ret)
+		printf("cannot set secret for key %s: %s\n", name, strerror(-ret));
+	else
+		printf("Added secret for key %s\n", name);
+
+	free(secret);
+
+	return ret ? 1 : 0;
+}
+
+BAREBOX_CMD_HELP_START(keystore)
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-r", "remove a key from the keystore")
+BAREBOX_CMD_HELP_OPT("-s <key>", "set a key in the keystore")
+BAREBOX_CMD_HELP_OPT("-f <keyfile>", "set a key in the keystore, read secret from file")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(keystore)
+	.cmd	= do_keystore,
+	BAREBOX_CMD_DESC("manage keys")
+	BAREBOX_CMD_OPTS("[-rsf] <keyname>")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_keystore_help)
+BAREBOX_CMD_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
