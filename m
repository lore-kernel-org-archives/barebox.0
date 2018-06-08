Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRFFO-0005bo-K6
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 11:08:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fRFFD-000426-6j
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 13:07:47 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  8 Jun 2018 13:07:47 +0200
Message-Id: <20180608110747.23789-1-l.stach@pengutronix.de>
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
Subject: [PATCH] scripts: imx-image: fix build with OpenSSL 1.1.x
To: barebox@lists.infradead.org

OpenSSL 1.1.x made some of the types opaque, so peeking inside directly
doesn't work anymore. Use the correct accessors instead.

I've dropped the algorithm check, as EVP_PKEY_get0_RSA() already verifies
that the pubkey is RSA and returns NULL if it isn't.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
This is compile tested only, so I would appreciate some testing and/or
a close look at this change.
---
 scripts/imx/imx-image.c | 40 ++++++++++++++++++++--------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index b241e8c4b68e..d50c755456c3 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -94,12 +94,23 @@ struct hab_rsa_public_key {
 #include <openssl/pem.h>
 #include <openssl/bio.h>
 
+#if OPENSSL_VERSION_NUMBER < 0x10100000L
+void RSA_get0_key(const RSA *r, const BIGNUM **n,
+		  const BIGNUM **e, const BIGNUM **d)
+{
+	if (n != NULL)
+		*n = r->n;
+	if (e != NULL)
+		*e = r->e;
+	if (d != NULL)
+		*d = r->d;
+}
+#endif
+
 static int extract_key(const char *certfile, uint8_t **modulus, int *modulus_len,
 	uint8_t **exponent, int *exponent_len)
 {
-	char buf[PUBKEY_ALGO_LEN];
-	int pubkey_algonid;
-	const char *sslbuf;
+	const BIGNUM *n, *e;
 	EVP_PKEY *pkey;
 	FILE *fp;
 	X509 *cert;
@@ -120,37 +131,26 @@ static int extract_key(const char *certfile, uint8_t **modulus, int *modulus_len
 
 	fclose(fp);
 
-	pubkey_algonid = OBJ_obj2nid(cert->cert_info->key->algor->algorithm);
-	if (pubkey_algonid == NID_undef) {
-		fprintf(stderr, "unable to find specified public key algorithm name.\n");
-		return -EINVAL;
-	}
-
-	if (pubkey_algonid != NID_rsaEncryption)
-		return -EINVAL;
-
-	sslbuf = OBJ_nid2ln(pubkey_algonid);
-	strncpy(buf, sslbuf, PUBKEY_ALGO_LEN);
-
 	pkey = X509_get_pubkey(cert);
 	if (!pkey) {
 		fprintf(stderr, "unable to extract public key from certificate");
 		return -EINVAL;
 	}
 
-	rsa_key = pkey->pkey.rsa;
+	rsa_key = EVP_PKEY_get0_RSA(pkey);
 	if (!rsa_key) {
 		fprintf(stderr, "unable to extract RSA public key");
 		return -EINVAL;
 	}
 
-	*modulus_len = BN_num_bytes(rsa_key->n);
+	RSA_get0_key(rsa_key, &n, &e, NULL);
+	*modulus_len = BN_num_bytes(n);
 	*modulus = malloc(*modulus_len);
-	BN_bn2bin(rsa_key->n, *modulus);
+	BN_bn2bin(n, *modulus);
 
-	*exponent_len = BN_num_bytes(rsa_key->e);
+	*exponent_len = BN_num_bytes(e);
 	*exponent = malloc(*exponent_len);
-	BN_bn2bin(rsa_key->e, *exponent);
+	BN_bn2bin(e, *exponent);
 
 	EVP_PKEY_free(pkey);
 	X509_free(cert);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
