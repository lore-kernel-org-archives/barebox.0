Delivery-date: Wed, 08 Feb 2023 09:47:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPg6r-000OLs-Om
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 09:47:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPg6o-0001PD-VH
	for lore@pengutronix.de; Wed, 08 Feb 2023 09:47:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bJbGcaDA9cfAFZkRi9IgZHsmhJkbYKSJbfPF8XRNSK0=; b=CdE9XHzVsGzzfaHmZsRTtv4bLH
	ATWGVA50CVhqACskMQOFfJ+25awYuhP5opFKUELhc48Qf87+g3vBPzw2Eudf+XhbUQ15/nCrJ68XL
	XI7SLn3eixZFtWTeSo1JY8w/L2Dr1sSydlJGOX7FTe6b1BcwEEnFgP3SBKZ0yjpGaPjvDGwjHe63u
	qDaHPMgCJVefVZTwo9Qz0JvRA2/CJqXNxg32RXnwSxdNSFlLW8rtYbwh20WojIfSjVYmzzJI0hAD2
	iK3iBA21zHSrBcHbY+q9M1DDsp+7xJePdFoN4vYdOjTs0S8kI0nOPzHArWxNpYGBT0rm92hRzkrim
	8vtpshgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPg5d-00EdkY-OM; Wed, 08 Feb 2023 08:46:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPg5Y-00Edk1-EA
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 08:46:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pPg5W-00016S-I3; Wed, 08 Feb 2023 09:45:58 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pPg5W-0004sM-Af; Wed, 08 Feb 2023 09:45:58 +0100
Date: Wed, 8 Feb 2023 09:45:58 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230208084558.ypld5b5gzgbdqlzd@pengutronix.de>
References: <20230207200459.1078994-1-l.stach@pengutronix.de>
 <20230207200459.1078994-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230207200459.1078994-2-l.stach@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_004600_489170_880AD714 
X-CRM114-Status: GOOD (  16.69  )
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
Subject: Re: [PATCH v2 2/3] ARM: i.MX8M: esdctl: use common compatible to
 detect i.MX8MQ/MM/MP DDRC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Lucas,

On 23-02-07, Lucas Stach wrote:
> All i.MX8M* DDRC nodes are compatible to "fsl,imx8m-ddrc". As the memory
> size detection works the same on most of them, with the only exception
> being the i.MX8MM, which only has a 16bit data bus, there is no need to
		^
	    i.MX8MN

apart of this the whole series lgtm, so feel free to add my

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> match the more specific compatibles for i.MX8MQ/MM/MP.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/esdctl.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 043de477a77d..fc6db25de9e4 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -652,7 +652,7 @@ static __maybe_unused struct imx_esdctl_data vf610_data = {
>  	.add_mem = vf610_ddrmc_add_mem,
>  };
>  
> -static __maybe_unused struct imx_esdctl_data imx8mq_data = {
> +static __maybe_unused struct imx_esdctl_data imx8m_data = {
>  	.base0 = MX8M_DDR_CSD1_BASE_ADDR,
>  	.add_mem = imx8m_ddrc_add_mem,
>  };
> @@ -732,14 +732,11 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
>  		.compatible = "fsl,vf610-ddrmc",
>  		.data = &vf610_data
>  	}, {
> -		.compatible = "fsl,imx8mm-ddrc",
> -		.data = &imx8mq_data
> +		.compatible = "fsl,imx8m-ddrc",
> +		.data = &imx8m_data
>  	}, {
>  		.compatible = "fsl,imx8mn-ddrc",
>  		.data = &imx8mn_data
> -	}, {
> -		.compatible = "fsl,imx8mq-ddrc",
> -		.data = &imx8mq_data
>  	}, {
>  		.compatible = "fsl,imx7d-ddrc",
>  		.data = &imx7d_data
> -- 
> 2.39.1
> 
> 
> 


