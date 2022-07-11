Delivery-date: Mon, 11 Jul 2022 12:48:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAqy6-002Rzk-3E
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 12:48:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAqy3-0005w4-VL
	for lore@pengutronix.de; Mon, 11 Jul 2022 12:48:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hmOZd2J7Nphzkx6uGRQyJBo/1wyk43WCGcCz41FX+Wc=; b=C7OC2Hx2WAMIL4sTTTgsMggY6K
	ErN35C7cPRbL8LLq/D9DP0MPnh4UN//Ics0PMCkKq22EKcvPeQlB0ukxiBFExCDhQRbeoZGKApVbC
	tbrh2P/yLBluP60nNIGb6W0+fNM39j1tp9KrrVoq2YCbL7YdXMwvv0iEP2DsyTXd/E1laXEzZW7Lo
	+DEMpRD3Cgrc/dNIu7I7xezAudzZi3iVCSlXyGbrxeEaAUidgkicfprkPXkotGRw5xsYGFXyV0dhw
	+V4RRZbBkKm1ykdqyYADmM2VR3mJtvm15cdqsJzKId5SwRj9N4Y7tTVTPQt6cfk2oqnamoZ9GDeAE
	mVJpVmtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAqwl-000oHE-Qr; Mon, 11 Jul 2022 10:47:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAqw3-000nl1-Ve
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 10:46:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAqw2-0005Ye-Ja; Mon, 11 Jul 2022 12:46:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAqw2-0008Or-13; Mon, 11 Jul 2022 12:46:38 +0200
Date: Mon, 11 Jul 2022 12:46:38 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org
Message-ID: <20220711104638.GE29790@pengutronix.de>
References: <20220706080639.13588-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220706080639.13588-1-yegorslists@googlemail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_034640_067009_7891919B 
X-CRM114-Status: GOOD (  20.07  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: baltos: use GPIO names for TCA6416 chip
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 06, 2022 at 10:06:39AM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Switch to gpio_find_by_name() method to get the required GPIO lines.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  arch/arm/boards/vscom-baltos/board.c   | 13 +++++++++----
>  arch/arm/dts/am335x-baltos-minimal.dts |  4 ++++
>  2 files changed, 13 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
> index 83c7dbc8b0..9229df09d4 100644
> --- a/arch/arm/boards/vscom-baltos/board.c
> +++ b/arch/arm/boards/vscom-baltos/board.c
> @@ -140,10 +140,15 @@ static int baltos_read_eeprom(void)
>  
>  	/* configure output signals of the external GPIO controller */
>  	if (hw_param.SystemId == 210 || hw_param.SystemId == 211) {
> -		gpio_direction_output(132, 0);
> -		gpio_direction_output(133, 0);
> -		gpio_direction_output(134, 0);
> -		gpio_direction_output(135, 0);
> +		int outs[4];
> +		outs[0] = gpio_find_by_name("GP_OUT0");
> +		outs[1] = gpio_find_by_name("GP_OUT1");
> +		outs[2] = gpio_find_by_name("GP_OUT2");
> +		outs[3] = gpio_find_by_name("GP_OUT3");
> +		gpio_direction_output(outs[0], 0);
> +		gpio_direction_output(outs[1], 0);
> +		gpio_direction_output(outs[2], 0);
> +		gpio_direction_output(outs[3], 0);
>  	}
>  
>  	dip = get_dip_switch(hw_param.SystemId, hw_param.HwRev);
> diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
> index e55a2d7cbb..1544e2cc29 100644
> --- a/arch/arm/dts/am335x-baltos-minimal.dts
> +++ b/arch/arm/dts/am335x-baltos-minimal.dts
> @@ -285,6 +285,10 @@
>  		interrupts = <20 GPIO_ACTIVE_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&tca6416_pins>;
> +		gpio-line-names = "GP_IN0", "GP_IN1", "GP_IN2", "GP_IN3",
> +				  "GP_OUT0", "GP_OUT1", "GP_OUT2", "GP_OUT3",
> +				  "ModeA0", "ModeA1", "ModeA2", "ModeA3",
> +				  "ModeB0", "ModeB1", "ModeB2", "ModeB3";
>  	};
>  };
>  
> -- 
> 2.17.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


