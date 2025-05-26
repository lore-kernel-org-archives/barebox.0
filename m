Delivery-date: Mon, 26 May 2025 19:25:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJba1-000ajD-2r
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 19:25:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJba1-0000Eo-AZ
	for lore@pengutronix.de; Mon, 26 May 2025 19:25:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1VGFSrHT+3yVtye4W+Xewrt6cogqK2gTq/o9cboTLMA=; b=GW0Al6u6fuUP03iHK2XEU5p2JC
	st2yrS2H+La9oA6zNMz97EGrH1+aEQKGEL/6t0Kp5831TwEQyKVXlHiRTI9Ou9OwnyxO+lYFssltb
	WFY4GOwUsqy88HYMg7aG/uh3fdCG9rUlsVUKi1ZLbi04TazndsF8iXHzXv3zvWALE89mnbUtUpkb4
	TnfH1TmgCnDNdawrzNsuRnu6NXgCEDmW2XUX7zmNn+QOkpl55ljuKAeHawzyk0OiWXiMgq+tzyb20
	loyxXpOhaXunOmd8pPzUzbw+3rMDXr3UejrWws2GR5mcs1sA1dLq/PRdEWSKeeoNVXYTCfx+HNQp4
	1R/wuy6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJbZT-00000009JiZ-0Fui;
	Mon, 26 May 2025 17:25:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJbZP-00000009JiA-3mwp
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 17:25:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJbZO-0008MG-1c; Mon, 26 May 2025 19:25:02 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJbZN-000Hk7-2l;
	Mon, 26 May 2025 19:25:01 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJbZN-00AdaF-2T;
	Mon, 26 May 2025 19:25:01 +0200
Date: Mon, 26 May 2025 19:25:01 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250526172501.6fxqalqb7lbfgagk@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-9-5004995cbd03@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250526-rk3588-optee-v1-9-5004995cbd03@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_102503_951150_0BF6DA41 
X-CRM114-Status: GOOD (  21.91  )
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
Subject: Re: [PATCH 9/9] ARM: rockchip: fixup memory in device tree for TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

On 25-05-26, Michael Tretter wrote:
> Add the memory nodes for the detected SDRAM configuration to the fdt
> before passing it to the TF-A.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/atf.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index 12cf13717b6972c2eafc5a044ae8d0b4de029c32..342af302aa25089acce3c91df0ea38cbe71e0add 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -173,6 +173,26 @@ void rk3588_atf_load_bl31(void *fdt)
>  	rockchip_atf_load_bl31(RK3588, rk3588_bl31_bin, rk3588_bl32_bin, fdt);
>  }
>  
> +#ifdef CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT
> +static int rk3588_fixup_mem(void *fdt)
> +{
> +	/* Use 4 blocks since rk3588 has 3 gaps in the address space */
> +	unsigned long base[4];
> +	unsigned long size[ARRAY_SIZE(base)];
> +	phys_addr_t base_tmp[ARRAY_SIZE(base)];
> +	resource_size_t size_tmp[ARRAY_SIZE(base_tmp)];
> +	int i, n;
> +
> +	n = rk3588_ram_sizes(base_tmp, size_tmp, ARRAY_SIZE(base_tmp));
> +	for (i = 0; i < n; i++) {
> +		base[i] = base_tmp[i];
> +		size[i] = size_tmp[i];
> +	}
> +
> +	return fdt_fixup_mem(fdt, base, size, i);

This fixup will run on a RO marked section if I got the code correct.
Also the fixup logic doesn't work for compressed device-tree's.

I had an offlist discussion with Ahmad last week exactly targeting such
use-case (passing the dt from firmware to firmware). The conclusion was
that each firmware should generate an overlay which will be applied to
the barebox live-dt and the kernel-dt later on.

Question: Is this to late for OP-TEE? I don't know the RK3588 nor the
OP-TEE integration for it, but on i.MX8M the OP-TEE SHM doesn't require
any device-tree yet.

Regards,
  Marco

> +}
> +#endif
> +
>  void __noreturn rk3588_barebox_entry(void *fdt)
>  {
>  	unsigned long membase, endmem;
> @@ -187,6 +207,8 @@ void __noreturn rk3588_barebox_entry(void *fdt)
>  		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
>  
>  #ifdef CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT
> +		if (rk3588_fixup_mem(fdt) != 0)
> +			pr_warn("Failed to fixup memory\n");
>  		rk3588_atf_load_bl31(fdt);
>  #else
>  		rk3588_atf_load_bl31(NULL);
> 
> -- 
> 2.39.5
> 
> 
> 


