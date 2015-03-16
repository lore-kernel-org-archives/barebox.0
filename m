Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo68.mail-out.ovh.net ([46.105.78.111])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXS4V-0001ob-1X
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 10:16:31 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 75BE8FFA9D1
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 11:16:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Mar 2015 11:15:45 +0100
Message-Id: <1426500945-31815-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150316101321.GA26127@ns203013.ovh.net>
 <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/10] digest: digest_file_window: check every digest_xxx
 return
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/digest.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index c261f7e..ee1a321 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -178,7 +178,9 @@ int digest_file_window(struct digest *d, const char *filename,
 	if (key)
 		digest_set_key(d, key, keylen);
 
-	digest_init(d);
+	ret = digest_init(d);
+	if (ret)
+		return ret;
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
@@ -222,7 +224,9 @@ int digest_file_window(struct digest *d, const char *filename,
 			goto out_free;
 		}
 
-		digest_update(d, buf, now);
+		ret = digest_update(d, buf, now);
+		if (ret)
+			goto out_free;
 		size -= now;
 		len += now;
 	}
@@ -230,7 +234,7 @@ int digest_file_window(struct digest *d, const char *filename,
 	if (sig)
 		ret = digest_verify(d, sig);
 	else
-		digest_final(d, hash);
+		ret = digest_final(d, hash);
 
 out_free:
 	if (flags)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
