Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YajvS-0008Tj-Vo
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 11:56:47 +0000
Received: from mail191.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6834F103C102
 for <barebox@lists.infradead.org>; Wed, 25 Mar 2015 12:56:23 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Mar 2015 12:56:13 +0100
Message-Id: <1427284580-30218-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1427284580-30218-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150325115140.GD8125@ns203013.ovh.net>
 <1427284580-30218-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/9] digest: allow algo to specify their length at runtime
To: barebox@lists.infradead.org

such as RSA as we load a DER key we will detect the key size
at runtime and so the algo length.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/digest.c  | 3 +--
 include/digest.h | 3 ++-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index 047131b..f902dc1 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -78,8 +78,7 @@ int digest_generic_digest(struct digest *d, const void *data,
 
 int digest_algo_register(struct digest_algo *d)
 {
-	if (!d || !d->name || !d->update || !d->final || !d->verify ||
-	    d->length < 1)
+	if (!d || !d->name || !d->update || !d->final || !d->verify)
 		return -EINVAL;
 
 	if (!d->init)
diff --git a/include/digest.h b/include/digest.h
index 85c4da3..c574b4d 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -47,6 +47,7 @@ struct digest_algo {
 struct digest {
 	struct digest_algo *algo;
 	void *ctx;
+	unsigned int length;
 };
 
 /*
@@ -99,7 +100,7 @@ static inline int digest_verify(struct digest *d, const unsigned char *md)
 
 static inline int digest_length(struct digest *d)
 {
-	return d->algo->length;
+	return d->length ? d->length : d->algo->length;
 }
 
 static inline int digest_set_key(struct digest *d, const unsigned char *key,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
