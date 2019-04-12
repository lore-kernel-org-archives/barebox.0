Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEtD7-0006Hv-RK
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 10:15:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Apr 2019 12:15:00 +0200
Message-Id: <20190412101502.11904-6-s.hauer@pengutronix.de>
In-Reply-To: <20190412101502.11904-1-s.hauer@pengutronix.de>
References: <20190412101502.11904-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 5/7] lib: add blobgen framework
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

This adds a framework for en/decrypting data blobs. Some SoCs have
support for hardware crypto engines that can en/decrypt using keys
that a tied to the SoC and are visible for the crypto hardware only.
With this patch it's possible to encrypt confidential data using
these keys and to decrypt it later for usage.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig   |  10 ++
 commands/Makefile  |   1 +
 commands/blobgen.c | 122 +++++++++++++++++++++++++
 include/blobgen.h  |  58 ++++++++++++
 lib/Kconfig        |   3 +
 lib/Makefile       |   1 +
 lib/blobgen.c      | 223 +++++++++++++++++++++++++++++++++++++++++++++
 7 files changed, 418 insertions(+)
 create mode 100644 commands/blobgen.c
 create mode 100644 include/blobgen.h
 create mode 100644 lib/blobgen.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 4f5d84ac18..039fd7d1ac 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1964,6 +1964,16 @@ config CMD_BAREBOX_UPDATE
 		  -y		autom. use 'yes' when asking confirmations
 		  -f LEVEL	set force level
 
+config CMD_BLOBGEN
+	bool
+	select BLOBGEN
+	prompt "blobgen"
+	help
+	  Provides the "blobgen" command. This command encrypts and decrypts
+	  plaintext to/from blobs. This is done with hardware crypto engines,
+	  so this command is only useful when you also enable a blobgen capable
+	  driver.
+
 config CMD_FIRMWARELOAD
 	bool
 	select FIRMWARE
diff --git a/commands/Makefile b/commands/Makefile
index 358671bb5b..e69fb5046f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -84,6 +84,7 @@ obj-$(CONFIG_CMD_LINUX_EXEC)	+= linux_exec.o
 obj-$(CONFIG_CMD_AUTOMOUNT)	+= automount.o
 obj-$(CONFIG_CMD_GLOBAL)	+= global.o
 obj-$(CONFIG_CMD_DMESG)		+= dmesg.o
+obj-$(CONFIG_CMD_BLOBGEN)	+= blobgen.o
 obj-$(CONFIG_CMD_BASENAME)	+= basename.o
 obj-$(CONFIG_CMD_HAB)		+= hab.o
 obj-$(CONFIG_CMD_DIRNAME)	+= dirname.o
