Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f48.google.com ([74.125.83.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UT6vW-0008Qn-8v
 for barebox@lists.infradead.org; Fri, 19 Apr 2013 08:44:15 +0000
Received: by mail-ee0-f48.google.com with SMTP id b15so1709233eek.21
 for <barebox@lists.infradead.org>; Fri, 19 Apr 2013 01:44:12 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri, 19 Apr 2013 10:43:55 +0200
Message-Id: <1366361035-28653-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] commands/digest: add verify support
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 commands/digest.c | 94 ++++++++++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 83 insertions(+), 11 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index c9bb132..56173a5 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -25,24 +25,76 @@
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
 
 static int do_digest(char *algorithm, int argc, char *argv[])
 {
 	struct digest *d;
 	int ret = 0;
 	int i;
-	unsigned char *hash;
+	unsigned char *hash = 0;
+	int opt;
+	unsigned char *verify_hash = 0;
+	int verify = 0;
+	int min_argc = 2;
 
 	d = digest_get_by_name(algorithm);
 	BUG_ON(!d);
 
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
+	while ((opt = getopt(argc, argv, "v:")) > 0) {
+		switch (opt) {
+		case 'v':
+			verify = 1;
+			min_argc += 2;
+
+			if (d->length != (strlen(optarg) / 2)) {
+				ret = COMMAND_ERROR_USAGE;
+				goto out;
+			}
+
+			verify_hash = calloc(d->length, sizeof(unsigned char));
+			if (!verify_hash) {
+				perror("calloc");
+				ret = -ENOMEM;
+				goto out;
+			}
+
+			for (i = 0; i < d->length; i++)
+				verify_hash[i] = parse_hexbyte(&optarg[i * 2]);
+
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
@@ -60,17 +112,33 @@ static int do_digest(char *algorithm, int argc, char *argv[])
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
+				verify = 1;
+			}
+
+			printf("\n");
 		}
 
 		argv++;
 	}
 
-	free(hash);
+out:
+	if (hash)
+		free(hash);
+
+	if (verify_hash)
+		free(verify_hash);
 
 	return ret;
 }
@@ -83,8 +151,9 @@ static int do_md5(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(md5sum)
-BAREBOX_CMD_HELP_USAGE("md5sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_USAGE("md5sum [OPTION] [[FILE] [AREA]]...\n")
 BAREBOX_CMD_HELP_SHORT("Calculate a md5 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_OPT  ("-v <hash>",  "Verify\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(md5sum)
@@ -103,8 +172,9 @@ static int do_sha1(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(sha1sum)
-BAREBOX_CMD_HELP_USAGE("sha1sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_USAGE("sha1sum [OPTION] [[FILE] [AREA]]...\n")
 BAREBOX_CMD_HELP_SHORT("Calculate a sha1 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_OPT  ("-v <hash>",  "Verify\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(sha1sum)
@@ -123,8 +193,9 @@ static int do_sha224(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(sha224sum)
-BAREBOX_CMD_HELP_USAGE("sha224sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_USAGE("sha224sum [OPTION] [[FILE] [AREA]]...\n")
 BAREBOX_CMD_HELP_SHORT("Calculate a sha224 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_OPT  ("-v <hash>",  "Verify\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(sha224sum)
@@ -143,8 +214,9 @@ static int do_sha256(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(sha256sum)
-BAREBOX_CMD_HELP_USAGE("sha256sum [[FILE] [AREA]]...\n")
+BAREBOX_CMD_HELP_USAGE("sha256sum [OPTION] [[FILE] [AREA]]...\n")
 BAREBOX_CMD_HELP_SHORT("Calculate a sha256 checksum of a memory area.\n")
+BAREBOX_CMD_HELP_OPT  ("-v <hash>",  "Verify\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(sha256sum)
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
