Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFiWU-0007ZJ-UY
 for barebox@lists.infradead.org; Tue, 30 May 2017 14:53:28 +0000
Received: by mail-pf0-x243.google.com with SMTP id w69so18366004pfk.1
 for <barebox@lists.infradead.org>; Tue, 30 May 2017 07:53:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 30 May 2017 07:52:25 -0700
Message-Id: <20170530145228.18655-2-andrew.smirnov@gmail.com>
In-Reply-To: <20170530145228.18655-1-andrew.smirnov@gmail.com>
References: <20170530145228.18655-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 1/4] gpio-imx: Do not use gpio_set_value()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Nikita Yushchenko <nikita.yoush@cogentembedded.com>, cphealy@gmail.com

Do not use gpio_set_value() in imx_gpio_direction_output().  We don't
check gpio_set_value's result, so calling imx_gpio_set_value()
directly instead should be as good.

Cc: cphealy@gmail.com
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Acked-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
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
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
