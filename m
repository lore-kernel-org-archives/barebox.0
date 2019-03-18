Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oMs-0003pO-HP
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:49 +0100
Message-Id: <20190318091454.11386-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] ARM: sha256: Remove unused functions
To: Barebox List <barebox@lists.infradead.org>

sha256_export and sha256_import are not used in the tree. remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/crypto/sha256_glue.c | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/arch/arm/crypto/sha256_glue.c b/arch/arm/crypto/sha256_glue.c
index 3876f9adc9..2bb7122aab 100644
--- a/arch/arm/crypto/sha256_glue.c
+++ b/arch/arm/crypto/sha256_glue.c
@@ -150,24 +150,6 @@ static int sha224_final(struct digest *desc, u8 *out)
 	return 0;
 }
 
-int sha256_export(struct digest *desc, void *out)
-{
-	struct sha256_state *sctx = digest_ctx(desc);
-
-	memcpy(out, sctx, sizeof(*sctx));
-
-	return 0;
-}
-
-int sha256_import(struct digest *desc, const void *in)
-{
-	struct sha256_state *sctx = digest_ctx(desc);
-
-	memcpy(sctx, in, sizeof(*sctx));
-
-	return 0;
-}
-
 static struct digest_algo sha224 = {
 	.base = {
 		.name		=	"sha224",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
