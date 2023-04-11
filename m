Delivery-date: Tue, 11 Apr 2023 14:02:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmChO-00HWDC-N6
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 14:02:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmChO-0003dl-EL
	for lore@pengutronix.de; Tue, 11 Apr 2023 14:02:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=93yeT3J3GiGp2l1c5M3FQuGl0GkcW8H5AyfRE+1TkVY=; b=tGE7sGxbfL+gIdRB4p3orcfHXG
	nya44rkA8Dz2XHB4GPnGcmFiBRDIh+3NOuUcYQ7JXYhPbI+NpXWZAr5mpNN7Yyz5aXoQmk71MxPXd
	u02iAtELRQmN+Nih3+FGts4EAQKkOc6fARNijTT1VDbx+S0DChOg+JNQ/e4fUZ8STqipeOn6Dhr4l
	o9p7XpaLmkVRNejuPul8nru4FOd4ufCQFUgxp+eMUuEKrf1ae/lwnW81xa0giw2jWpuuVHh6rxPLx
	C4+9An3g8/fYRPALRJj3bv/RSXRkZsXS4ag994pV59FPVALwYmg/NVVo4G3XV4P8k51Sjz0gDfdll
	7WBg/NVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCgB-00HUgG-3A;
	Tue, 11 Apr 2023 12:00:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCg8-00HUfY-2n
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 12:00:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmCg7-00037D-KW; Tue, 11 Apr 2023 14:00:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmCg7-00069d-Cr; Tue, 11 Apr 2023 14:00:51 +0200
Date: Tue, 11 Apr 2023 14:00:51 +0200
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230411120051.GG19113@pengutronix.de>
References: <20230407184500.GB1648837@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230407184500.GB1648837@ravnborg.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_050053_009287_BAC129C1 
X-CRM114-Status: GOOD (  19.11  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLACK autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 2/2] ARM: add sama5d4_wifx to at91_multi_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 07, 2023 at 08:45:00PM +0200, Sam Ravnborg wrote:
> With this change we have more chances to catch build issues during
> refactoring.
> The board is added to get build coverage, it is not verified if it
> actually boots with this config.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  arch/arm/configs/at91_multi_defconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
> index 6cbe013162..151f9a7069 100644
> --- a/arch/arm/configs/at91_multi_defconfig
> +++ b/arch/arm/configs/at91_multi_defconfig
> @@ -7,6 +7,7 @@ CONFIG_MACH_MICROCHIP_KSZ9477_EVB=y
>  CONFIG_MACH_SAMA5D3_XPLAINED=y
>  CONFIG_MACH_SAMA5D27_SOM1=y
>  CONFIG_MACH_SAMA5D27_GIANTBOARD=y
> +CONFIG_MACH_SAMA5D4_WIFX=y
>  CONFIG_AEABI=y
>  CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
>  CONFIG_ARM_UNWIND=y
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


