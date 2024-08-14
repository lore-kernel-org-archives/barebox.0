Delivery-date: Wed, 14 Aug 2024 11:15:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seA61-009UIy-29
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 11:15:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seA61-0006FP-0o
	for lore@pengutronix.de; Wed, 14 Aug 2024 11:15:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0yfeABV12WoB/34DJQIiasTEA2Fjc+FznTCtp+euy5k=; b=u87Yw2+wKA6JJZLum0YWcmahS9
	M0JrIu6m/5v2AklEKxcw/QyKKqnhf3LBr19Agf43wQcNEZtV5aQv/cQfMRydNJeiK3cabqqRfWhQj
	RVkYgXiu+G7AKRcoKO/ObOmrnOQgLBEcn1IhwH7S1Tymnw34YMqzoER+MhYZlDKV9sD+nYtPqJsdB
	C3XuSYp8cyeO+JyJaOnrUAuC1K/2w9S1bRXG/ukYV+X6xhN8xV+KTr+G5CyIPu8g5ZvQQ1cUqkbbq
	KrMfFK4W1GF+c2qXL6njrsV8XFVw4d7y8M+JWyozxEz6RoaL8R/zCDU8Y0+QVvv0sU10t9hBc41OA
	7MUBuXfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seA5Z-00000006Lnd-2SNb;
	Wed, 14 Aug 2024 09:14:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seA5X-00000006LnM-3mys
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 09:14:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=0yfeABV12WoB/34DJQIiasTEA2Fjc+FznTCtp+euy5k=; b=CYBZ9m1qgqxXbhp8wbKzG4VN6u
	0qoPcmhiNmio0ZfFck+ooYNVrzGTmQ50jKHe9JJlw9Di0yeryR1CQZ1pTyO8synfdvlYz+kgs6HnN
	8/bStowF4ikbY5irq2yUR6+0MoV9gVSjGOuPlSQyifV00gOZRNslOoyX44J+Fyzs5PVtDhJEDaaYZ
	JTrc0IaaHeyjmvkEx960kMsoIGSopxqfIXA/b1FwlwUZGPpZe653feezC5PiDA0jPvdnMfMGmoNYU
	QTzTcHbMHUf8AXaKqiW90WSQ79P7bkGAcWN++izWSCSJ7HGkEuE22jAxZhw7D3WESV3PW2gQdG2ca
	rEsF1HJg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seA5U-00000007zzL-0uEY
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 09:14:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seA5S-0006Al-Nk; Wed, 14 Aug 2024 11:14:34 +0200
Message-ID: <22b84d30-0f41-4592-ad89-1a8c8b6c5308@pengutronix.de>
Date: Wed, 14 Aug 2024 11:14:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20240809141755.312665-1-a.fatoum@pengutronix.de>
 <20240809141755.312665-4-a.fatoum@pengutronix.de>
Content-Language: en-US
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240809141755.312665-4-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_101436_562780_EA38CB37 
X-CRM114-Status: GOOD (  19.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] ARM: i.MX8M: neuter initcalls when EFI booted
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 09.08.24 16:17, Ahmad Fatoum wrote:
> When enabling EFI payload support in a build that has i.MX boards
> enabled, booting the EFI payload reports some failed initcalls.
> 
> Disable them if we don't probe from device tree or aren't on an
> i.MX system.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx.c     | 11 ++++++-----
>  arch/arm/mach-imx/scratch.c |  4 ++++
>  2 files changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
> index f3491c6df7fa..2522ce04e6f5 100644
> --- a/arch/arm/mach-imx/imx.c
> +++ b/arch/arm/mach-imx/imx.c
> @@ -89,11 +89,12 @@ static int imx_init(void)
>  	struct device_node *root;
>  
>  	root = of_get_root_node();
> -	if (root) {
> -		__imx_cpu_type = imx_soc_from_dt();
> -		if (!__imx_cpu_type)
> -			return 0;
> -	}
> +	if (!root)
> +		return 0;
> +
> +	__imx_cpu_type = imx_soc_from_dt();
> +	if (!__imx_cpu_type)
> +		return 0;
>  
>  	/*
>  	 * Don't add new SoCs to this list, instead use the new
> diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
> index b7280ff60952..e12d3401a854 100644
> --- a/arch/arm/mach-imx/scratch.c
> +++ b/arch/arm/mach-imx/scratch.c
> @@ -8,6 +8,7 @@
>  #include <mach/imx/imx9-regs.h>
>  #include <mach/imx/esdctl.h>
>  #include <mach/imx/scratch.h>
> +#include <mach/imx/generic.h>
>  #include <memory.h>
>  #include <tee/optee.h>
>  #include <pbl.h>
> @@ -95,6 +96,9 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
>  
>  static int imx8m_reserve_scratch_area(void)
>  {
> +	if (!__imx_cpu_type)
> +		return 0;
> +
>  	return request_barebox_region("scratch area",
>  				      (ulong)arm_mem_scratch_get(),
>  				      sizeof(struct imx_scratch_space)) ? 0 : -EINVAL;

Will remove this hunk in v2. We reserve the whole barebox memory region now,
so this can be dropped.



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


