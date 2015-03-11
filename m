Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo6.mail-out.ovh.net ([87.98.157.236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVguq-0000ju-I0
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 13:43:17 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id F1C8DFFA058
 for <barebox@lists.infradead.org>; Wed, 11 Mar 2015 14:42:43 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Mar 2015 14:41:56 +0100
Message-Id: <1426081316-14657-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426081316-14657-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150311132634.GN30554@ns203013.ovh.net>
 <1426081316-14657-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/8] command: add hmac sum supportfor md5, sha1, sha224, sha256,
 sha384, sha512
To: barebox@lists.infradead.org

pass the key via -h param

barebox@barebox sandbox:/ sha256sum -h test /dev/fd0
c297473e9bb221c5dc51d47ad75c76095f1bdc4ca9dff1d5931c2e22bf11a0de  /dev/fd0 0x00000000 ... 0xffffffffffffffff

use the same idea as openssl command

$ openssl dgst -sha256 -hmac "test" TODO
HMAC-SHA256(TODO)= c297473e9bb221c5dc51d47ad75c76095f1bdc4ca9dff1d5931c2e22bf11a0de

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/digest.c | 34 +++++++++++++++++++++++++++++-----
 crypto/digest.c   | 10 ++++++++--
 include/digest.h  |  3 +++
 3 files changed, 40 insertions(+), 7 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index 20fa13f..701e6a1 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -25,6 +25,7 @@
 #include <xfuncs.h>
 #include <malloc.h>
 #include <digest.h>
+#include <getopt.h>
 
 static int do_digest(char *algorithm, int argc, char *argv[])
 {
@@ -32,11 +33,32 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 	int ret = 0;
 	int i;
 	unsigned char *hash;
+	unsigned char *key = NULL;
+	size_t keylen = 0;
+	int opt;
+
+	while((opt = getopt(argc, argv, "h:")) > 0) {
+		switch(opt) {
+		case 'h':
+			key = optarg;
+			keylen = strlen(key);
+			break;
+		}
+	}
 
-	d = digest_alloc(algorithm);
+	argc -= optind;
+	argv += optind;
+
+	if (key) {
+		char *tmp = asprintf("hmac(%s)", algorithm);
+		d = digest_alloc(tmp);
+		free(tmp);
+	} else {
+		d = digest_alloc(algorithm);
+	}
 	BUG_ON(!d);
 
-	if (argc < 2)
+	if (argc < 1)
 		return COMMAND_ERROR_USAGE;
 
 	hash = calloc(digest_length(d), sizeof(unsigned char));
@@ -45,7 +67,6 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 	}
 
-	argv++;
 	while (*argv) {
 		char *filename = "/dev/mem";
 		loff_t start = 0, size = ~0;
@@ -53,11 +74,14 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 		/* arguments are either file, file+area or area */
 		if (parse_area_spec(*argv, &start, &size)) {
 			filename = *argv;
-			if (argv[1] && !parse_area_spec(argv[1], &start, &size))
+			if (argv[0] && !parse_area_spec(argv[0], &start, &size))
 				argv++;
 		}
 
-		if (digest_file_window(d, filename, hash, start, size) < 0) {
+		ret = digest_file_window(d, filename,
+					 key, keylen,
+					 hash, start, size);
+		if (ret < 0) {
 			ret = 1;
 		} else {
 			for (i = 0; i < digest_length(d); i++)
diff --git a/crypto/digest.c b/crypto/digest.c
index 5f3aa4e..fd0b765 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -103,6 +103,7 @@ void digest_free(struct digest *d)
 EXPORT_SYMBOL_GPL(digest_free);
 
 int digest_file_window(struct digest *d, char *filename,
+		       unsigned char *key, size_t keylen,
 		       unsigned char *hash,
 		       ulong start, ulong size)
 {
@@ -111,6 +112,9 @@ int digest_file_window(struct digest *d, char *filename,
 	unsigned char *buf;
 	int flags = 0;
 
+	if (key)
+		digest_set_key(d, key, keylen);
+
 	digest_init(d);
 
 	fd = open(filename, O_RDONLY);
@@ -173,6 +177,7 @@ out:
 EXPORT_SYMBOL_GPL(digest_file_window);
 
 int digest_file(struct digest *d, char *filename,
+		       unsigned char *key, size_t keylen,
 		       unsigned char *hash)
 {
 	struct stat st;
@@ -183,11 +188,12 @@ int digest_file(struct digest *d, char *filename,
 	if (ret < 0)
 		return ret;
 
-	return digest_file_window(d, filename, hash, 0, st.st_size);
+	return digest_file_window(d, filename, key, keylen, hash, 0, st.st_size);
 }
 EXPORT_SYMBOL_GPL(digest_file);
 
 int digest_file_by_name(char *algo, char *filename,
+		       unsigned char *key, size_t keylen,
 		       unsigned char *hash)
 {
 	struct digest *d;
@@ -197,7 +203,7 @@ int digest_file_by_name(char *algo, char *filename,
 	if (!d)
 		return -EIO;
 
-	ret = digest_file(d, filename, hash);
+	ret = digest_file(d, filename, key, keylen, hash);
 	digest_free(d);
 	return ret;
 }
diff --git a/include/digest.h b/include/digest.h
index e180582..885540b 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -52,11 +52,14 @@ struct digest *digest_alloc(char* name);
 void digest_free(struct digest *d);
 
 int digest_file_window(struct digest *d, char *filename,
+		       unsigned char *key, size_t keylen,
 		       unsigned char *hash,
 		       ulong start, ulong size);
 int digest_file(struct digest *d, char *filename,
+		       unsigned char *key, size_t keylen,
 		       unsigned char *hash);
 int digest_file_by_name(char *algo, char *filename,
+		       unsigned char *key, size_t keylen,
 		       unsigned char *hash);
 
 static inline int digest_init(struct digest *d)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
