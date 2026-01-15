Delivery-date: Thu, 15 Jan 2026 14:09:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgN5y-001bFm-0n
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 14:09:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgN5x-0001Ka-5C
	for lore@pengutronix.de; Thu, 15 Jan 2026 14:09:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BrkuDyhR7pjW0w9rGyroFVcLf4G9qxX9JN5U6FGgtoA=; b=JrsRQhSljzO424us1WnGYbLM4G
	MKkTxQ1LXeTaDmviXE2Y3ynnDkBjb45IrN6NsAMDGvnxiFXLyuICYtoajgRvUebmQrHIPO5EtbgkL
	9YDNSyY1PlLHGLAqV9RWjSSpoNh0Q41BniDcXspGZiUjX/2b1F2CNyC3JTcRKafHzzhZZQ02kSUkN
	kqiwjS4R2hMyfzPa6AiURcmKlW/1UkfFOLnviAhuBCiqQoq/ppalkr4wk0IGqWs2EBsP9u1M/og7J
	YWssUXKILYyBtHIvdPcnNRiFiksVbGG4Ol5nDWi8jRI1ABb3fIKGLebO6AuvAN22Xc6BeAj4RU1zC
	trPtmIMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgN5R-0000000CNtB-1FwP;
	Thu, 15 Jan 2026 13:08:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgN5O-0000000CNsg-3kXP
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 13:08:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgN5N-0001Fg-6I; Thu, 15 Jan 2026 14:08:25 +0100
Message-ID: <84c36ae8-8e47-4ca0-9686-9a38dffad70a@pengutronix.de>
Date: Thu, 15 Jan 2026 14:08:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-11-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-11-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_050826_938053_D1777C51 
X-CRM114-Status: GOOD (  21.30  )
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
Subject: Re: [PATCH 11/23] ARM: i.MX8M: esdctl: drop ddrc base from
 imx8m_ddrc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

On 11/10/25 9:34 PM, Marco Felsch wrote:
> All i.MX8M use the same DDRC MMIO address. Therefore drop the ddrc param
> from imx8m_ddrc_sdram_size() and set it locally.
> 
> While on it drop the param from _imx8m_ddrc_add_mem() as well since it
> is no longer needed to be passed to imx8m_ddrc_sdram_size().
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> ---
>  arch/arm/mach-imx/esdctl.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 4c4c3528e1a6e68c508edc48ad38c9e2e6324c1c..0a1e042792bd90b40ffc8084efbdc5a25ba0dd02 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -467,8 +467,9 @@ static void imx_ddrc_set_mstr_device_config(u32 *mstr, unsigned bits)
>  	*mstr |= FIELD_PREP(DDRC_MSTR_DEVICE_CONFIG, fls(bits / 8));
>  }
>  
> -static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswidth)
> +static resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth)
>  {
> +	void __iomem *ddrc = IOMEM(MX8M_DDRC_CTL_BASE_ADDR);
>  	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
>  		readl(ddrc + DDRC_ADDRMAP(0)),
>  		readl(ddrc + DDRC_ADDRMAP(1)),
> @@ -518,10 +519,10 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
>  				   reduced_adress_space, mstr);
>  }
>  
> -static int _imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data,
> +static int _imx8m_ddrc_add_mem(const struct imx_esdctl_data *data,
>  			       unsigned int buswidth)
>  {
> -	resource_size_t size = imx8m_ddrc_sdram_size(mmdcbase, buswidth);
> +	resource_size_t size = imx8m_ddrc_sdram_size(buswidth);
>  	resource_size_t size0, size1;
>  	int ret;
>  
> @@ -555,12 +556,12 @@ static int _imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *dat
>  
>  static int imx8m_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
>  {
> -	return _imx8m_ddrc_add_mem(mmdcbase, data, 32);
> +	return _imx8m_ddrc_add_mem(data, 32);
>  }
>  
>  static int imx8mn_ddrc_add_mem(void *mmdcbase, const struct imx_esdctl_data *data)
>  {
> -	return _imx8m_ddrc_add_mem(mmdcbase, data, 16);
> +	return _imx8m_ddrc_add_mem(data, 16);
>  }
>  
>  #define IMX9_DDRC_CS_CONFIG(n)	(0x80 + (n) * 4)
> @@ -1001,7 +1002,7 @@ resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
>  {
>  	resource_size_t size;
>  
> -	size = imx8m_ddrc_sdram_size(IOMEM(MX8M_DDRC_CTL_BASE_ADDR), buswidth);
> +	size = imx8m_ddrc_sdram_size(buswidth);
>  	/*
>  	 * We artificially limit detected memory size to force malloc
>  	 * pool placement to be within 4GiB address space, so as to
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



