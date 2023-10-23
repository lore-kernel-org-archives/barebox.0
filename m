Delivery-date: Mon, 23 Oct 2023 11:51:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quraX-0015RE-MM
	for lore@lore.pengutronix.de; Mon, 23 Oct 2023 11:51:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1quraW-0003D4-Cd
	for lore@pengutronix.de; Mon, 23 Oct 2023 11:51:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S+99EETUcgfco+ssFg93v0l0vsx1WcfDF4vkV1ysflQ=; b=ISgrbEvETTSw3HhxlRD1rsW9f1
	XrPHUwzgyMyUNOwYVOuO4TiNZi9PWQG+5n1asD3DnbEbxAFhHhpWicpd44FR3iIC0NxdHFwpbxBcw
	1CVwwhRqcghmOkOlgd4J4mqCSJcIYjwdYDl69Ww/NuFvEbaoBU47T632mxs09Gan41XCTy8cpJK0P
	9hNSZvD2rkGTG4e16DzRp/3zGLxYH4+eUN7OeFUg4pHVmoEuTn24MAMM111/X9P+7iNdIpxc4iPAy
	SrVGokmU48cDCNmmVQyMs/sE1PeaAR2/SHK8MazzGsn4O/lNbluxpmpXbJSdSC1xWlF/Zg8oW4L7g
	YMMrEe6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qurZV-006vRJ-0q;
	Mon, 23 Oct 2023 09:50:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qurZR-006vQF-1h
	for barebox@lists.infradead.org;
	Mon, 23 Oct 2023 09:50:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qurZQ-00032G-BS; Mon, 23 Oct 2023 11:50:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qurZP-003g2T-VU; Mon, 23 Oct 2023 11:49:59 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qurZP-00FuGC-TC; Mon, 23 Oct 2023 11:49:59 +0200
Date: Mon, 23 Oct 2023 11:49:59 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231023094959.GR3359458@pengutronix.de>
References: <20231020133744.555063-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020133744.555063-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_025001_565616_C2423E57 
X-CRM114-Status: GOOD (  20.59  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] remoteproc: stm32: fix typo in Kconfig symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Oct 20, 2023 at 03:37:43PM +0200, Ahmad Fatoum wrote:
> The Kconfig symbol for enabling support for the ARM Secure Monitor Call
> Calling Convention if CONFIG_ARM_SMCCC and not CONFIG_ARM_SMCC, but the
> latter is checked with IS_ENABLED() in the driver. Fix the typo.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/remoteproc/stm32_rproc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index b6a62634842f..b2282f2fac5b 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -56,7 +56,7 @@ static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
>  
>  	val = hold ? HOLD_BOOT : RELEASE_BOOT;
>  
> -	if (IS_ENABLED(CONFIG_ARM_SMCC) && ddata->secured_soc) {
> +	if (IS_ENABLED(CONFIG_ARM_SMCCC) && ddata->secured_soc) {
>  		arm_smccc_smc(STM32_SMC_RCC, STM32_SMC_REG_WRITE,
>  			      hold_boot->reg, val, 0, 0, 0, 0, &smc_res);
>  		err = smc_res.a0;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


