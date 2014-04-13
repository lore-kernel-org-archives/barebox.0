Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKSo-0001Cu-5Y
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:28:51 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id 2C93C18B4247
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:27:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:31 +0200
Message-Id: <1397395668-9325-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 01/18] gpio: tegra: remove dead code
To: barebox@lists.infradead.org

Tegra is DT only, so remove platform code.
While at it remove unused struct.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/gpio/gpio-tegra.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index e84c71a23414..18a08f1e6ad0 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -38,11 +38,6 @@
 #define GPIO_MSK_OE(x)		(GPIO_REG(x) + config->upper_offset + 0x10)
 #define GPIO_MSK_OUT(x)		(GPIO_REG(x) + config->upper_offset + 0X20)
 
-struct tegra_gpio_bank {
-	int bank;
-	int irq;
-};
-
 struct tegra_gpio_soc_config {
 	u32 bank_stride;
 	u32 upper_offset;
@@ -180,15 +175,6 @@ static struct tegra_gpio_soc_config tegra20_gpio_config = {
 	.bank_count = 7,
 };
 
-static struct platform_device_id tegra_gpio_ids[] = {
-	{
-		.name = "tegra20-gpio",
-		.driver_data = (unsigned long)&tegra20_gpio_config,
-	}, {
-		/* sentinel */
-	},
-};
-
 static __maybe_unused struct of_device_id tegra_gpio_dt_ids[] = {
 	{
 		.compatible = "nvidia,tegra20-gpio",
@@ -200,7 +186,6 @@ static __maybe_unused struct of_device_id tegra_gpio_dt_ids[] = {
 
 static struct driver_d tegra_gpio_driver = {
 	.name		= "tegra-gpio",
-	.id_table	= tegra_gpio_ids,
 	.of_compatible	= DRV_OF_COMPAT(tegra_gpio_dt_ids),
 	.probe		= tegra_gpio_probe,
 };
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
