Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9Nx4-0007AQ-N5
 for barebox@lists.infradead.org; Tue, 09 Feb 2021 08:00:51 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Feb 2021 09:00:47 +0100
Message-Id: <20210209080047.27823-1-a.fatoum@pengutronix.de>
In-Reply-To: <20210208191827.19241-4-a.fatoum@pengutronix.de>
References: <20210208191827.19241-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! aiodev: add support for STM32 ADC
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The identifiers hint at where the driver boilerplate was taken from.
Replace them with correctly named ones.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/aiodev/stm32-adc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/aiodev/stm32-adc.c b/drivers/aiodev/stm32-adc.c
index eb9548adef70..c99b995eafe5 100644
--- a/drivers/aiodev/stm32-adc.c
+++ b/drivers/aiodev/stm32-adc.c
@@ -360,15 +360,15 @@ static const struct stm32_adc_cfg stm32mp1_adc_cfg = {
 	.has_vregready = true,
 };
 
-static const struct of_device_id qoriq_tmu_match[] = {
+static const struct of_device_id stm32_adc_match[] = {
 	{ .compatible = "st,stm32h7-adc", .data = &stm32h7_adc_cfg },
 	{ .compatible = "st,stm32mp1-adc", .data = &stm32mp1_adc_cfg },
 	{}
 };
 
-static struct driver_d imx_thermal_driver = {
+static struct driver_d stm32_adc_driver = {
 	.name		= "stm32-adc",
 	.probe		= stm32_adc_probe,
-	.of_compatible	= DRV_OF_COMPAT(qoriq_tmu_match),
+	.of_compatible	= DRV_OF_COMPAT(stm32_adc_match),
 };
-device_platform_driver(imx_thermal_driver);
+device_platform_driver(stm32_adc_driver);
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
