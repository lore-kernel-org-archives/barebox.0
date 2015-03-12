Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo6.mail-out.ovh.net ([87.98.139.208])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YW40p-0003s4-Vy
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 14:23:04 +0000
Received: from mail609.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 4CCC0FFA81C
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 15:22:34 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 12 Mar 2015 15:22:26 +0100
Message-Id: <1426170146-31302-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426170146-31302-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150312141938.GS30554@ns203013.ovh.net>
 <1426170146-31302-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] command: add generic digest command
To: barebox@lists.infradead.org

That can be used for digest calculation and verify

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig    |  12 +++-
 commands/Makefile   |   1 +
 commands/digest.c   | 195 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 commands/hashsum.c  |  68 ++++--------------
 commands/internal.h |   3 +
 common/password.c   |  43 +-----------
 crypto/digest.c     |  92 +++++++++++++++++++++++--
 include/digest.h    |  13 +++-
 8 files changed, 322 insertions(+), 105 deletions(-)
 create mode 100644 commands/digest.c
 create mode 100644 commands/internal.h

diff --git a/commands/Kconfig b/commands/Kconfig
index 7e3e8b7..847ff76 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -14,7 +14,7 @@ if COMMAND_SUPPORT
 
 config COMPILE_HASH
 	tristate
-	select DIGEST
+	select CMD_DIGEST
 	help
 	  Turns on compilation of digest.c
 
@@ -842,6 +842,16 @@ config CMD_CMP
 
 	  Returns successfully if the two files are the same, return with an error if not
 
+config CMD_DIGEST
+	tristate
+	select DIGEST
+	prompt "digest"
+	help
+	  Usage: digest -a <algo> [-k <key> | -K <file>] [-s <sig> | -S <file>] FILE|AREA
+
+	  Calculate a digest over a FILE or a memory area with the possibility
+	  to checkit.
+
 config CMD_DIRNAME
 	tristate
 	prompt "dirname"
