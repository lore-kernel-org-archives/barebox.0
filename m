Delivery-date: Wed, 17 Sep 2025 17:51:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRq-0047qo-2c
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 17:51:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRo-0000zt-5v
	for lore@pengutronix.de; Wed, 17 Sep 2025 17:51:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mAuRJPp8e6lGwMG3HBb+j0w7cbzxRRoxs7YgoDXJWas=; b=lDigKADODb/5m68E2ay0YoZ6KK
	3fK3f6a6HyRysxy6MBWWNG0N4lgiqh9so1/KbHfaVnbkOpXGaECEou8CRl4dgpls7CFn64TphWKbl
	T/y3XxLr4J+GGZVUlTvcR/Kt2rxhYkF7fXkWwLo0dHh4l9+FVzvJtKKSorQ8zQR0h35tibWROewlA
	ufXfhVy6xUGHgXcrTBi8/32Jruer2hEWTdBdrCIZkY9JCzNs7nr1/j63kOzbFro3+WXLZMUpWPOVz
	aGj5ccWcAvK9S+Gy7VyB5hnzxxQB1cKDSROrqWrV3dIuEepSTWryxspTvhCGJm0VtgSlFbwXvfmxW
	NmusMj7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuRK-0000000CtYO-2LXu;
	Wed, 17 Sep 2025 15:51:26 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuRI-0000000CtAB-0i4B
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 15:51:25 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58HFNoCD032210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 17 Sep 2025 17:24:03 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Wed, 17 Sep 2025 17:22:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-boards-enclustra-sa2-add-support-v1-8-2de8f69107a1@clermont.in2p3.fr>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758122641; l=3357;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=kY4+hDydLbPYyoDuW5ar2DOpZHpWtEmfbBQ4v43Wmio=;
 b=moMwuOs3NTIUeW+xjUz9T0tggR5vEHtuC217WWwcUyhJe9P6F4qs/JbHBN0T2RGmd1Gfnw3HD
 4cCe6f77L6xBLBh1dpefQvfB2icNV9YVLEPoZuv56IFZDPAvlBnV3pw
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_085124_508616_679202FF 
X-CRM114-Status: GOOD (  14.69  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/11] gpio: dw: make deep probe compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

When deep probing GPIO controller, we expect struct gpio_chip::dev to be
bound to a driver.

This is currently not the case as the driver for the parent nodes
creates devices for the child nodes and never binds a driver to them.

As the child nodes have compatibles themselves too, let's match against
proper drivers.

Reported-by: David Picard <david.picard@clermont.in2p3.fr>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpio-dw.c | 44 +++++++++++++++++++++++++-------------------
 1 file changed, 25 insertions(+), 19 deletions(-)

diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index 98668c0a2d548e8dbac6e88180da25d28ae108e4..688b2536be2bbfe28e9d173b7f907e6d89ba8de4 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -6,6 +6,7 @@
  */
 
 #include <common.h>
+#include <linux/device.h>
 #include <errno.h>
 #include <io.h>
 #include <gpio.h>
@@ -104,9 +105,9 @@ static struct gpio_ops dw_gpio_ops = {
 	.set = dw_gpio_set,
 };
 
-static int dw_gpio_add_port(struct device *dev, struct device_node *node,
-			    struct dw_gpio *parent)
+static int dw_gpio_add_port(struct device *dev)
 {
+	struct dw_gpio *parent = dev_get_drvdata(dev->parent);
 	struct dw_gpio_instance *chip;
 	uint32_t config1, config2;
 	int ngpio, ret;
@@ -130,17 +131,7 @@ static int dw_gpio_add_port(struct device *dev, struct device_node *node,
 
 	chip->parent = parent;
 	chip->chip.ngpio = ngpio;
-	chip->chip.dev = add_generic_device("dw-port", DEVICE_ID_DYNAMIC, NULL,
-					    dev->resource[0].start,
-					    resource_size(&dev->resource[0]),
-					    IORESOURCE_MEM, NULL);
-
-	if (!chip->chip.dev) {
-		dev_err(dev, "unable to add device\n");
-		return -ENODEV;
-	}
-
-	chip->chip.dev->of_node = node;
+	chip->chip.dev = dev;
 
 	ret = gpiochip_add(&chip->chip);
 	if (ret)
@@ -152,11 +143,22 @@ static int dw_gpio_add_port(struct device *dev, struct device_node *node,
 	return 0;
 }
 
+static struct of_device_id dwgpio_port_match[] = {
+	{ .compatible = "snps,dw-apb-gpio-port" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, dwgpio_port_match);
+
+static struct driver dwgpio_port_driver = {
+	.name = "dw-apb-gpio-port",
+	.probe = dw_gpio_add_port,
+	.of_compatible = dwgpio_port_match,
+};
+
 static int dw_gpio_probe(struct device *dev)
 {
 	struct resource *iores;
 	struct dw_gpio *gpio;
-	struct device_node *node;
 
 	gpio = xzalloc(sizeof(*gpio));
 
@@ -165,13 +167,12 @@ static int dw_gpio_probe(struct device *dev)
 		return PTR_ERR(iores);
 	gpio->regs = IOMEM(iores->start);
 
-	for_each_child_of_node(dev->of_node, node)
-		dw_gpio_add_port(dev, node, gpio);
+	dev_set_drvdata(dev, gpio);
 
-	return 0;
+	return of_platform_populate(dev->of_node, NULL, dev);
 }
 
-static __maybe_unused struct of_device_id dwgpio_match[] = {
+static struct of_device_id dwgpio_match[] = {
 	{
 		.compatible = "snps,dw-apb-gpio",
 	}, {
@@ -186,4 +187,9 @@ static struct driver dwgpio_driver = {
 	.of_compatible = dwgpio_match,
 };
 
-postcore_platform_driver(dwgpio_driver);
+static int __init dwgpio_driver_register(void)
+{
+	platform_driver_register(&dwgpio_port_driver);
+	return platform_driver_register(&dwgpio_driver);
+}
+postcore_initcall(dwgpio_driver_register);

-- 
2.43.0



