Delivery-date: Wed, 31 Aug 2022 08:43:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTHRU-002Qn2-E3
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 08:43:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTHRT-0008JA-8j
	for lore@pengutronix.de; Wed, 31 Aug 2022 08:43:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZEYStLxg8m3J2Krsc3NItwkJo/uUyrS+5W60cLuZjWQ=; b=uDFIuLYmk+KgR3wrumVGQcSPs+
	w2xDkmOWPTrtjT62iFx7X4lcd4AtwfzB5xrwsr4EsKZyAIq/qICTS3d+pV0TwqankcO+NEL2+EkXM
	nvMcYlwrGD5rwWaY9IvEB6ZklgFGoEYzZtkpV//GaycP/kjXmujhmb1Vp7j4e0CGXJtveouTdhXVC
	ke/sJ6U5LOrz6cDLdA5+lwd5QmlGGCP8eWCVppAolqZrJAAqfPw3JP4ULnVCVZD/lUMfk9Fc9+Rei
	RhCAuXso53ceqBU1Ocdr8LeHAJI7FHQoyYtAAi5BirI793gUcSKDznKStceYRSk9Z7jAX5Ov59UpZ
	jsi6aflw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTHQF-004MbJ-OG; Wed, 31 Aug 2022 06:41:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTHQB-004MZ8-9N
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 06:41:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTHQA-00082G-1f; Wed, 31 Aug 2022 08:41:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTHQ9-000631-Op; Wed, 31 Aug 2022 08:41:53 +0200
Date: Wed, 31 Aug 2022 08:41:53 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220831064153.GL24324@pengutronix.de>
References: <20220830080613.438124-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220830080613.438124-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_234155_345158_82ED3D31 
X-CRM114-Status: GOOD (  25.16  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] drivers: mtd: nand: nand_mxs: enable nand_mxs on imx7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 30, 2022 at 10:06:13AM +0200, Johannes Zink wrote:
> The i.MX7 GPMI NAND controller is completely backwards compatible with
> the version of the IP on the i.MX6. There are additional features like
> increased ECC strength, that we may want to use in future, but for now
> treating it the same as an i.MX6 works without problems.
> 
> Since the gpmi_nand driver requires the MXS_APBH_DMA driver, also switch it on.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  drivers/dma/Kconfig         | 2 +-
>  drivers/mtd/nand/nand_mxs.c | 3 +++
>  2 files changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
> index 4802bf522d..46b9b90d82 100644
> --- a/drivers/dma/Kconfig
> +++ b/drivers/dma/Kconfig
> @@ -3,7 +3,7 @@ menu "DMA support"
>  
>  config MXS_APBH_DMA
>  	tristate "MXS APBH DMA ENGINE"
> -	depends on ARCH_IMX23 || ARCH_IMX28 || ARCH_IMX6
> +	depends on ARCH_IMX23 || ARCH_IMX28 || ARCH_IMX6 || ARCH_IMX7
>  	select STMP_DEVICE
>  	help
>  	  Experimental!
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index 6f707f9b17..8991758e2b 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -2271,6 +2271,9 @@ static __maybe_unused struct of_device_id gpmi_dt_ids[] = {
>  	}, {
>  		.compatible = "fsl,imx6q-gpmi-nand",
>  		.data = (void *)GPMI_IMX6,
> +	}, {
> +		.compatible = "fsl,imx7d-gpmi-nand",
> +		.data = (void *)GPMI_IMX6,
>  	}, {
>  		/* sentinel */
>  	}
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


