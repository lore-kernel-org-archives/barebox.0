Delivery-date: Fri, 10 Apr 2026 13:24:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wB9yL-00Acx8-2j
	for lore@lore.pengutronix.de;
	Fri, 10 Apr 2026 13:24:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wB9yL-0004jL-9p
	for lore@pengutronix.de; Fri, 10 Apr 2026 13:24:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X18NcPSoIgbC6nejQLW2CcHhwlu5UQjxAe6ryxJ7UnM=; b=MUhiVYx64t5CH0QxWdCyB3kbGi
	rOnPTHWzBPMfYuBOYck0b78GFBBcKOGd0KkEGnD4rFdnzPyl5bDKZobuRtWspQuXX9RXzLx2kDuLY
	MxRGtXb7j9iFNrcW7Xs2siCWIVuF2HK+6xeE6MZwEKZJuADbXsnuyaIzS0VdwAWSb1tCZg5aFkmw7
	X6Vkam7dJUKHWICnp/E8SC3xF8Wv3+P9Rnh9FArHBA1XHAqSF3UevMf47ECwC0JiXY3HfQuJIlYgj
	LFPMaZRQkef77T19/bYv7M1ur/hL3yYwwWY3PgtORBJmu0klhEcf2j1jx4YnLcMLcdtpcgt2VFUAY
	CgBDyHQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB9xw-0000000C4vk-2gTM;
	Fri, 10 Apr 2026 11:24:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wB9xu-0000000C4vB-0jHn
	for barebox@lists.infradead.org;
	Fri, 10 Apr 2026 11:23:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wB9xs-0004bS-Fi; Fri, 10 Apr 2026 13:23:56 +0200
Message-ID: <1b0a0db4-690e-4b07-83dd-00e7cc5d0f72@pengutronix.de>
Date: Fri, 10 Apr 2026 13:23:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <str@pengutronix.de>
References: <20260402140129.1108000-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260402140129.1108000-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_042358_222420_A5C96808 
X-CRM114-Status: GOOD (  18.78  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: ARMv5: make PTE_SMALL_AP_UNO_SRO work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 4/2/26 4:01 PM, Sascha Hauer wrote:
> On ARMv4/5 we have the SCTLR.S and SCTLR.R bits. We set the former which
> is deprecated and has implementation defined behaviour on ARMv5. We
> clear the latter which has the effect that AP=0b00 as used in PTE_SMALL_AP_UNO_SRO
> means "no access".
> 
> Clear SCTLR.S and set SCTLR.R instead. With this AP=0b00 maps to
> read-only access as intended.
> 
> Do not touch any of these bits for >= ARMv6 as both are reserved there.
> 
> Fixes: 5916385fae ("ARM: MMU: map text segment ro and data segments execute never")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/lowlevel_32.S | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/lowlevel_32.S b/arch/arm/cpu/lowlevel_32.S
> index 3b1dea5c67..517cefa7b4 100644
> --- a/arch/arm/cpu/lowlevel_32.S
> +++ b/arch/arm/cpu/lowlevel_32.S
> @@ -59,7 +59,7 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
>  	/* disable MMU stuff and data/unified caches */
>  	mrc	p15, 0, r12, c1, c0, 0		/* SCTLR */
>  	bic	r12, r12, #(CR_M | CR_C | CR_B)
> -	bic	r12, r12, #(CR_S | CR_R | CR_V)
> +	bic	r12, r12, #CR_V
>  
>  #ifndef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
>  	/* enable instruction cache */
> @@ -70,7 +70,8 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
>  	orr	r12, r12, #CR_U
>  	bic	r12, r12, #CR_A
>  #else
> -	orr	r12, r12, #CR_S
> +	bic	r12, r12, #CR_S
> +	orr	r12, r12, #CR_R
>  	orr	r12, r12, #CR_A
>  #endif
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



