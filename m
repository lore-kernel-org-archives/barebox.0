Delivery-date: Thu, 12 Jan 2023 15:54:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFyyT-009rmx-WD
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 15:54:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFyyR-0002qg-Um
	for lore@pengutronix.de; Thu, 12 Jan 2023 15:54:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tVXJu2qGiT+Xc4f/WN6wSuyelrCcU51lSDS1tK2+Eyg=; b=KU7x6KEDWsVVVmKGQYsQ5hThGC
	ejQ7YC/q8XxXEe+48RXva/bkqD8ZpqVGjQ7OYi9lIaRBz/JPBewuRarAdwoN9nWxx0Qnp/O6gfNK6
	w9QWttUbBcuIfT2FdRxLnoJKqnPLCGeeTPz+QEaDu6XQolFt1RZlW40vzdkQ1PkLowVlEV5ZtkGkc
	seG3LHgiIttQZb64x4Bb0eCqs7t8kP1esOW0rSpwgAGWVwP5e6d0FWXFFuaGYqNZPBqO1YWkpo1Z3
	zTRi2sSllc0E+ouMg9CsiKh+7vHc1Rlx5rVKRFWs2ENVQC6iDMdeMXCGmRJAR+OqMQTjqLab2lCNN
	644kU1Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFyxB-00FTmm-OH; Thu, 12 Jan 2023 14:53:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFyx6-00FTlo-Tw
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 14:53:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFyx5-0002jE-BJ; Thu, 12 Jan 2023 15:53:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFyx4-0003H1-Sk; Thu, 12 Jan 2023 15:53:10 +0100
Date: Thu, 12 Jan 2023 15:53:10 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20230112145310.GV24755@pengutronix.de>
References: <20230111172219.1640151-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111172219.1640151-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_065312_978432_0244F1C1 
X-CRM114-Status: GOOD (  22.42  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/2] ARM: at91: sama5d4: enable for DT use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 06:22:18PM +0100, Ahmad Fatoum wrote:
> The sama5d4[devices].c files are for non-OF instantiation of platform
> devices. We don't need anything out of these two files, so don't build
> them when compiling for CONFIG_AT91_MULTI_BOARDS. We use that instead of
> CONFIG_OFDEVICE, as sama5d4_xplained_defconfig and sama5d4ek_defconfig
> enable CONFIG_OFDEVICE, but probe no device at all from DT.
> 
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - use CONFIG_AT91_MULTI_BOARDS instead of CONFIG_OFDEVICE to fix
>     sama5d4 non-DT defconfigs build failure
> 
> Sascha, please replace commit with same name in next with this.
> ---
>  arch/arm/mach-at91/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index 390d49d03dee..f70e67bddebf 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -27,9 +27,10 @@ obj-$(CONFIG_SOC_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_device
>  obj-$(CONFIG_SOC_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
>  obj-$(CONFIG_SOC_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o
>  obj-$(CONFIG_SOC_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
> -ifeq ($(CONFIG_OFDEVICE),)
> +ifeq ($(CONFIG_AT91_MULTI_BOARDS),)
>  obj-$(CONFIG_SOC_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
>  obj-$(CONFIG_SOC_SAMA5D3)	+= sama5d3.o sama5d3_devices.o
> +obj-$(CONFIG_SOC_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
>  endif
>  lwl-$(CONFIG_SOC_AT91SAM9263)	+= sam9263_ll.o
>  lwl-$(CONFIG_SOC_SAMA5D2)	+= sama5d2_ll.o
> @@ -39,4 +40,3 @@ obj-$(CONFIG_SOC_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
>  obj-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
>  obj-$(CONFIG_SOC_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
>  obj-$(CONFIG_SOC_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
> -obj-$(CONFIG_SOC_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


