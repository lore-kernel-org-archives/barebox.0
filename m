Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmI-0006eB-U1
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:09:59 +0000
Received: by mail-pg0-x242.google.com with SMTP id 77so4615534pgc.0
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:08:54 -0800
Message-Id: <20170308220909.4560-6-andrew.smirnov@gmail.com>
In-Reply-To: <20170308220909.4560-1-andrew.smirnov@gmail.com>
References: <20170308220909.4560-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/20] pinctrl: at91: Implement .get_direction hook
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pinctrl/pinctrl-at91.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 34fb0ae..021c1e5 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -568,6 +568,21 @@ static int at91_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
 	return 0;
 }
 
+static int at91_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
+{
+	struct at91_gpio_chip *at91_gpio = to_at91_gpio_chip(chip);
+	void __iomem *pio = at91_gpio->regbase;
+	unsigned mask = 1 << offset;
+	u32 osr;
+
+	if (mask & __raw_readl(pio + PIO_PSR)) {
+		osr = __raw_readl(pio + PIO_OSR);
+		return !(osr & mask);
+	} else {
+		return -EBUSY;
+	}
+}
+
 static int at91_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
 {
 	struct at91_gpio_chip *at91_gpio = to_at91_gpio_chip(chip);
@@ -603,6 +618,7 @@ static struct gpio_ops at91_gpio_ops = {
 	.free = at91_gpio_free,
 	.direction_input = at91_gpio_direction_input,
 	.direction_output = at91_gpio_direction_output,
+	.get_direction = at91_gpio_get_direction,
 	.get = at91_gpio_get,
 	.set = at91_gpio_set,
 };
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
