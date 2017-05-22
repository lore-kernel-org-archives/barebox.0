Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dCpCZ-0008Sz-N8
 for barebox@lists.infradead.org; Mon, 22 May 2017 15:24:57 +0000
Received: by mail-pf0-x243.google.com with SMTP id u26so20733022pfd.2
 for <barebox@lists.infradead.org>; Mon, 22 May 2017 08:24:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 22 May 2017 08:24:17 -0700
Message-Id: <20170522152420.14443-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/4] gpio-imx: Do not use gpio_set_value()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, cphealy@gmail.com

Do not use gpio_set_value() in imx_gpio_direction_output() for two
reasons:

	- Since we don't check gpio_set_value's result, using it
          instead of imx_gpio_set_value doesn't seem to have any
          advantages

	- Using gpiolib's function at this level makes it hard to
          implement 'active low' support (commit that follows) since
          gpio driver is dealing with physical GPIO levels, whereas
          gpiolib is explected to accept logical levels.

As a remedy swithch imx_gpio_direction_output() to using
imx_gpio_set_value().

Cc: cphealy@gmail.com
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/gpio/gpio-imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index ab4f596..a9d44d4 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -93,7 +93,7 @@ static int imx_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int
 	void __iomem *base = imxgpio->base;
 	u32 val;
 
-	gpio_set_value(gpio + chip->base, value);
+	imx_gpio_set_value(chip, gpio, value);
 
 	val = readl(base + imxgpio->regs->gdir);
 	val |= 1 << gpio;
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
