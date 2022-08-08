Delivery-date: Mon, 08 Aug 2022 15:10:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2WF-00GCoq-D6
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:10:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2WF-000821-8R
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:10:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lmXoJ82PyLM2B5njhMkK2uZKagNnuLFrqhsR1O9rXz8=; b=PKk+aTYdU/JtIDZwKwqJOvI8QM
	FBfi3IPwWysP8k+oYUHU9cE6u/NX5IJGl29Zad25jL6GN8GucWjwg6Kr4CkNpuNxgJ0rkw1L4vDKh
	yVUNtwY9JnO/H4R+xAKwvX0L4yoMgWD1ike364H2ebF5tOlFZAzpZAFUkcJ9BWmsXf9Sr53IvAgbk
	dq0j3US2jmmb2w8/JN+T6UDQtfqPCycLH8SdaDH784PTpOxymUQtgSTtogNgjUdF5dYwyUuHfz/Qs
	LEG2EVAabrO/LOkfEntjeFjgasT3qkZ6iEY72x7rDyo3qgM3/MXv/7AoPwsM2HQqHrrdyOxGaUDMO
	jnDY1plw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2Ur-00DxC5-Cc; Mon, 08 Aug 2022 13:08:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2Um-00DxA2-0w
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:08:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2Uk-0007p2-OE; Mon, 08 Aug 2022 15:08:34 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2Uk-00033l-EL; Mon, 08 Aug 2022 15:08:34 +0200
Date: Mon, 8 Aug 2022 15:08:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org
Message-ID: <20220808130834.GK31528@pengutronix.de>
References: <20220803093110.20915-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220803093110.20915-1-yegorslists@googlemail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_060836_104587_E7AB8A84 
X-CRM114-Status: GOOD (  21.48  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: baltos: use GPIO names for DIP switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 03, 2022 at 11:31:09AM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Switch to gpio_find_by_name() method to get the required input lines.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  arch/arm/boards/vscom-baltos/board.c   |  25 ++++--
>  arch/arm/dts/am335x-baltos-minimal.dts | 120 +++++++++++++++++++++++++
>  2 files changed, 137 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
> index 9229df09d4..30553d1838 100644
> --- a/arch/arm/boards/vscom-baltos/board.c
> +++ b/arch/arm/boards/vscom-baltos/board.c
> @@ -49,6 +49,7 @@ static uint8_t get_dip_switch(uint16_t id, uint32_t rev)
>  {
>  	uint16_t maj, min;
>  	uint8_t dip = 0;
> +	int inputs[4];
>  
>  	maj = rev >> 16;
>  	min = rev & 0xffff;
> @@ -59,10 +60,14 @@ static uint8_t get_dip_switch(uint16_t id, uint32_t rev)
>  	switch(id) {
>  		case 214:
>  		case 215:
> -			dip = !gpio_get_value(44);
> -			dip += !gpio_get_value(45) << 1;
> -			dip += !gpio_get_value(46) << 2;
> -			dip += !gpio_get_value(47) << 3;
> +			inputs[0] = gpio_find_by_name("SW2_0_alt");
> +			inputs[1] = gpio_find_by_name("SW2_1_alt");
> +			inputs[2] = gpio_find_by_name("SW2_2_alt");
> +			inputs[3] = gpio_find_by_name("SW2_3_alt");
> +			dip = !gpio_get_value(inputs[0]);
> +			dip += !gpio_get_value(inputs[1]) << 1;
> +			dip += !gpio_get_value(inputs[2]) << 2;
> +			dip += !gpio_get_value(inputs[3]) << 3;
>  			break;
>  		case 212:
>  		case 221:
> @@ -72,10 +77,14 @@ static uint8_t get_dip_switch(uint16_t id, uint32_t rev)
>  		case 226:
>  		case 227:
>  		case 230:
> -			dip = !gpio_get_value(82);
> -			dip += !gpio_get_value(83) << 1;
> -			dip += !gpio_get_value(105) << 2;
> -			dip += !gpio_get_value(106) << 3;
> +			inputs[0] = gpio_find_by_name("SW2_0");
> +			inputs[1] = gpio_find_by_name("SW2_1");
> +			inputs[2] = gpio_find_by_name("SW2_2");
> +			inputs[3] = gpio_find_by_name("SW2_3");
> +			dip = !gpio_get_value(inputs[0]);
> +			dip += !gpio_get_value(inputs[1]) << 1;
> +			dip += !gpio_get_value(inputs[2]) << 2;
> +			dip += !gpio_get_value(inputs[3]) << 3;
>  			break;
>  	}
>  
> diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
> index 1544e2cc29..e9d57696d1 100644
> --- a/arch/arm/dts/am335x-baltos-minimal.dts
> +++ b/arch/arm/dts/am335x-baltos-minimal.dts
> @@ -45,6 +45,18 @@
>  };
>  
>  &am33xx_pinmux {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&dip_switch_pins>;
> +
> +	dip_switch_pins: pinmux_dip_switch_pins {
> +		pinctrl-single,pins = <
> +			AM33XX_PADCONF(AM335X_PIN_GPMC_AD12, PIN_INPUT_PULLUP, MUX_MODE7)
> +			AM33XX_PADCONF(AM335X_PIN_GPMC_AD13, PIN_INPUT_PULLUP, MUX_MODE7)
> +			AM33XX_PADCONF(AM335X_PIN_GPMC_AD14, PIN_INPUT_PULLUP, MUX_MODE7)
> +			AM33XX_PADCONF(AM335X_PIN_GPMC_AD15, PIN_INPUT_PULLUP, MUX_MODE7)
> +		>;
> +	};
> +
>  	mmc1_pins: pinmux_mmc1_pins {
>  		pinctrl-single,pins = <
>  			0xf0 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_dat3.mmc0_dat3 */
> @@ -449,3 +461,111 @@
>  &gpio0 {
>  	ti,no-reset-on-init;
>  };
> +
> +&gpio1 {
> +	gpio-line-names =
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"SW2_0_alt",
> +		"SW2_1_alt",
> +		"SW2_2_alt",
> +		"SW2_3_alt",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC";
> +};
> +
> +&gpio2 {
> +	gpio-line-names =
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"SW2_0",
> +		"SW2_1",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC";
> +};
> +
> +&gpio3 {
> +	gpio-line-names =
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"SW2_2",
> +		"SW2_3",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC",
> +		"NC";
> +};
> -- 
> 2.17.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


