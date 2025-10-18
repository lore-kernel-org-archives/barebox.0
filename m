Delivery-date: Sat, 18 Oct 2025 12:00:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vA3ji-0098zw-0L
	for lore@lore.pengutronix.de;
	Sat, 18 Oct 2025 12:00:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vA3jh-0008PN-Hi
	for lore@pengutronix.de; Sat, 18 Oct 2025 12:00:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fhc/ItOKncrvwqBvwJL35pLMaq9JvcexT3wsHlnQFqM=; b=DRG/ml86D27uTe0veDXpLibDzs
	UKdtKNOv0W4tMW/3anRvtGSRjMhyJqA91+erA6rcxIQyAEA06c433LUog1N2kkKCSWAJMw5p0ZM/3
	GZjQb01PdJi38xmc9ZVfRo+5yyVvxk4jVgdcVuxffyxMR33+eKjfOyEl0+ajnBfhdruJgPHT8Ft2X
	1u9nMdoEsYCGuMqWd388H1Dq5hAx+67CIQpQzVyLXxcPZilzyivUbXzJeJhB1QxT/Y3VwGQt6m8zp
	5q47eaE10kLxYS3CylPS5AjFsMWhuQpI9XvPw6M0HuS9DlO3kGBrGHMe/FnAPx348kIiqUS625X0V
	RloiJKBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA3j7-00000009mFa-1ldj;
	Sat, 18 Oct 2025 09:59:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vA3j6-00000009mEz-0Dlf
	for barebox@lists.infradead.org;
	Sat, 18 Oct 2025 09:59:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2629F60554;
	Sat, 18 Oct 2025 09:59:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D1EC113D0;
	Sat, 18 Oct 2025 09:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760781590;
	bh=hytKgfFB9Yr+OBBG4NeEsoI3QxFpnBHU/SRrc1k6a9s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Ikiv1txEdd75cMsrWkrNjeWSnqsAl1/PlqGetHXpyjUMP6sPP7kxQ1UHdueKde7vz
	 938blFb2efOg88gQ7DPD4+legnjbB5rF24rcX7d5og8O0noJcDeaPKgQdiogWZ7+5S
	 S8vO+MNfZmaKZKb6Cyt7NyObMGlgwRYjvqof2Oapo8Rm7UgnPWbLn+N7OKub6OM/F7
	 G/DEbzKuPKyT/qqnTDZgKv143q0Ugr/gBW7aVYemgh8+qKlmy9U2VOwdzMPwMZfgjd
	 mL4cmlMa+Lvh8F9H4f5GJ3yYV3XPeHA4SnJH3Z7C+lOKGyIVCszb+D9L3rQUx3Kcgn
	 4J47FEOdaVKVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43ADCCD193;
	Sat, 18 Oct 2025 09:59:50 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Sat, 18 Oct 2025 11:59:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251018-imx_gpio-v2-1-22e4fc090de6@hotmail.com>
References: <20251018-imx_gpio-v2-0-22e4fc090de6@hotmail.com>
In-Reply-To: <20251018-imx_gpio-v2-0-22e4fc090de6@hotmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760781589; l=1903;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=2RS2Lgt/bT52qDc9z9qZp64xftOMNQceTk9B57QI0ko=;
 b=lTKNqp7ogic62TIXw3+liKqD7kmvVJvuSXwpvyb1amR+zQG+1TjMVxDJRjO1TUjF/9/6HvPom
 1ES5EJjcDhLC2cjpcWgIFRps+X+RZ8ichty7kP1///nvQ1ie37hpxs8
X-Developer-Key: i=maud_spierings@hotmail.com; a=ed25519;
 pk=CeFKVnZvRfX2QjB1DpdiAe2N+MEjwLEB9Yhx/OAcxRc=
X-Endpoint-Received: by B4 Relay for maud_spierings@hotmail.com/20241110
 with auth_id=273
X-Original-From: Maud Spierings <maud_spierings@hotmail.com>
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
Reply-To: maud_spierings@hotmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-102.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] gpio: i.MX: make _get_value() able to read output
 pin state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maud_spierings@hotmail.com>

Make _get_value() read back the dr register instead of the psr register
when the direction is set to output. Now _get_value() can actually read
the state of an output gpio instead of being always low.

This aproach is also used by u-boot and Linux.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
---
 drivers/gpio/gpio-imx.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
index d9499c66cd..bb14c56399 100644
--- a/drivers/gpio/gpio-imx.c
+++ b/drivers/gpio/gpio-imx.c
@@ -89,24 +89,27 @@ static int imx_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int
 	return 0;
 }
 
-static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
+static int imx_get_direction(struct gpio_chip *chip, unsigned offset)
 {
 	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
 	void __iomem *base = imxgpio->base;
-	u32 val;
-
-	val = readl(base + imxgpio->regs->psr);
+	u32 val = readl(base + imxgpio->regs->gdir);
 
-	return val & (1 << gpio) ? 1 : 0;
+	return (val & (1 << offset)) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
 }
 
-static int imx_get_direction(struct gpio_chip *chip, unsigned offset)
+static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
 {
 	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
 	void __iomem *base = imxgpio->base;
-	u32 val = readl(base + imxgpio->regs->gdir);
+	u32 val;
 
-	return (val & (1 << offset)) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
+	if (imx_get_direction(chip, gpio) == GPIOF_DIR_IN)
+		val = readl(base + imxgpio->regs->psr);
+	else
+		val = readl(base + imxgpio->regs->dr);
+
+	return val & (1 << gpio) ? 1 : 0;
 }
 
 static struct gpio_ops imx_gpio_ops = {

-- 
2.51.1.dirty




