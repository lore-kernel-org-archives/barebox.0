Delivery-date: Wed, 29 May 2024 06:53:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCBK0-0015W8-1S
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 06:53:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCBJz-0000bX-Tq
	for lore@pengutronix.de; Wed, 29 May 2024 06:53:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+9VG1zQkTIqqgA3gQg/x8KFhvdweflDUYOEHPJWvpjw=; b=jBOfYa8hOJgpH5ywOuyMB7jU5l
	2FCaR/9zlrFgg1Xv3y0XkFirw/e86O924X4jULQX4sVZuC81wMbLaaSfpRJG/EXF6bgdlEJCAuHkQ
	xTu6RZfHkJg1RzNkUrNT+V5yOMNXRINo5sG1Rt1JN/F0WjqF+IcDwAq2NvSvX072jU2eWT1Xc0QoR
	ihyKY5TChi96qoS8kuGTnlVAM/rcW/qgzKhB2asYGFAcHycG5jIQY5Euixv7DeUAYUg5PaI2DnVwl
	SenAJvqqCez20bGnHLqH3ocalopybw4knSRfMJhWNQr3WY8M94QcPM3ofwOblKQunr3jztsQI/Wax
	o3zwcW7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCBJP-00000002oYM-262v;
	Wed, 29 May 2024 04:53:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCBJL-00000002oXH-3hQG
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 04:53:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sCBJJ-0000UX-3r; Wed, 29 May 2024 06:53:13 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sCBJI-003PrE-NW; Wed, 29 May 2024 06:53:12 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sCBJI-00DXX7-2C;
	Wed, 29 May 2024 06:53:12 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 May 2024 06:53:11 +0200
Message-Id: <20240529045311.3227151-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240529045311.3227151-1-o.rempel@pengutronix.de>
References: <20240529045311.3227151-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_215315_939933_EF28EE9B 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH v1 2/2] pinctrl: stm32: extract and set GPIO offset from devicetree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Update pinctrl-stm32 driver to read gpio_offset from the devicetree
and set it in gpiolib. This enables correct handling of GPIO banks
on stm32mp151aad3, which have non-zero starting indices for some
banks.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/pinctrl/pinctrl-stm32.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 63a01b6ec6..4a4b03ac0e 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -319,6 +319,7 @@ static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
 	bank->base = IOMEM(iores->start);
 
 	bank->chip.base = be32_to_cpu(gpio_ranges[PINCTRL_OFFSET]);
+	bank->chip.gpio_offset = be32_to_cpu(gpio_ranges[GPIOCTRL_OFFSET]);
 	bank->chip.ops  = &stm32_gpio_ops;
 	bank->chip.dev  = dev;
 
-- 
2.39.2



