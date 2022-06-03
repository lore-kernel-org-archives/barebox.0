Delivery-date: Fri, 03 Jun 2022 08:57:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1Fo-001Wop-Tm
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 08:57:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1Fn-0004Gy-EI
	for lore@pengutronix.de; Fri, 03 Jun 2022 08:57:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SM4YbQgAuFScIS08zKHKXER7jJoje6SnBzuJQP7J9M0=; b=Aig38wmpyze6jUvl12VCfMCKvd
	RAS4jbsW6C1wOG477K3TrFsHP0cfok81bpaZQQKtDufGreabCT10MaX2wEwjwbDuz2U4jsbqCAxBd
	t9RatgZAS3f/xAtkkUCOo+KMh0Dam5xkdtDAdWkLAXFkg+KLgF2eK3ln96t+ukUEVzWBkeW2fitB8
	/4QU4AFwj4WrxP/pfFEPds3ICCV1peFisEMLVs4sXfhE2kpd0FlbWb6CYiEdba7bX0RnQHJDY0fTi
	T7TyxBmj8eFmarYvbfqAXA6o7aS42snwRC2rMIKGn8nasZU5jRe3Y0ugZdm63JMHXt7vpAmKc1MLp
	2LEQiltQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1ES-0068mK-G1; Fri, 03 Jun 2022 06:56:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1EN-0068lL-GQ
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 06:56:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nx1EL-0004Bq-MT; Fri, 03 Jun 2022 08:56:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nx1EL-0004rR-DO; Fri, 03 Jun 2022 08:56:21 +0200
Date: Fri, 3 Jun 2022 08:56:21 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220603065621.GP2387@pengutronix.de>
References: <20220601071452.17033-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220601071452.17033-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:54:19 up 64 days, 19:23, 71 users,  load average: 0.23, 0.16,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_235623_582209_F05F3956 
X-CRM114-Status: GOOD (  22.85  )
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
> 
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


Despite being the first hunk a no-op, these ones look quite useful.
Should we make a separate patch from it?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