diff --git a/commands/Makefile b/commands/Makefile
index e42662f..b902f58 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_STDDEV)		+= stddev.o
+obj-$(CONFIG_CMD_DIGEST)	+= digest.o
 obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
 obj-$(CONFIG_COMPILE_MEMORY)	+= mem.o
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
diff --git a/commands/digest.c b/commands/digest.c
new file mode 100644
index 0000000..e9b4e66
--- /dev/null
+++ b/commands/digest.c
@@ -0,0 +1,195 @@
+/*
+ * Copyright (c) 2015 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPLv2 ONLY
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
+#include <getopt.h>
+#include <libfile.h>
+
+#include "internal.h"
+
+int __do_digest(struct digest *d, unsigned char *key, int keylen,
+		       unsigned char *sig,
+		       int argc, char *argv[])
+{
+	int ret = 0;
+	int i;
+	unsigned char *hash;
+
+	if (argc < 1)
+		return COMMAND_ERROR_USAGE;
+
+	hash = calloc(digest_length(d), sizeof(unsigned char));
+	if (!hash) {
+		perror("calloc");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	while (*argv) {
+		char *filename = "/dev/mem";
+		loff_t start = 0, size = ~0;
+
+		/* arguments are either file, file+area or area */
+		if (parse_area_spec(*argv, &start, &size)) {
+			filename = *argv;
+			if (argv[1] && !parse_area_spec(argv[1], &start, &size))
+				argv++;
+		}
+
+		ret = digest_file_window(d, filename,
+					 key, keylen,
+					 hash, sig, start, size);
+		if (ret < 0) {
+			ret = 1;
+		} else {
+			if (!sig) {
+				for (i = 0; i < digest_length(d); i++)
+					printf("%02x", hash[i]);
+
+				printf("  %s\t0x%08llx ... 0x%08llx\n",
+					filename, start, start + size);
+			}
+		}
+
+		argv++;
+	}
+
+	free(hash);
+	digest_free(d);
+
+	return ret;
+}
+
+static void __prints_algo(void)
+{
+	puts("available algo:\n\n");
+	digest_algo_prints("\t");
+}
+
+static int do_digest(int argc, char *argv[])
+{
+	struct digest *d;
+	unsigned char *tmp_key = NULL;
+	unsigned char *tmp_sig = NULL;
+	char *sig = NULL;
+	char *sigfile = NULL;
+	size_t siglen = 0;
+	char *key = NULL;
+	char *keyfile = NULL;
+	size_t keylen = 0;
+	size_t digestlen = 0;
+	char *algo = NULL;
+	int opt, ret;
+
+	if (argc < 2) {
+		__prints_algo();
+		return 0;
+	}
+
+	while((opt = getopt(argc, argv, "a:k:K:s:S:")) > 0) {
+		switch(opt) {
+		case 'k':
+			key = optarg;
+			keylen = strlen(key);
+			break;
+		case 'K':
+			keyfile = optarg;
+			break;
+		case 'a':
+			algo = optarg;
+			break;
+		case 's':
+			sig = optarg;
+			siglen = strlen(sig);
+			break;
+		case 'S':
+			sigfile = optarg;
+			break;
+		}
+	}
+
+	if (!algo)
+		return COMMAND_ERROR_USAGE;
+
+	d = digest_alloc(algo);
+	if (!d) {
+		eprintf("algo '%s' not found\n", algo);
+		__prints_algo();
+		return COMMAND_ERROR_USAGE;
+	}
+
+	argc -= optind;
+	argv += optind;
+
+	if (keyfile) {
+		tmp_key = key = read_file(keyfile, &keylen);
+		if (!key) {
+			eprintf("file '%s' not found\n", keyfile);
+			goto err;
+		}
+	}
+
+	digest_set_key(d, key, keylen);
+	free(tmp_key);
+
+	if (sigfile) {
+		sig = tmp_sig = read_file(sigfile, &siglen);
+		if (!tmp_sig) {
+			eprintf("file '%s' not found\n", sigfile);
+			goto err;
+		}
+	}
+
+	if (sig) {
+		digestlen = digest_length(d);
+		if (siglen == 2 * digestlen) {
+			if (!tmp_sig)
+				tmp_sig = xmalloc(digestlen);
+
+			ret = base64_to_hex(sig, tmp_sig, digestlen);
+			if (ret)
+				goto err;
+
+			sig = tmp_sig;
+		} else if (siglen != digestlen) {
+			eprintf("%s wrong size digest %ld expected %ld not found\n",
+				sigfile, siglen, digestlen);
+			goto err;
+		}
+	}
+
+	ret = __do_digest(d, NULL, 0, sig, argc, argv);
+	free(tmp_sig);
+	return ret;
+
+err:
+	digest_free(d);
+	return COMMAND_ERROR;
+}
+
+BAREBOX_CMD_HELP_START(digest)
+BAREBOX_CMD_HELP_TEXT("Calculate a digest over a FILE or a memory area.")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-a <algo>\t",  "digest to use")
+BAREBOX_CMD_HELP_OPT ("-k <key>\t",  "key as text")
+BAREBOX_CMD_HELP_OPT ("-K <file>\t",  "key file")
+BAREBOX_CMD_HELP_OPT ("-s <sig>\t",  "digest")
+BAREBOX_CMD_HELP_OPT ("-S <file>\t",  "digest flie")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(digest)
+	.cmd		= do_digest,
+	BAREBOX_CMD_DESC("calculate digest")
+	BAREBOX_CMD_OPTS("-a <algo> [-k <key> | -K <file>] [-s <sig> | -S <file>] FILE|AREA")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_digest_help)
+BAREBOX_CMD_END
diff --git a/commands/hashsum.c b/commands/hashsum.c
index 701e6a1..dc48af5 100644
--- a/commands/hashsum.c
+++ b/commands/hashsum.c
@@ -27,12 +27,11 @@
 #include <digest.h>
 #include <getopt.h>
 
-static int do_digest(char *algorithm, int argc, char *argv[])
+#include "internal.h"
+
+static int do_hash(char *algo, int argc, char *argv[])
 {
 	struct digest *d;
-	int ret = 0;
-	int i;
-	unsigned char *hash;
 	unsigned char *key = NULL;
 	size_t keylen = 0;
 	int opt;
@@ -46,65 +45,26 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 		}
 	}
 
-	argc -= optind;
-	argv += optind;
-
 	if (key) {
-		char *tmp = asprintf("hmac(%s)", algorithm);
+		char *tmp = asprintf("hmac(%s)", algo);
 		d = digest_alloc(tmp);
 		free(tmp);
 	} else {
-		d = digest_alloc(algorithm);
+		d = digest_alloc(algo);
 	}
 	BUG_ON(!d);
 
-	if (argc < 1)
-		return COMMAND_ERROR_USAGE;
-
-	hash = calloc(digest_length(d), sizeof(unsigned char));
-	if (!hash) {
-		perror("calloc");
-		return COMMAND_ERROR_USAGE;
-	}
-
-	while (*argv) {
-		char *filename = "/dev/mem";
-		loff_t start = 0, size = ~0;
-
-		/* arguments are either file, file+area or area */
-		if (parse_area_spec(*argv, &start, &size)) {
-			filename = *argv;
-			if (argv[0] && !parse_area_spec(argv[0], &start, &size))
-				argv++;
-		}
-
-		ret = digest_file_window(d, filename,
-					 key, keylen,
-					 hash, start, size);
-		if (ret < 0) {
-			ret = 1;
-		} else {
-			for (i = 0; i < digest_length(d); i++)
-				printf("%02x", hash[i]);
-
-			printf("  %s\t0x%08llx ... 0x%08llx\n",
-				filename, start, start + size);
-		}
-
-		argv++;
-	}
-
-	free(hash);
-	digest_free(d);
+	argc -= optind;
+	argv += optind;
 
