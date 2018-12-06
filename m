Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUs5q-00043c-Tm
 for barebox@lists.infradead.org; Thu, 06 Dec 2018 11:45:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gUs5f-0006pV-0B
 for barebox@lists.infradead.org; Thu, 06 Dec 2018 12:45:11 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  6 Dec 2018 12:45:10 +0100
Message-Id: <20181206114510.20643-4-l.stach@pengutronix.de>
In-Reply-To: <20181206114510.20643-1-l.stach@pengutronix.de>
References: <20181206114510.20643-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] scripts: imx-image: fix build with OpenSSL < 1.1.0
To: barebox@lists.infradead.org

When adding support for OpenSSL 1.1.x it was missed that EVP_PKEY_get0_RSA
is only available with that version. Earlier versions don't provide a fully
equivalent function, so add it to the compatibility helpers.

Fixes: 542a50d4eb (scripts: imx-image: fix build with OpenSSL 1.1.x)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 scripts/imx/imx-image.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index fa93e4791784..7c59ef024b84 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -132,6 +132,14 @@ void RSA_get0_key(const RSA *r, const BIGNUM **n,
 	if (d != NULL)
 		*d = r->d;
 }
+
+RSA *EVP_PKEY_get0_RSA(EVP_PKEY *pkey)
+{
+    if (pkey->type != EVP_PKEY_RSA)
+        return NULL;
+
+    return pkey->pkey.rsa;
+}
 #endif
 
 static int extract_key(const char *certfile, uint8_t **modulus, int *modulus_len,
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
