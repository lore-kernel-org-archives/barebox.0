Delivery-date: Sun, 20 Feb 2022 13:49:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlek-004wtD-U7
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlei-0001MY-Dy
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0PWlUR49H6NPUS1GzmibTpdn82sUHrE8V3N+KYb0yoI=; b=EFDBJ6Vw+WnRtw
	rSkyEmEuJcJxrnzZVtUqrDdvfDm56o4mbGuyiM3V/N64yEMpyr/SgFbVSE/53kpW6e9VWj4T+/joO
	sy1zb/k89If7+9QKMqqu16wHm8YUsrv1qTiirACP8qrtohLgWFRHi3M3n8hjdbwz/ilLWLTXjDyfn
	ttGF8vIleqP7Bfz04vnhrGFiysPrs0w6YF0jomQ2NPfRYcLjlfaAQilX2c+XX7z6yepFl2hoZbtdZ
	YD3Ae6zGjMnAH5xre/zgo2paJv+RWw8YovyNuvNq1dwinJ2qsa2jEvqbvs5YDG4rnOc2WWGJ8bwVT
	eBH+4CbOym5epmgarC2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLld3-001I3y-Py; Sun, 20 Feb 2022 12:47:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLlcw-001I0p-E4
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000Zu-4D; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcq-00CoPN-TS; Sun, 20 Feb 2022 13:47:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:14 +0100
Message-Id: <20220220124736.3052502-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044746_494320_6554684C 
X-CRM114-Status: GOOD (  10.63  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/24] pinctrl: stm32: use gpio-ranges instead of alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream device tree doesn't feature aliases and we don't really need
it, as the gpio-ranges property has a GPIO controller offset cell.
Use it instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp151.dtsi    | 12 ------------
 drivers/pinctrl/pinctrl-stm32.c | 14 ++------------
 2 files changed, 2 insertions(+), 24 deletions(-)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index f1fd888fa1c6..aac2907bc6b5 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -1,18 +1,6 @@
 
 / {
 	aliases {
-		gpio0 = &gpioa;
-		gpio1 = &gpiob;
-		gpio2 = &gpioc;
-		gpio3 = &gpiod;
-		gpio4 = &gpioe;
-		gpio5 = &gpiof;
-		gpio6 = &gpiog;
-		gpio7 = &gpioh;
-		gpio8 = &gpioi;
-		gpio9 = &gpioj;
-		gpio10 = &gpiok;
-		gpio25 = &gpioz;
 		mmc0 = &sdmmc1;
 		mmc1 = &sdmmc2;
 		mmc2 = &sdmmc3;
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index ceaa4254c4d0..cee10636cef9 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -303,7 +303,7 @@ static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
 	enum { PINCTRL_PHANDLE, GPIOCTRL_OFFSET, PINCTRL_OFFSET, PINCOUNT, GPIO_RANGE_NCELLS };
 	const __be32 *gpio_ranges;
 	u32 ngpios;
-	int id, ret, size;
+	int ret, size;
 
 	dev = of_platform_device_create(np, parent);
 	if (!dev)
@@ -347,17 +347,7 @@ static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
 
 	bank->base = IOMEM(iores->start);
 
-	if (dev->id >= 0) {
-		id = dev->id;
-	} else {
-		id = of_alias_get_id(np, "gpio");
-		if (id < 0) {
-			dev_err(dev, "Failed to get GPIO alias\n");
-			return id;
-		}
-	}
-
-	bank->chip.base = id * STM32_GPIO_PINS_PER_BANK;
+	bank->chip.base = be32_to_cpu(gpio_ranges[PINCTRL_OFFSET]);
 	bank->chip.ops  = &stm32_gpio_ops;
 	bank->chip.dev  = dev;
 	bank->clk = clk_get(dev, NULL);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