-	return ret;
+	return __do_digest(d, key, keylen, NULL, argc, argv);
 }
 
 #ifdef CONFIG_CMD_MD5SUM
 
 static int do_md5(int argc, char *argv[])
 {
-	return do_digest("md5", argc, argv);
+	return do_hash("md5", argc, argv);
 }
 
 BAREBOX_CMD_HELP_START(md5sum)
@@ -125,7 +85,7 @@ BAREBOX_CMD_END
 
 static int do_sha1(int argc, char *argv[])
 {
-	return do_digest("sha1", argc, argv);
+	return do_hash("sha1", argc, argv);
 }
 
 BAREBOX_CMD_HELP_START(sha1sum)
@@ -146,7 +106,7 @@ BAREBOX_CMD_END
 
 static int do_sha224(int argc, char *argv[])
 {
-	return do_digest("sha224", argc, argv);
+	return do_hash("sha224", argc, argv);
 }
 
 BAREBOX_CMD_HELP_START(sha224sum)
@@ -167,7 +127,7 @@ BAREBOX_CMD_END
 
 static int do_sha256(int argc, char *argv[])
 {
-	return do_digest("sha256", argc, argv);
+	return do_hash("sha256", argc, argv);
 }
 
 BAREBOX_CMD_HELP_START(sha256sum)
@@ -188,7 +148,7 @@ BAREBOX_CMD_END
 
 static int do_sha384(int argc, char *argv[])
 {
-	return do_digest("sha384", argc, argv);
+	return do_hash("sha384", argc, argv);
 }
 
 BAREBOX_CMD_HELP_START(sha384sum)
@@ -209,7 +169,7 @@ BAREBOX_CMD_END
 
 static int do_sha512(int argc, char *argv[])
 {
-	return do_digest("sha512", argc, argv);
+	return do_hash("sha512", argc, argv);
 }
 
 BAREBOX_CMD_HELP_START(sha512sum)
diff --git a/commands/internal.h b/commands/internal.h
new file mode 100644
index 0000000..29cc656
--- /dev/null
+++ b/commands/internal.h
@@ -0,0 +1,3 @@
+int __do_digest(struct digest *d, unsigned char *key, int keylen,
+		       unsigned char *sig,
+		       int argc, char *argv[]);
diff --git a/common/password.c b/common/password.c
index 6ecf717..22d9e58 100644
--- a/common/password.c
+++ b/common/password.c
@@ -127,26 +127,6 @@ int passwd_env_disable(void)
 }
 EXPORT_SYMBOL(passwd_env_disable);
 
-static unsigned char to_digit(unsigned char c)
-{
-	if (c >= '0' && c <= '9')
-		c -= '0';
-	else
-		c -= 'a' - 10;
-
-	return c;
-}
-
-static unsigned char to_hexa(unsigned char c)
-{
-	if (c < 10)
-		c += '0';
-	else
-		c += 'a' - 10;
-
-	return c;
-}
-
 int read_passwd(unsigned char *sum, size_t length)
 {
 	if (is_passwd_env_enable())
@@ -159,28 +139,7 @@ int read_passwd(unsigned char *sum, size_t length)
 
 int read_default_passwd(unsigned char *sum, size_t length)
 {
-	int i = 0;
-	int len = strlen(default_passwd);
-	unsigned char *buf = (unsigned char *)default_passwd;
-	unsigned char c;
-
-	if (!sum || length < 1)
-		return -EINVAL;
-
-	for (i = 0; i < len && length > 0; i++) {
-		c = buf[i];
-		i++;
-
-		*sum = to_digit(c) << 4;
-
-		c = buf[i];
-
-		*sum |= to_digit(c);
-		sum++;
-		length--;
-	}
-
-	return 0;
+	return base64_to_hex(sum, default_passwd, length);
 }
 EXPORT_SYMBOL(read_default_passwd);
 
diff --git a/crypto/digest.c b/crypto/digest.c
index 98c3607..67f04c6 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -45,7 +45,7 @@ int digest_generic_verity(struct digest *d, const unsigned char *md)
 	int len = digest_length(d);
 	unsigned char *tmp;
 
-	tmp = xmalloc(sizeof(len));
+	tmp = xmalloc(len);
 
 	ret = digest_final(d, tmp);
 	if (ret)
@@ -105,6 +105,15 @@ static struct digest_algo *digest_algo_get_by_name(const char *name)
 	return NULL;
 }
 
