Delivery-date: Wed, 18 Jun 2025 10:19:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRo10-008YE4-1x
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 10:19:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRo10-0004WT-05
	for lore@pengutronix.de; Wed, 18 Jun 2025 10:19:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ax378e6/UYCxhwgOpXcAMvQx8mJE8s0b3tMSCgtUTbY=; b=22Efq9y/6muUvrliXvGXyuj4Sg
	dKsDtEWdjSdrBkHMqWrRA6OATgO6Geiu7IyAYQF/7BKxT5tFJIS6LFY0WQsPuyVJeg7UQ0osv6B1/
	mguBNormu5KAHMhqIWn1R+O1YxXwlEdbobjshH7aOZ13eJTqOVY2gcFWeu9Ok4Ro1GgU6oVGiSxmP
	lifwnLW7hINLBU2dWhSj+pQCPpdySjH8DZvu5ub4jMzqYadQZi2M8HvEnncKt3FTJeGAD5GUHCiUT
	5NZzWsjZefOmBrj/EWQ7rt8ka5umw9VpH9Zt1k3M16uDym4n7hqH76lGMIgRCYIpMb9V6OuUVJz5n
	Xp2ylD2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRo0R-00000009O9S-0J2A;
	Wed, 18 Jun 2025 08:18:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRnvg-00000009NWC-04yt
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 08:13:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uRnvc-0006a1-Ap; Wed, 18 Jun 2025 10:13:52 +0200
Message-ID: <aec47b1f-c022-4490-ab57-3fc6689ebc6b@pengutronix.de>
Date: Wed, 18 Jun 2025 10:13:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de>
 <20250617-mmu-xn-ro-v2-4-3c7aa9046b67@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250617-mmu-xn-ro-v2-4-3c7aa9046b67@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_011356_060552_ADEA95BB 
X-CRM114-Status: GOOD (  20.92  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/6] ARM: MMU: map text segment ro and data segments
 execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 6/17/25 16:28, Sascha Hauer wrote:
> With this all segments in the DRAM except the text segment are mapped
> execute-never so that only the barebox code can actually be executed.
> Also map the readonly data segment readonly so that it can't be
> modified.
> 
> The mapping is only implemented in barebox proper. The PBL still maps
> the whole DRAM rwx.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +config ARM_MMU_PERMISSIONS
> +	bool "Map with extended RO/X permissions"
> +	default y
> +	help
> +	  Enable this option to map readonly sections as readonly, executable
> +	  sections as readonly/executable and the remainder of the SDRAM as
> +	  read/write/non-executable.
> +	  Traditionally barebox maps the whole SDRAM as read/write/execute.
> +	  You get this behaviour by disabling this option which is meant as
> +	  a debugging facility. It can go away once the extended permission
> +	  settings are proved to work reliable.
> +
>  config ARM_SEMIHOSTING
>  	bool "enable ARM semihosting support"
>  	select SEMIHOSTING
> diff --git a/arch/arm/cpu/lowlevel_32.S b/arch/arm/cpu/lowlevel_32.S
> index 960a92b78c0adaf815948517ba917ae85ae65e27..5d524faf9cff9a8b545044169b8255279dd8ab0b 100644
> --- a/arch/arm/cpu/lowlevel_32.S
> +++ b/arch/arm/cpu/lowlevel_32.S
> @@ -70,6 +70,7 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
>  	orr	r12, r12, #CR_U
>  	bic	r12, r12, #CR_A
>  #else
> +	orr	r12, r12, #CR_S

FTR, because I looked it up: CR_S was deprecated for ARMv6, but before
that, it was the system protection bit and is a prerequisite for access
permission. So this change looks fine.

>From ARMv5 ARM at:
https://developer.arm.com/documentation/ddi0100/i/?lang=en

> @@ -627,11 +666,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
>  
>  	set_ttbr(ttb);
>  
> -	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
> -	if (cpu_architecture() >= CPU_ARCH_ARMv7)
> -		set_domain(DOMAIN_CLIENT);
> -	else
> -		set_domain(DOMAIN_MANAGER);
> +	set_domain(DOMAIN_CLIENT);

Good. I had added this check ultimately out of laziness.

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



