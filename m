Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y97EK-0001I3-6A
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 07:10:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 Jan 2015 08:09:36 +0100
Message-Id: <1420700976-24306-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] driver: workaroud resource request that conflicts with errno
 PTR
To: Barebox List <barebox@lists.infradead.org>

From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

broken since

commit ed6e965824303255cacc1c1a195d3684caa26bce
Author:     Sascha Hauer <s.hauer@pengutronix.de>
resource: Let dev_request_mem_region return an error pointer

Introduce dev_request_mem_region_err_null

only used on platform like at91 where the resource address conflicts
with errno PTR.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/at91sam926x_time.c |  6 +++---
 drivers/base/driver.c                 | 16 ++++++++++++++++
 drivers/pinctrl/pinctrl-at91.c        |  6 +++---
 drivers/serial/atmel.c                |  6 +++---
 include/driver.h                      |  8 ++++++++
 5 files changed, 33 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index 789e1ec..cc7ad2f 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -89,9 +89,9 @@ static int at91_pit_probe(struct device_d *dev)
 		return ret;
 	}
 
-	pit_base = dev_request_mem_region(dev, 0);
-	if (IS_ERR(pit_base))
-		return PTR_ERR(pit_base);
+	pit_base = dev_request_mem_region_err_null(dev, 0);
+	if (!pit_base)
+		return -ENOENT;
 
 	pit_rate = clk_get_rate(clk) / 16;
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index e0125a1..fd9c4d9 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -318,6 +318,22 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 }
 EXPORT_SYMBOL(dev_request_mem_region_by_name);
 
+void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
+{
+	struct resource *res;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, num);
+	if (IS_ERR(res))
+		return NULL;
+
+	res = request_iomem_region(dev_name(dev), res->start, res->end);
+	if (IS_ERR(res))
+		return NULL;
+
+	return (void __force __iomem *)res->start;
+}
+EXPORT_SYMBOL(dev_request_mem_region_err_null);
+
 void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 {
 	struct resource *res;
diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 0d6d2e7..b803f89 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -652,9 +652,9 @@ static int at91_gpio_probe(struct device_d *dev)
 	}
 
 	gpio_banks = max(gpio_banks, alias_idx + 1);
-	at91_gpio->regbase = dev_request_mem_region(dev, 0);
-	if (IS_ERR(at91_gpio->regbase))
-		return PTR_ERR(at91_gpio->regbase);
+	at91_gpio->regbase = dev_request_mem_region_err_null(dev, 0);
+	if (!at91_gpio->regbase)
+		return -ENOENT;
 
 	at91_gpio->chip.ops = &at91_gpio_ops;
 	at91_gpio->chip.ngpio = MAX_NB_GPIO_PER_BANK;
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 1f40692..4e4624e 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -398,9 +398,9 @@ static int atmel_serial_init_port(struct console_device *cdev)
 	struct device_d *dev = cdev->dev;
 	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
 
-	uart->base = dev_request_mem_region(dev, 0);
-	if (IS_ERR(uart->base))
-		return PTR_ERR(uart->base);
+	uart->base = dev_request_mem_region_err_null(dev, 0);
+	if (!uart->base)
+		return -ENOENT;
 
 	uart->clk = clk_get(dev, "usart");
 	clk_enable(uart->clk);
diff --git a/include/driver.h b/include/driver.h
index 53e1000..46aae4f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -206,6 +206,14 @@ void *dev_get_mem_region(struct device_d *dev, int num);
  */
 void __iomem *dev_request_mem_region(struct device_d *dev, int num);
 
+/*
+ * exlusively request register base 'num' for a device
+ * will return NULL on error
+ * only used on platform like at91 where the Ressource address collision with
+ * PTR errno
+ */
+void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num);
+
 struct device_d *device_alloc(const char *devname, int id);
 
 int device_add_resources(struct device_d *dev, const struct resource *res, int num);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
