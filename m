Delivery-date: Thu, 31 Jul 2025 11:05:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPEH-005XwW-0d
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 11:05:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPEG-0001TL-Hu
	for lore@pengutronix.de; Thu, 31 Jul 2025 11:05:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xrdC87Riz5nA60UCudsXRynd6cixxsUQxcF8D+Rp3yM=; b=hJhO/doJVCCJf46dxhb5rLJWKO
	RoSeh1G7ud4m2qXlUTbQbNJceigOw6NI/ERHeRykM4+yfLY8vwfGQxCNSIO5QGpC8NSNDwDOqbIQu
	GcJ3soDIw/+D4WqWS8W0UGv//HV+Y9rHtkBxgXv7Aw1Vtth5br1LPP14Vx6I3O3EFtzVvnP1zT71K
	kFohiJMCbbsTJlV+K1AMn0mVyN2w7+T7rezY+PfqQkKVBiRlpuoaJOhPc9SGELo4ffgugSY5S+nrc
	Ieb0FvgrXVX46l/VeVEr42+6KYO8Kizj9dznUc4swWxrEgH6K+E5szvtuj1p1cA0sH52hk5qRhlFd
	GD9WWmdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPDn-00000003EW1-0Nnz;
	Thu, 31 Jul 2025 09:05:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPBN-00000003EFp-2lPV
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 09:02:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uhPBK-0000z3-H4; Thu, 31 Jul 2025 11:02:34 +0200
Message-ID: <1edd18f3-5670-4ff2-becc-adbf7b911d8e@pengutronix.de>
Date: Thu, 31 Jul 2025 11:02:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: mathieu.anquetin@groupe-cahors.com, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
References: <20250718-fix_imx9_ddr_init-v1-1-b52def9e7ee5@groupe-cahors.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250718-fix_imx9_ddr_init-v1-1-b52def9e7ee5@groupe-cahors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_020237_700358_43AD8C05 
X-CRM114-Status: GOOD (  25.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ddr: imx9: fix DRAM PLL bypass
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Mathieu,

Thanks for your patch

On 7/18/25 20:12, Mathieu Anquetin via B4 Relay wrote:
> From: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>
> 
> On i.MX9, clock selection for DDR PHY is done by setting/clearing bit 0
> of GPR_SHARED2 register.
> 
> This is done using the generic function ccm_shared_gpr_set() which takes
> two arguments, the GPR number and the value to set. However, this
> function did not use the GPR number to calculate the offset of the
> GPR_SHAREDn register to set in the CCM.
> 
> Therefore, it was not possible to enable/disable DRAM PLL bypass
> correctly and this led to hangs when training the DDR PHY with some
> frequencies (like 625MT/s).
> 
> Fixes: e6234f907416 ("ddr: Initial i.MX9 support")
> Signed-off-by: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Sascha is on vacation this month, but I assume he can pick this for the
next release.

Cheers,
Ahmad

> ---
> Some DRAM timing configurations require to change the input clock signal
> and to bypass the DRAM PLL. This is done by setting bit 0 of the
> GPR_SHARED2 register of the CLock Controller Module. However, the
> register offset to set was not calculated correctly, leading to hangs
> during PHY training when PLL bypass was required.
> 
> In particular, this was the case for the configuration setting the FSP
> to 625MT/s.
> ---
>  drivers/ddr/imx/imx9_ddr_init.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/ddr/imx/imx9_ddr_init.c b/drivers/ddr/imx/imx9_ddr_init.c
> index cdee18e4ad0e4cee1b13bd2aab4b53ffcb537e49..086827d9b34c49a76426289b707aad6fa474d065 100644
> --- a/drivers/ddr/imx/imx9_ddr_init.c
> +++ b/drivers/ddr/imx/imx9_ddr_init.c
> @@ -352,6 +352,8 @@ static void save_trained_mr12_14(struct dram_cfg_param *cfg, u32 cfg_num, u32 mr
>  
>  #define MHZ(x)        ((x) * 1000000UL)
>  
> +#define SHARED_GPR(n) (0x4800 + ((n) * 0x20))
> +
>  #define SHARED_GPR_DRAM_CLK 2
>  #define SHARED_GPR_DRAM_CLK_SEL_PLL 0
>  #define SHARED_GPR_DRAM_CLK_SEL_CCM BIT(0)
> @@ -376,7 +378,7 @@ static int dram_pll_init(u32 freq)
>  
>  static void ccm_shared_gpr_set(u32 gpr, u32 val)
>  {
> -	writel(val, IOMEM(MX9_CCM_BASE_ADDR + 0x4800));
> +	writel(val, IOMEM(MX9_CCM_BASE_ADDR + SHARED_GPR(gpr)));
>  }
>  
>  #define DRAM_ALT_CLK_ROOT	76
> 
> ---
> base-commit: f49c873d7ec78a2df7bd3c7a86f5372fb1666517
> change-id: 20250718-fix_imx9_ddr_init-6ccf9db195be
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



