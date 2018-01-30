Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egRZy-0007eC-BN
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 08:47:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jan 2018 09:47:33 +0100
Message-Id: <20180130084733.11386-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] rsa: Add missing newline to pr_err messages
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/rsa.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/crypto/rsa.c b/crypto/rsa.c
index 07bd5e34f1..591d15c415 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -341,27 +341,27 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 
 	PS_end = T_offset - 1;
 	if (buf[PS_end] != 0x00) {
-		pr_err(" = -EBADMSG [EM[T-1] == %02u]", buf[PS_end]);
+		pr_err(" = -EBADMSG [EM[T-1] == %02u]\n", buf[PS_end]);
 		ret = -EBADMSG;
 		goto out_free_digest;
 	}
 
 	for (i = 2; i < PS_end; i++) {
 		if (buf[i] != 0xff) {
-			pr_err(" = -EBADMSG [EM[PS%x] == %02u]", i - 2, buf[i]);
+			pr_err(" = -EBADMSG [EM[PS%x] == %02u]\n", i - 2, buf[i]);
 			ret = -EBADMSG;
 			goto out_free_digest;
 		}
 	}
 
 	if (memcmp(asn1_template, buf + T_offset, asn1_size) != 0) {
-		pr_err(" = -EBADMSG [EM[T] ASN.1 mismatch]");
+		pr_err(" = -EBADMSG [EM[T] ASN.1 mismatch]\n");
 		ret = -EBADMSG;
 		goto out_free_digest;
 	}
 
 	if (memcmp(hash, buf + T_offset + asn1_size, digest_length(d)) != 0) {
-		pr_err(" = -EKEYREJECTED [EM[T] hash mismatch]");
+		pr_err(" = -EKEYREJECTED [EM[T] hash mismatch]\n");
 		ret = -EKEYREJECTED;
 		goto out_free_digest;
 	}
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
