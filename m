Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.high-consulting.de ([62.245.247.194])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e1SXG-000278-9g
 for barebox@lists.infradead.org; Mon, 09 Oct 2017 07:32:01 +0000
From: Gerd Pauli <gp@high-consulting.de>
Date: Mon,  9 Oct 2017 09:31:15 +0200
Message-Id: <1507534275-2752-1-git-send-email-gp@high-consulting.de>
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
Subject: [PATCH v1 2/2] command ccrypt
To: barebox@lists.infradead.org
Cc: Gerd Pauli <gp@high-consulting.de>

Crypt and Decrypt Files using Password in Keystore
needs ccryptlib and keystore
Rijandel Crypt and Decrypt of files

Usage: ccrypt [-e|-d] -k KEYNAME_IN_KEYSTORE SRC DST

Signed-off-by: Gerd Pauli <gp@high-consulting.de>
---
 commands/Kconfig  |  10 +++
 commands/Makefile |   1 +
 commands/ccrypt.c | 228 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 239 insertions(+)
 create mode 100644 commands/ccrypt.c

diff --git a/commands/Kconfig b/commands/Kconfig
index ae2dc4b..aebec15 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2127,6 +2127,16 @@ config CMD_SEED
 	help
 	  Seed the pseudo random number generator (PRNG)
 
+config CMD_CCRYPT
+        tristate
+        prompt "ccrypt"
+        select CCRYPTLIB
+        select CRYPTO_KEYSTORE
+        help
+          encrypting/decrypting a character stream
+          ccrypt implements a stream cipher based on the block cipher
+          Rijndael, the candidate for the AES standard.
+
 # end Miscellaneous commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 37486dc..51cb89e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -123,3 +123,4 @@ obj-$(CONFIG_CMD_SPD_DECODE)	+= spd_decode.o
 obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
 obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
 obj-$(CONFIG_CMD_SEED)		+= seed.o
