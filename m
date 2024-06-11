Delivery-date: Tue, 11 Jun 2024 08:58:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSq-0046ys-1r
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 08:58:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSp-0005jY-8y
	for lore@pengutronix.de; Tue, 11 Jun 2024 08:58:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5PHH8hOHXnuTJ+wghOgFdKiByW8ieKwn3des91XytaA=; b=OZJsK2afz2+tOdGED/P/I6BKtX
	yHtokVTmdCCkgGMRdz6JCqWcRQhmY8PUBaYgvyCiy3+6VSPefvwTjB5PGtM8tnyV0MkJ3UuNKEsEz
	8AZr/uCA2ca/OY/x22EioFH64QdJoDjGrGazjBbJw3NPalPuf4a6qci/deBt9/oSz9SCgP6Elwri7
	mewUgttmfcBwjLmQJEsk9imMxPeVWOAAgMFr4QB84KmW7TnsUkaIl8tM+ogb3cfbFNCxsHNv6iCvr
	7+QhZwrosrrNiEDjpRqJZk+zXdg0rOshrKtF9dg2Lk0wnFTPi6FlefpOk7vwlXSXHRi205t2vEbwo
	5DLFMUnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvSK-00000007mQZ-2hUc;
	Tue, 11 Jun 2024 06:58:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvSG-00000007mP2-0BSP
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:58:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvSE-0005UW-Al; Tue, 11 Jun 2024 08:58:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvSD-001UCt-UT; Tue, 11 Jun 2024 08:58:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvSD-00CAPT-2k;
	Tue, 11 Jun 2024 08:58:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:58:00 +0200
Message-Id: <20240611065800.2899939-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235804_428946_9E6E3D54 
X-CRM114-Status: GOOD (  17.95  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] serial: replace all clk_get with clk_get_for_console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike clk_get, clk_get_for_console returns NULL when the clock provider
lacks a driver, but the UART has already been configured by DEBUG_LL.

This allows drivers to disable the set baudrate callback and continue
probe, so the user gets to an interactive shell, where they can debug
the system further.

This is a useful thing to have, so let's switch all instance of
clk_get in serial drivers to clk_get_for_console, like we already do
for the STM32 serial driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/amba-pl011.c      |  4 ++--
 drivers/serial/atmel.c           | 19 +++++++++----------
 drivers/serial/serial_ar933x.c   | 16 ++++++++--------
 drivers/serial/serial_auart.c    | 28 ++++++++++++++++------------
 drivers/serial/serial_cadence.c  | 13 ++++++++-----
 drivers/serial/serial_clps711x.c |  4 ++--
 drivers/serial/serial_imx.c      | 13 ++++++++-----
 drivers/serial/serial_lpuart.c   | 13 ++++++++-----
 drivers/serial/serial_lpuart32.c |  7 ++++---
 drivers/serial/serial_ns16550.c  | 11 ++++-------
 drivers/serial/serial_sifive.c   | 12 +++++-------
 drivers/serial/stm-serial.c      | 28 +++++++++++++++-------------
 12 files changed, 89 insertions(+), 79 deletions(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index b53ff6877b77..380778b70e52 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -188,7 +188,7 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 	}
 
 	uart = xzalloc(sizeof(struct amba_uart_port));
-	uart->clk = clk_get(&dev->dev, NULL);
+	uart->clk = clk_get_for_console(&dev->dev, NULL);
 	uart->base = amba_get_mem_region(dev);
 	uart->vendor = (void*)id->data;
 
@@ -200,7 +200,7 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 	cdev->tstc = pl011_tstc;
 	cdev->putc = pl011_putc;
 	cdev->getc = pl011_getc;
-	cdev->setbrg = pl011_setbaudrate;
+	cdev->setbrg = uart->clk ? pl011_setbaudrate : NULL;
 	cdev->linux_console_name = "ttyAMA";
 	cdev->linux_earlycon_name = "pl011";
 	cdev->phys_base = uart->base;
diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index b957b75284be..2dcb458fbd30 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -382,16 +382,14 @@ static int atmel_serial_set_mode(struct console_device *cdev, enum console_mode
  * are always 8 data bits, no parity, 1 stop bit, no start bits.
  *
  */
-static int atmel_serial_init_port(struct console_device *cdev)
+static int atmel_serial_init_port(struct device *dev,
+				  struct atmel_uart_port *uart)
 {
-	struct device *dev = cdev->dev;
-	struct atmel_uart_port *uart = to_atmel_uart_port(cdev);
-
 	uart->base = dev_request_mem_region_err_null(dev, 0);
 	if (!uart->base)
 		return -ENOENT;
 
-	uart->clk = clk_get(dev, "usart");
+	uart->clk = clk_get_for_console(dev, "usart");
 	if (IS_ERR(uart->clk)) {
 		dev_err(dev, "Failed to get 'usart' clock\n");
 		return PTR_ERR(uart->clk);
@@ -419,20 +417,21 @@ static int atmel_serial_probe(struct device *dev)
 	int ret;
 
 	uart = xzalloc(sizeof(struct atmel_uart_port));
+
+	ret = atmel_serial_init_port(dev, uart);
+	if (ret)
+		return ret;
+
 	cdev = &uart->uart;
 	cdev->dev = dev;
 	cdev->tstc = atmel_serial_tstc;
 	cdev->putc = atmel_serial_putc;
 	cdev->getc = atmel_serial_getc;
-	cdev->setbrg = atmel_serial_setbaudrate;
+	cdev->setbrg = uart->clk ? atmel_serial_setbaudrate : NULL;
 	cdev->set_mode = atmel_serial_set_mode;
 	cdev->linux_console_name = "ttyAT";
 	cdev->linux_earlycon_name = "atmel_serial";
 
-	ret = atmel_serial_init_port(cdev);
-	if (ret)
-		return ret;
-
 	cdev->phys_base = uart->base;
 
 	/* Enable UART */
diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
index f5595ec1eed6..32fd0d30a68e 100644
--- a/drivers/serial/serial_ar933x.c
+++ b/drivers/serial/serial_ar933x.c
@@ -157,19 +157,19 @@ static int ar933x_serial_probe(struct device *dev)
 
 	dev->priv = priv;
 
-	cdev->dev = dev;
-	cdev->tstc = ar933x_serial_tstc;
-	cdev->putc = ar933x_serial_putc;
-	cdev->getc = ar933x_serial_getc;
-	cdev->setbrg = ar933x_serial_setbaudrate;
-	cdev->linux_console_name = "ttyATH";
-
-	priv->clk = clk_get(dev, NULL);
+	priv->clk = clk_get_for_console(dev, NULL);
 	if (IS_ERR(priv->clk)) {
 		dev_err(dev, "unable to get UART clock\n");
 		return PTR_ERR(priv->clk);
 	}
 
+	cdev->dev = dev;
+	cdev->tstc = ar933x_serial_tstc;
+	cdev->putc = ar933x_serial_putc;
+	cdev->getc = ar933x_serial_getc;
+	cdev->setbrg = priv->clk ? ar933x_serial_setbaudrate : NULL;
+	cdev->linux_console_name = "ttyATH";
+
 	uart_cs = (AR933X_UART_CS_IF_MODE_DCE << AR933X_UART_CS_IF_MODE_S)
 		| AR933X_UART_CS_TX_READY_ORIDE
 		| AR933X_UART_CS_RX_READY_ORIDE;
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index 217ac5c89183..cf362e8a7e0c 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -173,25 +173,26 @@ static int auart_serial_probe(struct device *dev)
 	struct console_device *cdev;
 
 	priv = xzalloc(sizeof *priv);
-	cdev = &priv->cdev;
-
-	cdev->tstc = auart_serial_tstc;
-	cdev->putc = auart_serial_putc;
-	cdev->getc = auart_serial_getc;
-	cdev->flush = auart_serial_flush;
-	cdev->setbrg = auart_serial_setbaudrate;
-	cdev->dev = dev;
-	cdev->linux_console_name = "ttyAPP";
 
 	dev->priv = priv;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	priv->base = IOMEM(iores->start);
-	priv->clk = clk_get(dev, NULL);
+	priv->clk = clk_get_for_console(dev, NULL);
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
 
+	cdev = &priv->cdev;
+
+	cdev->tstc = auart_serial_tstc;
+	cdev->putc = auart_serial_putc;
+	cdev->getc = auart_serial_getc;
+	cdev->flush = auart_serial_flush;
+	cdev->setbrg = priv->clk ? auart_serial_setbaudrate : NULL;
+	cdev->dev = dev;
+	cdev->linux_console_name = "ttyAPP";
+
 	auart_serial_init_port(priv);
 
 	/* Disable RTS/CTS, enable Rx, Tx, UART */
@@ -203,8 +204,11 @@ static int auart_serial_probe(struct device *dev)
 	       priv->base + HW_UARTAPP_CTRL2_SET);
 
 	console_register(cdev);
-	priv->notify.notifier_call = auart_clocksource_clock_change;
-	clock_register_client(&priv->notify);
+
+	if (priv->clk) {
+		priv->notify.notifier_call = auart_clocksource_clock_change;
+		clock_register_client(&priv->notify);
+	}
 
 	return 0;
 }
diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
index ee162e541aed..fe05d8a44d52 100644
--- a/drivers/serial/serial_cadence.c
+++ b/drivers/serial/serial_cadence.c
@@ -190,13 +190,13 @@ static int cadence_serial_probe(struct device *dev)
 	cdev = &priv->cdev;
 	dev->priv = priv;
 
-	priv->clk = clk_get(dev, NULL);
+	priv->clk = clk_get_for_console(dev, NULL);
 	if (IS_ERR(priv->clk)) {
 		ret = -ENODEV;
 		goto err_free;
 	}
 
-	if (devtype->mode & CADENCE_MODE_CLK_REF_DIV)
+	if (priv->clk && (devtype->mode & CADENCE_MODE_CLK_REF_DIV))
 		clk_set_rate(priv->clk, clk_get_rate(priv->clk) / 8);
 
 	iores = dev_request_mem_resource(dev, 0);
@@ -211,13 +211,16 @@ static int cadence_serial_probe(struct device *dev)
 	cdev->putc = cadence_serial_putc;
 	cdev->getc = cadence_serial_getc;
 	cdev->flush = cadence_serial_flush;
-	cdev->setbrg = cadence_serial_setbaudrate;
+	cdev->setbrg = priv->clk ? cadence_serial_setbaudrate : NULL;
 
 	cadence_serial_init_port(cdev);
 
 	console_register(cdev);
-	priv->notify.notifier_call = cadence_clocksource_clock_change;
-	clock_register_client(&priv->notify);
+
+	if (priv->clk) {
+		priv->notify.notifier_call = cadence_clocksource_clock_change;
+		clock_register_client(&priv->notify);
+	}
 
 	return 0;
 
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 2a284909bfa6..35e13039be92 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -137,7 +137,7 @@ static int clps711x_probe(struct device *dev)
 
 	s = xzalloc(sizeof(struct clps711x_uart));
 
-	s->uart_clk = clk_get(dev, NULL);
+	s->uart_clk = clk_get_for_console(dev, NULL);
 	if (IS_ERR(s->uart_clk)) {
 		err = PTR_ERR(s->uart_clk);
 		goto out_err;
@@ -162,7 +162,7 @@ static int clps711x_probe(struct device *dev)
 	s->cdev.putc	= clps711x_putc;
 	s->cdev.getc	= clps711x_getc;
 	s->cdev.flush	= clps711x_flush;
-	s->cdev.setbrg	= clps711x_setbaudrate;
+	s->cdev.setbrg	= s->uart_clk ? clps711x_setbaudrate : NULL;
 	s->cdev.linux_console_name = "ttyCL";
 
 	devname = of_alias_get(dev->of_node);
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 0f9102860591..77eea78aba64 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -92,7 +92,7 @@ static int imx_serial_init_port(struct console_device *cdev)
 	writel(val, regs + UFCR);
 
 
-	if (priv->devtype->onems)
+	if (priv->clk && priv->devtype->onems)
 		writel(imx_serial_reffreq(priv) / 1000, regs + priv->devtype->onems);
 
 	/* Enable FIFOs */
@@ -216,7 +216,7 @@ static int imx_serial_probe(struct device *dev)
 	cdev = &priv->cdev;
 	dev->priv = priv;
 
-	priv->clk = clk_get(dev, "per");
+	priv->clk = clk_get_for_console(dev, "per");
 	if (IS_ERR(priv->clk)) {
 		ret = PTR_ERR(priv->clk);
 		goto err_free;
@@ -232,7 +232,7 @@ static int imx_serial_probe(struct device *dev)
 	cdev->putc = imx_serial_putc;
 	cdev->getc = imx_serial_getc;
 	cdev->flush = imx_serial_flush;
-	cdev->setbrg = imx_serial_setbaudrate;
+	cdev->setbrg = priv->clk ? imx_serial_setbaudrate : NULL;
 	cdev->linux_console_name = "ttymxc";
 	cdev->linux_earlycon_name = "ec_imx6q";
 	cdev->phys_base = priv->regs;
@@ -259,8 +259,11 @@ static int imx_serial_probe(struct device *dev)
 	writel(val, priv->regs + UCR1);
 
 	console_register(cdev);
-	priv->notify.notifier_call = imx_clocksource_clock_change;
-	clock_register_client(&priv->notify);
+
+	if (priv->clk) {
+		priv->notify.notifier_call = imx_clocksource_clock_change;
+		clock_register_client(&priv->notify);
+	}
 
 	return 0;
 
diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index 828a0dd0bb42..8bbef08309f9 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -131,7 +131,7 @@ static int lpuart_serial_probe(struct device *dev)
 	}
 	lpuart->base = IOMEM(lpuart->io->start);
 
-	lpuart->clk = clk_get(dev, NULL);
+	lpuart->clk = clk_get_for_console(dev, NULL);
 	if (IS_ERR(lpuart->clk)) {
 		ret = PTR_ERR(lpuart->clk);
 		dev_err(dev, "Failed to get UART clock %d\n", ret);
@@ -149,7 +149,7 @@ static int lpuart_serial_probe(struct device *dev)
 	cdev->putc   = lpuart_serial_putc;
 	cdev->getc   = lpuart_serial_getc;
 	cdev->flush  = lpuart_serial_flush;
-	cdev->setbrg = lpuart_serial_setbaudrate;
+	cdev->setbrg = lpuart->clk ? lpuart_serial_setbaudrate : NULL;
 
 	if (dev->of_node) {
 		devname = of_alias_get(dev->of_node);
@@ -163,12 +163,15 @@ static int lpuart_serial_probe(struct device *dev)
 	cdev->linux_earlycon_name = "lpuart";
 	cdev->phys_base = lpuart->base;
 
-	lpuart_setup(lpuart->base, clk_get_rate(lpuart->clk));
+	if (lpuart->clk)
+		lpuart_setup(lpuart->base, clk_get_rate(lpuart->clk));
 
 	ret = console_register(cdev);
 	if (!ret) {
-		lpuart->notify.notifier_call = lpuart_clocksource_clock_change;
-		clock_register_client(&lpuart->notify);
+		if (lpuart->clk) {
+			lpuart->notify.notifier_call = lpuart_clocksource_clock_change;
+			clock_register_client(&lpuart->notify);
+		}
 
 		return 0;
 	}
diff --git a/drivers/serial/serial_lpuart32.c b/drivers/serial/serial_lpuart32.c
index 09d4b620beb8..6b52882bf0bd 100644
--- a/drivers/serial/serial_lpuart32.c
+++ b/drivers/serial/serial_lpuart32.c
@@ -119,7 +119,7 @@ static int lpuart32_serial_probe(struct device *dev)
 	}
 	lpuart32->base = IOMEM(lpuart32->io->start) + devtype->reg_offs;
 
-	lpuart32->clk = clk_get(dev, NULL);
+	lpuart32->clk = clk_get_for_console(dev, NULL);
 	if (IS_ERR(lpuart32->clk)) {
 		ret = PTR_ERR(lpuart32->clk);
 		dev_err(dev, "Failed to get UART clock %d\n", ret);
@@ -137,7 +137,7 @@ static int lpuart32_serial_probe(struct device *dev)
 	cdev->putc   = lpuart32_serial_putc;
 	cdev->getc   = lpuart32_serial_getc;
 	cdev->flush  = lpuart32_serial_flush;
-	cdev->setbrg = lpuart32_serial_setbaudrate;
+	cdev->setbrg = lpuart32->clk ? lpuart32_serial_setbaudrate : NULL;
 
 	if (dev->of_node) {
 		devname = of_alias_get(dev->of_node);
@@ -151,7 +151,8 @@ static int lpuart32_serial_probe(struct device *dev)
 	cdev->linux_earlycon_name = "lpuart";
 	cdev->phys_base = lpuart32->base;
 
-	lpuart32_setup(lpuart32->base, clk_get_rate(lpuart32->clk));
+	if (lpuart32->clk)
+		lpuart32_setup(lpuart32->base, clk_get_rate(lpuart32->clk));
 
 	ret = console_register(cdev);
 	if (!ret)
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 1b1692658f56..45341d1c9b4d 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -525,7 +525,7 @@ static int ns16550_probe(struct device *dev)
 		priv->plat.clock = devtype->clk_default;
 
 	if (!priv->plat.clock) {
-		priv->clk = clk_get(dev, NULL);
+		priv->clk = clk_get_for_console(dev, NULL);
 		if (IS_ERR(priv->clk)) {
 			ret = PTR_ERR(priv->clk);
 			dev_err(dev, "failed to get clk (%d)\n", ret);
@@ -537,18 +537,15 @@ static int ns16550_probe(struct device *dev)
 		priv->plat.clock = clk_get_rate(priv->clk);
 	}
 
-	if (priv->plat.clock == 0) {
-		dev_err(dev, "no valid clockrate\n");
-		ret = -EINVAL;
-		goto clk_disable;
-	}
+	if (priv->plat.clock == 0)
+		dev_warn(dev, "no valid clockrate\n");
 
 	cdev = &priv->cdev;
 	cdev->dev = dev;
 	cdev->tstc = ns16550_tstc;
 	cdev->putc = ns16550_putc;
 	cdev->getc = ns16550_getc;
-	cdev->setbrg = ns16550_setbaudrate;
+	cdev->setbrg = priv->plat.clock ? ns16550_setbaudrate : NULL;
 	cdev->flush = ns16550_flush;
 	cdev->linux_console_name = devtype->linux_console_name;
 	cdev->linux_earlycon_name = basprintf("%s,%s", devtype->linux_earlycon_name,
diff --git a/drivers/serial/serial_sifive.c b/drivers/serial/serial_sifive.c
index f056233b4efc..c1c325011ae0 100644
--- a/drivers/serial/serial_sifive.c
+++ b/drivers/serial/serial_sifive.c
@@ -121,21 +121,19 @@ static int sifive_serial_probe(struct device *dev)
 	struct sifive_serial_priv *priv;
 	struct resource *iores;
 	struct clk *clk;
-	u32 freq;
+	u32 freq = 0;
 	int ret;
 
-	clk = clk_get(dev, NULL);
-	if (!IS_ERR(clk)) {
+	clk = clk_get_for_console(dev, NULL);
+	if (!IS_ERR_OR_NULL(clk)) {
 		freq = clk_get_rate(clk);
 	} else {
 		dev_dbg(dev, "failed to get clock. Fallback to device tree.\n");
 
 		ret = of_property_read_u32(dev->of_node, "clock-frequency",
 					   &freq);
-		if (ret) {
+		if (ret)
 			dev_warn(dev, "unknown clock frequency\n");
-			return ret;
-		}
 	}
 
 	iores = dev_request_mem_resource(dev, 0);
@@ -152,7 +150,7 @@ static int sifive_serial_probe(struct device *dev)
 	priv->cdev.getc = sifive_serial_getc;
 	priv->cdev.tstc = sifive_serial_tstc;
 	priv->cdev.flush = sifive_serial_flush;
-	priv->cdev.setbrg = sifive_serial_setbrg,
+	priv->cdev.setbrg = freq ? sifive_serial_setbrg : 0,
 
 	sifive_serial_init(priv->regs);
 
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index af30bfa71d59..ccb8c91d1708 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -138,28 +138,27 @@ static int stm_serial_probe(struct device *dev)
 	struct console_device *cdev;
 
 	priv = xzalloc(sizeof *priv);
-
 	cdev = &priv->cdev;
 
-	cdev->tstc = stm_serial_tstc;
-	cdev->putc = stm_serial_putc;
-	cdev->getc = stm_serial_getc;
-	cdev->flush = stm_serial_flush;
-	cdev->setbrg = stm_serial_setbaudrate;
-	cdev->dev = dev;
-	cdev->linux_console_name = "ttyAMA";
-	cdev->linux_earlycon_name = "pl011";
-
 	dev->priv = priv;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	priv->base = IOMEM(iores->start);
 	cdev->phys_base = priv->base;
-	priv->clk = clk_get(dev, NULL);
+	priv->clk = clk_get_for_console(dev, NULL);
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
 
+	cdev->tstc = stm_serial_tstc;
+	cdev->putc = stm_serial_putc;
+	cdev->getc = stm_serial_getc;
+	cdev->flush = stm_serial_flush;
+	cdev->setbrg = priv->clk ? stm_serial_setbaudrate : NULL;
+	cdev->dev = dev;
+	cdev->linux_console_name = "ttyAMA";
+	cdev->linux_earlycon_name = "pl011";
+
 	stm_serial_init_port(priv);
 	stm_serial_setbaudrate(cdev, CONFIG_BAUDRATE);
 
@@ -167,8 +166,11 @@ static int stm_serial_probe(struct device *dev)
 	writel(TXE | RXE | UARTEN, priv->base + UARTDBGCR);
 
 	console_register(cdev);
-	priv->notify.notifier_call = stm_clocksource_clock_change;
-	clock_register_client(&priv->notify);
+
+	if (priv->clk) {
+		priv->notify.notifier_call = stm_clocksource_clock_change;
+		clock_register_client(&priv->notify);
+	}
 
 	return 0;
 }
-- 
2.39.2



