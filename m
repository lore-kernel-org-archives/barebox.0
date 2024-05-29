Delivery-date: Wed, 29 May 2024 06:53:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCBJz-0015Vn-1Z
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 06:53:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCBJy-0000bH-RW
	for lore@pengutronix.de; Wed, 29 May 2024 06:53:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=H8yFvC+iDFOz9Y73j/N75j6CqJnBYhnrrHNtjL7rx8E=; b=NXcESHH61qY5tilD6wJH+C6F7K
	P3EOwVgnYCuoTB+nGfxCCw/5lXVz6cT5mIoFTU2fqn4IP4MzYVqHSWqYmDmOOQq4wzyxcHsA9bulZ
	aKt3TbH8yk9ni+GqoJ4Z5pFPDrXvB4ai7LQ1rQCCmJYcEiNVNnMOnUMNINxOYd0LYpcsfNRxCQnJy
	QeJGuRxpV3M27OuEyJFzAFNonqSew+WwIt4mohAYnroas0PUKsZ5mM9V6/R+mXWhrEXa+WjEw2Jt1
	bcQT60JSF27DyNPfgaQqwQOraZq2n0QY0ndKMo2f5pNJ3iFnR0Pdo0aa9f/YIkDIpoTkBxruoJ7zQ
	yM4VlPUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCBJO-00000002oY9-3tAi;
	Wed, 29 May 2024 04:53:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCBJL-00000002oXI-3hVJ
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 04:53:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sCBJJ-0000UW-3s; Wed, 29 May 2024 06:53:13 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sCBJI-003PrD-NM; Wed, 29 May 2024 06:53:12 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sCBJI-00DXX4-2A;
	Wed, 29 May 2024 06:53:12 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 May 2024 06:53:10 +0200
Message-Id: <20240529045311.3227151-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_215315_941371_E4139D7F 
X-CRM114-Status: GOOD (  12.80  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/2] gpiolib: extend support for non-zero offset GPIO banks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Introduce gpio_offset variable in gpiolib to handle GPIO controllers
with non-zero starting indices. This is necessary for stm32mp151aad3,
which includes GPIO banks with 6 and 10 lines that do not start from 0.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 8 +++++---
 include/gpio.h         | 2 ++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index a70e13eafc..520ffed2ee 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -83,7 +83,7 @@ static struct gpio_desc *gpio_to_desc(unsigned gpio)
 
 static unsigned gpiodesc_chip_offset(const struct gpio_desc *desc)
 {
-	return (desc - gpio_desc) - desc->chip->base;
+	return (desc - gpio_desc) - desc->chip->base + desc->chip->gpio_offset;
 }
 
 static int gpio_adjust_value(const struct gpio_desc *desc,
@@ -770,6 +770,8 @@ static int of_gpio_simple_xlate(struct gpio_chip *gc,
 				const struct of_phandle_args *gpiospec,
 				u32 *flags)
 {
+	int gpio = gpiospec->args[0] - gc->gpio_offset;
+
 	/*
 	 * We're discouraging gpio_cells < 2, since that way you'll have to
 	 * write your own xlate function (that will have to retrieve the GPIO
@@ -782,13 +784,13 @@ static int of_gpio_simple_xlate(struct gpio_chip *gc,
 	if (WARN_ON(gpiospec->args_count < gc->of_gpio_n_cells))
 		return -EINVAL;
 
-	if (gpiospec->args[0] >= gc->ngpio)
+	if (gpio < 0 || gpio >= gc->ngpio)
 		return -EINVAL;
 
 	if (flags)
 		*flags = gpiospec->args[1];
 
-	return gc->base + gpiospec->args[0];
+	return gc->base + gpio;
 }
 
 static int of_gpiochip_add(struct gpio_chip *chip)
diff --git a/include/gpio.h b/include/gpio.h
index adc1eb39ac..71896c9d6b 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -208,6 +208,8 @@ struct gpio_chip {
 	struct device *dev;
 
 	int base;
+	/* GPIO controller specific GPIO offset */
+	int gpio_offset;
 	int ngpio;
 
 #if defined(CONFIG_OF_GPIO)
-- 
2.39.2