+void digest_algo_prints(const char *prefix)
+{
+	struct digest_algo* d;
+
+	list_for_each_entry(d, &digests, list) {
+		printf("%s%s\n", prefix, d->name);
+	}
+}
+
 struct digest *digest_alloc(const char *name)
 {
 	struct digest *d;
@@ -139,6 +148,7 @@ EXPORT_SYMBOL_GPL(digest_free);
 int digest_file_window(struct digest *d, const char *filename,
 		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash,
+		       unsigned char *sig,
 		       ulong start, ulong size)
 {
 	ulong len = 0;
@@ -198,7 +208,10 @@ int digest_file_window(struct digest *d, const char *filename,
 		len += now;
 	}
 
-	digest_final(d, hash);
+	if (sig)
+		ret = digest_verify(d, sig);
+	else
+		digest_final(d, hash);
 
 out_free:
 	if (flags)
@@ -212,7 +225,8 @@ EXPORT_SYMBOL_GPL(digest_file_window);
 
 int digest_file(struct digest *d, const char *filename,
 		       const unsigned char *key, size_t keylen,
-		       unsigned char *hash)
+		       unsigned char *hash,
+		       unsigned char *sig)
 {
 	struct stat st;
 	int ret;
@@ -222,13 +236,14 @@ int digest_file(struct digest *d, const char *filename,
 	if (ret < 0)
 		return ret;
 
-	return digest_file_window(d, filename, key, keylen, hash, 0, st.st_size);
+	return digest_file_window(d, filename, key, keylen, hash, sig, 0, st.st_size);
 }
 EXPORT_SYMBOL_GPL(digest_file);
 
 int digest_file_by_name(const char *algo, const char *filename,
 		       const unsigned char *key, size_t keylen,
-		       unsigned char *hash)
+		       unsigned char *hash,
+		       unsigned char *sig)
 {
 	struct digest *d;
 	int ret;
@@ -237,8 +252,73 @@ int digest_file_by_name(const char *algo, const char *filename,
 	if (!d)
 		return -EIO;
 
-	ret = digest_file(d, filename, key, keylen, hash);
+	ret = digest_file(d, filename, key, keylen, hash, sig);
 	digest_free(d);
 	return ret;
 }
 EXPORT_SYMBOL_GPL(digest_file_by_name);
+
+unsigned char to_digit(unsigned char c)
+{
+	if (c >= '0' && c <= '9')
+		c -= '0';
+	else
+		c -= 'a' - 10;
+
+	return c;
+}
+
+unsigned char to_hexa(unsigned char c)
+{
+	if (c < 10)
+		c += '0';
+	else
+		c += 'a' - 10;
+
+	return c;
+}
+
+int base64_to_hex(const unsigned char *sum, unsigned char *buf, size_t length)
+{
+	int i = 0;
+	int len = length * 2;
+	unsigned char c;
+
+	if (!sum || !buf || length < 1)
+		return -EINVAL;
+
+	for (i = 0; i < len && length > 0; i++) {
+		c = sum[i];
+		i++;
+
+		*buf = to_digit(c) << 4;
+
+		c = sum[i];
+
+		*buf |= to_digit(c);
+		buf++;
+		length--;
+	}
+
+	return 0;
+}
+
+int hex_to_base64(const unsigned char *sum, unsigned char *buf, size_t length)
+{
+	if (!sum || !buf || length < 1)
+		return -EINVAL;
+
+	do {
+		*buf = to_digit(*sum) << 4;
+
+		buf++;
+
+		*buf |= to_digit(*sum);
+
+		sum++;
+		buf++;
+		length--;
+	} while(length > 0);
+
+	return 0;
+}
diff --git a/include/digest.h b/include/digest.h
index cadc2f6..e7011bb 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -51,6 +51,7 @@ struct digest {
  */
 int digest_algo_register(struct digest_algo *d);
 void digest_algo_unregister(struct digest_algo *d);
+void digest_algo_prints(const char *prefix);
 
 struct digest *digest_alloc(const char *name);
 void digest_free(struct digest *d);
@@ -58,13 +59,21 @@ void digest_free(struct digest *d);
 int digest_file_window(struct digest *d, const char *filename,
 		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash,
+		       unsigned char *sig,
 		       ulong start, ulong size);
 int digest_file(struct digest *d, const char *filename,
 		       const unsigned char *key, size_t keylen,
-		       unsigned char *hash);
+		       unsigned char *hash,
+		       unsigned char *sig);
 int digest_file_by_name(const char *algo, const char *filename,
 		       const unsigned char *key, size_t keylen,
-		       unsigned char *hash);
+		       unsigned char *hash,
+		       unsigned char *sig);
+
+int base64_to_hex(const unsigned char *sum, unsigned char *buf, size_t length);
+int hex_to_base64(const unsigned char *sum, unsigned char *buf, size_t length);
+unsigned char to_digit(unsigned char c);
+unsigned char to_hexa(unsigned char c);
 
 static inline int digest_init(struct digest *d)
 {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
