Delivery-date: Wed, 29 Jun 2022 08:54:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RaV-000wot-6t
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:54:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RaX-0000Qr-G4
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:54:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TIaPpH53jqDsLANRFE045geEOpLWi6MJKpAF64fmoa0=; b=HBl/hx1yrK/LZYFHcAAjGeyzNP
	7L21mw0ktscYp0BaVOvEWUDyhXNlyFgkt38j5Wlf0vwdhaQrWmyFtI5mYYqIu6s6PTiOjHuMEmtBr
	SFj7Y5Q+q+gmrEt854FazApffjkK708s6QyMbRi6uVj46YUA7KSWkJ4O3DAljkCfB31VtxbptWPDV
	sFdGTCk7FGG1WxQNfjAAL/jh4Ivb13u3Yv5hX0gmwxPArmRO4RSq0rR1E2RsG+sf8vLBW9ROYLDNb
	HbrDvQ6KJ8Gyt77jNGGoLyk/ALHST8FPMhPScNRg3ChZpCq15B8uaEf9ApVAwrMTdUZ4jfk31qZeB
	A1+seODQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RZM-009v3o-EK; Wed, 29 Jun 2022 06:53:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RZH-009v1W-30
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:52:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6RZE-0000KZ-2W; Wed, 29 Jun 2022 08:52:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6RZD-0000f2-Pn; Wed, 29 Jun 2022 08:52:51 +0200
Date: Wed, 29 Jun 2022 08:52:51 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <afa@pengutronix.de>
Message-ID: <20220629065251.GJ19026@pengutronix.de>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
 <20220627102500.18427-5-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220627102500.18427-5-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_235255_146800_A6ACCA8B 
X-CRM114-Status: GOOD (  22.24  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/8] usb: gadget: Fix Kconfig dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 27, 2022 at 01:24:56PM +0300, Alexander Shiyan wrote:
> WARNING: unmet direct dependencies detected for SYSTEM_PARTITIONS
> Depends on [n]: GLOBALVAR [=n]
> Selected by [y]:
> - USB_GADGET_AUTOSTART [=y] && USB_GADGET [=y] && USB_GADGET_MASS_STORAGE [=y]
> 
> WARNING: unmet direct dependencies detected for USB_GADGET_DRIVER_ARC_PBL
> Depends on [n]: USB_GADGET [=n]
> Selected by [y]:
> - MACH_PROTONIC_IMX8M [=y] && ARCH_IMX [=y] && IMX_MULTI_BOARDS [=y]
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/usb/gadget/Kconfig | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> index 10c713e833..f2ca3695a2 100644
> --- a/drivers/usb/gadget/Kconfig
> +++ b/drivers/usb/gadget/Kconfig
> @@ -4,6 +4,10 @@ menuconfig USB_GADGET
>  	select POLLER
>  	bool "USB gadget support"
>  
> +config USB_GADGET_DRIVER_ARC_PBL
> +	select USB_GADGET
> +	bool

The "select USB_GADGET" is not necessary. The PBL part of that driver
doesn't use anything from USB_GADGET.

> +
>  if USB_GADGET
>  
>  config USB_GADGET_DUALSPEED
> @@ -16,9 +20,6 @@ config USB_GADGET_DRIVER_ARC
>  	default y
>  	select USB_GADGET_DUALSPEED
>  
> -config USB_GADGET_DRIVER_ARC_PBL
> -	bool
> -
>  config USB_GADGET_DRIVER_AT91
>  	bool
>  	prompt "at91 gadget driver"
> @@ -37,6 +38,7 @@ config USB_GADGET_AUTOSTART
>  	bool
>  	default y
>  	prompt "Automatically start usbgadget on boot"
> +	depends on GLOBALVAR

Without GLOBALVAR selected the USB gadget autostart stuff can be
compiled, but without any functionality, as all functionality is
behind globalvars, so adding this dependency mykes sense.

>  	select SYSTEM_PARTITIONS if USB_GADGET_MASS_STORAGE

I am not sure why SYSTEM_PARTITIONS is selected here. Maybe Ahmad can
comment on that. From what I can see with USB_GADGET_AUTOSTART selected
without SYSTEM_PARTITIONS we still get autostart functionality, but
without global.system.partitions support which seems ok.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


