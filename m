Delivery-date: Mon, 09 Mar 2026 15:57:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzc2e-009mMS-0M
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 15:57:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzc2e-0007yc-38
	for lore@pengutronix.de; Mon, 09 Mar 2026 15:57:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iTQPLLtSOK2+eE2iwx5IMt5bKWMQYbnRPRsekIsn4AI=; b=VsjeCVnSgpwQ5pAyoOuELcYCUU
	Ycymi5dUXxhJw6spT8Kq0vTSY3Yr7guyqyR1LGj2xzeuZ80OuUii+J9xdrJtjsnvkE8him2X9gHfA
	rVxbSti/W4bx79pdbGpfZfowm1oXm2fWMfF0HGXlSAnCGxXfF5DlBmyULMe+7rHNE8tZ0OAeZvsRu
	CA0Hy5tCsfCDSII9zbWsvoFqUi+TJx1cJqxWTDwmoo2gyU60HBZGRatSgRwWVC/Fol1XDYFmTw1j7
	S35NYnngmmjUtV2lpNMzyMXDHy/CAPfN/Rx5taVGlUQiPY5IHH7UWCrbGoAosMP5NMHuOxxD6HB8P
	hutcxn1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzc21-00000007Wx0-3P8P;
	Mon, 09 Mar 2026 14:56:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzc1z-00000007WwS-1WqI
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 14:56:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vzc1v-0007jf-Rb; Mon, 09 Mar 2026 15:56:23 +0100
Message-ID: <21c01eb2-9227-4088-97cf-2ee85a5f8539@pengutronix.de>
Date: Mon, 9 Mar 2026 15:56:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: David Jander <david@protonic.nl>
References: <20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de>
 <20260309-v2026-02-0-topic-imx8-ecc-v2-2-6aab6d795061@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260309-v2026-02-0-topic-imx8-ecc-v2-2-6aab6d795061@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_075627_512921_A995783F 
X-CRM114-Status: GOOD (  31.52  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] arm: mach-imx: esdctl.c: Add support for imx8mp
 inline ECC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 3/9/26 8:46 AM, Steffen Trumtrar wrote:
> From: David Jander <david@protonic.nl>
> 
> This adds support for detecting the use of inline ECC and compute the
> correct memory bank(s) in that case.
> In case inline ECC is active the memory map is modified as follows:
> The total memory size is reduced to 7/8th of the raw memory size.
> If a reduced-address-space type RAM is used (0.75, 1.5, 3, 6... GiB), then
> the whole address space is split up into 3 equal parts, separated by 1/3rd
> of the raw address space, but each 7/8th that size.
> The ECC area at the end of each part is not addressable and must be
> excluded from the map.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig  |  8 +++++
>  arch/arm/mach-imx/esdctl.c | 77 +++++++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 84 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index d244c57580..08b0a955c6 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -1026,6 +1026,14 @@ config HABV3_IMG_CRT_DER
>  
>  endif
>  
> +config IMX8MP_DRAM_ECC
> +	bool
> +	depends on ARCH_IMX8MP
> +	help
> +	  The i.MX8MP SoC supports ECC on the LPDDR4 memory. Select Y to enable
> +	  this feature. The total amount of memory available will be reduced by
> +	  1/8th.

Help text doesn't reflect reality anymore after removal of the prompt.
Suggestion:

This option is selected by boards that make use of the inline ECC
support for LPDDR4 memory on i.MX8MP SoCs. For board images that
configure ECC, the total amount of memory available will be reduced by
1/8th.
Boards that don't explicitly make use of it are not affected.

> +static resource_size_t imx8mp_ddrc_sdram_size(void __iomem *ddrc,
> +		unsigned int *chunks, resource_size_t *stride)
> +{
> +	resource_size_t size = imx8m_ddrc_sdram_size(ddrc, 32);
> +	const bool reduced_address_space = FIELD_GET(
> +		DDRC_ADDRMAP6_LPDDR4_6GB_12GB_24GB, readl(ddrc + DDRC_ADDRMAP(6)));
> +
> +	/* ECC devides the accessible address space into 1 or 3 contiguous

divides


> +static int imx8mp_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
> +{
> +	unsigned int chunks;
> +	unsigned long base;
> +	resource_size_t chunksize = 0, stride = 0;
> +	int ret = -ENOMEM;
> +	int i;
> +	char name[5];
> +
> +	chunksize = imx8mp_ddrc_sdram_size(mmdcbase, &chunks, &stride);
> +
> +	base = data->base0;
> +	for (i = 0; i < chunks; i++) {
> +		snprintf(name, 5, "ram%d", i);

sizeof(name)

>  static __maybe_unused const struct imx_esdctl_data imx9_data = {
>  	.base0 = MX9_DDR_CSD1_BASE_ADDR,
>  	.add_mem = imx9_ddrc_add_mem,
> @@ -822,6 +885,12 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
>  	}, {
>  		.compatible = "fsl,imx8mn-ddrc",
>  		.data = &imx8mn_data
> +	}, {
> +		.compatible = "fsl,imx8mp-ddrc",
> +		.data = &imx8mp_data
> +	}, {
> +		.compatible = "fsl,imx8mq-ddrc",
> +		.data = &imx8mp_data

Are you sure that the original i.MX8M Quad supports ECC?

>  	}, {
>  		.compatible = "fsl,imx93-ddrc",
>  		.data = &imx9_data
> @@ -1000,9 +1069,15 @@ void __noreturn vf610_barebox_entry(void *boarddata)
>  
>  resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
>  {
> +	unsigned int chunks;
> +	resource_size_t stride = 0;

Drop and just pass NULL as pointer?

>  	resource_size_t size;
>  
> -	size = imx8m_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR), buswidth);
> +	if (imx_esdctl_ecc_enabled(IOMEM(MX8M_DDRC_CTL_BASE_ADDR)))
> +		size = imx8mp_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR), &chunks,
> +				&stride);
> +	else
> +		size = imx8m_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR), buswidth);
>  	/*
>  	 * We artificially limit detected memory size to force malloc
>  	 * pool placement to be within 4GiB address space, so as to
> 

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



