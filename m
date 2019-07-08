Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkTfQ-0002TF-1Y
 for barebox@lists.infradead.org; Mon, 08 Jul 2019 13:26:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hkTfM-0003He-UX
 for barebox@lists.infradead.org; Mon, 08 Jul 2019 15:26:48 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hkTfM-0006ko-La
 for barebox@lists.infradead.org; Mon, 08 Jul 2019 15:26:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Jul 2019 15:26:46 +0200
Message-Id: <20190708132647.25324-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] pinctrl: stm32: add debug output in set_state callback
To: barebox@lists.infradead.org

There's already a debug output whenever a pin is configured, extend this
by printing a "header" with the node name and how many pins configurations
will follow.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-stm32.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 8e392eac5099..af96974d0d01 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -138,6 +138,9 @@ static int stm32_pinctrl_set_state(struct pinctrl_device *pdev, struct device_no
 		else if (of_get_property(pins, "output-high", NULL))
 			dir = PIN_OUTPUT_HIGH;
 
+		dev_dbg(pdev->dev, "%s: multiplexing %d pins\n",
+			pins->full_name, num_pins);
+
 		for (i = 0; i < num_pins; i++) {
 			struct stm32_gpio_bank *bank = NULL;
 			u32 pinfunc, mode, alt;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
