Delivery-date: Thu, 02 Jun 2022 10:09:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwftI-000LeV-Ez
	for lore@lore.pengutronix.de; Thu, 02 Jun 2022 10:09:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwftG-0008RP-A9
	for lore@pengutronix.de; Thu, 02 Jun 2022 10:09:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQAReNlzibGT2I6ChjV/HZnkEZ2YNkaki6+D6XLiIWg=; b=F/SX/AV5WY2YgP
	wj2V9t4muzVgOzsf567PNVHGnzn1VJ/WBrwWlZDCCDXZ9DaohKt7ma+FCxdCZII8AI5GIXOlzOG4L
	pw9XV5IzbNASNkBErfTvwb20hRxOw82fAMCdBzCozX66u9p6kxKPQ0A9wCa3F1P21M7eZUMv5BdWG
	cZECgKqa3CI7ZVO59iydWG8GgF2f0KRUGM0LjuOwskXN3kPxFQj5bxL9QUpBusktSS9fFa+FnZS+i
	Ub5ZuS/MqFdN4+3aDcwZzj+CqRvnBGijoOCfW82Dw0mqGAxZdzB8oK1OqCHieOao0CpNHtyuruW4U
	zlyhFQLL9AvD8UOwy6Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfrq-0029Iv-St; Thu, 02 Jun 2022 08:07:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfrm-0029HE-LM
	for barebox@lists.infradead.org; Thu, 02 Jun 2022 08:07:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1nwfri-0008Hv-VH; Thu, 02 Jun 2022 10:07:35 +0200
Message-ID: <53dfc2e7-7271-e872-dbf9-ffb9ed7e7802@pengutronix.de>
Date: Thu, 2 Jun 2022 10:07:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20220601071452.17033-1-eagle.alexander923@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220601071452.17033-1-eagle.alexander923@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_010738_755113_7915AF43 
X-CRM114-Status: GOOD (  26.12  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: xload: Fix compile without CONFIG_MTD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 01.06.22 09:14, Alexander Shiyan wrote:
> arm-linux-ld: arch/arm/mach-omap/xload.o: in function read_mtd_barebox':
> /home/ARM/barebox/arch/arm/mach-omap/xload.c:75: undefined reference to mtd_peb_read_file'

Am I missing something or does this patch just change

  if (0) {
    return NULL;
  }

  /* something */;
  return to;

into

  if (0) {
    /* something */
    return to;
  }
  return NULL;


This shouldn't really make a difference. How old is your GCC?

Cheers,
Ahmad

> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-omap/xload.c | 72 ++++++++++++++++++--------------------
>  1 file changed, 34 insertions(+), 38 deletions(-)
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


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

