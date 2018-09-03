Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwmy7-0001tL-3O
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 11:24:32 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 13:23:51 +0200
Message-Id: <20180903112408.2086-2-m.niestroj@grinn-global.com>
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
Subject: [PATCH 01/18] crypto: caam - fix RNG init descriptor ret. code
 checking
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

Pick commit 62743a4145bb9c3fe090a48e10ddc0ebae85bfbf from Linux
upstream.

    crypto: caam - fix RNG init descriptor ret. code checking

    When successful, the descriptor that performs RNG initialization
    is allowed to return a status code of 7000_0000h, since last command
    in the descriptor is a JUMP HALT.

    Signed-off-by: Horia Geant? <horia.geanta@freescale.com>
    Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 drivers/crypto/caam/ctrl.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index 4deed8a19..eafff8ef0 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -170,7 +170,7 @@ static int instantiate_rng(struct device_d *ctrldev, int state_handle_mask,
 {
 	struct caam_drv_private *ctrlpriv = ctrldev->priv;
 	struct caam_ctrl __iomem *ctrl;
-	u32 *desc, status, rdsta_val;
+	u32 *desc, status = 0, rdsta_val;
 	int ret = 0, sh_idx;
 
 	ctrl = (struct caam_ctrl __iomem *)ctrlpriv->ctrl;
@@ -200,7 +200,8 @@ static int instantiate_rng(struct device_d *ctrldev, int state_handle_mask,
 		 * CAAM eras), then try again.
 		 */
 		rdsta_val = readl(&ctrl->r4tst[0].rdsta) & RDSTA_IFMASK;
-		if (status || !(rdsta_val & (1 << sh_idx)))
+		if ((status && status != JRSTA_SSRC_JUMP_HALT_CC) ||
+		    !(rdsta_val & (1 << sh_idx)))
 			ret = -EAGAIN;
 		if (ret)
 			break;
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
