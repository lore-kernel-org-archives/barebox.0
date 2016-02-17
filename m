Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22b.google.com ([2607:f8b0:400e:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwO-0003my-Kb
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:06 +0000
Received: by mail-pf0-x22b.google.com with SMTP id c10so1560696pfc.2
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:05 -0800
Message-Id: <1455672559-25061-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/18] [RFC] base/driver.c: Remove
 dev_request_mem_region_err_null
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Having functional IS_ERR on AT91 means we no longer need that function

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-at91/at91sam926x_time.c |  6 +++---
 drivers/base/driver.c                 | 16 ----------------
 drivers/pinctrl/pinctrl-at91.c        |  6 +++---
 drivers/serial/atmel.c                |  6 +++---
 include/driver.h                      |  8 --------
 5 files changed, 9 insertions(+), 33 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index cc7ad2f..789e1ec 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -89,9 +89,9 @@ static int at91_pit_probe(struct device_d *dev)
 		return ret;
 	}
 
-	pit_base = dev_request_mem_region_err_null(dev, 0);
-	if (!pit_base)
-		return -ENOENT;
+	pit_base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(pit_base))
+		return PTR_ERR(pit_base);
 
 	pit_rate = clk_get_rate(clk) / 16;
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 2ef7ca9..a3ca057 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -385,22 +385,6 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 }
 EXPORT_SYMBOL(dev_request_mem_region_by_name);
 
-void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
-{
-	struct resource *res;
-
-	res = dev_get_resource(dev, IORESOURCE_MEM, num);
-	if (IS_ERR(res))
-		return NULL;
-
-	res = request_iomem_region(dev_name(dev), res->start, res->end);
-	if (IS_ERR(res))
-		return NULL;
-
-	return IOMEM(res->start);
-}
-EXPORT_SYMBOL(dev_request_mem_region_err_null);
-
 void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 {
 	struct resource *res;
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index ebbc6f6..816a3f3 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -652,9 +652,9 @@ static int at91_gpio_probe(struct device_d *dev)
 	}
 
 	gpio_banks = max(gpio_banks, alias_idx + 1);
-	at91_gpio->regbase = dev_request_mem_region_err_null(dev, 0);
-	if (!at91_gpio->regbase)
-		return -ENOENT;
+	at91_gpio->regbase = dev_request_mem_region(dev, 0);
+	if (IS_ERR(at91_gpio->regbase))
+		return PTR_ERR(at91_gpio->regbase);
 
 	at91_gpio->chip.ops = &at91_gpio_ops;
 	at91_gpio->chip.ngpio = MAX_NB_GPIO_PER_BANK;
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 4e4624e..1f40692 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -398,9 +398,9 @@ static int atmel_serial_init_port(struct console_device *cdev)
 	struct device_d *dev = cdev->dev;
 	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
-	uart->base = dev_request_mem_region_err_null(dev, 0);
-	if (!uart->base)
-		return -ENOENT;
+	uart->base = dev_request_mem_region(dev, 0);
+	if (IS_ERR(uart->base))
+		return PTR_ERR(uart->base);
 
 	uart->clk = clk_get(dev, "usart");
 	clk_enable(uart->clk);
diff --git a/include/driver.h b/include/driver.h
index 31c6734..08adaf9 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -206,14 +206,6 @@ void *dev_get_mem_region(struct device_d *dev, int num);
  */
 void __iomem *dev_request_mem_region(struct device_d *dev, int num);
 
-/*
- * exlusively request register base 'num' for a device
- * will return NULL on error
- * only used on platform like at91 where the Ressource address collision with
- * PTR errno
- */
-void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num);
-
 struct device_d *device_alloc(const char *devname, int id);
 
 int device_add_resources(struct device_d *dev, const struct resource *res, int num);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
