Delivery-date: Wed, 08 Feb 2023 09:21:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfhz-000NDy-3C
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 09:21:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfhw-0006Rp-Hn
	for lore@pengutronix.de; Wed, 08 Feb 2023 09:21:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=igd8bTQ/BVDsAS0ib2bNHGUcdIgoqmu+mn2amheLc3c=; b=fPp27GKe+stK0NHuBKh1pqNraN
	A9PTHLnR1gCon0w4EK3O3gdSFRqC0G0DHjzLkX/gskooUcEisgkjmN2/MJ6Oxl3DLaK85/06xEFoJ
	a9yvfelFOivGWq4hLsTIlSGHfXWrWM4gmllUbK2fU1YKPmgdPurwxPurZo3TXrGSQeKB20GSRZYoM
	xrTj5axuk0YrCJkcbvjhMRLEIhkdogOxAt39A/LwPD4gZSYzLn6aa+wzOWSLkheXpFTLOZCvjm4rK
	IZejpBTsndk6+ayTK3aCIg7RwaSIHmdmcA4X4n8If+XTm4poydXxeZ+0IE4DCcZntR4wRkJCgOnYU
	coVZTk/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfgk-00EZup-RX; Wed, 08 Feb 2023 08:20:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfgg-00EZtk-3X
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 08:20:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPfge-00068F-31; Wed, 08 Feb 2023 09:20:16 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPfgd-0003eQ-Ro; Wed, 08 Feb 2023 09:20:15 +0100
Date: Wed, 8 Feb 2023 09:20:15 +0100
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230208082015.GJ10447@pengutronix.de>
References: <20230206210004.627338-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230206210004.627338-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_002018_168898_55EBDD68 
X-CRM114-Status: GOOD (  25.82  )
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
Subject: Re: [PATCH 1/3] ARM: i.MX8M: esdctl: limit i.MX8MP early memory size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 06, 2023 at 10:00:02PM +0100, Lucas Stach wrote:
> Limit detected early memory size to 1GB on i.MX8MP, as the default DT
> has a reserved memory region at 0x92400000, which will conflict with
> our malloc area in some configurations. Until we can properly parse
> and exclude the reserved memory regions in the PBL, just avoid getting
> near that DRAM address by limiting the detected size.

The memory region reserved at 0x92400000 belongs to an audio processing
DSP. This is unused for sure in barebox, so do we really need to handle
this case here?

Besides, who had that glorious of hardcoding that RAM area in the dtsi
file?? Is this address dictated by the hardware? That would mean the DSP
is not usable on machines with only 1GiB of RAM. If it's not dictated
by the hardware, why is it in the dtsi file?

This smells fishy.

Sascha

> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/esdctl.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index a704250297bb..043de477a77d 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -947,7 +947,17 @@ void __noreturn imx8mn_barebox_entry(void *boarddata)
>  
>  void __noreturn imx8mp_barebox_entry(void *boarddata)
>  {
> -	imx8m_barebox_entry(boarddata, 32);
> +	/*
> +	 * Limit detected early memory size to 1GB on i.MX8MP, as the default
> +	 * DT has a reserved memory region at 0x92400000, which will conflict
> +	 * with our malloc area in some configurations. Until we can properly
> +	 * parse and exclude the reserved memory regions in the PBL, just avoid
> +	 * getting near that DRAM address by limiting the detected size.
> +	 */
> +	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR,
> +			  min_t(resource_size_t, SZ_1G,
> +				imx8m_barebox_earlymem_size(32)),
> +			  boarddata);
>  }
>  
>  void __noreturn imx8mq_barebox_entry(void *boarddata)
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


