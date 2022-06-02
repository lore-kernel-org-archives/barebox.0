Delivery-date: Thu, 02 Jun 2022 08:56:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwel6-000I8z-Um
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 08:56:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwel5-0007oO-K3
	for lore@pengutronix.de; Thu, 02 Jun 2022 08:56:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cKUhck5TDs9mC5JGaus6xMl5Sa/kgsq0oFK24f9VPrA=; b=WT5n4U2Qu8blgngGGltXu0LBZ/
	LJcPP9SIlEPj1WOEbn9RLewqgFz+X6Ie5C6Qm1n5iJqfddOo4hob7DFQh8qNYULuMIrncD55xxhTs
	GjTMWw+pkkKKHWuwuC8Js44mSHlXqaEeA6VVXHfrKrvuT16jDv6sS2q6rGGAYOJ2xpftpYmqrhYa8
	K3CtS0ORhthZ69p7FB19Y3afOLjHu8JkgFMwId/TbwmNCPrl/uWFk3hOwg2BI90O31C6NE775vHnT
	dz7Ffgv/tIqSWCfjd9cZN54be2KngKt5kgfmEcYaF1s+yD5f4Pl+Ni9NRV3jZyUOJFE6cek/iyNU2
	qVHj6Ftw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwejq-001uOg-TI; Thu, 02 Jun 2022 06:55:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwejk-001uN3-LT
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 06:55:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nwejj-0007IF-Dt; Thu, 02 Jun 2022 08:55:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nwejj-00085h-4x; Thu, 02 Jun 2022 08:55:15 +0200
Date: Thu, 2 Jun 2022 08:55:15 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220602065515.GF1615@pengutronix.de>
References: <20220601071452.17033-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220601071452.17033-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_235516_756786_34311523 
X-CRM114-Status: GOOD (  28.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: xload: Fix compile without CONFIG_MTD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 01, 2022 at 10:14:52AM +0300, Alexander Shiyan wrote:
> arm-linux-ld: arch/arm/mach-omap/xload.o: in function read_mtd_barebox':
> /home/ARM/barebox/arch/arm/mach-omap/xload.c:75: undefined reference to mtd_peb_read_file'
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-omap/xload.c | 72 ++++++++++++++++++--------------------
>  1 file changed, 34 insertions(+), 38 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index 6d3704b8cf..78b2221304 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -53,46 +53,44 @@ static void *read_mtd_barebox(const char *part, unsigned int start, unsigned int
>  	struct mtd_info *mtd;
>  	unsigned int ps, pe;
>  
> -	if (!IS_ENABLED(CONFIG_MTD)) {
> -		printf("Cannot load from nand/nor: MTD support is disabled\n");
> -		return NULL;
> -	}
> +	if (IS_ENABLED(CONFIG_MTD)) {
> +		cdev = cdev_open_by_name(part, O_RDONLY);
> +		if (!cdev) {
> +			printf("failed to open partition\n");
> +			return NULL;
> +		}
>  
> -	cdev = cdev_open_by_name(part, O_RDONLY);
> -	if (!cdev) {
> -		printf("failed to open partition\n");
> -		return NULL;
> -	}
> +		mtd = cdev->mtd;
> +		if (!mtd)
> +			return NULL;
>  
> -	mtd = cdev->mtd;
> -	if (!mtd)
> -		return NULL;
> +		if (mtd_mod_by_eb(start, mtd) != 0) {
> +			printf("Start must be eraseblock aligned\n");
> +			return NULL;
> +		}
>  
> -	if (mtd_mod_by_eb(start, mtd) != 0) {
> -		printf("Start must be eraseblock aligned\n");
> -		return NULL;
> -	}
> +		to = xmalloc(size);
>  
> -	to = xmalloc(size);
> +		ps = mtd_div_by_eb(start, mtd);
> +		pe = mtd_div_by_eb(start + size, mtd);
> +		ret = mtd_peb_read_file(mtd, ps, pe, to, size);
> +		if (ret) {
> +			printf("Can't read image from %s: %d\n", part, ret);
> +			goto err;
> +		}
>  
> -	ps = mtd_div_by_eb(start, mtd);
> -	pe = mtd_div_by_eb(start + size, mtd);
> -	ret = mtd_peb_read_file(mtd, ps, pe, to, size);
> -	if (ret) {
> -		printf("Can't read image from %s: %d\n", part, ret);
> -		goto err;
> -	}
> +		size = get_image_size(to);
> +		if (!size) {
> +			printf("failed to get image size\n");
> +			goto err;
> +		}
>  
> -	size = get_image_size(to);
> -	if (!size) {
> -		printf("failed to get image size\n");
> -		goto err;
> -	}
> +		return to;
>  
> -	return to;
> +		err:
> +		free(to);
> +	}
>  
> -err:
> -	free(to);
>  	return NULL;
>  }
>  
> @@ -292,7 +290,7 @@ static void *am33xx_net_boot(void)
>   */
>  static __noreturn int omap_xload(void)
>  {
> -	void *func;
> +	void *func = NULL;
>  
>  	if (!barebox_part)
>  		barebox_part = &default_part;
> @@ -310,10 +308,8 @@ static __noreturn int omap_xload(void)
>  		} else if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
>  			printf("booting from USB\n");
>  			func = omap4_xload_boot_usb();
> -		} else {
> +		} else
>  			printf("booting from USB not enabled\n");
> -			func = NULL;
> -		}
>  		break;
>  	case BOOTSOURCE_NAND:
>  		printf("booting from NAND\n");
> @@ -327,16 +323,16 @@ static __noreturn int omap_xload(void)
>  		if (IS_ENABLED(CONFIG_OMAP_SERIALBOOT)) {
>  			printf("booting from serial\n");
>  			func = omap_serial_boot();
> -			break;
>  		}
> +		break;
>  	case BOOTSOURCE_NET:
>  		if (IS_ENABLED(CONFIG_AM33XX_NET_BOOT)) {
>  			printf("booting from NET\n");
>  			func = am33xx_net_boot();
> -			break;
>  		} else {
>  			printf("booting from network not enabled\n");
>  		}
> +		break;
>  	default:
>  		printf("unknown boot source. Fall back to nand\n");
>  		func = omap_xload_boot_nand(barebox_part);
> -- 
> 2.32.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