diff --git a/commands/blobgen.c b/commands/blobgen.c
new file mode 100644
index 0000000000..49107d037c
--- /dev/null
+++ b/commands/blobgen.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <blobgen.h>
+#include <environment.h>
+
+static int do_blobgen(int argc, char *argv[])
+{
+	bool do_encrypt = false, do_decrypt = false;
+	int opt;
+	const char *varname = NULL;
+	const char *modifier = NULL;
+	const char *blobdev = NULL;
+	struct blobgen *bg;
+	int plainsize;
+	int ret;
+	const char *message = NULL;
+
+	while ((opt = getopt(argc, argv, "edm:V:b:")) > 0) {
+		switch (opt) {
+		case 'e':
+			do_encrypt = true;
+			break;
+		case 'd':
+			do_decrypt = true;
+			break;
+		case 'm':
+			modifier = optarg;
+			break;
+		case 'V':
+			varname = optarg;
+			break;
+		case 'b':
+			blobdev = optarg;
+			break;
+		}
+	}
+
+	if (!varname) {
+		printf("varname not specified\n");
+		return -EINVAL;
+	}
+
+	if (!modifier) {
+		printf("Modifier not specified\n");
+		return -EINVAL;
+	}
+
+	bg = blobgen_get(blobdev);
+	if (!bg) {
+		printf("blobdev \"%s\" not found\n", blobdev);
+		return -ENOENT;
+	}
+
+	if (do_encrypt && do_decrypt) {
+		printf("Both encrypt and decrypt given\n");
+		return -EINVAL;
+	}
+
+	if (!do_encrypt && !do_decrypt) {
+		printf("Specify either -e or -d option\n");
+		return -EINVAL;
+	}
+
+	if (argc > optind) {
+		message = argv[optind];
+	} else {
+		printf("No message to %scrypt provided\n",
+		       do_encrypt ? "en" : "de");
+		return -EINVAL;
+	}
+
+	if (do_encrypt) {
+		ret = blob_encrypt_to_env(bg, modifier, message, strlen(message),
+					  varname);
+		if (ret)
+			return ret;
+	}
+
+	if (do_decrypt) {
+		void *plain;
+		char *str;
+
+		ret = blob_decrypt_from_base64(bg, modifier, message, &plain,
+					    &plainsize);
+		if (ret)
+			return ret;
+
+		str = malloc(plainsize + 1);
+		if (!str)
+			return -ENOMEM;
+
+		memcpy(str, plain, plainsize);
+		str[plainsize] = 0;
+
+		setenv(varname, str);
+		free(plain);
+		free(str);
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(blobgen)
+BAREBOX_CMD_HELP_TEXT("This command utilizes hardware crypto engines to en/decrypt")
+BAREBOX_CMD_HELP_TEXT("data blobs.")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-e\t", "encrypt")
+BAREBOX_CMD_HELP_OPT("-d\t", "decrypt")
+BAREBOX_CMD_HELP_OPT("-m <modifier>", "Set modifier")
+BAREBOX_CMD_HELP_OPT("-V <varname>", "specify variable name to set with the result")
+BAREBOX_CMD_HELP_OPT("-b <blobdev>", "specify blob device to use")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(blobgen)
+	.cmd	= do_blobgen,
+	BAREBOX_CMD_DESC("en/decrypt blobs")
+	BAREBOX_CMD_OPTS("[-edmVb] <plaintext/ciphertext>")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_blobgen_help)
+BAREBOX_CMD_END
diff --git a/include/blobgen.h b/include/blobgen.h
new file mode 100644
index 0000000000..09a6637b77
--- /dev/null
+++ b/include/blobgen.h
@@ -0,0 +1,58 @@
+/*
+ * Copyright (C) 2016 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __BLOBGEN_H__
+#define __BLOBGEN_H__
+
+#include <common.h>
+
+enum access_rights {
+	KERNEL,
+	KERNEL_EVM,
+	USERSPACE,
+};
+
+#define KEYMOD_LENGTH		16
+#define MAX_BLOB_LEN		4096
+#define BLOCKSIZE_BYTES		8
+
+struct blobgen {
+	struct device_d dev;
+	int (*encrypt)(struct blobgen *bg, const char *modifier,
+		       const void *plain, int plainsize, void *blob,
+		       int *blobsize);
+	int (*decrypt)(struct blobgen *bg, const char *modifier,
+		       const void *blob, int blobsize, void **plain,
+		       int *plainsize);
+
+	enum access_rights access;
+	unsigned int max_payload_size;
+
+	struct list_head list;
+};
+
+int blob_gen_register(struct device_d *dev, struct blobgen *bg);
+
+struct blobgen *blobgen_get(const char *name);
+
+int blob_encrypt(struct blobgen *blg, const char *modifier, const void *plain,
+		 int plainsize, void **blob, int *blobsize);
+int blob_encrypt_to_env(struct blobgen *blg, const char *modifier,
+			const void *plain, int plainsize, const char *varname);
+int blob_decrypt(struct blobgen *bg, const char *modifier, const void *blob,
+		 int blobsize, void **plain, int *plainsize);
+int blob_decrypt_from_base64(struct blobgen *blg, const char *modifier,
+			     const char *encrypted, void **plain, int *plainsize);
+
+#endif
diff --git a/lib/Kconfig b/lib/Kconfig
index 35f208cbc1..7cf6975bcc 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -158,4 +158,7 @@ config GENERIC_LIB_MULDI3
 config NLS
         bool "Native language support"
 
+config BLOBGEN
+	bool "include blob encode/decode support"
+
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 31e66de33f..161d3a756e 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -18,6 +18,7 @@ obj-y			+= readkey.o
 obj-y			+= kfifo.o
 obj-y			+= libbb.o
 obj-y			+= libgen.o
+obj-$(CONFIG_BLOBGEN)	+= blobgen.o
 obj-y			+= stringlist.o
 obj-y			+= cmdlinepart.o
 obj-y			+= recursive_action.o
diff --git a/lib/blobgen.c b/lib/blobgen.c
new file mode 100644
index 0000000000..5a556a68ce
--- /dev/null
+++ b/lib/blobgen.c
@@ -0,0 +1,223 @@
+/*
+ * Copyright (C) 2016 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <blobgen.h>
+#include <base64.h>
+#include <malloc.h>
+#include <crypto.h>
+#include <dma.h>
+#include <environment.h>
+
+static LIST_HEAD(blobs);
+static struct blobgen *bg_default;
+
+/**
+ * blob_gen_register - register a blob device
+ * @dev: The parent device
+ * @bg: The blobgen device
+ *
+ * This registers a blob device. Returns 0 for success or a negative error
+ * code otherwise.
+ */
+int blob_gen_register(struct device_d *dev, struct blobgen *bg)
+{
+	int ret;
+
+	dev_set_name(&bg->dev, "blob");
+	bg->dev.parent = dev;
+
+	ret = register_device(&bg->dev);
+	if (ret)
+		return ret;
+
+	list_add_tail(&bg->list, &blobs);
+
+	if (!bg_default)
+		bg_default = bg;
+
+	return 0;
+}
+
+/**
+ * blobgen_get - get a blob generator of given name
+ * @name: The name of the blob generator to look for
+ *
+ * Finds a blob generator by name and returns it. Returns NULL if none is found.
+ */
+struct blobgen *blobgen_get(const char *name)
+{
+	struct device_d *dev;
+	struct blobgen *bg;
+
+	if (!name)
+		return bg_default;
+
+	dev = get_device_by_name(name);
+	if (!dev)
+		return NULL;
+
+	list_for_each_entry(bg, &blobs, list) {
+		if (dev == &bg->dev)
+			return bg;
+	}
+
+	return NULL;
+}
+
+/**
+ * blob_encrypt - encrypt a data blob
+ * @bg: The blob generator to use
+ * @modifier: Modifier string
+ * @plain: The plaintext input
+ * @plainsize: Length of the plain data in bytes
+ * @retblob: The encrypted blob is returned here
+ * @blobsize: The returned length of the encrypted blob
+ *
+ * This encrypts a blob passed in @plain to an allocated buffer returned in
+ * @retblob. Returns 0 for success or a negative error code otherwise. @retblob
+ * is valid when the function returns successfully. The caller must free the
+ * buffer after use.
+ */
+int blob_encrypt(struct blobgen *bg, const char *modifier, const void *plain,
+		 int plainsize, void **retblob, int *blobsize)
+{
+	void *blob;
+	int ret;
+
+	if (plainsize > bg->max_payload_size)
+		return -EINVAL;
+
+	pr_debug("%s plain:\n", __func__);
+	pr_memory_display(MSG_DEBUG, plain, 0, plainsize, 1, 0);
+
+	blob = dma_alloc(MAX_BLOB_LEN);
+	if (!blob)
+		return -ENOMEM;
+
+	ret = bg->encrypt(bg, modifier, plain, plainsize, blob, blobsize);
+
+	if (ret) {
+		free(blob);
+	} else {
+		pr_debug("%s encrypted:\n", __func__);
+		pr_memory_display(MSG_DEBUG, blob, 0, *blobsize, 1, 0);
+		*retblob = blob;
+	}
+
+	return ret;
+}
+
+/**
+ * blob_encrypt_to_env -  encrypt blob to environment variable
+ * @bg: The blob generator to use
+ * @modifier: Modifier string
+ * @plain: The plaintext input
+ * @plainsize: Length of the plain data in bytes
+ * @varname: Name of the variable to set with the output blob
+ *
+ * This uses blob_encrypt to encrypt a blob. The result is base64 encoded and
+ * written to the environment variable @varname. Returns 0 for success or a
+ * negative error code otherwise.
+ */
+int blob_encrypt_to_env(struct blobgen *bg, const char *modifier,
+			const void *plain, int plainsize, const char *varname)
+{
+	int ret;
+	int blobsize;
+	void *blob;
+	char *value;
+
+	ret = blob_encrypt(bg, modifier, plain, plainsize, &blob, &blobsize);
+	if (ret)
+		return ret;
+
+	value = malloc(BASE64_LENGTH(blobsize) + 1);
+	if (!value)
+		return -ENOMEM;
+
+	uuencode(value, blob, blobsize);
+
+	pr_debug("%s encrypted base64: \"%s\"\n", __func__, value);
+
+	ret = setenv(varname, value);
+
+	free(value);
+	free(blob);
+
+	return ret;
+}
+
+/**
+ * blob_decrypt - decrypt a blob
+ * @bg: The blob generator to use
+ * @modifier: Modifier string
+ * @blob: The encrypted blob
+ * @blobsize: Size of the encrypted blob
+ * @plain: Plaintext is returned here
+ * @plainsize: Size of the data returned in bytes
+ *
+ * This function decrypts a blob generated with blob_encrypt. @modifier must match
+ * the modifier used to encrypt the data. Returns 0 when the data could be
+ * decrypted successfully or a negative error code otherwise.
+ */
+int blob_decrypt(struct blobgen *bg, const char *modifier, const void *blob,
+		 int blobsize, void **plain, int *plainsize)
+{
+	int ret;
+
+	pr_debug("%s encrypted:\n", __func__);
+	pr_memory_display(MSG_DEBUG, blob, 0, blobsize, 1, 0);
+
+	ret = bg->decrypt(bg, modifier, blob, blobsize, plain, plainsize);
+
+	if (!ret) {
+		pr_debug("%s decrypted:\n", __func__);
+		pr_memory_display(MSG_DEBUG, *plain, 0, *plainsize, 1, 0);
+	}
+
+	return ret;
+}
+
+/**
+ * blob_decrypt_from_base64 - decrypt a base64 encoded blob
+ * @bg: The blob generator to use
+ * @modifier: Modifier string
+ * @encrypted: base64 encoded encrypted data
+ * @plain: Plaintext is returned here
+ * @plainsize: Size of the data returned in bytes
+ *
+ * like blob_decrypt, but takes the encrypted data as a base64 encoded string.
+ * Returns 0 when the data could be decrypted successfully or a negative error
+ * code otherwise.
+ */
+int blob_decrypt_from_base64(struct blobgen *bg, const char *modifier,
+			     const char *encrypted, void **plain,
+			     int *plainsize)
+{
+	char *data;
+	int ret, len;
+
+	data = dma_alloc(MAX_BLOB_LEN);
+	if (!data)
+		return -ENOMEM;
+
+	pr_debug("encrypted base64: \"%s\"\n", encrypted);
+
+	len = decode_base64(data, MAX_BLOB_LEN, encrypted);
+
+	ret = blob_decrypt(bg, modifier, data, len, plain, plainsize);
+
+	free(data);
+
+	return ret;
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
