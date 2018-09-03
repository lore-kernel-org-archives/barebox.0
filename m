Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwmyM-0001uo-MH
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 11:24:50 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 13:23:52 +0200
Message-Id: <20180903112408.2086-3-m.niestroj@grinn-global.com>
In-Reply-To: <20180903112408.2086-1-m.niestroj@grinn-global.com>
References: <20180903112408.2086-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 02/18] crypto: caam - fix warning in APPEND_MATH_IMM_u64
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

Pick commit c1f2cd21ed5335bfcf5dd1d3a05a2a83bae14c3a from Linux
upstream.

    crypto: caam - fix warning in APPEND_MATH_IMM_u64

    An implicit truncation is done when using a variable of 64 bits
    in MATH command:

    warning: large integer implicitly truncated to unsigned type [-Woverflow]

    Silence the compiler by feeding it with an explicit truncated value.

    Signed-off-by: Tudor Ambarus <tudor.ambarus@freescale.com>
    Signed-off-by: Horia Geant? <horia.geanta@freescale.com>
    Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 drivers/crypto/caam/desc_constr.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/caam/desc_constr.h b/drivers/crypto/caam/desc_constr.h
index 9f79fd7bd..c06ee734d 100644
--- a/drivers/crypto/caam/desc_constr.h
+++ b/drivers/crypto/caam/desc_constr.h
@@ -367,7 +367,7 @@ do { \
 	if (upper) \
 		append_u64(desc, data); \
 	else \
-		append_u32(desc, data); \
+		append_u32(desc, lower_32_bits(data));	\
 } while (0)
 
 #define append_math_add_imm_u64(desc, dest, src0, src1, data) \
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
