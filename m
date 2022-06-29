Delivery-date: Wed, 29 Jun 2022 08:52:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RYP-000wjg-Ex
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:52:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RYR-00005X-8h
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:52:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P8QSRbMWMHiwCEktFlHqKTg8mAnNLOCdTd27XMUxWN4=; b=c9oGQytRmNRyaEDhDtPr60LPhd
	pulO0cZXOun0NE+xtyedJqDhvR6EaxvFN9I4Uaz7ukhc05aDQdU4TfXPaXDX7HFIy+eTSoCKQ+Dbd
	0xTzLNrdBnwdkMZFOp72zi2CWZ5WLs4JSDYdkgihk3g6aSAjsa097VA2+N9jMr1bCy2ahN2pa9U1F
	XXUAUofznRKUB7wgoFVDEe0R6qW6SVuCMmr4tEigr5RQy+Wx41yyWDA12gwaZbplzuYr3ZoGzF5P3
	Z8hBaR+slczTmkaeETuaezU10YZ98GsXIkL0b9HHr98RdhZAJn/j+jmiVSOoCMdMIEUT84sPL83hf
	EXSk3lwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RXD-009tnJ-TU; Wed, 29 Jun 2022 06:50:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RX7-009tkb-4L
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:50:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6RX5-00080u-Uo; Wed, 29 Jun 2022 08:50:40 +0200
Message-ID: <dfceb090-1658-d38b-d589-86cafbb36119@pengutronix.de>
Date: Wed, 29 Jun 2022 08:50:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
References: <20220628203849.2785611-1-sam@ravnborg.org>
 <20220628203849.2785611-5-sam@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220628203849.2785611-5-sam@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_235041_281225_9127F040 
X-CRM114-Status: GOOD (  21.63  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 04/11] ARM: at91: Provide at91_mux_pio_pin for use in
 lowlevel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.06.22 22:38, Sam Ravnborg wrote:
> Lowlevel init code may wish the ability to configure pins, e.g. for low
> level debug UART. The pinctrl-at91 driver already exports an
> at91_mux_pin function, but that one is only usable after driver
> probe. Instead, provide an at91_mux_pio_pin function, which can be used
> at all times.
> 
> This is similar to the already existing at91_mux_pio3_pin function
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-at91/include/mach/gpio.h | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
> index ddd6971e3..7f84f41e5 100644
> --- a/arch/arm/mach-at91/include/mach/gpio.h
> +++ b/arch/arm/mach-at91/include/mach/gpio.h
> @@ -151,6 +151,31 @@ static inline int at91_mux_gpio_get(void __iomem *pio, unsigned mask)
>  	return (pdsr & mask) != 0;
>  }
>  
> +static inline void at91_mux_pio_pin(void __iomem *pio, unsigned mask,
> +				    enum at91_mux mux, int gpio_state)
> +{
> +	at91_mux_disable_interrupt(pio, mask);
> +
> +	switch(mux) {
> +	case AT91_MUX_GPIO:
> +		at91_mux_gpio_enable(pio, mask);
> +		break;
> +	case AT91_MUX_PERIPH_A:
> +		at91_mux_set_A_periph(pio, mask);
> +		break;
> +	case AT91_MUX_PERIPH_B:
> +		at91_mux_set_B_periph(pio, mask);
> +		break;
> +	default:
> +		/* ignore everything else */
> +		break;
> +	}
> +	if (mux != AT91_MUX_GPIO)
> +		at91_mux_gpio_disable(pio, mask);
> +
> +	at91_mux_set_pullup(pio, mask, gpio_state & GPIO_PULL_UP);
> +}
> +
>  static inline void at91_mux_pio3_pin(void __iomem *pio, unsigned mask,
>  				     enum at91_mux mux, int gpio_state)
>  {


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


