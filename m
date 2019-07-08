Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkTfQ-0002TG-7N
 for barebox@lists.infradead.org; Mon, 08 Jul 2019 13:26:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hkTfN-0003Hj-Ey
 for barebox@lists.infradead.org; Mon, 08 Jul 2019 15:26:49 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hkTfN-0006kr-7K
 for barebox@lists.infradead.org; Mon, 08 Jul 2019 15:26:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Jul 2019 15:26:47 +0200
Message-Id: <20190708132647.25324-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190708132647.25324-1-a.fatoum@pengutronix.de>
References: <20190708132647.25324-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] pinctrl: stm32: fix error path when gpio chip is not found
To: barebox@lists.infradead.org

Current error path has two issues:

- PTR_ERR is applied to a NULL pointer, so even error conditions return
  zero, which is a valid successful return.
- The return value is stored into an unsigned integer which is checked
  to be less than zero, so the error is never handled.

Fix both issues.

Fixes: f4f933a64 ("pinctrl: add driver for STM32 GPIO and pin multiplexer")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-stm32.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index af96974d0d01..7f04cea50b75 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -51,7 +51,7 @@ static inline int stm32_gpio_pin(int gpio, struct stm32_gpio_bank **bank)
 
 		chip = gpio_get_chip(gpio);
 		if (!chip)
-			return PTR_ERR(chip);
+			return -EINVAL;
 
 		*bank = to_stm32_gpio_bank(chip);
 	}
@@ -144,7 +144,8 @@ static int stm32_pinctrl_set_state(struct pinctrl_device *pdev, struct device_no
 		for (i = 0; i < num_pins; i++) {
 			struct stm32_gpio_bank *bank = NULL;
 			u32 pinfunc, mode, alt;
-			unsigned offset, func;
+			unsigned func;
+			int offset;
 
 			ret = of_property_read_u32_index(pins, "pinmux",
 					i, &pinfunc);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
