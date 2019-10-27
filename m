Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOro4-0005hS-FV
 for barebox@lists.infradead.org; Sun, 27 Oct 2019 23:18:45 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Oct 2019 00:18:25 +0100
Message-Id: <20191027231832.10247-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 1/8] pinctrl: stm32: fix debug print of uninitialized
 variable
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

mode and alt are printed with the dev_dbg before they are initialized.
Remedy this by moving the dev_dbg after them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-stm32.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 7f04cea50b75..ab121998a37f 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -157,13 +157,13 @@ static int stm32_pinctrl_set_state(struct pinctrl_device *pdev, struct device_no
 			if (offset < 0)
 				return -ENODEV;
 
+			mode = stm32_gpio_get_mode(func);
+			alt = stm32_gpio_get_alt(func);
+
 			dev_dbg(pdev->dev, "configuring port %s pin %u with:\n\t"
 				"fn %u, mode %u, alt %u\n",
 				bank->name, offset, func, mode, alt);
 
-			mode = stm32_gpio_get_mode(func);
-			alt = stm32_gpio_get_alt(func);
-
 			clk_enable(bank->clk);
 
 			__stm32_pmx_set_mode(bank->base, offset, mode, alt);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
