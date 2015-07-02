Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAXvV-00052v-10
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 06:24:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 08:24:23 +0200
Message-Id: <1435818265-13202-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] bus: omap-gpmc: fix wrong bit setting
To: Barebox List <barebox@lists.infradead.org>

GPMC_CONFIG4_WEEXTRADELAY should be set depending on we_extra_delay,
not on oe_extra_delay. This seems to be copy-pasted from two lines above.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/bus/omap-gpmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index 6752c42..1c46a0d 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -149,7 +149,7 @@ static void gpmc_cs_bool_timings(struct gpmc_config *gpmc_config, const struct g
 	if (p->oe_extra_delay)
 		gpmc_config->cfg[3] |= GPMC_CONFIG4_OEEXTRADELAY;
 	if (p->we_extra_delay)
-		gpmc_config->cfg[3] |= GPMC_CONFIG4_OEEXTRADELAY;
+		gpmc_config->cfg[3] |= GPMC_CONFIG4_WEEXTRADELAY;
 	if (p->cycle2cyclesamecsen)
 		gpmc_config->cfg[5] |= GPMC_CONFIG6_CYCLE2CYCLESAMECSEN;
 	if (p->cycle2cyclediffcsen)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
