Delivery-date: Mon, 04 Sep 2023 16:46:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdAq5-003otK-Ue
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 16:46:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdAq3-0003MK-P9
	for lore@pengutronix.de; Mon, 04 Sep 2023 16:46:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AOr0QfYyzTO5nr+xVjmgWZHTTsefa5OP4RDnpQeVavg=; b=44rZJEEKH+vcQgOtyTIPknSR/z
	V9iI6eOAHxH3HkLTR0i5U+4sOcx1FbOYzHA9VUTi7vWvtIUdYZBBlD2R80+eAFOjF8MttM3iA7O15
	W5mV27Be53VjJC4UxA2WNxmH7eNCpDUOClGVW0slh7nxbDc9GWGLNdSQPxFcTYK3byFnNuLjQ2s7R
	p9XoeBCKgg9zozGeMV0vl729jOr2LlYP2oLP23P/OuSZeSszMnFIZk04dAThS6muZHLv0Al+TFyNw
	McJMMvDVNwdPRP3mQyi5nOszJETItfSldwPBaQy1p8GN0PO7PakNlOQ4viB/fKppgctGtxycRjaQ4
	LS7jayRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdAoY-004I9x-3A;
	Mon, 04 Sep 2023 14:44:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdAoV-004I94-0x
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 14:44:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qdAoS-0008Ob-KJ; Mon, 04 Sep 2023 16:44:24 +0200
Message-ID: <8b7680a0-5d97-411f-e7e1-ae1dd8e26d71@pengutronix.de>
Date: Mon, 4 Sep 2023 16:44:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20230831144724.3424405-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230831144724.3424405-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_074427_353832_D09632C3 
X-CRM114-Status: GOOD (  26.04  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX8M: esdctl: split memory banks for devices
 with >4G
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 31.08.23 16:47, Marco Felsch wrote:
> At the moment the whole available memory is added to one single memory
> bank "ram0". This can cause barebox chainload issues on devices with a
> huge amount of memory like the i.MX8MP-EVK which has 6G of RAM if the
> barebox pbl binary is to large.
> 
> The reason for this issues is that memory_bank_first_find_space()
> returns the memory area with the largest amount of free space on the
> first memory bank. So in case of Debix SOM-A 8G and i.MX8MP-EVK 6G this
> is the area crossing the 4G boundary. This cause the barebox pbl code to
> trigger a MMU exception once the early MMU gets enabled which is
> configured for sizes <=4G.
> 
> Split the memory space into two memory banks: "ram0" and "ram1" to fix
> this issue.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
> - drop add_mem() usage and use arm_add_mem_device() directly
> 
>  arch/arm/mach-imx/esdctl.c | 23 +++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 1798ad48e50a..7f313b2337ae 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -510,16 +510,31 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
>  				   reduced_adress_space, mstr);
>  }
>  
> +static int _imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data,
> +			       unsigned int buswidth)
> +{
> +	resource_size_t size = imx8m_ddrc_sdram_size(mmdcbase, buswidth);
> +	resource_size_t size0, size1;
> +	int ret;
> +
> +	size0 = min_t(resource_size_t, SZ_4G - MX8M_DDR_CSD1_BASE_ADDR, size);
> +	size1 = size - size0;
> +
> +	ret = arm_add_mem_device("ram0", data->base0, size0);
> +	if (ret || size1 == 0)
> +		return ret;
> +
> +	return arm_add_mem_device("ram1", SZ_4G, size1);

This gives a warning when compiling the file for 32-bit, because resource_size_t
is 32-bit there, while SZ_4G is always an unsigned long long.

> +}
> +
>  static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  {
> -	return arm_add_mem_device("ram0", data->base0,
> -			   imx8m_ddrc_sdram_size(mmdcbase, 32));
> +	return _imx8m_ddrc_add_mem(mmdcbase, data, 32);
>  }
>  
>  static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  {
> -	return arm_add_mem_device("ram0", data->base0,
> -			   imx8m_ddrc_sdram_size(mmdcbase, 16));
> +	return _imx8m_ddrc_add_mem(mmdcbase, data, 16);
>  }
>  
>  static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



