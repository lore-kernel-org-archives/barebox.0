Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdLe-0007MH-Bc
 for barebox@lists.infradead.org; Wed, 18 Mar 2020 18:23:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Mar 2020 19:23:19 +0100
Message-Id: <20200318182319.14185-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] crypto: pbkdf2: Select HMAC
To: Barebox List <barebox@lists.infradead.org>

pbkdf2 needs HMAC support, select it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 7cc8aceacb..ff83a40f5b 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -89,6 +89,7 @@ endif
 config CRYPTO_PBKDF2
 	select DIGEST
 	select DIGEST_SHA1_GENERIC
+	select DIGEST_HMAC_GENERIC
 	bool
 
 config CRYPTO_RSA
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
