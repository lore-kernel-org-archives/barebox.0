Delivery-date: Wed, 15 Oct 2025 20:04:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v95r5-008BFa-2E
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 20:04:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v95r5-0003Oh-13
	for lore@pengutronix.de; Wed, 15 Oct 2025 20:04:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gpHiFOqRgSJd1+Jl/ldS7PNgDY6Q0lWjOy81xBMi5zc=; b=i7y9wFEFpP2iZr9+cfvk9J2549
	IUQTIkpop4E/Y2oqr2kc+JmaKnMwSrQ+P37q27iTx0VotTXR1poHm5ODBgGLKHuyV3J4RT5I8jv+S
	HqzVKeqJNG+v9azz1IZ1vyau3bUbnKD8HhBplq/PlfbEw3Qli2boZEHgOSELTOXSRRC6slNgOGZiS
	eklDjJiPHpfu6iJWlxAV+DmlE0RJDo0nGUSBwyDjOiyg++5mGT6dnFFXUGDn+qMRRL/HdOh4c3ObQ
	HYjC1d26KCf91/w5KcjLjMKcjevf4S4ck4jtBDYs48iiCzbIm13YZYSjFIrm+cRXF3iiEEyb4mbtr
	HX/b7u/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v95qX-00000002V0y-0ASN;
	Wed, 15 Oct 2025 18:03:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v95qV-00000002V00-2fM1
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 18:03:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 156FF62700;
	Wed, 15 Oct 2025 18:03:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D717DC4CEFB;
	Wed, 15 Oct 2025 18:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760551410;
	bh=sEwJ3TOPS//SHSb8obL305PzKiDI+xnygzF1N8qFUDY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=BjJL1a3kpDmqfpLy6TdUZw/VDscl8504ESN/C++2zSX05iVMP/MeMt0n5RefPgZTu
	 emJgMa9rIk5I+Zxkl76TmzmgBaeMv1fmkbv4FMlOgjBHNKHXyH20OI7aIMdyKRFoMi
	 Bz5uIEHDc8lwpiMJQbtoo7n5VEjYP+qVue0nyIMDZiBQMItkt208XkNnSdh48DJxg3
	 4jlcuIV8SFSrw8anC1WaTpNP+SvCkVTk56I7v/eCn/64JpqX/9mfAGGk+Ms+2vW8px
	 w7foxUvWUZ9mfr7M1gsFWzWvNU3s11SNua8r2OfB4RrumL8Kxp2l64LbAtKnwopUT+
	 DxjTY6mAPlVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C89E5CCD199;
	Wed, 15 Oct 2025 18:03:30 +0000 (UTC)
From: Maud Spierings via B4 Relay <devnull+maud_spierings.hotmail.com@kernel.org>
Date: Wed, 15 Oct 2025 20:03:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-imx_gpio-v1-1-e57925f906bb@hotmail.com>
References: <20251015-imx_gpio-v1-0-e57925f906bb@hotmail.com>
In-Reply-To: <20251015-imx_gpio-v1-0-e57925f906bb@hotmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Maud Spierings <maud_spierings@hotmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760551410; l=1859;
 i=maud_spierings@hotmail.com; s=20241110; h=from:subject:message-id;
 bh=vHG+T7ogHMzxgW2g14+AoBAOsNOAEGw4hWLbHaKKG9E=;
 b=Dxh71KgmyI4sYbilLElVX6/jr19He7APi7Z/tiJYmom3pU+vIGJMfHhy1WhMnZoPcPBwrPDsY
 V7EliWA5+MQAqnzB5h0+sYeEBV1LFfM5EpBl54VALetYursSNZCuO8W
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
Subject: [PATCH 1/2] gpio: i.MX: make _get_value() able to read output pin
 state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maud_spierings@hotmail.com>

Make _get_value() read back the dr register instead of the psr register
when the direction is set to output. Now _get_value() can actually read
the state of an output gpio instead of being always low.

Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>

---
inspired by similar logic being used in u-boot and Linux
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
2.51.0




