Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YajvR-0008Tc-Em
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 11:56:46 +0000
Received: from mail191.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 17BDC103C098
 for <barebox@lists.infradead.org>; Wed, 25 Mar 2015 12:56:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Mar 2015 12:56:12 +0100
Message-Id: <1427284580-30218-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20150325115140.GD8125@ns203013.ovh.net>
References: <20150325115140.GD8125@ns203013.ovh.net>
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
Subject: [PATCH 1/9] command: digest/hashsum: set key command level
To: barebox@lists.infradead.org

and only set the key when specified

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/digest.c   | 27 ++++++++++-----------------
 commands/hashsum.c  | 10 ++++++++--
 commands/internal.h |  3 +--
 3 files changed, 19 insertions(+), 21 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index 876c37a..79ce705 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -17,8 +17,7 @@
 
 #include "internal.h"
 
-int __do_digest(struct digest *d, unsigned char *key, int keylen,
-		       unsigned char *sig,
+int __do_digest(struct digest *d, unsigned char *sig,
 		       int argc, char *argv[])
 {
 	int ret = COMMAND_ERROR_USAGE;
@@ -28,17 +27,6 @@ int __do_digest(struct digest *d, unsigned char *key, int keylen,
 	if (argc < 1)
 		goto err;
 
-	if (key) {
-		ret = digest_set_key(d, key, keylen);
-		if (ret) {
-			perror("set_key");
-			goto err;
-		}
-	} else if (digest_is_flags(d, DIGEST_ALGO_NEED_KEY)) {
-		eprintf("%s need a key to be used\n", digest_name(d));
-		goto err;
-	}
-
 	hash = calloc(digest_length(d), sizeof(unsigned char));
 	if (!hash) {
 		perror("calloc");
@@ -147,10 +135,15 @@ static int do_digest(int argc, char *argv[])
 		}
 	}
 
-	ret = digest_set_key(d, key, keylen);
-	free(tmp_key);
-	if (ret)
+	if (key) {
+		ret = digest_set_key(d, key, keylen);
+		free(tmp_key);
+		if (ret)
+			goto err;
+	} else if (digest_is_flags(d, DIGEST_ALGO_NEED_KEY)) {
+		eprintf("%s need a key to be used\n", digest_name(d));
 		goto err;
+	}
 
 	if (sigfile) {
 		sig = tmp_sig = read_file(sigfile, &siglen);
@@ -178,7 +171,7 @@ static int do_digest(int argc, char *argv[])
 		}
 	}
 
-	ret = __do_digest(d, NULL, 0, sig, argc, argv);
+	ret = __do_digest(d, sig, argc, argv);
 	free(tmp_sig);
 	return ret;
 
diff --git a/commands/hashsum.c b/commands/hashsum.c
index dc48af5..071fb84 100644
--- a/commands/hashsum.c
+++ b/commands/hashsum.c
@@ -49,15 +49,21 @@ static int do_hash(char *algo, int argc, char *argv[])
 		char *tmp = asprintf("hmac(%s)", algo);
 		d = digest_alloc(tmp);
 		free(tmp);
+		BUG_ON(!d);
+
+		ret = digest_set_key(d, key, keylen);
+		if (ret) {
+			perror("set_key");
+			return ret;
 	} else {
 		d = digest_alloc(algo);
+		BUG_ON(!d);
 	}
-	BUG_ON(!d);
 
 	argc -= optind;
 	argv += optind;
 
-	return __do_digest(d, key, keylen, NULL, argc, argv);
+	return __do_digest(d, NULL, argc, argv);
 }
 
 #ifdef CONFIG_CMD_MD5SUM
diff --git a/commands/internal.h b/commands/internal.h
index 29cc656..21d1408 100644
--- a/commands/internal.h
+++ b/commands/internal.h
@@ -1,3 +1,2 @@
-int __do_digest(struct digest *d, unsigned char *key, int keylen,
-		       unsigned char *sig,
+int __do_digest(struct digest *d, unsigned char *sig,
 		       int argc, char *argv[]);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
