Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YW0bx-0004aj-CH
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 10:45:06 +0000
Received: from mail412.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BF2ADFFAFC4
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 11:44:41 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 12 Mar 2015 11:44:32 +0100
Message-Id: <1426157072-2434-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426157072-2434-1-git-send-email-plagnioj@jcrosoft.com>
References: <1426157072-2434-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] digest: hmac: fix set_key prototype
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/hmac.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/crypto/hmac.c b/crypto/hmac.c
index 8d07a61..1462730 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -57,7 +57,8 @@ static void digest_hmac_free(struct digest *d)
 	digest_free(dh->d);
 }
 
-static int digest_hmac_set_key(struct digest *d, unsigned char *key, unsigned int len)
+static int digest_hmac_set_key(struct digest *d, const unsigned char *key,
+				unsigned int len)
 {
 	struct digest_hmac_ctx *dh = d->ctx;
 	struct digest_hmac *hmac = to_digest_hmac(d->algo);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
