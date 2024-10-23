Delivery-date: Wed, 23 Oct 2024 11:52:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3Y2i-007pbU-0O
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 11:52:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3Y2h-0008PQ-Fi
	for lore@pengutronix.de; Wed, 23 Oct 2024 11:52:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cvgGw/ibKEjmNCggXlT54QvtXYkjDCehjJKvGa0ieBY=; b=x9lPEwWm7nsNVexkNUHfwoh8+2
	z16V0PIbuvnE7pkjidXd2Xgoa1fKTH8mMrmkIEHm392rVuaZ1MC7dGLv39eVVCSr2wo+bDC7q2uqR
	RTvDdYsuxdvtNp4xu2iNolsyESfrMQHYaP8slnbAtdCfuHMlt2FQI3TgZB7dkX/smnpSc0dHwIHa3
	DwE9ZLti6ht/AHtkKxc+cUXvELxpPa5BTLI+aoFHgY+StS5G1kEnMjFBvzhMqQJuwhzvqQO8O1Pn6
	MiiE2sVddWBz98ao87UAtdAZjcAcmzhWKMH18am8GygpXpfkwlhOa93w/MAqqdZFGDIdkoR0jVW3X
	LvWoyInA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Y23-0000000Ds4p-1Lyc;
	Wed, 23 Oct 2024 09:51:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Xcq-0000000DmhX-2pml
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 09:25:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3Xco-0005tR-38; Wed, 23 Oct 2024 11:25:54 +0200
Message-ID: <bd3b8651-6108-41d6-8ca5-4c2968a55186@pengutronix.de>
Date: Wed, 23 Oct 2024 11:25:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Julian Vetter <jvetter@kalrayinc.com>, barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>,
 Jules Maselbas <jmaselbas@kalray.eu>
References: <20241023085517.1594242-1-jvetter@kalrayinc.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241023085517.1594242-1-jvetter@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_022556_750933_276763CC 
X-CRM114-Status: GOOD (  21.61  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kvx: watchdog: Add early watchdog init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Julian,

On 23.10.24 10:55, Julian Vetter wrote:
> From: Jules Maselbas <jmaselbas@kalray.eu>
> 
> Add support for a watchdog that starts as early as possible in barebox.
> So, if there is an issue the board is reset properly.
> > Signed-off-by: Julian Vetter <jvetter@kalrayinc.com>
> ---
>  drivers/watchdog/Kconfig   | 13 +++++++++++++
>  drivers/watchdog/kvx_wdt.c | 16 ++++++++++++++++
>  2 files changed, 29 insertions(+)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 762e37c9c2..b1924b5b05 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -89,6 +89,19 @@ config WATCHDOG_KVX
>  	help
>  	  Add support for the KVX core watchdog.
>  
> +if WATCHDOG_KVX

`if' and `depends on' are equivalent, so just drop this line alongside
the endif.

> +config WATCHDOG_KVX_EARLY_INIT
> +	bool "KVX Core watchdog early init"
> +	depends on WATCHDOG_KVX
> +	help
> +	  Activate the watchdog with early initcall
> +
> +config WATCHDOG_KVX_EARLY_TIMEOUT
> +	int "KVX Core watchdog early timeout in cycles"
> +	depends on WATCHDOG_KVX_EARLY_INIT
> +	default 100000000
> +endif
> +
>  config WATCHDOG_BCM2835
>  	bool "Watchdog for BCM283x SoCs"
>  	depends on ARCH_BCM283X || COMPILE_TEST
> diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
> index be6b08b71c..3e66aa38ba 100644
> --- a/drivers/watchdog/kvx_wdt.c
> +++ b/drivers/watchdog/kvx_wdt.c
> @@ -91,3 +91,19 @@ static struct driver kvx_wdt_driver = {
>  	.of_compatible	= DRV_OF_COMPAT(kvx_wdt_of_match),
>  };
>  device_platform_driver(kvx_wdt_driver);
> +
> +#ifdef CONFIG_WATCHDOG_KVX_EARLY_INIT

Move this down before the core_initcall

> +static int kvx_wdt_early_init(void)

Add __maybe_unused here.

That way compile test in CI tests this function even if option is disabled.

> +{
> +	/* Set Start watchdog counting */
> +	kvx_sfr_set(WDV, CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT);
> +	kvx_sfr_set(WDR, 0);
> +
> +	/* Start watchdog counting */
> +	kvx_sfr_set_field(TCR, WUI, 1);
> +	kvx_sfr_set_field(TCR, WCE, 1);
> +
> +	return 0;
> +}
> +core_initcall(kvx_wdt_early_init);
> +#endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


