Delivery-date: Wed, 11 Jan 2023 09:23:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFWNy-008f2U-JW
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:23:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFWNw-0003xP-Ha
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:23:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+cxRatj11hNIwQtoKfet69H1dZjvKbbzCJBtkcuCjfY=; b=vn5T+Xggv8eXXsUuA3eOGDSEqU
	HLuYVIzC/TPSdlPe6J+pHGRzA2aEsNDLWfPpmhOu/Sv+VMNZkuqnWxkZbOWz/qkiDa5See2yl6vYi
	oz+DnA9AeYsm6rOcpA5XCG2yvCyadCvNk3uKaB3OFHINMAC16nomRdSr+K7PCDH5by00bk4lwBWGL
	OVRaS72CXxGd7JSr0F8fPXKzvKoTWFv7ZoAmJENmI4lDjkAhcDetciQUkf+PoqRfi+HYVuS5yXbeK
	lpN7ncxfZCvBK9slHw2BhLPsdYo5TPWDaHwv1/SorJWn0gc1aycrvRAVbsmj1wg6HyyVsU1QZHAG5
	yP0KxgVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFWMk-00AKWD-0j; Wed, 11 Jan 2023 08:21:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFWMf-00AKVT-Op
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:21:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFWMe-0003nP-Fy; Wed, 11 Jan 2023 09:21:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFWMe-00086Z-8e; Wed, 11 Jan 2023 09:21:40 +0100
Date: Wed, 11 Jan 2023 09:21:40 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230111082140.GH24755@pengutronix.de>
References: <20230111080304.948222-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111080304.948222-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_002141_826654_1750BA44 
X-CRM114-Status: GOOD (  22.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: switch open-coded instances to
 platform_mem_driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 09:03:04AM +0100, Ahmad Fatoum wrote:
> Now that platform_mem_driver ensures probe at mem_initcall level, we no
> longer need to use the opencoded version.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - squash fixup correcting typo (Sascha)
> ---
>  arch/arm/mach-imx/esdctl.c      | 13 +------------
>  arch/arm/mach-stm32mp/ddrctrl.c | 13 +------------
>  2 files changed, 2 insertions(+), 24 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index eb47957db0e5..a704250297bb 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -754,18 +754,7 @@ static struct driver imx_esdctl_driver = {
>  	.id_table = imx_esdctl_ids,
>  	.of_compatible = DRV_OF_COMPAT(imx_esdctl_dt_ids),
>  };
> -
> -static int imx_esdctl_init(void)
> -{
> -	int ret;
> -
> -	ret = platform_driver_register(&imx_esdctl_driver);
> -	if (ret)
> -		return ret;
> -
> -	return of_devices_ensure_probed_by_dev_id(imx_esdctl_dt_ids);
> -}
> -mem_initcall(imx_esdctl_init);
> +mem_platform_driver(imx_esdctl_driver);
>  
>  /*
>   * The i.MX SoCs usually have two SDRAM chipselects. The following
> diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
> index ad4662c44d07..ffda1ba61f3c 100644
> --- a/arch/arm/mach-stm32mp/ddrctrl.c
> +++ b/arch/arm/mach-stm32mp/ddrctrl.c
> @@ -157,15 +157,4 @@ static struct driver stm32mp1_ddr_driver = {
>  	.probe  = stm32mp1_ddr_probe,
>  	.of_compatible = DRV_OF_COMPAT(stm32mp1_ddr_dt_ids),
>  };
> -
> -static int stm32mp1_ddr_init(void)
> -{
> -	int ret;
> -
> -	ret = platform_driver_register(&stm32mp1_ddr_driver);
> -	if (ret)
> -		return ret;
> -
> -	return of_devices_ensure_probed_by_dev_id(stm32mp1_ddr_dt_ids);
> -}
> -mem_initcall(stm32mp1_ddr_init);
> +mem_platform_driver(stm32mp1_ddr_driver);
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


