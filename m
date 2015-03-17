Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo69.mail-out.ovh.net ([46.105.56.78])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXq48-0002JB-5P
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 11:53:45 +0000
Received: from mail603.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 39EB51000CBF
 for <barebox@lists.infradead.org>; Tue, 17 Mar 2015 12:53:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Mar 2015 12:53:08 +0100
Message-Id: <1426593196-12509-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20150317114923.GQ26127@ns203013.ovh.net>
References: <20150317114923.GQ26127@ns203013.ovh.net>
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
Subject: [PATCH 1/9] crypto: digest: digest_file_window: check every
 digest_xxx return
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 crypto/digest.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/crypto/digest.c b/crypto/digest.c
index c06089d..2228ec7 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -128,7 +128,9 @@ int digest_file_window(struct digest *d, const char *filename,
 	if (key)
 		digest_set_key(d, key, keylen);
 
-	digest_init(d);
+	ret = digest_init(d);
+	if (ret)
+		return ret;
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
@@ -172,12 +174,14 @@ int digest_file_window(struct digest *d, const char *filename,
 			goto out_free;
 		}
 
-		digest_update(d, buf, now);
+		ret = digest_update(d, buf, now);
+		if (ret)
+			goto out_free;
 		size -= now;
 		len += now;
 	}
 
-	digest_final(d, hash);
+	ret = digest_final(d, hash);
 
 out_free:
 	if (flags)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
