Delivery-date: Tue, 09 Jun 2026 14:53:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWvxg-003zVI-2a
	for lore@lore.pengutronix.de;
	Tue, 09 Jun 2026 14:53:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWvxg-00045D-5v
	for lore@pengutronix.de; Tue, 09 Jun 2026 14:53:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wUCzCIICLp44KLCYUuXpWmncxjB41nlzj1E0pAl5FAY=; b=ryx/YRjAFv/OwZUqmj+f+/AvB9
	38D+Efp2gh+bLJ78OT9bozOIaTqXTcrdp+Oij5MHz5+jEiTHdmpAAZZKQpM634Ry0CvqBN8U5JYeL
	i1sEPsW8Sgmq0UYBI/oMJCOpSAuR7FyssWY94X4rYcthqQbq2Mu1Ao9xXUqDqLoVcmj28PS1R0V3E
	I7W8SD78qU0CEHGkUuxwFKCULZMCADD6afbRkCJdkuwYDJnSQwj9kjX1IGHjjJLQ/7+YQWKbkmi8y
	t54KqzFjYy8yhSEySx6EneUmWYQd5jEHrsT/teTDkzIIB7LIFCrvO4hbLIU/ilUy6euQXvcLtTCOY
	EX2pdR8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWvvw-00000005bLs-2Q87;
	Tue, 09 Jun 2026 12:51:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWvvt-00000005bLW-2BIS
	for barebox@lists.infradead.org;
	Tue, 09 Jun 2026 12:51:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1wWvvr-0003mn-87; Tue, 09 Jun 2026 14:51:51 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1wWvvr-001tFh-0e;
	Tue, 09 Jun 2026 14:51:51 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1wWvvr-00000009ZBp-0QzI;
	Tue, 09 Jun 2026 14:51:51 +0200
Date: Tue, 9 Jun 2026 14:51:51 +0200
From: Michael Tretter <mtr@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <aigMZ3KQ-8H3p3wJ@pengutronix.de>
References: <20260609124050.254522-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260609124050.254522-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_055153_562771_71DC5804 
X-CRM114-Status: GOOD (  21.15  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: tfa: pass NULL fdt when there is none
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 09 Jun 2026 14:40:49 +0200, Sascha Hauer wrote:
> We pass an address to the TF-A even when there is none. The FDT could be
> absent when either CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT is disabled or
> copying it to the scratch area fails. Instead of passing an invalid FDT
> in this case, explicitly pass a NULL pointer.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Michael Tretter <m.tretter@pengutronix.de>

> ---
>  arch/arm/mach-rockchip/atf.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index 74b8cdc2f4..0b4566f8ae 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -271,6 +271,8 @@ void __noreturn rk3588_barebox_entry(void *fdt)
>  	rk_scratch = (void *)arm_mem_scratch(memend);
>  
>  	if (current_el() == 3) {
> +		void *fdt_bl31 = NULL;
> +
>  		rk3588_lowlevel_init();
>  		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
>  		ROCKCHIP_GET_ADDRESSES(RK3588, rk3588_bl31_bin, rk3588_bl32_bin);
> @@ -281,9 +283,11 @@ void __noreturn rk3588_barebox_entry(void *fdt)
>  			ret = rockchip_create_optee_fdt(rk_scratch->fdt, sizeof(rk_scratch->fdt));
>  			if (ret)
>  				pr_warn("Failed to create OP-TEE Device tree\n");
> +			else
> +				fdt_bl31 = rk_scratch->fdt;
>  		}
>  
> -		rockchip_atf_load_bl31(rk_scratch->fdt);
> +		rockchip_atf_load_bl31(fdt_bl31);
>  		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
>  	}
>  
> -- 
> 2.47.3
> 
> 

-- 
Pengutronix e.K.                           | Michael Tretter             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


