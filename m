Delivery-date: Wed, 04 Dec 2024 10:23:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIlbs-003rDD-32
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 10:23:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIlbs-0000Mz-TO
	for lore@pengutronix.de; Wed, 04 Dec 2024 10:23:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7oOvxr0CFgMzS+VGIsglB32lMtC7KDLVgjNW2PXNnJY=; b=X5830zifnhBRX013JL5RMosbBO
	4HuFZT9MY5BqlVO1JTDPIdrDffng8DfzBN37TaTXGyv8vixCo1zXsjkPpMVu6QDjcrrtfX0y70ks/
	x1MZiud/925jUuwboj9Srrl+geZH0dnO60TTtpApFVe54wyOBlDwpCtCu7HzwSCMgd0R1W65O04UJ
	HvFrDHC70nTHbFvaqRZYs+LIwBmGuiGrFx9aIFLsHbuiyRkG/dxCllG/JPCBIghxZhGlsgpa0cHAw
	V6qlYYSf+Ua6+a2c0Z/kYbcJ+9GFsdoVar9ROcygoTaowR7x2259JJfnyTX6lD5nURD74GbA8/JQl
	4MKAsZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIlbQ-0000000C1cQ-1nMy;
	Wed, 04 Dec 2024 09:23:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIlbM-0000000C1ZX-3G0r
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 09:23:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIlbJ-0000Du-0x; Wed, 04 Dec 2024 10:23:17 +0100
Message-ID: <cf57bfd2-655e-4d71-8763-a7346c773b6e@pengutronix.de>
Date: Wed, 4 Dec 2024 10:23:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20241204091418.438446-1-eagle.alexander923@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241204091418.438446-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_012320_820140_EC85A6D0 
X-CRM114-Status: GOOD (  14.93  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: Compile aic.c for SAMA5D2 only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 04.12.24 10:14, Alexander Shiyan wrote:
> at91_aic_redir() is only used for sama5d2 based SOCs.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-at91/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index 7d7f27749f..ccbe3c425c 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -1,6 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
> -obj-y += setup.o aic.o
> +obj-y += setup.o
>  lwl-y += at91_pmc_ll.o ddramc_ll.o at91sam9_sdramc_ll.o matrix.o
>  lwl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
>  
> @@ -33,7 +33,7 @@ obj-$(CONFIG_SOC_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
>  endif
>  lwl-$(CONFIG_SOC_AT91SAM9263)	+= sam9263_ll.o
>  lwl-$(CONFIG_SOC_SAMA5D2)	+= sama5d2_ll.o
> -obj-$(CONFIG_SOC_SAMA5D2)	+= sama5d2.o
> +obj-$(CONFIG_SOC_SAMA5D2)	+= aic.o sama5d2.o
>  lwl-$(CONFIG_SOC_SAMA5D3)	+= sama5d3_ll.o
>  obj-$(CONFIG_SOC_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
>  obj-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


