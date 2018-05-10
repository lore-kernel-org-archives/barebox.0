Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGpi7-0003wg-MX
 for barebox@lists.infradead.org; Thu, 10 May 2018 17:50:37 +0000
Received: by mail-wm0-x243.google.com with SMTP id a67-v6so5165792wmf.3
 for <barebox@lists.infradead.org>; Thu, 10 May 2018 10:50:25 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Date: Thu, 10 May 2018 20:49:59 +0300
Message-Id: <20180510174959.14933-1-nikita.yoush@cogentembedded.com>
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
Subject: [PATCH] IMX gpio: use DR register to get gpio value
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Andrey Gusakov <andrey.gusakov@cogentembedded.com>, Chris Healy <cphealy@gmail.com>

From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>

Reading PSR register report wrong value for pins
configured as output.
According DS: While the GPIO direction is set to input
(GPIO_GDIR = 0), a read access to GPIO_DR does not return
GPIO_DR data. Instead, it returns the GPIO_PSR data, which
is the corresponding input signal value.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/gpio/gpio-imx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index d8bcea223..a9d44d4e6 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -108,9 +108,9 @@ static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
 	void __iomem *base = imxgpio->base;
 	u32 val;
 
-	val = readl(base + imxgpio->regs->psr);
+	val = readl(base + imxgpio->regs->dr);
 
-	return val & (1 << gpio) ? 1 : 0;
+	return (val & (1 << gpio)) ? 1 : 0;
 }
 
 static int imx_get_direction(struct gpio_chip *chip, unsigned offset)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
