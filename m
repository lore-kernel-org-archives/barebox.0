Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo69.mail-out.ovh.net ([46.105.50.32])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXq48-0002JH-4e
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 11:53:47 +0000
Received: from mail603.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 84A091000D77
 for <barebox@lists.infradead.org>; Tue, 17 Mar 2015 12:53:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Mar 2015 12:53:09 +0100
Message-Id: <1426593196-12509-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426593196-12509-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150317114923.GQ26127@ns203013.ovh.net>
 <1426593196-12509-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/9] crypto: digest:
 digest_file_window/digest_file/digest_file_by_name drop key params
To: barebox@lists.infradead.org

expect the key to be set before calling

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/digest.c | 10 ++++++++--
 crypto/digest.c   | 10 ++--------
 include/digest.h  |  3 ---
 3 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index 701e6a1..fa692eb 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -52,11 +52,17 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 	if (key) {
 		char *tmp = asprintf("hmac(%s)", algorithm);
 		d = digest_alloc(tmp);
+		BUG_ON(!d);
+		ret = digest_sey_key(d, key, keylen);
 		free(tmp);
+		if (ret) {
+			perror("set_key");
+			goto err;
+		}
 	} else {
 		d = digest_alloc(algorithm);
+		BUG_ON(!d);
 	}
-	BUG_ON(!d);
 
 	if (argc < 1)
 		return COMMAND_ERROR_USAGE;
@@ -79,7 +85,6 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 		}
 
 		ret = digest_file_window(d, filename,
-					 key, keylen,
 					 hash, start, size);
 		if (ret < 0) {
 			ret = 1;
@@ -94,6 +99,7 @@ static int do_digest(char *algorithm, int argc, char *argv[])
 		argv++;
 	}
 
+err:
 	free(hash);
 	digest_free(d);
 
diff --git a/crypto/digest.c b/crypto/digest.c
index 2228ec7..208a204 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -116,7 +116,6 @@ void digest_free(struct digest *d)
 EXPORT_SYMBOL_GPL(digest_free);
 
 int digest_file_window(struct digest *d, const char *filename,
-		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash,
 		       ulong start, ulong size)
 {
@@ -125,9 +124,6 @@ int digest_file_window(struct digest *d, const char *filename,
 	unsigned char *buf;
 	int flags = 0;
 
-	if (key)
-		digest_set_key(d, key, keylen);
-
 	ret = digest_init(d);
 	if (ret)
 		return ret;
@@ -194,7 +190,6 @@ out:
 EXPORT_SYMBOL_GPL(digest_file_window);
 
 int digest_file(struct digest *d, const char *filename,
-		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash)
 {
 	struct stat st;
@@ -205,12 +200,11 @@ int digest_file(struct digest *d, const char *filename,
 	if (ret < 0)
 		return ret;
 
-	return digest_file_window(d, filename, key, keylen, hash, 0, st.st_size);
+	return digest_file_window(d, filename, hash, 0, st.st_size);
 }
 EXPORT_SYMBOL_GPL(digest_file);
 
 int digest_file_by_name(const char *algo, const char *filename,
-		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash)
 {
 	struct digest *d;
@@ -220,7 +214,7 @@ int digest_file_by_name(const char *algo, const char *filename,
 	if (!d)
 		return -EIO;
 
-	ret = digest_file(d, filename, key, keylen, hash);
+	ret = digest_file(d, filename, hash);
 	digest_free(d);
 	return ret;
 }
diff --git a/include/digest.h b/include/digest.h
index b890a7a..1c742f6 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -54,14 +54,11 @@ struct digest *digest_alloc(const char *name);
 void digest_free(struct digest *d);
 
 int digest_file_window(struct digest *d, const char *filename,
-		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash,
 		       ulong start, ulong size);
 int digest_file(struct digest *d, const char *filename,
-		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash);
 int digest_file_by_name(const char *algo, const char *filename,
-		       const unsigned char *key, size_t keylen,
 		       unsigned char *hash);
 
 static inline int digest_init(struct digest *d)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
