Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEtD7-0006En-RE
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 10:15:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Apr 2019 12:14:56 +0200
Message-Id: <20190412101502.11904-2-s.hauer@pengutronix.de>
In-Reply-To: <20190412101502.11904-1-s.hauer@pengutronix.de>
References: <20190412101502.11904-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] crypto/caam: Add missing include
To: Barebox List <barebox@lists.infradead.org>

rng_self_test.c doesn't include the header file providing the
prototypes for the functions it implements. Add the missing include.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/crypto/caam/rng_self_test.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
index aab4fa2e47..7816cd152c 100644
--- a/drivers/crypto/caam/rng_self_test.c
+++ b/drivers/crypto/caam/rng_self_test.c
@@ -51,6 +51,7 @@
 #include "error.h"
 #include "regs.h"
 #include "jr.h"
+#include "rng_self_test.h"
 
 static const u32 rng_dsc1[] = {
 	0xb0800036, 0x04800010, 0x3c85a15b, 0x50a9d0b1,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
