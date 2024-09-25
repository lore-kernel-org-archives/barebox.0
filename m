Delivery-date: Wed, 25 Sep 2024 16:10:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSir-002cTi-0e
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:10:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stSir-0004dj-CP
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:10:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gpCfFxfl2X9SAKTi777gbYnSTy1ypLQ2PnTjqg0aj6Y=; b=mQlAc7CGGnOemn0Tl/NNoPVVn4
	R8xzaH0+ap70iXBtkgHQ5HFlzeKQ1u46mio/W2pvModaSrSPrny9Lc4+SHsigs4WfyBgkz0JR/5jc
	FL2NjHGXZq62kg+HM4kQSKa9pEVnOy0t0S/GPphCtYwvpEqXFRViJ9TyKMeWXFjoN2+/1fWJxPonW
	hjaabdw9eKOe2uf8eZvm+kRzCKMuX8YhfOhQ3tSw1SyG1R3plLpU6y2n05Y9OhIOAfB4Uus3guxwG
	gdnRPK9pis7GGB6gcQ/aEiOi9bxnUEEOqRi5jOnFmFCX5eGlYM8YrccPU4nYfd154wgYN1/qK/ips
	OKj226Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stSiO-00000005XyZ-2ktE;
	Wed, 25 Sep 2024 14:10:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stSf6-00000005X9c-12uR
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:06:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-0003zb-Tg; Wed, 25 Sep 2024 16:06:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-001Ssh-GV; Wed, 25 Sep 2024 16:06:34 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stSf4-00DDhp-2t;
	Wed, 25 Sep 2024 16:06:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:06:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-spi-gpio-v1-3-47f6285b3bf1@pengutronix.de>
References: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
In-Reply-To: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727273194; l=2370;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Pz31nyz5xACNyLVHpP4P/8XuXKhnDitNxQ9D00UCYDI=;
 b=C3ByBTA7aMbAvPxVQqeE4wgP4CZB+zNJkrSZFSGIPNsCJJPsxGxQaWnATHciBZAivsu78evIP
 5f0U0mNQ3+/BqFa3k1DRo3hhElvM8SDny+He4PBj4/x2hiSBrCfTlS7
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_070636_350262_7AEA4758 
X-CRM114-Status: GOOD (  14.73  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] spi: spi-gpio: switch to new gpio binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The old deprecated device tree binding for the spi-gpio driver uses
"gpio-sck", "gpio-mosi" and "gpio-miso" to specify the GPIOs. Switch to
the new binding which uses the standard GPIO property names.

The old binding is still used in some device trees, but none of the SoCs
using them is actually supported in barebox, so do not bother to keep a
fallback to the old binding. The one in-tree user of the old binding is
converted in this patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/stm32mp151-mect1s.dts | 6 +++---
 drivers/spi/gpio_spi.c             | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/dts/stm32mp151-mect1s.dts b/arch/arm/dts/stm32mp151-mect1s.dts
index 4d0e31d189..b0dc1cfaa8 100644
--- a/arch/arm/dts/stm32mp151-mect1s.dts
+++ b/arch/arm/dts/stm32mp151-mect1s.dts
@@ -65,9 +65,9 @@ led-1 {
 
 	spi_gpio: spi-gpio-0 {
 		compatible = "spi-gpio";
-		gpio-sck = <&gpioi 1 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpioi 3 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpioi 2 GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpioi 1 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpioi 3 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpioi 2 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpioj 3 GPIO_ACTIVE_LOW>;
 		num-chipselects = <1>;
 		#address-cells = <1>;
diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index c76b71f610..34d74faf4c 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -178,7 +178,7 @@ static int gpio_spi_of_probe(struct device *dev)
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || dev->platform_data)
 		return 0;
 
-	sck = of_get_named_gpio(np, "gpio-sck", 0);
+	sck = of_get_named_gpio(np, "sck-gpios", 0);
 	if (!gpio_is_valid(sck))
 		return dev_err_probe(dev, sck < 0 ? sck : -EINVAL,
 				     "missing mandatory SCK gpio\n");
@@ -187,11 +187,11 @@ static int gpio_spi_of_probe(struct device *dev)
 	pdata->sck = sck;
 	pdata->num_cs = MAX_CHIPSELECT;
 
-	pdata->miso = of_get_named_gpio(np, "gpio-miso", 0);
+	pdata->miso = of_get_named_gpio(np, "miso-gpios", 0);
 	if (!gpio_is_valid(pdata->miso))
 		pdata->miso = SPI_GPIO_NO_MISO;
 
-	pdata->mosi = of_get_named_gpio(np, "gpio-mosi", 0);
+	pdata->mosi = of_get_named_gpio(np, "mosi-gpios", 0);
 	if (!gpio_is_valid(pdata->mosi))
 		pdata->mosi = SPI_GPIO_NO_MOSI;
 

-- 
2.39.5



