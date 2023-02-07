Delivery-date: Tue, 07 Feb 2023 11:26:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPLB4-00GvDu-7m
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 11:26:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPLB1-0001Ja-5P
	for lore@pengutronix.de; Tue, 07 Feb 2023 11:26:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wQOV9X9zsvnFnf0vHM/4Jddv6YGaAn0NWe63p0FP+fg=; b=KyGMtbx9SEpccu2IlEs7+pRbej
	m3K1u3wjfIkLvMvZ2AcmdKSXWx1PuPqAf5np94HjSoddWlR7/j1jAiqkHtZUt73bPHn8WVKIwlLgq
	WBQ681mLVC1UklPBHniibQw2v5NzAn0+5gUmhIjwPetfFwITXi428SPuLT4vodeuuAzX4IH36gXGR
	b64upOb2WPDUYRIzEDEX4UmxSHzmEJ8XBszpezizBQs7NLS0atk+Xz/ov9xaM7zGr0PIJoS8wlsxH
	hYE97yWriGFNd0TX8XSMZouFC29NWIo5ADJdxEyPjTPfNnRM63L9RH79S6MHQhSN4WbeqIDuwpF69
	wR2AUebg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPL9V-00Bh1V-Is; Tue, 07 Feb 2023 10:24:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPL9R-00Bh0L-0R
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 10:24:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pPL9N-0000un-SB; Tue, 07 Feb 2023 11:24:33 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pPL9N-0007OB-LM; Tue, 07 Feb 2023 11:24:33 +0100
Date: Tue, 7 Feb 2023 11:24:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230207102433.xihwow72fcxb6vzk@pengutronix.de>
References: <20230206210004.627338-1-l.stach@pengutronix.de>
 <20230206210004.627338-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230206210004.627338-2-l.stach@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_022437_066024_F14DDE84 
X-CRM114-Status: GOOD (  16.21  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: i.MX8M: esdctl: use common compatible to detect
 i.MX8M* DDRC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Lucas,

On 23-02-06, Lucas Stach wrote:
> All i.MX8M* DDRC nodes are compatible to "fsl,imx8m-ddrc". As the memory
> size detection works the same on all of them, there is no need to match
> the more specific compatible.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/esdctl.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 043de477a77d..2a2bc5205301 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -732,13 +732,7 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
>  		.compatible = "fsl,vf610-ddrmc",
>  		.data = &vf610_data
>  	}, {
> -		.compatible = "fsl,imx8mm-ddrc",
> -		.data = &imx8mq_data
> -	}, {
> -		.compatible = "fsl,imx8mn-ddrc",
> -		.data = &imx8mn_data

The i.MX8M Nano uses a 16bit bus width according the data. I don't have
the datasheet right now to check this. But this commit will change it to
32 bit, is this allowed?

Regards,
  Marco

> -	}, {
> -		.compatible = "fsl,imx8mq-ddrc",
> +		.compatible = "fsl,imx8m-ddrc",
>  		.data = &imx8mq_data
>  	}, {
>  		.compatible = "fsl,imx7d-ddrc",
> -- 
> 2.39.1
> 
> 
> 


