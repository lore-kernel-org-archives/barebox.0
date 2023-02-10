Delivery-date: Fri, 10 Feb 2023 10:43:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQPwY-002o5h-2i
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 10:43:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQPwV-0005gg-H5
	for lore@pengutronix.de; Fri, 10 Feb 2023 10:43:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q4fxrNyyQjRPXIiUeEFS8hVXZ+ijwpuqMPyzqx9nMXg=; b=K0AkzcKXrd2/xhNsL2d7xeuD8l
	To2oF5hNo4yUQ6ULSySBrFXTqvXVoJ7OdnoNY0dj7RL+RiC1pJnz+OLUVgKCNlKOvHhb4CCbZrBOJ
	gLhKji8QcrYrIvHTMSqI6P8vp6oKNbD9+Shu6CanxMiqsiRjv2wguWcK/C8b+L6yJowUR66O/ez2d
	rk+UCpFLnlBJhsmZi15ZJvZDNSQdSlZi49Q4XaDZUAQnd26J1ptPsNTGKrmyz65A90YXNKD6FIyj6
	IZWLtFX5UilnZ5ENQiyn5Az8vJWIBAbWwL26ghbiviF9x4SKCYR0Fz22XioMSBjYek+rrk14cNsVU
	01TXzJdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQPur-0057Ul-PT; Fri, 10 Feb 2023 09:42:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQPum-0057S1-BK
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 09:41:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQPue-0005Sp-0A; Fri, 10 Feb 2023 10:41:48 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQPud-0003Z7-PA; Fri, 10 Feb 2023 10:41:47 +0100
Date: Fri, 10 Feb 2023 10:41:47 +0100
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230210094147.GR10447@pengutronix.de>
References: <20230208133408.1114573-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230208133408.1114573-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_014156_403696_26F74AFC 
X-CRM114-Status: GOOD (  21.75  )
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
Subject: Re: [PATCH v3 1/3] ARM: i.MX8M: esdctl: use common compatible to
 detect i.MX8MQ/MM/MP DDRC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 08, 2023 at 02:34:06PM +0100, Lucas Stach wrote:
> All i.MX8M* DDRC nodes are compatible to "fsl,imx8m-ddrc". As the memory
> size detection works the same on most of them, with the only exception
> being the i.MX8MN, which only has a 16bit data bus, there is no need to
> match the more specific compatibles for i.MX8MQ/MM/MP.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/mach-imx/esdctl.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index a704250297bb..29e992933421 100644
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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


