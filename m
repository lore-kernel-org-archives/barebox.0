Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo69.mail-out.ovh.net ([178.32.228.69])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVL9R-0001Q4-7C
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 14:28:55 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 4D13B1004087
 for <barebox@lists.infradead.org>; Tue, 10 Mar 2015 15:28:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 10 Mar 2015 15:28:17 +0100
Message-Id: <1425997697-27467-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1425997697-27467-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150310141659.GH30554@ns203013.ovh.net>
 <1425997697-27467-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] command: add hmac sum supportfor md5, sha1, sha224, sha256,
 sha384, sha512
To: barebox@lists.infradead.org

pass the key via -k param

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/digest.c | 26 ++++++++++++++++++++++----
 common/digest.c   | 22 +++++++++++++++++-----
 include/digest.h  |  3 +++
 3 files changed, 42 insertions(+), 9 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index 20fa13f..713f5c6 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -25,6 +25,7 @@
 #include <xfuncs.h>
 #include <malloc.h>
 #include <digest.h>
+#include <getopt.h>
 
 static int do_digest(char *algorithm, int argc, char *argv[])
 {
@@ -32,11 +33,26 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 	int ret = 0;
 	int i;
 	unsigned char *hash;
+	unsigned char *key = NULL;
+	size_t keylen = 0;
+	int opt;
+
+	while((opt = getopt(argc, argv, "k:")) > 0) {
+		switch(opt) {
+		case 'k':
+			key = optarg;
+			keylen = strlen(key);
+			break;
+		}
+	}
+
+	argc -= optind;
+	argv += optind;
 
 	d = digest_alloc(algorithm);
 	BUG_ON(!d);
 
-	if (argc < 2)
+	if (argc < 1)
 		return COMMAND_ERROR_USAGE;
 
 	hash = calloc(digest_length(d), sizeof(unsigned char));
@@ -45,7 +61,6 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 	}
 
-	argv++;
 	while (*argv) {
 		char *filename = "/dev/mem";
 		loff_t start = 0, size = ~0;
@@ -53,11 +68,14 @@ static int do_digest(char *algorithm, int argc, char *argv[])
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
diff --git a/common/digest.c b/common/digest.c
index 7c09ce2..dcbb2c1 100644
--- a/common/digest.c
+++ b/common/digest.c
@@ -154,6 +154,7 @@ void digest_hmac_final(struct digest *d, unsigned char *md)
 EXPORT_SYMBOL_GPL(digest_hmac_final);
 
 int digest_file_window(struct digest *d, char *filename,
+		       unsigned char *key, size_t keylen,
 		       unsigned char *hash,
 		       ulong start, ulong size)
 {
@@ -162,7 +163,10 @@ int digest_file_window(struct digest *d, char *filename,
 	unsigned char *buf;
 	int flags = 0;
 
-	digest_init(d);
+	if (key)
+		digest_hmac_init(d, key, keylen);
+	else
+		digest_init(d);
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
@@ -206,12 +210,18 @@ int digest_file_window(struct digest *d, char *filename,
 			goto out_free;
 		}
 
-		digest_update(d, buf, now);
+		if (key)
+			digest_hmac_update(d, buf, now);
+		else
+			digest_update(d, buf, now);
 		size -= now;
 		len += now;
 	}
 
-	digest_final(d, hash);
+	if (key)
+		digest_hmac_final(d, hash);
+	else
+		digest_final(d, hash);
 
 out_free:
 	if (flags)
@@ -224,6 +234,7 @@ out:
 EXPORT_SYMBOL_GPL(digest_file_window);
 
 int digest_file(struct digest *d, char *filename,
+		       unsigned char *key, size_t keylen,
 		       unsigned char *hash)
 {
 	struct stat st;
@@ -234,11 +245,12 @@ int digest_file(struct digest *d, char *filename,
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
@@ -248,7 +260,7 @@ int digest_file_by_name(char *algo, char *filename,
 	if (!d)
 		return -EIO;
 
-	ret = digest_file(d, filename, hash);
+	ret = digest_file(d, filename, key, keylen, hash);
 	digest_free(d);
 	return ret;
 }
diff --git a/include/digest.h b/include/digest.h
index f04f467..776b71c 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -56,11 +56,14 @@ struct digest* digest_alloc(char* name);
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
 
 static inline void digest_init(struct digest *d)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
