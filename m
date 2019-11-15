Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVVoS-00066t-Bq
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:14:37 +0000
Received: from geraet.fritz.box (48-248-142-46.pool.kielnet.net
 [46.142.248.48]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 2063D1BF209
 for <barebox@lists.infradead.org>; Fri, 15 Nov 2019 07:14:25 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:14:21 +0100
Message-Id: <20191115071421.16925-1-ahmad@a3f.at>
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
Subject: [PATCH] nvmem: bsec: fix typo in function name (s/st32/stm32/)
To: barebox@lists.infradead.org

A m was missing. Reinstate it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/nvmem/bsec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 8235d468d16d..d772d0b7af92 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -57,7 +57,7 @@ static int bsec_smc(struct bsec_priv *priv, u8 op, enum bsec_field field,
 	return -ENXIO;
 }
 
-static int st32_bsec_read_shadow(void *ctx, unsigned reg, unsigned *val)
+static int stm32_bsec_read_shadow(void *ctx, unsigned reg, unsigned *val)
 {
 	return bsec_smc(ctx, BSEC_SMC_READ_SHADOW, reg, 0, val);
 }
@@ -69,7 +69,7 @@ static int stm32_bsec_reg_write_shadow(void *ctx, unsigned reg, unsigned val)
 
 static struct regmap_bus stm32_bsec_regmap_bus = {
 	.reg_write = stm32_bsec_reg_write_shadow,
-	.reg_read = st32_bsec_read_shadow,
+	.reg_read = stm32_bsec_read_shadow,
 };
 
 static int stm32_bsec_write(struct device_d *dev, int offset,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
