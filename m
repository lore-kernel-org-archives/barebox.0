Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x231.google.com ([2a00:1450:4013:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUZTL-000463-Dq
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 09:25:12 +0000
Received: by mail-ea0-f177.google.com with SMTP id q14so147084eaj.8
 for <barebox@lists.infradead.org>; Tue, 23 Apr 2013 02:25:09 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 23 Apr 2013 11:24:45 +0200
Message-Id: <1366709085-20067-1-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <20130421112246.GF32299@pengutronix.de>
References: <20130421112246.GF32299@pengutronix.de>
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
Subject: [PATCHv2] commands/digest: add verify support
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 Changes:
  v2:
    - updated according to comments from Sascha
    - add support for verify against hash-file

 commands/digest.c | 141 ++++++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 131 insertions(+), 10 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index c9bb132..a4611d7 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -25,24 +25,122 @@
 #include <xfuncs.h>
 #include <malloc.h>
 #include <digest.h>
+#include <linux/ctype.h>
+#include <getopt.h>
+
+static inline unsigned char parse_hexchar(char c)
+{
+	if (!isxdigit(c))
+		return 0;
+
+	return isdigit(c) ? (c - '0') : ((islower(c) ? toupper(c) : c) - 'A' + 0xA);
+}
+
+static inline unsigned char parse_hexbyte(const char *p)
+{
+	return (parse_hexchar(*p) << 4) | parse_hexchar(*(p + 1));
+}
+
+static unsigned char *parse_hash(int hash_len, const char *hexstr)
+{
+	int i;
+	unsigned char *p;
+
+	p = calloc(hash_len, sizeof(unsigned char));
+	if (!p) {
+		perror("calloc");
+		return NULL;
+	}
+
+	for (i = 0; i < hash_len; i++)
+		p[i] = parse_hexbyte(&hexstr[i * 2]);
+
+	return p;
+}
 
 static int do_digest(char *algorithm, int argc, char *argv[])
 {
 	struct digest *d;
 	int ret = 0;
 	int i;
-	unsigned char *hash;
+	unsigned char *hash = NULL;
+	int opt;
+	unsigned char *verify_hash = NULL;
+	int verify = 0;
+	int min_argc = 2;
+	void *buf;
+	ssize_t bufsz;
 
 	d = digest_get_by_name(algorithm);
 	BUG_ON(!d);
 
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
+	while ((opt = getopt(argc, argv, "v:V:")) > 0) {
+		switch (opt) {
+		case 'v':
+			if (verify) {
+				ret = COMMAND_ERROR_USAGE;
+				goto out;
+			}
+
+			verify = 1;
+			min_argc += 2;
+
+			if (d->length != (strlen(optarg) / 2)) {
+				printf("invalid hash length (%d chars required)\n",
+					d->length * 2);
+				ret = COMMAND_ERROR_USAGE;
+				goto out;
+			}
+
+			verify_hash = parse_hash(d->length, optarg);
+			if (!verify_hash) {
+				ret = -ENOMEM;
+				goto out;
+			}
+
+			break;
+		case 'V':
+			if (verify) {
+				ret = COMMAND_ERROR_USAGE;
+				goto out;
+			}
+
+			verify = 1;
+			min_argc += 2;
+
+			buf = read_file(optarg, &bufsz);
+			if (!buf) {
+				ret = -ENOMEM;
+				goto out;
+			}
+
+			if (bufsz < d->length) {
+				free(buf);
+				ret = COMMAND_ERROR_USAGE;
+				goto out;
+			}
+
+			verify_hash = parse_hash(d->length, buf);
+			free(buf);
+			break;
+		default:
+			ret = COMMAND_ERROR_USAGE;
+			goto out;
+		}
+	}
+
+	if (argc < min_argc) {
+		ret = COMMAND_ERROR_USAGE;
+		goto out;
+	}
+
+	argv += min_argc - 2;
 
 	hash = calloc(d->length, sizeof(unsigned char));
 	if (!hash) {
 		perror("calloc");
-		return COMMAND_ERROR_USAGE;
+		ret = -ENOMEM;
+		goto out;
 	}
 
 	argv++;
@@ -60,17 +158,32 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 		if (digest_file_window(d, filename, hash, start, size) < 0) {
 			ret = 1;
 		} else {
-			for (i = 0; i < d->length; i++)
+			for (i = 0; i < d->length; i++) {
 				printf("%02x", hash[i]);
+				if (verify > 0 && hash[i] != verify_hash[i])
+					verify = -1;
+			}
 
-			printf("  %s\t0x%08llx ... 0x%08llx\n",
+			printf("  %s\t0x%08llx ... 0x%08llx",
 				filename, start, start + size);
+
+			if (verify < 0) {
+				printf(" ** ERROR **");
+				ret = 1;
+			}
+
+			printf("\n");
+
+			if (verify)
+				break;
 		}
 
 		argv++;
 	}
 
+out:
 	free(hash);
+	free(verify_hash);
 
 	return ret;
 }
@@ -83,8 +196,10 @@ static int do_md5(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(md5sum)
-BAREBOX_CMD_HELP_USAGE("md5sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_USAGE("md5sum [OPTION] [[FILE] [AREA]]...\n")
 BAREBOX_CMD_HELP_SHORT("Calculate a md5 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_OPT  ("-v <hash>",  "Verify\n")
+BAREBOX_CMD_HELP_OPT  ("-V <hash-file>",  "Verify hash file\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(md5sum)
@@ -103,8 +218,10 @@ static int do_sha1(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(sha1sum)
-BAREBOX_CMD_HELP_USAGE("sha1sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_USAGE("sha1sum [OPTION] [[FILE] [AREA]]...\n")
 BAREBOX_CMD_HELP_SHORT("Calculate a sha1 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_OPT  ("-v <hash>",  "Verify\n")
+BAREBOX_CMD_HELP_OPT  ("-V <hash-file>",  "Verify hash file\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(sha1sum)
@@ -123,8 +240,10 @@ static int do_sha224(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(sha224sum)
-BAREBOX_CMD_HELP_USAGE("sha224sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_USAGE("sha224sum [OPTION] [[FILE] [AREA]]...\n")
 BAREBOX_CMD_HELP_SHORT("Calculate a sha224 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_OPT  ("-v <hash>",  "Verify\n")
+BAREBOX_CMD_HELP_OPT  ("-V <hash-file>",  "Verify hash file\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(sha224sum)
@@ -143,8 +262,10 @@ static int do_sha256(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(sha256sum)
-BAREBOX_CMD_HELP_USAGE("sha256sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_USAGE("sha256sum [OPTION] [[FILE] [AREA]]...\n")
 BAREBOX_CMD_HELP_SHORT("Calculate a sha256 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_OPT  ("-v <hash>",  "Verify\n")
+BAREBOX_CMD_HELP_OPT  ("-V <hash-file>",  "Verify hash file\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(sha256sum)
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
