Delivery-date: Fri, 06 Feb 2026 13:04:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKZf-009TNO-2q
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 13:04:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voKZe-0002sA-MY
	for lore@pengutronix.de; Fri, 06 Feb 2026 13:04:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R4RAbGcrGGBTzUWeoRC9PyUoZli0KExyCwCOc2syMGY=; b=ae32DvSX9etr2XecIC0tbwF8SH
	a335Exg9kZgBEozBCKgLu47h1kcdxvF/9VXYoeUShAZEV6gR6S/ceEAlS2MGfWSpJch+pe415hjwZ
	yh7kM2714KYiyYF9I1Ln8yRruU/IR175eDM1/OrBIQh0K3K3aD2aqT2SqaaCuD6/WnzrFfiLZltwY
	RWMkcCXY9+1wpceW9Z1Bwb9qwfhWgoFWTVh0SL3ELg+ppM4cprtk/fyuCmaIi3vFMjbc8SESM5OaB
	H77sDxojZU4HdqEBtlUAQh4uBlEVNwVsYBR5fucfIO66rWNHdHIViu8yTYPQw/9TJ3Ca9nLcd8o7S
	1eeMm5Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKZD-0000000BHIh-1oWF;
	Fri, 06 Feb 2026 12:04:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voKZA-0000000BHII-1Tjq
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 12:04:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voKZ8-0002mp-NM; Fri, 06 Feb 2026 13:04:02 +0100
Message-ID: <a438a3a9-cbf5-4673-a3a8-ce2a9ec739af@pengutronix.de>
Date: Fri, 6 Feb 2026 13:04:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-13-da075e6818e0@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-13-da075e6818e0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_040404_441621_BAEC2875 
X-CRM114-Status: GOOD (  26.88  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 13/15] ARM: i.MX8M: Pass optional OP-TEE overlay to
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 2/4/26 9:01 PM, Marco Felsch wrote:
> This commit adds the support to pass the optional OP-TEE overlay from
> pbl to barebox for all i.MX8M SoCs.
> 
> There is no difference between ARMv7 and ARMv8, therefore the helper
> name to pass the overlay is generic.
> 
> That being said, on ARMv8 it's required to use the
> ARCH_IMX_ATF_PASS_BL_PARAMS mechanism, else the devicetree location
> can't be passed to OP-TEE. Therefore a sanity check for ARMv8 is added.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-imx/esdctl.c | 40 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index e4b4ca561094e2dac99f475b93efc8fc7e962d9e..abd2cb29f01f19b19e9285b513fc289a3fa60305 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -877,6 +877,45 @@ upper_or_coalesced_range(unsigned long base0, unsigned long size0,
>  	}
>  }
>  
> +static void imx_optee_handoff_overlay(void)
> +{
> +	unsigned int early_fdt_sz;
> +	u8 *early_fdt;
> +
> +	/*
> +	 * On ARMv8 i.MX SoCs CONFIG_ARCH_IMX_ATF_PASS_BL_PARAMS must be enabled
> +	 * else no FDT is passed to OP-TEE.
> +	 */
> +	if (IS_ENABLED(CONFIG_CPU_V8) &&
> +	    !IS_ENABLED(CONFIG_ARCH_IMX_ATF_PASS_BL_PARAMS))
> +		return;
> +
> +	early_fdt = imx_scratch_get_fdt(&early_fdt_sz);
> +	if (IS_ERR(early_fdt)) {
> +		pr_warn("Failed to get FDT scratch mem, skip register OP-TEE DTBO\n");
> +		return;
> +	}
> +
> +	/* SCRATCH_FDT_SIZE == 0 if no early FDT was required */
> +	if (!early_fdt)
> +		return;
> +
> +	/*
> +	 * OP-TEE DT handling is really cumbersome. In case an external DT was
> +	 * supplied, OP-TEE re-use this DT and appends overlays if enabled.
> +	 *
> +	 * Register the whole early FDT as overlay and let the barebox common
> +	 * code extract the __fragment__'s from the early FDT which should be
> +	 * faster than doing it here manually via libfdt and no MMU.
> +	 *
> +	 * Note: This assumes that OP-TEE is the only one adding __fragment__'s.
> +	 * This is always the case on ARMv7, but on ARMv8 the BL31 (TF-A) could
> +	 * add __fragment__'s too. Since the barebox i.MX port doesn't pass the
> +	 * FDT to the TF-A this is fine for now.
> +	 */
> +	optee_handoff_overlay(early_fdt, early_fdt_sz);
> +}
> +
>  void __noreturn imx1_barebox_entry(void *boarddata)
>  {
>  	unsigned long base, size;
> @@ -1020,6 +1059,7 @@ static void __noreturn imx8m_barebox_entry(void *boarddata, unsigned buswidth)
>  {
>  	imx8m_init_scratch_space(buswidth, false);
>  	optee_set_membase(imx_scratch_get_optee_hdr());
> +	imx_optee_handoff_overlay();
>  	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR,
>  			  imx8m_barebox_earlymem_size(buswidth), boarddata);
>  }
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



