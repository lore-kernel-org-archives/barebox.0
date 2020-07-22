Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyA0V-0001nY-GN
 for barebox@lists.infradead.org; Wed, 22 Jul 2020 08:21:44 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Jul 2020 10:21:41 +0200
Message-Id: <20200722082141.23590-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master] i2c: stm32: support new st,stm32mp15-i2c compatible
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux v5.8-rc1 has gained support for the FastMode+ registers on the
stm32mp15, but those are incompatible between the stm32mp15 and the
stm32f7, so a new compatible was introduced. The old compatible was
replaced for the MP15 SoC, breaking I2C in barebox.
Add the new compatible to fix this.

Unlike Linux, we just use the same setup parameters as for the stm32f7.
This is ok as long we don't want to support FastMode+.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Hello Sascha,

Yet another v5.8-rc1 dts/ sync breakage.
If possible, please reorder before the dts/ sync.
Otherwise, please apply to master

Cheers,
Ahmad
---
 drivers/i2c/busses/i2c-stm32.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index 9f34760e3fdf..971f2e68a4da 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -847,6 +847,7 @@ static const struct stm32_i2c_setup stm32f7_setup = {
 
 static __maybe_unused struct of_device_id stm32_i2c_dt_ids[] = {
 	{ .compatible = "st,stm32f7-i2c", .data = &stm32f7_setup, },
+	{ .compatible = "st,stm32mp15-i2c", .data = &stm32f7_setup},
 	{ /* sentinel */ }
 };
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
