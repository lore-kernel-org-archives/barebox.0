Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.176.89])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXANA-0008Ak-F6
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 14:18:05 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon,  7 Apr 2014 18:17:39 +0400
Message-Id: <1396880259-26502-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] GPIO: i.MX: Implement get_direction()
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/gpio/gpio-imx.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index a71492a..d32638c 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -113,11 +113,21 @@ static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
 	return val & (1 << gpio) ? 1 : 0;
 }
 
+static int imx_get_direction(struct gpio_chip *chip, unsigned offset)
+{
+	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
+	void __iomem *base = imxgpio->base;
+	u32 val = readl(base + imxgpio->regs->gdir);
+
+	return (val & (1 << offset)) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
+}
+
 static struct gpio_ops imx_gpio_ops = {
 	.direction_input = imx_gpio_direction_input,
 	.direction_output = imx_gpio_direction_output,
 	.get = imx_gpio_get_value,
 	.set = imx_gpio_set_value,
+	.get_direction = imx_get_direction,
 };
 
 static int imx_gpio_probe(struct device_d *dev)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
