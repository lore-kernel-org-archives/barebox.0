Delivery-date: Tue, 24 Jun 2025 13:19:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1gj-00AaFU-1W
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 13:19:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1gi-0001nL-Sy
	for lore@pengutronix.de; Tue, 24 Jun 2025 13:19:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qNi9Qsle9bke0gHEOp6BYrVvgvGlyWJc4nOYybHtIjo=; b=wZ8aI4WdYCSsm7upRUULG2s4+y
	ESnrhlpJBl6WvjOa2jG8ik0aO+VZCu+HRPdP7H2op7R/lBqqh4jqBstZ08m9UVBBVi0naTjC+M1CD
	FO9ylmxAeIi7Yppil9U9vbSFkM6CJKRxrT9LrsJec5HwTMQntPu1iaHSRw3hQ/BulMjm98FjHNNbp
	qP2z8MrYixCewsDG8mVkS0k3h/fYCcVi80fp2yLt0BSceenNrTiLzqf6aQ6wMMXC3Ff7bnxibchrD
	4sO0b9hBeR1dYyTGrFgZgGFWjVwIpdS7EyVrxyMyM24NGKpTPqW9HcW/XR0bKREH7SzJ6xDZVafQp
	qw2mhvyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU1gK-00000005PpD-0EP1;
	Tue, 24 Jun 2025 11:19:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU0zY-00000005Jwc-2rlB
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 10:35:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU0zX-0007S7-Gx; Tue, 24 Jun 2025 12:35:03 +0200
Message-ID: <9acc260b-5292-44e2-aee5-b629bd9052f4@pengutronix.de>
Date: Tue, 24 Jun 2025 12:35:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20250619152556.3749995-1-m.felsch@pengutronix.de>
 <20250619152556.3749995-2-m.felsch@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250619152556.3749995-2-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_033504_746024_35D41899 
X-CRM114-Status: GOOD (  14.37  )
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
Subject: Re: [PATCH 2/5] ARM: i.MX6Q: add imx6_get_mmdc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 6/19/25 17:25, Marco Felsch wrote:
> Add a helper to query the MMDC configured SDRAM size.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-imx/esdctl.c | 5 +++++
>  include/mach/imx/esdctl.h  | 1 +
>  2 files changed, 6 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 701ca0ac1f37..7a09f43071c2 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -286,6 +286,11 @@ static inline resource_size_t imx6_mmdc_sdram_size(void __iomem *mmdcbase)
>  	return size;
>  }
>  
> +resource_size_t imx6_get_mmdc_sdram_size(void)
> +{
> +	return imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR));
> +}
> +
>  static int imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  {
>  	return arm_add_mem_device("ram0", data->base0,
> diff --git a/include/mach/imx/esdctl.h b/include/mach/imx/esdctl.h
> index d79bf17959e6..97bd444b1a4c 100644
> --- a/include/mach/imx/esdctl.h
> +++ b/include/mach/imx/esdctl.h
> @@ -151,6 +151,7 @@ void __noreturn imx7d_barebox_entry(void *boarddata);
>  void __noreturn imx93_barebox_entry(void *boarddata);
>  #define imx6sx_barebox_entry(boarddata) imx6ul_barebox_entry(boarddata)
>  void imx_esdctl_disable(void);
> +resource_size_t imx6_get_mmdc_sdram_size(void);
>  resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth);
>  resource_size_t imx9_ddrc_sdram_size(void);
>  #endif

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



