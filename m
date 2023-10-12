Delivery-date: Thu, 12 Oct 2023 16:27:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqweS-005qnh-NB
	for lore@lore.pengutronix.de; Thu, 12 Oct 2023 16:27:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqweO-000452-MW
	for lore@pengutronix.de; Thu, 12 Oct 2023 16:26:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qMOddSxD3/tUY+AApWjen9cbWVAfQrcadyRqvjwZR/M=; b=fBdJpJt4CRMvibDy3WkmpQFtoC
	spoDTW2RHRNzxE4nfoteTY0gvBuLe4cH0rFantwSMOkXDbasDytzE+CygZn5WZPpMhWy5AfsuR4bt
	VE0Or3VGyZekHXdPOQr+sckvQjBzxF42cKzUXFNgAUl3gnHsKC44Fa2Nl9TnEevCkB3LoZm/OdQIT
	uOMuWC9qwrnZgOg1Homop2ASDBOHfO9SGT0Tkiktcno2gXknzN0HBVjizUZ6rWCoNur8aBaOOhmtn
	nf5Vy1y9FrZzzxd54dKjdY2VY6xg7rQmNcJQfEHqUQbuo6SlJ5ZucrVgQKg+P0yTq02RJc2pxD7Yz
	zuBCMb4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqwd9-001B0l-2b;
	Thu, 12 Oct 2023 14:25:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqwd5-001B0M-0s
	for barebox@lists.infradead.org;
	Thu, 12 Oct 2023 14:25:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqwd3-0003sz-PV; Thu, 12 Oct 2023 16:25:33 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qqwd3-001AoI-DI; Thu, 12 Oct 2023 16:25:33 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqwd3-00E80x-B4; Thu, 12 Oct 2023 16:25:33 +0200
Date: Thu, 12 Oct 2023 16:25:33 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231012142533.GD3359458@pengutronix.de>
References: <20231011053551.2146148-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011053551.2146148-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_072535_312735_E2CCE945 
X-CRM114-Status: GOOD (  17.84  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM64: configs: enable SPI drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 11, 2023 at 07:35:50AM +0200, Marco Felsch wrote:
> Enable NXP (Q)SPI drivers since NOR flashes are often used as:
>  - bootsource and/or
>  - storage medium e.g. for barebox-state
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/configs/multi_v8_defconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
> index b18498c0a13f..48fc96a79447 100644
> --- a/arch/arm/configs/multi_v8_defconfig
> +++ b/arch/arm/configs/multi_v8_defconfig
> @@ -159,7 +159,8 @@ CONFIG_NET_USB_ASIX=y
>  CONFIG_USB_NET_AX88179_178A=y
>  CONFIG_NET_USB_SMSC95XX=y
>  CONFIG_NET_USB_RTL8152=y
> -# CONFIG_SPI is not set
> +CONFIG_DRIVER_SPI_IMX=y
> +CONFIG_SPI_NXP_FLEXSPI=y
>  CONFIG_I2C=y
>  CONFIG_I2C_GPIO=y
>  CONFIG_I2C_IMX=y
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


