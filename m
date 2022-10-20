Delivery-date: Thu, 20 Oct 2022 10:03:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olQWq-001fXh-JU
	for lore@lore.pengutronix.de; Thu, 20 Oct 2022 10:03:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olQWn-0001Uf-SE
	for lore@pengutronix.de; Thu, 20 Oct 2022 10:03:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QFexfy9mRl/09CqkYOW5QQbtYgL7VVB2yTAcTR8NV68=; b=txYAi2u6FlqtEJJganXytpRFOm
	DmKmrDQjkgxwMkU+O2sfZzP8cO0n855QEdcHdHySThI7S+KYmgbhpJ0clGzHrp/JSJ00rfAc54kN2
	vXLLfe3VcqPXS87BYI/dpg3z3g5Jr84/qTQSpnDq4wuywPIU7SisatVtai29aGBlhz4EPsvTrZuih
	IBDSD2jjTvsTGurxWogPQ6iAGbplQv6oCDmr3nZZvPDqcvOXCvUKL+A2VYP1lxGc8kBL0danRxgUd
	0NhkEcsEoHF4s8Z6fJmeUya5r1Bc+Z1TTKApWcHdKpbtEZ7Vsoye+/TCMxL4jpPXMdZPYoc/QBKng
	k8WNp+AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olQVL-00C2dW-M6; Thu, 20 Oct 2022 08:02:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olQVG-00C2cY-2W
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 08:02:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVC-000116-J9; Thu, 20 Oct 2022 10:02:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVB-0000ih-TN; Thu, 20 Oct 2022 10:02:05 +0200
Date: Thu, 20 Oct 2022 10:02:05 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221020080205.GZ6702@pengutronix.de>
References: <20221014115354.4072202-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221014115354.4072202-1-enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_010210_135019_F63B4CEF 
X-CRM114-Status: GOOD (  27.32  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] imx:boot: adapt boot device detection for imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Oct 14, 2022 at 01:53:54PM +0200, Enrico Scholz wrote:
> imx8mp uses sbmr2[27..24] for encoding the bootmode while existing
> code reads only sbmr2[25..24].
> 
> This can detect BOOTSOURCE_SERIAL for the wrong mode.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  arch/arm/mach-imx/boot.c | 34 +++++++++++++++++++++++++++++++---
>  1 file changed, 31 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index 8c9febb50a65..daf1951a36c2 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -202,7 +202,8 @@ void imx51_boot_save_loc(void)
>  }
>  
>  #define IMX53_SRC_SBMR	0x4
> -#define SRC_SBMR_BMOD	GENMASK(25, 24)
> +#define IMX53_SRC_SBMR_BMOD	GENMASK(25, 24)
> +#define IMX8MP_SRC_SBMR_BMOD	GENMASK(27, 24)
>  #define IMX53_BMOD_SERIAL	0b11
>  
>  #define __BOOT_CFG(n, m, l)	GENMASK((m) + ((n) - 1) * 8, \
> @@ -234,7 +235,12 @@ __MAKE_BOOT_CFG_BITS(4)
>  
>  static unsigned int imx53_get_bmod(uint32_t r)
>  {
> -	return FIELD_GET(SRC_SBMR_BMOD, r);
> +	return FIELD_GET(IMX53_SRC_SBMR_BMOD, r);
> +}
> +
> +static unsigned int imx8mp_get_bmod(uint32_t r)
> +{
> +	return FIELD_GET(IMX8MP_SRC_SBMR_BMOD, r);
>  }
>  
>  static int imx53_bootsource_internal(uint32_t r)
> @@ -318,6 +324,8 @@ void imx53_boot_save_loc(void)
>  #define IMX6_BMOD_SERIAL	0b01
>  #define IMX6_BMOD_RESERVED	0b11
>  #define IMX6_BMOD_FUSES		0b00
> +#define IMX8MP_BMOD_FUSES	0b0000
> +#define IMX8MP_BMOD_SERIAL	0b0001
>  #define BT_FUSE_SEL		BIT(4)
>  #define GPR10_BOOT_FROM_GPR9	BIT(28)
>  
> @@ -338,6 +346,26 @@ static bool imx6_bootsource_serial(uint32_t sbmr2)
>  		!(sbmr2 & BT_FUSE_SEL));
>  }
>  
> +static bool imx8mp_bootsource_serial(uint32_t sbmr2)
> +{
> +	return imx8mp_get_bmod(sbmr2) == IMX8MP_BMOD_SERIAL ||
> +		/*
> +		 * If boot from fuses is selected and fuses are not
> +		 * programmed by setting BT_FUSE_SEL, ROM code will
> +		 * fallback to serial mode
> +		 */
> +		(imx8mp_get_bmod(sbmr2) == IMX8MP_BMOD_FUSES &&
> +		 !(sbmr2 & BT_FUSE_SEL));
> +}
> +
> +static bool imx_bootsource_serial(uint32_t sbmr2)
> +{
> +	if (cpu_is_mx8mp())
> +		return imx8mp_bootsource_serial(sbmr2);
> +	else
> +		return imx6_bootsource_serial(sbmr2);
> +}

You can't use cpu_is_mx8mp() properly here. cpu_is_mx8mp() uses the
variable imx_cpu_type which is only initialized in barebox proper, but
this code here is also used in PBL.
I had a look at the manuals and saw that i.MX8MN also uses four bit for
the boot modes.

I prepared a series from that, maybe you can give it a test/review.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


