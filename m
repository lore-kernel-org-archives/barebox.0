Delivery-date: Fri, 09 Aug 2024 16:24:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQY4-007rY3-2I
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:24:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQY3-0008Tn-8P
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:24:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CgxwOmaoCV6bFZ67oQlJcQJu1EAPv9bGdaQdR481Jx4=; b=DrYN+JIZsWSr8gHF3+1P/PysYk
	onK7vmAHoo19uHfKxUcqqbdajf7P65Smz2ZDXmR4JV6szIeHNOgGH529bulOo8p8NIkFIPvMmlcdg
	2W/hC4NHksnvhtmg00C8I6cwYiwY0HwbbZojn9XHhDX4D1s1UWCGkOfyh4eZUWDctBqktzzCOE1C7
	MQ5rdOvJn+LffHZ/Mr8JQEmnKQYJjfWLC2x3G/QH2mFz+s6d9HQFPdVFq2OlOV5w2x3ltIZfX1oBb
	KkTFzN5T1P1UGfMcx+hYgT4HgfyPe9nmN3no5Nu+nKkNiKaUiunsM5xwv+58qXU+VwifOntq6iWUs
	yiUPB4qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXa-0000000BWUE-3nh4;
	Fri, 09 Aug 2024 14:24:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXI-0000000BWEY-3wX1
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-0007op-JL; Fri, 09 Aug 2024 16:24:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-005geR-1O; Fri, 09 Aug 2024 16:24:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-001K4s-34;
	Fri, 09 Aug 2024 16:24:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:23:59 +0200
Message-Id: <20240809142405.315244-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072409_120404_20763110 
X-CRM114-Status: GOOD (  14.74  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/11] gpiolib: don't use GPIO number API in of_hog_gpio
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The GPIO number API is legacy that's meant to be a layer on top
of GPIO descriptors, which should be used directly for new code.

of_hog_gpio which is called after registering adding GPIO chips also
uses the number API, which is quite unnecessary: gpio_get_num iterates
over all GPIO chips to find out the number only to convert it to a
descriptor inside of gpio_request_one.

Instead of that, let's use gpiochip_get_desc, which just does some
arithmetic to get the descriptor as we know the gpiochip must be there.

This prepares us for propagating OF flags in a later commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 70c78a9ad4af..0c6c0fcc1aeb 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -90,6 +90,11 @@ static unsigned gpiodesc_chip_offset(const struct gpio_desc *desc)
 	return (desc - gpio_desc) - desc->chip->base + desc->chip->gpio_offset;
 }
 
+static __maybe_unused struct gpio_desc *gpiochip_get_desc(struct gpio_chip *chip, int gpio)
+{
+	return gpio_desc + chip->base + gpio - chip->gpio_offset;
+}
+
 static int gpiod_is_active_low(const struct gpio_desc *desc)
 {
 	return desc->flags & OF_GPIO_ACTIVE_LOW;
@@ -643,6 +648,7 @@ static int gpiochip_find_base(int ngpio)
 	return base;
 }
 
+
 #ifdef CONFIG_OF_GPIO
 
 static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
@@ -651,7 +657,7 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
 	struct device_node *chip_np = chip->dev->of_node;
 	unsigned long flags = 0;
 	u32 gpio_cells, gpio_num, gpio_flags;
-	int ret, gpio;
+	int ret;
 	const char *name = NULL;
 
 	ret = of_property_read_u32(chip_np, "#gpio-cells", &gpio_cells);
@@ -678,16 +684,6 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
 	if (gpio_flags & OF_GPIO_ACTIVE_LOW)
 		flags |= GPIOF_ACTIVE_LOW;
 
-	gpio = gpio_get_num(chip->dev, gpio_num);
-	if (gpio == -EPROBE_DEFER)
-		return gpio;
-
-	if (gpio < 0) {
-		dev_err(chip->dev, "unable to get gpio %u\n", gpio_num);
-		return gpio;
-	}
-
-
 	/*
 	 * Note that, in order to be compatible with Linux, the code
 	 * below interprets 'output-high' as to mean 'output-active'.
@@ -714,7 +710,8 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
 	if (ret < 0)
 		name = np->name;
 
-	return gpio_request_one(gpio, flags, name);
+	return gpiodesc_request_one(gpiochip_get_desc(chip, gpio_num),
+				    flags, name);
 }
 
 static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
-- 
2.39.2



