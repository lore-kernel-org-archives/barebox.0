Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YYAQm-0002Cp-VL
 for barebox@lists.infradead.org; Wed, 18 Mar 2015 09:38:30 +0000
Received: from mail613.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 00DF7FF9E65
 for <barebox@lists.infradead.org>; Wed, 18 Mar 2015 10:38:05 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Mar 2015 10:37:53 +0100
Message-Id: <1426671474-13613-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] crypto: digest: speficied when a digest need a key to be
 used
To: barebox@lists.infradead.org

such as for hmac(xxx) you must provide a key

This will allow to enforce the correct parameter at digest command

<digest>sum is not impacted

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/digest.c |  3 +++
 crypto/hmac.c     |  1 +
 include/digest.h  | 12 ++++++++++++
 3 files changed, 16 insertions(+)

diff --git a/commands/digest.c b/commands/digest.c
index fa47f24..876c37a 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -34,6 +34,9 @@ int __do_digest(struct digest *d, unsigned char *key, int keylen,
 			perror("set_key");
 			goto err;
 		}
+	} else if (digest_is_flags(d, DIGEST_ALGO_NEED_KEY)) {
+		eprintf("%s need a key to be used\n", digest_name(d));
+		goto err;
 	}
 
 	hash = calloc(digest_length(d), sizeof(unsigned char));
diff --git a/crypto/hmac.c b/crypto/hmac.c
index c2195d9..4c6a703 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -145,6 +145,7 @@ err:
 }
 
 struct digest_algo hmac_algo = {
+	.flags = DIGEST_ALGO_NEED_KEY,
 	.alloc = digest_hmac_alloc,
 	.init = digest_hmac_init,
 	.update = digest_hmac_update,
diff --git a/include/digest.h b/include/digest.h
index 300ea4e..c574b4d 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -25,6 +25,8 @@ struct digest;
 
 struct digest_algo {
 	char *name;
+#define DIGEST_ALGO_NEED_KEY	(1 << 0)
+	unsigned int flags;
 
 	int (*alloc)(struct digest *d);
 	void (*free)(struct digest *d);
@@ -109,4 +111,14 @@ static inline int digest_set_key(struct digest *d, const unsigned char *key,
 	return d->algo->set_key(d, key, len);
 }
 
+static inline int digest_is_flags(struct digest *d, unsigned int flags)
+{
+	return d->algo->flags & flags;
+}
+
+static inline const char *digest_name(struct digest *d)
+{
+	return d->algo->name;
+}
+
 #endif /* __SH_ST_DEVICES_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
