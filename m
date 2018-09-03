Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwmyM-0001zN-MG
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 11:24:50 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 13:23:53 +0200
Message-Id: <20180903112408.2086-4-m.niestroj@grinn-global.com>
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
Subject: [PATCH 03/18] crypto: caam - fix writing to JQCR_MS when using
 service interface
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

Pick commit 9f587fa29f7e8ed6b8885cff51a51ace3ad85152 from Linux
upstream.

    crypto: caam - fix writing to JQCR_MS when using service interface

    Most significant part of JQCR (Job Queue Control Register) contains
    bits that control endianness: ILE - Immediate Little Endian,
    DWS - Double Word Swap.
    The bits are automatically set by the Job Queue Controller HW.

    Unfortunately these bits are cleared in SW when submitting descriptors
    via the register-based service interface.
    >From LS1021A:
    JQCR_MS = 08080100 - before writing: ILE | DWS | SRC (JR0)
    JQCR_MS = 30000100 - after writing: WHL | FOUR | SRC (JR0)

    This would cause problems on little endian caam for descriptors
    containing immediata data or double-word pointers.
    Currently there is no problem since the only descriptors ran through
    this interface are the ones that (un)instantiate RNG.

    Signed-off-by: Horia Geant? <horia.geanta@freescale.com>
    Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 drivers/crypto/caam/ctrl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index eafff8ef0..8ce9a859e 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -117,7 +117,7 @@ static inline int run_descriptor_deco0(struct device_d *ctrldev, u32 *desc,
 		flags |= DECO_JQCR_FOUR;
 
 	/* Instruct the DECO to execute it */
-	writel(flags, &deco->jr_ctl_hi);
+	setbits32(&deco->jr_ctl_hi, flags);
 
 	start = get_time_ns();
 	while ((deco_dbg_reg = readl(&deco->desc_dbg)) &
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