+obj-$(CONFIG_CMD_CCRYPT)        += ccrypt.o
diff --git a/commands/ccrypt.c b/commands/ccrypt.c
new file mode 100644
index 0000000..aaec57f
--- /dev/null
+++ b/commands/ccrypt.c
@@ -0,0 +1,228 @@
+/* -*- Mode:C; c-file-style:"linux"; -*- */
+
+/*
+ * ccrypt.c - Crypt and Decrypt Files using Password in Keystore
+ *            uses ccryptlib
+ *
+ * Copyright (C) 2015 Alexander Smirnov <alllecs@yandex.ru>
+ * Copyright (c) 2017 Gerd Pauli <gp@high-consulting.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <command.h>
+#include <libfile.h>
+#include <getopt.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <ccryptlib.h>
+#include <crypto/keystore.h>
+
+#define INBUFSIZE 1024
+#define OUTBUFSIZE (INBUFSIZE + 32)
+
+static void ccrypt_error(int e)
+{
+	if (e == -1) {
+		printf("ccrypt: %s\n", strerror(errno));
+		return;
+	}
+	if (e == -2) {
+		switch (ccrypt_errno) {
+		case CCRYPT_EFORMAT:
+			printf("ccrypt: %s\n", "bad file format");
+			break;
+		case CCRYPT_EMISMATCH:
+			printf("ccrypt: %s\n", "key does not match");
+			break;
+		case CCRYPT_EBUFFER:
+			printf("ccrypt: %s\n", "buffer overflow");
+			break;
+		default:
+			/* do nothing */
+			printf("ccrypt: %s\n", "unknown error");
+			break;
+		}
+		return;
+	}
+	printf("ccrypt: %s\n", "unknown error");
+}
+
+static int do_ccrypt(int argc, char *argv[])
+{
+	int opt;
+	int ret = -EINVAL;
+	int encrypt = 0;
+	int decrypt = 0;
+	char *extract = NULL;
+	char *from = NULL;
+	char *to = NULL;
+	char *r_buf = NULL;
+	char *w_buf = NULL;
+	int from_fd = 0;
+	int to_fd = 0;
+	int r, w;
+	void *buf;
+	struct ccrypt_stream_s ccs;
+	struct ccrypt_stream_s *b = &ccs;
+	int flags = 0;
+	char *key;
+	int keylen;
+	int eof = 0;
+
+	while ((opt = getopt(argc, argv, "dek:")) > 0) {
+		switch (opt) {
+		case 'e':
+			encrypt = 1;
+			break;
+		case 'd':
+			decrypt = 1;
+			break;
+		case 'k':
+			extract = optarg;
+			break;
+		default:
+			break;
+		}
+	}
+	if (encrypt == 1 && decrypt == 1)
+		return ret;
+	if (extract == NULL)
+		return ret;
+
+	/* we need 2 non-option arguments */
+	if (argc - optind != 2)
+		return ret;
+
+	from = argv[optind];
+	to = argv[optind + 1];
+
+	r_buf = xmalloc(INBUFSIZE);
+	w_buf = xmalloc(OUTBUFSIZE);
+
+	ret = keystore_get_secret(extract, (const u8 **)&key, &keylen);
+	if (ret)
+		goto out;
+
+	from_fd = open(from, O_RDONLY);
+	if (from_fd < 0) {
+		printf("could not open %s: %s\n", from, errno_str());
+		ret = errno;
+		goto out;
+	}
+
+	to_fd = open(to, O_WRONLY | O_CREAT | O_TRUNC);
+	if (to_fd < 0) {
+		printf("could not open %s: %s\n", to, errno_str());
+		ret = errno;
+		goto out;
+	}
+
+	ret = 0;
+
+	if (encrypt == 1)
+		ret = ccencrypt_init(b, key);
+
+	if (decrypt == 1)
+		ret = ccdecrypt_init(b, key, flags);
+
+	if (ret != 0) {
+		ccrypt_error(ret);
+		ret = 1;
+		goto out;
+	}
+
+	b->avail_in = 0;
+
+	while (1) {
+		/* fill input buffer */
+		if (b->avail_in == 0 && !eof) {
+			r = read(from_fd, r_buf, INBUFSIZE);
+			if (r < 0) {
+				perror("read");
+				goto out;
+			}
+			if (!r)
+				eof = 1;
+			b->next_in = &r_buf[0];
+			b->avail_in = r;
+		}
+
+		/* prepare output buffer */
+		b->next_out = &w_buf[0];
+		b->avail_out = OUTBUFSIZE;
+
+		if (encrypt == 1) {
+			ret = ccencrypt(b);
+			if (ret) {
+				ccrypt_error(-2);
+				ccencrypt_end(b);
+				ret = 1;
+				goto out;
+			}
+		}
+		if (decrypt == 1 {
+			ret = ccdecrypt(b);
+			if (ret) {
+				ccrypt_error(-2);
+				ccdecrypt_end(b);
+				ret = 1;
+				goto out;
+			}
+		}
+
+		r = OUTBUFSIZE-b->avail_out;
+		buf = &w_buf[0];
+
+
+		/* process output buffer */
+		while (r) {
+			w = write(to_fd, buf, r);
+			if (w < 0) {
+				perror("write");
+				goto out;
+			}
+			buf += w;
+			r -= w;
+		}
+
+		if (eof && b->avail_out != 0)
+			break;
+	}
+	ret = 0;
+out:
+	free(r_buf);
+	free(w_buf);
+	if (from_fd > 0)
+		close(from_fd);
+	if (to_fd > 0)
+		close(to_fd);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(ccrypt)
+BAREBOX_CMD_HELP_TEXT("Rijandel Crypt and Decrypt")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-e", "encrypt")
+BAREBOX_CMD_HELP_OPT("-d", "decrypt")
+BAREBOX_CMD_HELP_OPT("-k name", "Name of key in keystore")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ccrypt)
+.cmd	= do_ccrypt,
+	BAREBOX_CMD_DESC("Crypt and Decrypt Files")
+	BAREBOX_CMD_OPTS("[-e|-d] -k NAME SRC DST")
+	BAREBOX_CMD_HELP(cmd_ccrypt_help)
+	BAREBOX_CMD_END
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
