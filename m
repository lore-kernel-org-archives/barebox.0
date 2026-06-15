Delivery-date: Mon, 15 Jun 2026 09:33:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ1pX-0063fj-0X
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 09:33:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ1pW-0001a7-GW
	for lore@pengutronix.de; Mon, 15 Jun 2026 09:33:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=VJ0HlDJOXvjRwEIRj810WGJs0pZvOaFATYLb+3LY9zI=; b=rPfbKMT5thReb/oC3mPEpzXdbl
	BN/IKj3/7QVlBShDwqGgtf/RWbmH2zYIFll1xD/cUlDQgQBhkKC1RWMqhahFv+kKtSErbnj/HKMiJ
	ugA742AjKSRpHRCr/GW+338+52uFTd8uvzbdfabuKI++DghRDeGUkVcuirdxhgn3KBPO8IJrss0v3
	lLzJ661FPlW32OC0g3wy6wMbXcWMLtdhWHUo5AUjYOhNOc9k+mRs+GF5l0MQhyKcHTlCZkpF/p3NT
	7UmW2/oaRqX+cLKudUbZBFrVV3Kf4eI7aOGUklU8R+0aav+0kQehBBYKpdc1Wkzrqr9YZ/AfXcNBC
	xncHUhDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1oR-0000000DnQx-1a1u;
	Mon, 15 Jun 2026 07:32:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ1oO-0000000DnQV-1dXA
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 07:32:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ1oM-0001K4-Q0; Mon, 15 Jun 2026 09:32:46 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ1oM-002pCG-2P;
	Mon, 15 Jun 2026 09:32:46 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wZ1oM-00000006FX2-2kpg;
	Mon, 15 Jun 2026 09:32:46 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Oleksij Rempel" <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, "Oleksij Rempel" <o.rempel@pengutronix.de>
In-Reply-To: <20260612055930.635833-7-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 07:32:46 +0000
Message-Id: <E1wZ1oM-00000006FX2-2kpg@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_003248_432178_2D695E5C 
X-CRM114-Status: GOOD (  17.58  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 07/10] gpio: add Microchip SGPIO (serial GPIO) driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-06-12 07:59, Oleksij Rempel wrote:
> Add a driver for the Microchip Serial GPIO (SGPIO) controller used on
> the sparx5 / LAN969X switch SoCs to drive LED chains and per-port
> signals (SFP TX-disable, presence detect, etc.).
>=20
> Ported from Linux drivers/pinctrl/pinctrl-microchip-sgpio.c at tag
> v7.1-rc7.
>=20
> barebox doesn't carry the full Linux pinctrl subsystem, so the driver
> is placed under drivers/gpio/ and exposes only the GPIO/output subset;
> the pin-claim and IRQ paths from the Linux source are dropped.
>=20
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/gpio/Kconfig                |   8 +
>  drivers/gpio/Makefile               |   1 +
>  drivers/gpio/gpio-microchip-sgpio.c | 464 ++++++++++++++++++++++++++++
>  3 files changed, 473 insertions(+)
>  create mode 100644 drivers/gpio/gpio-microchip-sgpio.c
>=20

> +
> +static int microchip_sgpio_probe(struct device *dev)
> +{
> +	struct sgpio_priv *priv;
> +	struct reset_control *reset;
> +	struct clk *clk;
> +	struct resource *iores;
> +	void __iomem *base;
> +	int ret, port;
> +	u32 div_clock, val;
> +
> +	if (of_device_is_compatible(dev->of_node, "microchip,sparx5-sgpio-bank"=
))
> +		return microchip_sgpio_bank_probe(dev);

I think it would be cleaner just to register two drivers instead of
repurposing a single driver for something different.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


