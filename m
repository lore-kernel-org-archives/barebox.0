Delivery-date: Fri, 19 Jan 2024 16:22:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQqhe-007DPV-20
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 16:22:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQqhf-0008Vk-9O
	for lore@pengutronix.de; Fri, 19 Jan 2024 16:22:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yl7lyXiQ4tvGG65UcWOhTtyvzLZPnd9rsUdTvYBR6Cw=; b=i1k47wJj/GJSK0+z2/EBEAhe0g
	UPLUEUeuRaR/GbIX3QdE+OHr9ey23rvvoYpr7ttsglS8mwZyNmYuGjIqHP9s5PlQXIaVI7w6kBIre
	8kpJpik5RcW1crIRa/9xkIRXVu6HrUon+TsIgXVGqifC74KRtsL2keJUAdnZ4YwaqgKCes8DILcfN
	L1cnviR5/FV+kF6xl+MqvFKaNJpRXBZBo+TsYnZ/Tt09hAnXV1zxwPL9ZQmMkDcpZwkYeXHEGnAsJ
	MBI8VchA9GIo0DMpClHIR8Hfj05TgQG1NH8ckGu8MqZj80718inux/e4EoQeL5GwrCuzYAw0k+oIQ
	DZyWPmOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQqgj-005z2y-0g;
	Fri, 19 Jan 2024 15:21:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQqgf-005z23-2g
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 15:21:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqge-0008Nr-M4; Fri, 19 Jan 2024 16:21:40 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqge-000wsr-9i; Fri, 19 Jan 2024 16:21:40 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQqge-000kJn-7O; Fri, 19 Jan 2024 16:21:40 +0100
Date: Fri, 19 Jan 2024 16:21:40 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240119152140.h2ssmxe5yhelxtla@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
 <20240119142413.3206832-6-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119142413.3206832-6-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_072141_864222_81805F3E 
X-CRM114-Status: GOOD (  15.68  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/7] ARM: i.MX: export imx9_ddrc_sdram_size()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-19, Sascha Hauer wrote:
> imx9_ddrc_sdram_size() will be needed by upcoming i.MX93 scratch space
> support, so export it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  arch/arm/mach-imx/esdctl.c | 7 ++++---
>  include/mach/imx/esdctl.h  | 1 +
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 2dc858c87f..9c2c4b105d 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -563,8 +563,9 @@ static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  #define IMX9_DDRC_CS_COL_BITS	GENMASK(2, 0)
>  #define IMX9_DDRC_CS_EN		BIT(31)
>  
> -static resource_size_t imx9_ddrc_sdram_size(void __iomem *mmdcbase)
> +resource_size_t imx9_ddrc_sdram_size(void)
>  {
> +	void __iomem *mmdcbase = IOMEM(MX9_DDR_CTL_BASE);
>  	int width = 2;
>  	int banks = 8;
>  	unsigned long mem = 0;
> @@ -593,7 +594,7 @@ static resource_size_t imx9_ddrc_sdram_size(void __iomem *mmdcbase)
>  
>  static int imx9_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  {
> -	return arm_add_mem_device("ram0", data->base0, imx9_ddrc_sdram_size(mmdcbase));
> +	return arm_add_mem_device("ram0", data->base0, imx9_ddrc_sdram_size());
>  }
>  
>  static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
> @@ -1047,5 +1048,5 @@ void __noreturn imx7d_barebox_entry(void *boarddata)
>  void __noreturn imx93_barebox_entry(void *boarddata)
>  {
>  	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR,
> -			  imx9_ddrc_sdram_size(IOMEM(MX9_DDR_CTL_BASE)), boarddata);
> +			  imx9_ddrc_sdram_size(), boarddata);
>  }
> diff --git a/include/mach/imx/esdctl.h b/include/mach/imx/esdctl.h
> index 4898a3e682..d79bf17959 100644
> --- a/include/mach/imx/esdctl.h
> +++ b/include/mach/imx/esdctl.h
> @@ -152,6 +152,7 @@ void __noreturn imx93_barebox_entry(void *boarddata);
>  #define imx6sx_barebox_entry(boarddata) imx6ul_barebox_entry(boarddata)
>  void imx_esdctl_disable(void);
>  resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth);
> +resource_size_t imx9_ddrc_sdram_size(void);
>  #endif
>  
>  #endif /* __MACH_ESDCTL_V2_H */
> -- 
> 2.39.2
> 
> 
> 


