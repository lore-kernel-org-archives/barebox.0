Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLKB-00077o-FV
 for barebox@lists.infradead.org; Wed, 05 Feb 2020 14:06:40 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  5 Feb 2020 15:06:33 +0100
Message-Id: <20200205140633.19599-1-a.fatoum@pengutronix.de>
In-Reply-To: <20200205133729.32713-1-a.fatoum@pengutronix.de>
References: <20200205133729.32713-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! hw_random: add support for STM32 RNG
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

remove is only called when probe succeeds, but we want to undo what init
did if it failed, thus call it explicitly in error case.

---
 drivers/hw_random/stm32-rng.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/hw_random/stm32-rng.c b/drivers/hw_random/stm32-rng.c
index 13d60f1b0bd0..440b53684f71 100644
--- a/drivers/hw_random/stm32-rng.c
+++ b/drivers/hw_random/stm32-rng.c
@@ -106,6 +106,14 @@ static int stm32_rng_init(struct hwrng *hwrng)
 	return 0;
 }
 
+static void stm32_rng_remove(struct device_d *dev)
+{
+	struct stm32_rng *rng = dev->priv;
+
+	writel(0, rng->base + RNG_CR);
+	clk_disable(rng->clk);
+}
+
 static int stm32_rng_probe(struct device_d *dev)
 {
 	struct stm32_rng *rng;
@@ -136,23 +144,12 @@ static int stm32_rng_probe(struct device_d *dev)
 	rng->hwrng.init = stm32_rng_init;
 
 	ret = hwrng_register(dev, &rng->hwrng);
-	if (ret) {
-		dev_err(dev, "failed to register: %s\n", strerror(-ret));
-		clk_disable(rng->clk);
-	}
+	if (ret)
+		stm32_rng_remove(dev);
 
 	return ret;
 }
 
-static void stm32_rng_remove(struct device_d *dev)
-{
-	struct stm32_rng *rng = dev->priv;
-
-	writel(0, rng->base + RNG_CR);
-	clk_disable(rng->clk);
-}
-
-
 static const struct of_device_id stm32_rng_dt_ids[] = {
 	{ .compatible = "st,stm32-rng" },
 	{ /* sentinel */},
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
