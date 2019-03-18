Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oMM-0002Iv-Gn
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:50 +0100
Message-Id: <20190318091454.11386-8-s.hauer@pengutronix.de>
In-Reply-To: <20190318091454.11386-1-s.hauer@pengutronix.de>
References: <20190318091454.11386-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] ARM: sha256: Remove unused header file
To: Barebox List <barebox@lists.infradead.org>

sha256_glue.h is not being unsed in the tree. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/crypto/sha256_glue.h | 23 -----------------------
 1 file changed, 23 deletions(-)
 delete mode 100644 arch/arm/crypto/sha256_glue.h

diff --git a/arch/arm/crypto/sha256_glue.h b/arch/arm/crypto/sha256_glue.h
deleted file mode 100644
index 0312f4ffe8..0000000000
--- a/arch/arm/crypto/sha256_glue.h
+++ /dev/null
@@ -1,23 +0,0 @@
-#ifndef _CRYPTO_SHA256_GLUE_H
-#define _CRYPTO_SHA256_GLUE_H
-
-#include <linux/crypto.h>
-#include <crypto/sha.h>
-
-extern struct shash_alg sha256_neon_algs[2];
-
-extern int sha256_init(struct shash_desc *desc);
-
-extern int sha224_init(struct shash_desc *desc);
-
-extern int __sha256_update(struct shash_desc *desc, const u8 *data,
-			   unsigned int len, unsigned int partial);
-
-extern int sha256_update(struct shash_desc *desc, const u8 *data,
-			 unsigned int len);
-
-extern int sha256_export(struct shash_desc *desc, void *out);
-
-extern int sha256_import(struct shash_desc *desc, const void *in);
-
-#endif /* _CRYPTO_SHA256_GLUE_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
