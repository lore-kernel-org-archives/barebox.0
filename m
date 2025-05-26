Delivery-date: Mon, 26 May 2025 18:34:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJam8-000Zw7-1K
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 18:34:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJam7-0007pX-QS
	for lore@pengutronix.de; Mon, 26 May 2025 18:34:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HyTM49HwfS+oM5Bn7G42uGQUk6YEv/LJghz9cOK14wU=; b=YDGgS/bqdrtfEYuxsg3BZD+1nA
	tEOItTzYPYqyE2Bkbu/NepA8G/NnKCmbFs33gYc4HmjkcR67VhPemmTJSQTPBv5BdBjtM39ILNHIg
	R60d9Eaz0c5nrzg306Moh6LG7eMU4N/O0w/QV5a8OGrl+aUtRP+kiFZGR7riromsRW1kfaKqG1j5l
	mmyJxJnOPvUpsYtakONAgWRaEhpFJMjCOKGKg0yWMyFIoYCG8GxGtJenjmVVTeNllSvRDYulQkN1e
	gqJ88D8aCL+iY4JBERZV66XdJF0TqJW3hnddcW1rdr1p5khVKXao8Xueaic5oxFKYb4ULrLLN6AUI
	zgpTDAKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJalb-00000009Ewe-0wBc;
	Mon, 26 May 2025 16:33:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJalY-00000009Evw-1dcT
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 16:33:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJalV-0007Yr-D5; Mon, 26 May 2025 18:33:29 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJalV-000HLm-0I;
	Mon, 26 May 2025 18:33:29 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJalV-00Acy8-01;
	Mon, 26 May 2025 18:33:29 +0200
Date: Mon, 26 May 2025 18:33:28 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250526163328.66vokf3qcnsrtsjz@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-7-5004995cbd03@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250526-rk3588-optee-v1-7-5004995cbd03@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_093332_431542_885EA979 
X-CRM114-Status: GOOD (  18.35  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 7/9] ARM: rockchip: dmc: add rk3588_ram_sizes to get full
 ram size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-05-26, Michael Tretter wrote:
> The PBL has to pass a full description of the SDRAM to OP-TEE to allow
> OP-TEE to handle dynamic shared memory in the entire SDRAM. Thus, the
> PBL needs to read the full memory configuration.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/dmc.c | 37 ++++++++++++++++++++++++++++++++++---
>  include/mach/rockchip/dmc.h  |  2 ++
>  2 files changed, 36 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
> index 62a7ef8f1e38e989e84f08f6f4a6586be3e85532..260b8be9c7da9e8f83323822eab92a439ef4e2ef 100644
> --- a/arch/arm/mach-rockchip/dmc.c
> +++ b/arch/arm/mach-rockchip/dmc.c
> @@ -171,11 +171,12 @@ resource_size_t rk3568_ram0_size(void)
>  #define RK3588_PMUGRF_OS_REG4           0x210
>  #define RK3588_PMUGRF_OS_REG5           0x214
>  
> -resource_size_t rk3588_ram0_size(void)
> +size_t rk3588_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)

Nit: could be void since you don't check the return value.

Regards,
  Marco

>  {
>  	void __iomem *pmugrf = IOMEM(RK3588_PMUGRF_BASE);
>  	u32 sys_reg2, sys_reg3, sys_reg4, sys_reg5;
> -	resource_size_t size, size1, size2;
> +	resource_size_t memsize, size1, size2;
> +	size_t i = 0;
>  
>  	sys_reg2 = readl(pmugrf + RK3588_PMUGRF_OS_REG2);
>  	sys_reg3 = readl(pmugrf + RK3588_PMUGRF_OS_REG3);
> @@ -187,7 +188,37 @@ resource_size_t rk3588_ram0_size(void)
>  
>  	pr_info("%s() size1 = 0x%08llx, size2 = 0x%08llx\n", __func__, (u64)size1, (u64)size2);
>  
> -	size = min_t(resource_size_t, RK3588_INT_REG_START, size1 + size2);
> +	memsize = size1 + size2;
> +
> +	base[i] = 0xa00000;
> +	size[i] = min_t(resource_size_t, RK3588_INT_REG_START, memsize) - 0xa00000;
> +	i++;
> +
> +	if (i < n && memsize > SZ_4G) {
> +		base[i] = SZ_4G;
> +		size[i] = min_t(unsigned long, DRAM_GAP1_START, memsize) - SZ_4G;
> +		i++;
> +	}
> +	if (i < n && memsize > DRAM_GAP1_END) {
> +		base[i] = DRAM_GAP1_END;
> +		size[i] = min_t(unsigned long, DRAM_GAP2_START, memsize) - DRAM_GAP1_END;
> +		i++;
> +	}
> +	if (i < n && memsize > DRAM_GAP2_END) {
> +		base[i] = DRAM_GAP2_END;
> +		size[i] = memsize - DRAM_GAP2_END;
> +		i++;
> +	}
> +
> +	return i;
> +}
> +
> +resource_size_t rk3588_ram0_size(void)
> +{
> +	phys_addr_t base;
> +	resource_size_t size;
> +
> +	rk3588_ram_sizes(&base, &size, 1);
>  
>  	return size;
>  }
> diff --git a/include/mach/rockchip/dmc.h b/include/mach/rockchip/dmc.h
> index 3df9aa5e9c87857e9ac3994e0e40c60d8c91b0a4..bb5a5afd02417920446c729b96eeb90f1fa0ead0 100644
> --- a/include/mach/rockchip/dmc.h
> +++ b/include/mach/rockchip/dmc.h
> @@ -87,4 +87,6 @@ resource_size_t rk3399_ram0_size(void);
>  resource_size_t rk3568_ram0_size(void);
>  resource_size_t rk3588_ram0_size(void);
>  
> +size_t rk3588_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n);
> +
>  #endif
> 
> -- 
> 2.39.5
> 
> 
> 


