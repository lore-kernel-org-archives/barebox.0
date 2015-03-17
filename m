Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo69.mail-out.ovh.net ([46.105.50.107])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXq49-0002JZ-Aw
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 11:53:49 +0000
Received: from mail603.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 62B991000D95
 for <barebox@lists.infradead.org>; Tue, 17 Mar 2015 12:53:22 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Mar 2015 12:53:12 +0100
Message-Id: <1426593196-12509-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/9] crypto: hmac: use digest_digest and check the return of
 every digest_xxx
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/hmac.c | 49 +++++++++++++++++++++++++++++++------------------
 1 file changed, 31 insertions(+), 18 deletions(-)

diff --git a/crypto/hmac.c b/crypto/hmac.c
index b1c17af..c2195d9 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -62,15 +62,15 @@ static int digest_hmac_set_key(struct digest *d, const unsigned char *key,
 {
 	struct digest_hmac_ctx *dh = d->ctx;
 	struct digest_hmac *hmac = to_digest_hmac(d->algo);
+	unsigned char *sum = NULL;
+	int ret;
 
 	free(dh->key);
 	if (len > hmac->pad_length) {
-		unsigned char *sum;
-
 		sum = xmalloc(digest_length(dh->d));
-		digest_init(dh->d);
-		digest_update(dh->d, dh->key, dh->keylen);
-		digest_final(dh->d, sum);
+		ret = digest_digest(dh->d, dh->key, dh->keylen, sum);
+		if (ret)
+			goto err;
 		dh->keylen = digest_length(dh->d);
 		dh->key = sum;
 	} else {
@@ -79,14 +79,17 @@ static int digest_hmac_set_key(struct digest *d, const unsigned char *key,
 		dh->keylen = len;
 	}
 
-	return 0;
+	ret = 0;
+err:
+	free(sum);
+	return ret;
 }
 
 static int digest_hmac_init(struct digest *d)
 {
 	struct digest_hmac_ctx *dh = d->ctx;
 	struct digest_hmac *hmac = to_digest_hmac(d->algo);
-	int i;
+	int i, ret;
 	unsigned char *key = dh->key;
 	unsigned int keylen = dh->keylen;
 
@@ -98,10 +101,10 @@ static int digest_hmac_init(struct digest *d)
 		dh->opad[i] = (unsigned char)(dh->opad[i] ^ key[i]);
 	}
 
-	digest_init(dh->d);
-	digest_update(dh->d, dh->ipad, hmac->pad_length);
-
-	return 0;
+	ret = digest_init(dh->d);
+	if (ret)
+		return ret;
+	return digest_update(dh->d, dh->ipad, hmac->pad_length);
 }
 
 static int digest_hmac_update(struct digest *d, const void *data,
@@ -117,18 +120,28 @@ static int digest_hmac_final(struct digest *d, unsigned char *md)
 	struct digest_hmac_ctx *dh = d->ctx;
 	struct digest_hmac *hmac = to_digest_hmac(d->algo);
 	unsigned char *tmp = NULL;
+	int ret;
 
 	tmp = xmalloc(digest_length(d));
 
-	digest_final(dh->d, tmp);
-	digest_init(dh->d);
-	digest_update(dh->d, dh->opad, hmac->pad_length);
-	digest_update(dh->d, tmp, digest_length(d));
-	digest_final(dh->d, md);
-
+	ret = digest_final(dh->d, tmp);
+	if (ret)
+		goto err;
+	ret = digest_init(dh->d);
+	if (ret)
+		goto err;
+	ret = digest_update(dh->d, dh->opad, hmac->pad_length);
+	if (ret)
+		goto err;
+	ret = digest_update(dh->d, tmp, digest_length(d));
+	if (ret)
+		goto err;
+	ret = digest_final(dh->d, md);
+
+err:
 	free(tmp);
 
-	return 0;
+	return ret;
 }
 
 struct digest_algo hmac_algo = {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
