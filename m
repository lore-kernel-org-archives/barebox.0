Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo68.mail-out.ovh.net ([46.105.74.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXRBU-0005Pb-Lw
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 09:19:41 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 97819FFA8E7
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 10:19:22 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Mar 2015 10:19:05 +0100
Message-Id: <1426497545-24175-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426497545-24175-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150316091710.GE24510@ns203013.ovh.net>
 <1426497545-24175-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/8] digest: allow algo to specify their length at runtime
To: barebox@lists.infradead.org

such as RSA as we load a DER key we will detect the key size
at runtime and so the algo length.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/digest.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/digest.h b/include/digest.h
index 8250ca7..41ad912 100644
--- a/include/digest.h
+++ b/include/digest.h
@@ -45,6 +45,7 @@ struct digest_algo {
 struct digest {
 	struct digest_algo *algo;
 	void *ctx;
+	unsigned int length;
 };
 
 /*
@@ -100,7 +101,7 @@ static inline int digest_verify(struct digest *d, const unsigned char *md)
 
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
