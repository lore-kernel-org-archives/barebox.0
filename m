Delivery-date: Mon, 24 Aug 2026 09:00:07 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyOf8-006c7S-2m
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 09:00:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 69CFB200062
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 09:00:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=s3p3QMYz;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fOfwhDp/+8wLy4pUEpFBt64myAt/GYzD/QrABqT7mbk=; b=s3p3QMYzURatR8PetOB6hBn2uU
	M42vw9toqDl0/rR/C1vB1Ax8e1TWFqJ/0jrA+DC2CxAeSKTgR7bYKixU3ZM82ErFdXAz7S69Ce7Bp
	um1gCSNJ2Xpo6TA+m4sbRbiv+7YyxEyqQZb0ijhWkPWOltD758eMyeGeN7iw685lsDflVjpEAqYsb
	nCq+J7mt+EVYi0+1YDrCAQdEqOoTlJu9stLV7Cclr75VJq0CnPXwGj24v7fB8/KA/B43C7Gfk8/Jl
	MMypEkPvRRTLM4s4obtrsmsjcClaMk7HWvolE1GCYsnV+cUHkOwjzy6os4mubKq8quWrk5RT0syq6
	vkIM5Pcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOdg-0000000G1eo-1Bnx;
	Mon, 24 Aug 2026 06:58:36 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOdd-0000000G1e5-2SCS
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 06:58:35 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C48612010D6;
	Mon, 24 Aug 2026 08:58:29 +0200 (CEST)
Message-ID: <d5f7cae9-8551-4e30-beb2-4e1117ac9ccf@pengutronix.de>
Date: Mon, 24 Aug 2026 08:58:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] bcm283x: debug_ll: add RaspberryPi 4 PL011 UART support
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20260823221329.513717-1-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260823221329.513717-1-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_235833_811650_66AB08E6 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 8/24/26 12:13 AM, chalianis1@gmail.com wrote: > From:
   Chali Anis <chalianis1@gmail.com> > > Add a DEBUG_RPI4_UART choice for low-level
    debugging on RaspberryPi 4 > and CM4 boards via the PL011 UART [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: u7cnikiuw8e4q98krgs86i3s7r4cgw7s
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 69CFB200062



On 8/24/26 12:13 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> Add a DEBUG_RPI4_UART choice for low-level debugging on RaspberryPi 4
> and CM4 boards via the PL011 UART (uart0), for setups where the
> disable-bt overlay routes it onto the GPIO header pins instead of the
> mini UART. Mirrors the existing RPi1/RPi2-3 PL011 debug_ll support:
> firmware configures the UART, so debug_ll_init() is a no-op.
> 
> Assisted-by: Claude Sonnet 5
> Signed-off-by: Chali Anis <chalianis1@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/Kconfig.debug_ll         | 10 ++++++++++
>  include/mach/bcm283x/debug_ll.h | 10 ++++++++++
>  include/mach/bcm283x/platform.h |  1 +
>  3 files changed, 21 insertions(+)
> 
> diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
> index 8445b4be0872..5a28dc4a61e7 100644
> --- a/common/Kconfig.debug_ll
> +++ b/common/Kconfig.debug_ll
> @@ -275,6 +275,16 @@ config DEBUG_RPI2_3_UART
>  	  Say Y here if you want low-level debugging support on
>  	  RaspberryPi 2 and 3 boards.
>  
> +config DEBUG_RPI4_UART
> +	bool "RaspberryPi 4 PL011 UART"
> +	depends on ARCH_BCM283X
> +	select DEBUG_BCM283X_UART
> +	help
> +	  Say Y here if you want low-level debugging support on
> +	  RaspberryPi 4 / CM4 boards using the PL011 UART (uart0),
> +	  e.g. when the disable-bt overlay routes it onto the GPIO
> +	  header pins instead of the mini UART.
> +
>  config DEBUG_RPI3_MINI_UART
>  	bool "RaspberryPi 3 mini UART"
>  	depends on ARCH_BCM283X
> diff --git a/include/mach/bcm283x/debug_ll.h b/include/mach/bcm283x/debug_ll.h
> index a6a3b8f08856..3f2d5ddc9857 100644
> --- a/include/mach/bcm283x/debug_ll.h
> +++ b/include/mach/bcm283x/debug_ll.h
> @@ -40,6 +40,16 @@ static inline void debug_ll_init(void)
>  #define DEBUG_LL_UART_ADDR BCM2836_PL011_BASE
>  #include <debug_ll/pl011.h>
>  
> +#elif defined CONFIG_DEBUG_RPI4_UART
> +
> +static inline void debug_ll_init(void)
> +{
> +	/* Configured by ROM */
> +}
> +
> +#define DEBUG_LL_UART_ADDR BCM2711_PL011_BASE
> +#include <debug_ll/pl011.h>
> +
>  #elif defined CONFIG_DEBUG_RPI3_MINI_UART
>  
>  static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
> diff --git a/include/mach/bcm283x/platform.h b/include/mach/bcm283x/platform.h
> index b957ac8de35e..54d8b38bd8ed 100644
> --- a/include/mach/bcm283x/platform.h
> +++ b/include/mach/bcm283x/platform.h
> @@ -32,6 +32,7 @@
>  
>  #define BCM2835_PL011_BASE 0x20201000
>  #define BCM2836_PL011_BASE 0x3f201000UL
> +#define BCM2711_PL011_BASE 0xfe201000UL
>  #define BCM2835_MINIUART_BASE 0x20215040
>  #define BCM2836_MINIUART_BASE 0x3f215040UL
>  #define BCM2711_MINIUART_BASE 0xfe215040UL
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



