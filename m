Delivery-date: Wed, 19 Mar 2025 11:56:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tur6F-001QPU-1M
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 11:56:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tur6E-0003i1-7r
	for lore@pengutronix.de; Wed, 19 Mar 2025 11:56:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tinr4JM3G7CWAzI911aJn5Sq7gfPlCGFKUNt5sUmopQ=; b=HIwiZ1kRkqb7o2/xxTO4i3SiQX
	dopWaOloqd7GlLZs4iPBJ9djjP+3ZtptZhEVUpP2Pk3SseL9H2/B3HhyL2K3xzj+eBdLztFgbJJKn
	OaGwRXG8IWfYF5a7HBWJIUbltJkXQJ4Nhp3LIuCHYIkXC+LUOAqsr2dM1abIbgdW8ouKfZaTZ9iu4
	Btb+ksOO6DK6ftYzYG+cR1y9CaAoxwagW6gPdUAJMhTpYdPuKlgWlmYRhugwb9NvaFEUP2A5sMyeV
	+vmGfnfA8HN999XQmEbANSUEkDcFBcJCGURCmQBMKfgmiijHqii3BPXfNhdJRSbatIa1Ojkr8yjiy
	aiTaUMow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tur5Z-00000008iPa-3Xxs;
	Wed, 19 Mar 2025 10:55:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tur5W-00000008iP9-3UZ4
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 10:55:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tur5V-0003bM-IP; Wed, 19 Mar 2025 11:55:53 +0100
Message-ID: <50522640-eedf-4c34-81ad-9238aa6d39b9@pengutronix.de>
Date: Wed, 19 Mar 2025 11:55:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250319102228.2401563-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250319102228.2401563-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_035554_966853_FEE80093 
X-CRM114-Status: GOOD (  24.91  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] serial: omap: make Linux console name configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/19/25 11:22, Sascha Hauer wrote:
> Depending on the configuration Linux on OMAP SoCs either needs ttyO or
> ttyS as console name. We used to pass ttyO, but c1c0d18973
> ("serial: omap: Use ttyS as Linux console name") recently changed this
> to ttyS which breaks setups that used to work earlier. Make the
> name configurable to allow for setups requiring ttyS and use ttyO
> as default to keep existing setups working.
> 
> Note that with ti,am4372-uart we used to pass ttyO as well, but this
> specific compatible is only supported by the 8250 based driver which
> needs ttyS as console name. 

This reads as if 8250_omap supports only ttyS, but it has logic to
support ttyO as well.

> With this patch we always pass ttyS
> regardless of CONFIG_DRIVER_SERIAL_NS16550_OMAP_TTYS.
> 
> All new SoCs like the K3 SoCs are only supported by the 8250 based
> driver which needs ttyS. On these SoCs CONFIG_DRIVER_SERIAL_NS16550_OMAP_TTYS
> will also have no effect.
> 
> Fixes: c1c0d18973 ("serial: omap: Use ttyS as Linux console name")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

See also the comment below.


> ---
>  drivers/serial/Kconfig          | 12 ++++++++++++
>  drivers/serial/serial_ns16550.c |  4 ++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index b7312ca796..6ac1d94526 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -77,6 +77,18 @@ config DRIVER_SERIAL_NS16550
>  	help
>  	  Enable this to get support for NS16550 based serial devices
>  
> +config DRIVER_SERIAL_NS16550_OMAP_TTYS

default ARCH_K3 ?

> +	depends on ARCH_OMAP
> +	bool "Use ttyS as console name for TI OMAP/AMxxx SoCs"
> +	help
> +	  Linux has two different drivers for the TI OMAP/AMxxx serial ports. One is
> +	  based on the generic 8250 driver and activated with CONFIG_SERIAL_8250_OMAP.
> +	  This one uses ttyS as console name. When CONFIG_SERIAL_8250_OMAP_TTYO_FIXUP
> +	  is enabled, this driver takes ttyO as console name as well, but issues a warning
> +	  during boot. The other driver is activated with CONFIG_SERIAL_OMAP and takes ttyO
> +	  as console name. Say yes here to pass ttyS as console, otherwise ttyO will be
> +	  used.
> +
>  config DRIVER_SERIAL_ATMEL
>  	depends on ARCH_AT91
>  	default y
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 56a1c6c6b9..6d4a4e8c7c 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -402,7 +402,11 @@ static struct ns16550_drvdata ns16550_drvdata = {
>  
>  static __maybe_unused struct ns16550_drvdata omap_drvdata = {
>  	.init_port = ns16550_omap_init_port,
> +#ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_TTYS
>  	.linux_console_name = "ttyS",
> +#else
> +	.linux_console_name = "ttyO",
> +#endif
>  	.linux_earlycon_name = "omap8250",
>  };
>  



