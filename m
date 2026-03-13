Delivery-date: Fri, 13 Mar 2026 14:28:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12Ym-000DDL-2h
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:28:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12Yj-0005sH-5p
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:28:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y3gNr/LlJtJi/k0mSUCMAfaiR6v2jAyKyCS7XcReJXs=; b=NjrDRJUkT4HOGbpDLcH2ari7lg
	SpcRjXYgyDOLCMxaPEs5cpRqsWSfn0Pq5PlaG4ovoYvTGSyASsEQEuGkKh3r1Tf4KSDU2bvxHHXW6
	pWTIZFZ1qHHy+aNEohx45U5exrR0b+dclo9rsfY8rEp4IjqWokZYAHPKJ53fMmShD/QMrg7METsqS
	Yv7/wLdzX8Jx+DD8XNm+bRTFDjKNDEDmj6PMGic8ed2w4UgTY2JHZhi9lB6z+C5G60PFfSgmCBjDv
	8ot9t3jDqNyt9vga21CRGvEbp8OjTSv5hVIF9pFHqQowWxwij0oF324aGrDl8AXvp7IVEnSIfaST5
	z/TfC3FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XX-00000000EK3-1yUY;
	Fri, 13 Mar 2026 13:26:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XU-00000000EE8-1sO2
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:26:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00058l-VV; Fri, 13 Mar 2026 14:26:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-0005Rm-2H;
	Fri, 13 Mar 2026 14:26:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-2X8W;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Mar 2026 14:24:52 +0100
Message-ID: <20260313132631.2257573-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_062652_488754_4318A31E 
X-CRM114-Status: GOOD (  13.45  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 08/58] drivers: don't propagate of_alias_get_id's -ENODEV out of probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_alias_get_id() returns -ENODEV on failure and propagating it gives
the user nothing to hint at there being a problem, so let's improve upon
that by either falling back to dynamic ID selections if possible or
returning a more fitting error code instead.

(cherry picked from commit e688d63a116a3288500b1f6324d26282f1ed4238)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251113075904.990058-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpio-clps711x.c  |  2 +-
 drivers/gpio/gpio-imx.c       |  5 ++---
 drivers/gpio/gpio-mxs.c       |  2 +-
 drivers/gpio/gpio-omap.c      |  5 ++---
 drivers/gpio/gpio-orion.c     |  5 ++---
 drivers/gpio/gpio-vf610.c     | 14 ++++----------
 drivers/spi/imx_spi.c         |  5 +----
 drivers/usb/imx/imx-usb-phy.c |  2 +-
 drivers/usb/musb/phy-am335x.c |  3 +--
 9 files changed, 15 insertions(+), 28 deletions(-)

diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
index a59bdd212a9c..8b8e91b825c5 100644
--- a/drivers/gpio/gpio-clps711x.c
+++ b/drivers/gpio/gpio-clps711x.c
@@ -15,7 +15,7 @@ static int clps711x_gpio_probe(struct device *dev)
 	struct bgpio_chip *bgc;
 
 	if (id < 0 || id > 4)
-		return -ENODEV;
+		return -EINVAL;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index d9499c66cdae..31c62a251bee 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -135,9 +135,8 @@ static int imx_gpio_probe(struct device *dev)
 	imxgpio->chip.ops = &imx_gpio_ops;
 	if (dev->id < 0) {
 		imxgpio->chip.base = of_alias_get_id(dev->of_node, "gpio");
-		if (imxgpio->chip.base < 0)
-			return imxgpio->chip.base;
-		imxgpio->chip.base *= 32;
+		if (imxgpio->chip.base >= 0)
+			imxgpio->chip.base *= 32;
 	} else {
 		imxgpio->chip.base = dev->id * 32;
 	}
diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index df698eb19167..00a9b72dfc86 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -112,7 +112,7 @@ static int mxs_gpio_probe(struct device *dev)
 	if (dev->id < 0) {
 		id = of_alias_get_id(dev->of_node, "gpio");
 		if (id < 0)
-			return id;
+			return -ENOENT;
 		mxsgpio->base = dev_get_mem_region(dev->parent, 0);
 		mxsgpio->chip.base = id * 32;
 	} else {
diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
index ed043286b7ff..f5abd63a90f8 100644
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -135,9 +135,8 @@ static int omap_gpio_probe(struct device *dev)
 	omapgpio->chip.ops = &omap_gpio_ops;
 	if (dev->id < 0) {
 		omapgpio->chip.base = of_alias_get_id(dev->of_node, "gpio");
-		if (omapgpio->chip.base < 0)
-			return omapgpio->chip.base;
-		omapgpio->chip.base *= 32;
+		if (omapgpio->chip.base >= 0)
+			omapgpio->chip.base *= 32;
 	} else {
 		omapgpio->chip.base = dev->id * 32;
 	}
diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
index 0a1b50069b98..0760205c2610 100644
--- a/drivers/gpio/gpio-orion.c
+++ b/drivers/gpio/gpio-orion.c
@@ -95,10 +95,9 @@ static int orion_gpio_probe(struct device *dev)
 	gpio->chip.ops = &orion_gpio_ops;
 
 	id = of_alias_get_id(dev->of_node, "gpio");
-	if (id < 0)
-		return id;
+	if (id >= 0)
+		gpio->chip.base = id * 32;
 
-	gpio->chip.base = id * 32;
 	gpio->chip.ngpio = 32;
 	of_property_read_u32(dev->of_node, "ngpios", &gpio->chip.ngpio);
 
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index eefbaa70230f..5ce508469eb2 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -198,22 +198,16 @@ static int vf610_gpio_probe(struct device *dev)
 		port->gpio_base = IOMEM(iores->start);
 	}
 
+	port->chip.dev = dev;
 	port->chip.ops  = &vf610_gpio_ops;
 	if (dev->id < 0) {
 		port->chip.base = of_alias_get_id(dev->of_node, "gpio");
-		if (port->chip.base < 0) {
-			ret = port->chip.base;
-			dev_dbg(dev, "Failed to get GPIO alias\n");
-			goto free_port;
-		}
+		if (port->chip.base >= 0)
+			port->chip.base *= VF610_GPIO_PER_PORT;
 	} else {
-		port->chip.base = dev->id;
+		port->chip.base = dev->id * VF610_GPIO_PER_PORT;
 	}
 
-
-	port->chip.base *= VF610_GPIO_PER_PORT;
-	port->chip.dev = dev;
-
 	return gpiochip_add(&port->chip);
 
 free_port:
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index bfb4b413ebab..941a164b7631 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -603,10 +603,7 @@ static int imx_spi_probe(struct device *dev)
 		master->num_chipselect = pdata->num_chipselect;
 		imx->cs_array = pdata->chipselect;
 	} else if (IS_ENABLED(CONFIG_OFDEVICE)) {
-		ret = of_alias_get_id(dev->of_node, "spi");
-		if (ret < 0)
-			goto err_free;
-		master->bus_num = ret;
+		master->bus_num = of_alias_get_id(dev->of_node, "spi");;
 		imx_spi_dt_probe(imx);
 	}
 
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 3dcaa1e1f438..7f9f5bebdee0 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -154,7 +154,7 @@ static int imx_usbphy_probe(struct device *dev)
 
 	ret = of_alias_get_id(np, "usbphy");
 	if (ret < 0) {
-		dev_dbg(dev, "failed to get alias id, errno %d\n", ret);
+		ret = dev_err_probe(dev, -ENOENT, "failed to get alias id\n");
 		goto err_free;
 	}
 	imxphy->port_id = ret;
diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
index f2a12182e021..d3ebbef302a1 100644
--- a/drivers/usb/musb/phy-am335x.c
+++ b/drivers/usb/musb/phy-am335x.c
@@ -45,8 +45,7 @@ static int am335x_phy_probe(struct device *dev)
 
 	am_usbphy->id = of_alias_get_id(dev->of_node, "phy");
 	if (am_usbphy->id < 0) {
-		dev_err(dev, "Missing PHY id: %d\n", am_usbphy->id);
-		ret = am_usbphy->id;
+		ret = dev_err_probe(dev, -ENOENT, "Missing PHY id\n");
 		goto err_release;
 	}
 
-- 
2.47.3



